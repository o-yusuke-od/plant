'use strict';

const express = require('express');
const router = express.Router();
const TPlant = require('../../database/api/TPlant.js');
const top_data =[{}];


/* GET home page. */
router.get('/', function(req, res, next) {
    TPlant.findId().then(function(data){
        Object.keys(data).forEach(function(val) {
            top_data[val] = {"id":data[val]["id"],"name":data[val]["name"]};
        });
        return res.render('index',{
            data:top_data
        });
    });
});

module.exports = router;
