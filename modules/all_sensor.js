'use strict';

const db = require('./senc.js');

Promise.all([
    db.insertDHT()
]).then(function(){
});


