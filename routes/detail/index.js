var express = require('express');
var router = express.Router();
var TPlantData = require('../../database/models/t_plant_data');

router.get('/:id',function(req,res,next) {
  res.send(TPlantData.findById(req.params.id));
});
module.exports = router;
