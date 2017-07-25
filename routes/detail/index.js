var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
//  res.render('detail');
  res.send('test');
});
router.get('/:id',function(req,res,next) {
  res.send('respond detail info id:'+ req.params.id);
});

module.exports = router;
