'use strict';

const rpiDhtSensor = require('rpi-dht-sensor');
const db = require('../database/api/TPlant'); 
const dht = new rpiDhtSensor.DHT11(2);
const conf = require('../conf/sens.json');
 
//function read () {
//  var readout = dht.read();
//    console.log('温度: ' + readout.temperature.toFixed(2) + 'C, ' +
//        '湿度: ' + readout.humidity.toFixed(2) + '%');
//    setTimeout(read, 1000);
//}
//read();

//module.exports = {
//  insertDHT:function(){
//     let humidity = 0;
//     let temp = 0;
//         process.on('count',function(c) {
//            if(c >10) {
//               return;
//            }
//         temp = readout.temperature.toFixed(2);
//         humidity = readout.humidity.toFixed(2); 
//         process.nextTick(function() {
//             process.emit('count',++c);
//         });
//    });
//    process.emit('count', 0);
//}

module.exports = {
    insertDHT:function(){
        let readout = dht.read();
        let humidity = 0;
        let temp = 0;

        process.on('count', function(c) {
            if (c > 10) {
              humidity = humidity/11;
              temp = temp/11;
              db.createDHT(conf.express,temp,humidity);
              return;
            }
            humidity += parseInt(readout.humidity.toFixed(2));
            temp += parseInt(readout.temperature.toFixed(2));
            process.nextTick(function() {
                process.emit('count', ++c);
            });
        });
        process.emit('count', 0);
    }
}


