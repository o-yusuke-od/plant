'use strict';
const express = require('express');
const router = express.Router();
const TPlant = require('../../database/api/TPlant.js');
const time = require('moment');
const start = time().format("YYYY-MM-DD")+ " 00:00:00";
const end = time().add(1,'day').format("YYYY-MM-DD")+" 00:00:00";

router.get('/:id',function(req,res,next) {
    Promise.all([
        TPlant.findById(req.params.id),
        TPlant.findNameById(req.params.id),
        TPlant.findListByDate(req.params.id,start,end)
    ]).then(function(data) {
        return res.render('detail',{
            data1:data[0],
            data2:data[1],
            new_data:data[data.length-1]
        });
    });

    return res.render('detail');
});

module.exports = router;
