var db = require('./TPlant.js')

var time = require('moment');

var start = time().format("YYYY-MM-DD")+ " 00:00:00";
var end = time().add(1,'day').format("YYYY-MM-DD")+" 00:00:00";


Promise.all([
    db.findNameById(1),
    db.findListByDate(1,start,end)
]).then(function(data) {
    console.log(JSON.stringify(data[1]));
    console.log('******************************');
    console.log(JSON.stringify(data[1][data[1].length-1]));
});
