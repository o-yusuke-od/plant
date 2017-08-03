var db = require('./TPlant');
var time = require('moment');
var start = time().subtract(1,'day').format("YYYY-MM-DD")+" 00:00:00";
var end = time().format("YYYY-MM-DD")+ " 00:00:00";
console.log(start);
console.log(end);


//console.log(db.findById(1));
console.log(db.findListByDate(1,start,end));
