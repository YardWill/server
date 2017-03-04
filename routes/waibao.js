var express = require('express');
var request = require('request');

var router = express.Router();


var mysql = require('mysql');
var connection = mysql.createConnection({
    host: '121.42.42.155',
    user: 'program',
    password: 'admin',
    database: 'waibao',
});

connection.connect(function(err) {
    if (err) {
        console.error('error connecting: ' + err.stack);
        return;
    }

    console.log('connected as id ' + connection.threadId);
});

var sqlSelect = "SELECT * FROM Cangbaoge WHERE ?? = ?";
var sqlInsert = "INSERT INTO Cangbaoge SET ?";

function insert(data) {
    console.log(data.href);
    connection.query(sqlInsert,
    { href: data.href, goumai_money: data.goumai_money, zhesuan_money: data.zhesuan_money, zhejia: data.zhejia, xingjiabi: data.xingjiabi },
    function(error, results, fields) {
        if (error) throw error;
    });
}

function getData(data) {
    var url = 'http://xyq.yananbdw.com/xyq_cbg_role_processor.php?action=guhao&url=' + encodeURIComponent(data.href);
    const opt = {
        url,
        encoding: null,
        headers: {
            'User-Agent': 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.65 Safari/537.36'
        }
    };
    request(opt, function(error, response, body) {
        var info = JSON.parse(body).info.evaluate_info;
        data.goumai_money = info[10].value;
        data.zhesuan_money = info[9].value;
        data.zhejia = info[11].value;
        data.xingjiabi = info[12].value.slice(-12, -4);
        insert(data);
    }).on('end', function() {
        // console.log(2);
    }).on('error', function(err) {
        // console.log(err);
    });
}

function testHref(data) {
    var flag = 1;
    connection.query(sqlSelect, ['href', data.href], function(error, results, fields) {
        if (error) throw error;
        if (results[0] && results[0].goumai_money !== data.money) {
            flag = 0;
        }
    });
    if (flag) {
        getData(data);
    }
}

router.post('/write', function(req, res, next) {
    res.setHeader('Access-Control-Allow-Origin', '*');
    var body = req.body;
    for (var p in body) { // 方法 
        if (p !== 'v') {
            testHref(JSON.parse(body[p]));
        }
    }
    res.send({ a: 'sss' });
});

router.get('/read', function(req, res, next) {
    res.setHeader('Access-Control-Allow-Origin', '*');
    connection.query('SELECT * FROM Cangbaoge', function(error, results, fields) {
        if (error) throw error;
        console.log(results);
        res.send(results);
    });
});

router.get('/watch', function(req, res, next) {
    res.render('waibaoshuju');
});

module.exports = router;
