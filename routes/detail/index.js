'use strict';
const express = require('express');
const router = express.Router();
const TPlant = require('../../database/api/TPlant.js');
const time = require('moment');
const start = time().subtract(1,'day').format("YYYY-MM-DD")+" 00:00:00";
const end = time().format("YYYY-MM-DD")+ " 00:00:00";

router.get('/:id',function(req,res,next) {
    Promise.all([
        TPlant.findById(req.params.id),
        TPlant.findNameById(req.params.id)
    ]).then(function(data) {
        res.render('detail',{data:data});
    });
});
router.get('/all/:id',function(req,res,next) {
    Promise.all([
        TPlant.findListByDate(req.params.id,start,end)
    ]).then(function(data) {
        res.render('detail_all',{data:data});
    });
});

module.exports = router;
