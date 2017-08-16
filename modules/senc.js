'use strict';

const rpiDhtSensor = require('rpi-dht-sensor');
const db = require('../database/api/TPlant'); 
const dht = new rpiDhtSensor.DHT11(2);
const conf = require('../conf/sens.json');

module.exports = {
    insertDHT:function(){
        let readout = dht.read();
        let humidity = 0;
        let temp = 0;

        process.on('count', function(c) {
            if (c > 30) {
              humidity = humidity/31;
              temp = temp/31;
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

