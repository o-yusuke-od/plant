'use strict';
const express = require('express');
const router = express.Router();
const TPlant = require('../../database/api/TPlant.js');
const time = require('moment');
<<<<<<< HEAD
const start = time().format("YYYY-MM-DD")+ " 00:00:00";
const end = time().add(1,'day').format("YYYY-MM-DD")+" 00:00:00";
=======
const end = time().add(1,'day').format("YYYY-MM-DD")+" 00:00:00";
const start = time().format("YYYY-MM-DD")+ " 00:00:00";
>>>>>>> ca05a9219bf53324141773070e2f2ff9d0f45f15

router.get('/:id',function(req,res,next) {
    Promise.all([
        TPlant.findById(req.params.id),
<<<<<<< HEAD
        TPlant.findNameById(req.params.id),
        TPlant.findListByDate(req.params.id,start,end)
    ]).then(function(data) {
        return res.render('detail',{
            data1:data[0],
            data2:data[1],
            new_data:data[data.length-1]
=======
        TPlant.findListByDate(req.params.id,start,end)
    ]).then(function(data) {
        return res.render('detail',{
            name:data[0].name,
            data:data[1]
            //new_data:[1].data[1][data[1].length-1]
>>>>>>> ca05a9219bf53324141773070e2f2ff9d0f45f15
        });
    });

    return res.render('detail');
});

module.exports = router;
