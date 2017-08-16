'use strict';

const express = require('express');
const router = express.Router();
const api = require('../../database/api');


/* GET home page. */
router.get('/', function(req, res, next) {
//    let top_data =[{}];
//    api.findId().then(function(data){
//        Object.keys(data).forEach(function(val) {
//            top_data[val] = {
//                "id":data[val]["id"],
//                "name":data[val]["name"],
//                "genre":data[val]["genre"] 
//            };
//        });
//        return res.render('index',{
//            data:top_data
//        });
//    });
    let top_data = [{"id":1,"name":"aico","genre":"mini tomato"}];
    return res.render('index',{
        data:top_data
    });

});

module.exports = router;
