var express = require('express');
var router = express.Router();

/* GET users listing. */
router.get('/', function(req, res, next) {
  res.send('respond with a resource');
});

// router.post('/excel', function(req, res, next) {
//     res.setHeader("Access-Control-Allow-Origin", "*");

//     // fs.unlink('output.xlsx');
//     var jsonhead=JSON.parse(req.body.head);
//     var jsonData=JSON.parse(req.body.data);

//     function transform(obj){
//         var arr = [];
//         for(var item in obj){
//             arr.push(obj[item]);
//         }
//         return arr;
//     }
    
//     var _headers = transform(jsonhead);
//     var _data = jsonData;

//     var headers = _headers
//     .map((v, i) => Object.assign({}, {v: v, position: String.fromCharCode(65+i) + 1 }))
//     .reduce((prev, next) => Object.assign({}, prev, {[next.position]: {v: next.v}}), {});

//     var data = _data
//     .map((v, i) => _headers.map((k, j) => Object.assign({}, { v: v[k], position: String.fromCharCode(65+j) + (i+2) })))
//     .reduce((prev, next) => prev.concat(next))
//     .reduce((prev, next) => Object.assign({}, prev, {[next.position]: {v: next.v}}), {});

//     var output = Object.assign({}, headers, data);
//     var outputPos = Object.keys(output);
//     var ref = outputPos[0] + ':' + outputPos[outputPos.length - 1];
//     var wb = {
//         SheetNames: ['mySheet'],
//         Sheets: {
//             'mySheet': Object.assign({}, output, { '!ref': ref })
//         }
//     };
//     xlsx.writeFile(wb, 'output.xlsx');
//     res.send('ok');

// });

module.exports = router;
