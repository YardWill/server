var express = require('express');
var router = express.Router();

var Busboy = require('connect-busboy');
var path = require('path');
var fs = require('fs');
var xlsx = require('xlsx');

var mongoose = require('mongoose');
mongoose.connect('mongodb://localhost/test');

var commitSchema = mongoose.Schema({
  name:String,
  commit:String
});

var commit = mongoose.model('commit',commitSchema);

/* GET home page. */
router.get('/', function(req, res, next) {
    res.render('index', { title: 'Express' });
});

router.get('/write', function(req, res, next) {
    res.setHeader("Access-Control-Allow-Origin", "*");
  // var db = mongoose.createConnection('mongodb://localhost/test');
  var db = mongoose.connection;
  var silence = new commit({ 
    name: 'Silence',
    commit:'hahahahahah'
});

  silence.save();

  commit.find(function(err,commit){
     if (err) return console.error(err);
     console.log(commit);
     res.send(commit);
 });
  
});

router.get('/read',function(req,res,next){
    res.setHeader("Access-Control-Allow-Origin", "*");
    var db = mongoose.connection;
    commit.find(function(err,commit){
     if (err) return console.error(err);
     console.log(commit);
     res.send(commit);
 });
})

router.post('/formdata', function(req, res, next) {
    res.setHeader("Access-Control-Allow-Origin", "*");

    req.busboy.on('file', function(fieldname, file, filename, encoding, mimetype) {
        var tmp_path = path.join(__dirname, path.basename(filename));
        var ws = fs.createWriteStream(tmp_path);
        file.pipe(ws);
        console.log(tmp_path);
        file.on('end', function() {
            console.log('file end');
        });
        ws.on('finish',function(){
        	console.log('写入完成');
        	test(req,res,next,tmp_path);
        });
    });
    req.pipe(req.busboy);
});

router.post('/excel', function(req, res, next) {
    res.setHeader("Access-Control-Allow-Origin", "*");

    // fs.unlink('/root/server/public/output.xlsx');
    var jsonhead=JSON.parse(req.body.head);
    console.log(req.body.head)
    console.log(typeof req.body.head)
    console.log(jsonhead)
    console.log(typeof jsonhead)
    var jsonData=JSON.parse(req.body.data);
    console.log(req.body.data)
    console.log(typeof req.body.data)
    console.log(jsonData)
    console.log(typeof jsonData)
    function transform(obj){
        var arr = [];
        for(var item in obj){
            arr.push(obj[item]);
        }
        return arr;
    }
    var _headers = transform(jsonhead);
    var _data = jsonData;

    var headers = _headers
    .map((v, i) => Object.assign({}, {v: v, position: String.fromCharCode(65+i) + 1 }))
    .reduce((prev, next) => Object.assign({}, prev, {[next.position]: {v: next.v}}), {});

    var data = _data
    .map((v, i) => _headers.map((k, j) => Object.assign({}, { v: v[k], position: String.fromCharCode(65+j) + (i+2) })))
    .reduce((prev, next) => prev.concat(next))
    .reduce((prev, next) => Object.assign({}, prev, {[next.position]: {v: next.v}}), {});

    var output = Object.assign({}, headers, data);
    var outputPos = Object.keys(output);
    var ref = outputPos[0] + ':' + outputPos[outputPos.length - 1];
    var wb = {
        SheetNames: ['mySheet'],
        Sheets: {
            'mySheet': Object.assign({}, output, { '!ref': ref })
        }
    };
    console.log(__dirname);
    var tmp_path = path.join('/root/server/public/excel/', path.basename(req.body.name+'.xlsx'));
    xlsx.writeFile(wb, tmp_path);
    res.send(tmp_path);

});

router.get('/xlsx', function(req, res, next) {
    res.setHeader("Access-Control-Allow-Origin", "*");

    var jData = JSON.parse(req.body.data);

    function transform(obj){
        var arr = [];
        for(var item in obj){
            arr.push(obj[item]);
        }
        return arr;
    }

    var aData = transform(jData);
    
    // [['1','2','3'],['4','5','6'],['7','8','9'],['10','11','12']]

    var _data = new Array();
    var n = 0;

    for(var i = 0;i < aData.length;i++){
        for(var j = 0;j < aData[i].length;j++){
            _data[n] = {v:aData[i][j],position:String.fromCharCode(65+j) + (i+1)};
            n++;
        }
    }
    var _data =req.body.data;

    var data = _data
    .reduce((prev, next) => prev.concat(next))
    .reduce((prev, next) => Object.assign({}, prev, {[next.position]: {v: next.v}}), {});

    var output = Object.assign({},data);
    var outputPos = Object.keys(output);
    var ref = outputPos[0] + ':' + outputPos[outputPos.length - 1];
    var wb = {
        SheetNames: ['mySheet'],
        Sheets: {
            'mySheet': Object.assign({}, output, { '!ref': ref })
        }
    };
    console.log(__dirname);
    var tmp_path = path.join('/root/server/public/excel/', path.basename(req.body.name+'.xlsx'));
    xlsx.writeFile(wb, tmp_path);
    res.send(aData);

});


function test(req, res, next, mypath) {
    var workbook = xlsx.readFileSync(mypath);

    var firstSheetName = workbook.SheetNames[0];
    var sheet = workbook.Sheets[firstSheetName];
    var cell = '1';
    var r = 0,
    c = 0,
    n = 0,
    exceltext = new Array,
    count = new Object;
    try {
        while (cell !== undefined) {
            var row = xlsx.utils.encode_row(r);
            var col = xlsx.utils.encode_col(c);
            var col1 = xlsx.utils.encode_col(c + 1);
            var addr = col + row;
            var addr1 = col1 + row;
            var cell = sheet[addr];
            var cell1 = sheet[addr1];
            r++;
            n++;
            count.name = cell.w;
            count.phone = cell1.w;
            exceltext[n - 1] = {name:cell.w,phone:cell1.w};
        }
    } catch (err) {
        // var data = eval(exceltext);
        console.log(exceltext);
        res.send(exceltext);
    }
}

module.exports = router;
