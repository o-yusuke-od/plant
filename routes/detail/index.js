'use strict';
const express = require('express');
const router = express.Router();
const TPlant = require('../../database/api/TPlant.js');
const time = require('moment');
const start = time().subtract(1,'day').format("YYYY-MM-DD")+" 00:00:00";
const end = time().format("YYYY-MM-DD")+ " 00:00:00";

router.get('/:id',function(req,res,next) {
//    Promise.all([
//        TPlant.findById(req.params.id),
//        TPlant.findNameById(req.params.id)
//    ]).then(function(data) {
//        return res.render('detail',{
//           data1:data[0],
//           data2:data[1]
//        });
//    });
    return res.render('detail');
});

module.exports = router;
