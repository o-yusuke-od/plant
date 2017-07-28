var express = require('express');
var router = express.Router();
var db = require('../../database/models/t_plant_data');
//var modul = require('../../database/api/TPlant');

router.get('/:id',function(req,res,next) {
  res.json(findById());
});

function findById(){
    return new Promise((resolve,reject) => {
        db.TPlant.findById(2).then(project => {
            var t_plant = {
                id:project.id,
                temp:project.temp
            }
            return t_plant;
        })
    });
}


module.exports = router;
