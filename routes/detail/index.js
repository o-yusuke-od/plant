'use strict';
const express = require('express');
const router = express.Router();
const TPlant = require('../../database/api/TPlant.js');

router.get('/:id',function(req,res,next) {
    TPlant.findById(req.params.id).then(function(data){
        //res.json(data);
        res.render('detail',{data:data})
    });
});


module.exports = router;
