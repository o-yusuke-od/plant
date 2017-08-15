'use strict';

const express = require('express');
const router = express.Router();
const TPlant = require('../../database/api/TPlant.js');


/* GET home page. */
router.get('/', function(req, res, next) {
    TPlant.findId().then(function(data){
        console.log(data);
        return res.render('index',{
            data:data
        });
    });
});

module.exports = router;
