var db = require('./TPlant');
var time = require('moment');
var start = time().format("YYYY-MM-DD")+ " 00:00:00";
var end = time().add(1,'day').format("YYYY-MM-DD")+" 00:00:00";

Promise.all([
    TPlant.findNameById(1),
    TPlant.findListByDate(1,start,end)
]).then(function(data) {
    console.log(data[0].name);
    console.log('******************************');
    console.log(data[1]);
    console.log('******************************');
});
