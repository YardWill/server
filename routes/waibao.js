var express = require('express');
var request = require('request');
var config = require('../config');

var router = express.Router();


var mysql = require('mysql');
var connection = mysql.createConnection(config.mysql);

connection.connect(function(err) {
    if (err) {
        console.error('error connecting: ' + err.stack);
        return;
    }

    console.log('connected as id ' + connection.threadId);
});

var sqlSelect = "SELECT * FROM Cangbaoge WHERE ?? = ?";
var sqlInsert = "INSERT INTO Cangbaoge SET ?";
var sqlUpdate = "UPDATE Cangbaoge SET goumai_money = ?, zhesuan_money = ?, zhejia = ?, xingjiabi = ? WHERE id = ?";

function sleep(milliSeconds) {
    var startTime = new Date().getTime(); // get the current time   
    while (new Date().getTime() < startTime + milliSeconds); // hog cpu
}

function insert(data) {
    connection.query(sqlInsert, { href: data.href, goumai_money: data.goumai_money, zhesuan_money: data.zhesuan_money, zhejia: data.zhejia, xingjiabi: data.xingjiabi },
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
            'User-Agent': 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.65 Safari/537.36',
        },
    };

    request(opt, function(error, response, body) {
        var info = JSON.parse(body).info.evaluate_info;
        console.log(info);
        data.goumai_money = info[10].value;
        data.zhesuan_money = info[9].value;
        data.zhejia = info[11].value;
        data.xingjiabi = info[12].value.slice(-12, -4);
        // console.log(data);
        insert(data);
        // sleep(500);
    }).on('end', function() {
    }).on('error', function(err) {});
}

function testHref(data) {
    connection.query(sqlSelect, ['href', data.href], function(error, results, fields) {
        if (error) throw error;
        if (results[0]) {
        } else {
            getData(data);
        }
    });
}

router.post('/write', function(req, res, next) {
    res.setHeader('Access-Control-Allow-Origin', '*');
    var body = req.body;
    for (var p in body) {
        if (p !== 'v') {
            testHref(JSON.parse(body[p]));
        }
    }
    res.send({ a: 'sss' });
});

router.get('/empty', function(req, res, next) {
    connection.query('DELETE FROM Cangbaoge', function(error, results, fields) {
        if (error) throw error;
        res.send('删除成功');
    });
});
router.get('/read', function(req, res, next) {
    connection.query('SELECT * FROM Cangbaoge', function(error, results, fields) {
        if (error) throw error;
        res.send(results);
    });
});

router.get('/watch', function(req, res, next) {
    res.render('waibaoshuju');
});

function update(data) {
    connection.query(sqlUpdate, [data.goumai_money, data.zhesuan_money, data.zhejia, data.xingjiabi, data.id], function(error, results, fields) {
        if (error) throw error;
    });
}

function paqu() {
    connection.query('SELECT * FROM Cangbaoge WHERE zhesuan_money = 0 order by id limit 1;', function(error, results, fields) {
        if (error) throw error;
        if (results[0]) {
            const data = {
                id: results[0].id,
                href: results[0].href,
            };
            var url = 'http://xyq.yananbdw.com/xyq_cbg_role_processor.php?action=guhao&url=' + encodeURIComponent(data.href);
            const opt = {
                url,
                encoding: null,
                headers: {
                    'User-Agent': 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.65 Safari/537.36',
                },
            };

            request(opt, function(error, response, body) {
                var info = JSON.parse(body).info.evaluate_info;
                console.log(info);
                data.goumai_money = info[10].value;
                data.zhesuan_money = info[9].value;
                data.zhejia = info[11].value;
                data.xingjiabi = info[12].value.slice(-12, -4);
                update(data);
            }).on('end', function() {
                paqu();
            }).on('error', function(err) {});
        } else {
            console.log('爬取完成');
        }
    });
}

router.get('/getData', function(req, res, next) {
    paqu();
    res.send({ success: true });
});

module.exports = router;
