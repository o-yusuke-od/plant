'use strict'; 

var module = require('../models/t_plant_data');


Promise.all([findById(2)]).then((value) => {
    console.log("value");
    console.log(value);
}).catch(function () {
    console.log('error');
});

function findById(id){
    return new Promise((resolve,reject) => {
        module.TPlant.findById(id).then(project => {
            var t_plant = {
                id:project.id,
                temp:project.temp
            }
            res.send(t_plant);
        })
    });
}

