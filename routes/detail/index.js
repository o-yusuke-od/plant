'use strict';

const express = require('express');
const router = express.Router();
const TPlant = require('../../database/api/TPlant.js');
const pad = require('../../modules/to_double_digits');
const time = require('moment');
const start = time().format("YYYY-MM-DD")+ " 00:00:00";
const end = time().add(1,'day').format("YYYY-MM-DD")+" 00:00:00";

router.get('/:id',function(req,res,next) {
    Promise.all([
        TPlant.findNameById(req.params.id),
        TPlant.findListByDate(req.params.id,start,end)
    ]).then(function(data) {
        let new_data = data[1][data[1].length-1];

        return res.render('detail',{
            name:data[0].name,
            data:data[1],
            new_data:new_data,
            new_time:yyyy(new_data.CreatedAt)
        });
    });
});

let yyyy = function(date) {
    let yyyy = date.getFullYear();
    let mm = pad(date.getMonth() + 1);
    let dd = pad(date.getDate());
    let hh = pad(date.getHours());
    let mi = pad(date.getMinutes());

    return yyyy + '/' + mm + '/'+ dd +' '+hh + ':' + mi;
};

module.exports = router;
