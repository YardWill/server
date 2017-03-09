const express = require('express');
const request = require('request');
const config = require('../config');
const xlsx = require('xlsx');
const mysql = require('mysql');
const path = require('path');

const router = express.Router();

const connection = mysql.createConnection(config.mysql);

connection.connect((err) => {
    if (err) {
        console.error(`error connecting: ${err.stack}`);
        return;
    }

    console.log(`connected as id ${connection.threadId}`);
});

const sqlSelect = 'SELECT * FROM Cangbaoge WHERE ?? = ?';
const sqlInsert = 'INSERT INTO Cangbaoge SET ?';
const sqlUpdate = 'UPDATE Cangbaoge SET goumai_money = ?, zhesuan_money = ?, zhejia = ?, xingjiabi = ? WHERE id = ?';

router.get('/getexl', (req, res, next) => {
    res.setHeader('Access-Control-Allow-Origin', '*');
    connection.query('SELECT * FROM Cangbaoge', (error, results, fields) => {
        if (error) throw error;
        const obj = {};
        let num = 0;

        results.forEach((e, i) => {
            obj[`A${i + 1}`] = { v: e.href };
            num = i + 1;
        });
        const wb = {
            SheetNames: ['mySheet'],
            Sheets: {
                mySheet: Object.assign({}, obj, { '!ref': `A1:A${num}` }),
            },
        };
        console.log(wb.Sheets.mySheet);
        xlsx.writeFile(wb, path.join('/root/server/public/excel/', path.basename('cangbaoge.xlsx')));
        res.send(results);
    });
});
function insert(data) {
    connection.query(sqlInsert, { href: data.href, goumai_money: data.goumai_money, zhesuan_money: data.zhesuan_money, zhejia: data.zhejia, xingjiabi: data.xingjiabi },
        (error, results, fields) => {
            if (error) throw error;
        });
}

function getData(data) {
    const url = `http://xyq.yananbdw.com/xyq_cbg_role_processor.php?action=guhao&url=${encodeURIComponent(data.href)}`;
    const opt = {
        url,
        encoding: null,
        headers: {
            'User-Agent': 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.65 Safari/537.36',
        },
    };

    request(opt, (error, response, body) => {
        const info = JSON.parse(body).info.evaluate_info;
        console.log(info);
        data.goumai_money = info[10].value;
        data.zhesuan_money = info[9].value;
        data.zhejia = info[11].value;
        data.xingjiabi = info[12].value.slice(-12, -4);
        // console.log(data);
        insert(data);
        // sleep(500);
    }).on('end', () => {
    }).on('error', (err) => {});
}

function testHref(data) {
    connection.query(sqlSelect, ['href', data.href], (error, results, fields) => {
        if (error) throw error;
        if (results[0]) {
        } else {
            // getData(data);
            insert(data);
        }
    });
}

router.post('/write', (req, res, next) => {
    res.setHeader('Access-Control-Allow-Origin', '*');
    const body = req.body;
    for (const p in body) {
        if (p !== 'v') {
            testHref(JSON.parse(body[p]));
        }
    }
    res.send({ a: 'sss' });
});

router.get('/empty', (req, res, next) => {
    connection.query('DELETE FROM Cangbaoge', (error, results, fields) => {
        if (error) throw error;
        res.send('删除成功');
    });
});
router.get('/read', (req, res, next) => {
    res.setHeader('Access-Control-Allow-Origin', '*');
    connection.query('SELECT * FROM Cangbaoge', (error, results, fields) => {
        if (error) throw error;
        res.send(results);
    });
});

router.get('/watch', (req, res, next) => {
    res.render('waibaoshuju');
});

function update(data) {
    connection.query(sqlUpdate, [data.goumai_money, data.zhesuan_money, data.zhejia, data.xingjiabi, data.id], (error, results, fields) => {
        if (error) throw error;
    });
}

function paqu() {
    connection.query('SELECT * FROM Cangbaoge WHERE zhesuan_money = 0 order by id limit 1;', (error, results, fields) => {
        if (error) throw error;
        if (results[0]) {
            const data = {
                id: results[0].id,
                href: results[0].href,
            };
            const url = `http://xyq.yananbdw.com/xyq_cbg_role_processor.php?action=guhao&url=${encodeURIComponent(data.href)}`;
            const opt = {
                url,
                encoding: null,
                headers: {
                    'User-Agent': 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.65 Safari/537.36',
                },
            };

            request(opt, (error, response, body) => {
                const info = JSON.parse(body).info.evaluate_info;
                console.log(info);
                data.goumai_money = info[10].value;
                data.zhesuan_money = info[9].value;
                data.zhejia = info[11].value;
                data.xingjiabi = info[12].value.slice(-12, -4);
                update(data);
            }).on('end', () => {
                paqu();
            }).on('error', (err) => {});
        } else {
            console.log('爬取完成');
        }
    });
}

router.get('/getData', (req, res, next) => {
    paqu();
    res.send({ success: true });
});

module.exports = router;
