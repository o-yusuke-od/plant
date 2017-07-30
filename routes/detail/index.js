'use strict';
const express = require('express');
const router = express.Router();
const TPlant = require('../../database/api/TPlant.js');

router.get('/:id',function(req,res,next) {
    Promise.all([
        TPlant.findById(req.params.id),
        TPlant.findNameById(req.params.id)
    ]).then(function(data) {
        res.render('detail',{data:data});
        console.log(data);
    });
});

module.exports = router;
