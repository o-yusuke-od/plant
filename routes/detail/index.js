'use strict';

const express = require('express');
const router = express.Router();
const TPlant = require('../../database/api/TPlant.js');
const time = require('moment');
const start = time().format("YYYY-MM-DD")+ " 00:00:00";
const end = time().add(1,'day').format("YYYY-MM-DD")+" 00:00:00";

router.get('/:id',function(req,res,next) {
    Promise.all([
        TPlant.findNameById(req.params.id),
        TPlant.findListByDate(req.params.id,start,end)
    ]).then(function(data) {
        return res.render('detail',{
            name:data[0].name,
            data:data[1],
            new_data:data[1][data[1].length-1],
            new_time:yyyy(data[1][data[1].length-1].CreatedAt)
        });
    });
});

let toDoubleDigits = function(num) {
    num += '';
    if(num.length === 1) {
        num = '0' + num;
    }
    return num;
}

let yyyy = function(date) {
    let yyyy = date.getFullYear();
    let mm = toDoubleDigits(date.getMonth() + 1);
    let dd = toDoubleDigits(date.getDate());
    let hh = toDoubleDigits(date.getHours());
    let mi = toDoubleDigits(date.getMinutes());

    return yyyy + '/' + mm + '/'+ dd +' '+hh + ':' + mi;
};

module.exports = router;
