const express = require('express');

const router = express.Router();

router.get('/read', (req, res, next) => {
    res.setHeader('Access-Control-Allow-Origin', '*');
});

module.exports = router;
