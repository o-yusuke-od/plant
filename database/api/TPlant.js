'use strict';

const db = require('../models/t_plant_data');

module.exports = {
    findById:function(id){
        return new Promise((resolve,reject) =>{
            db.TPlant.findById(id).then(project => {
                let t_plant = {
                    id:project.id,
                    temp:project.temp
                }
                resolve(t_plant);
            })
        })
    },
    findAll:function(){
        return new Promise((resolve,reject) =>{
            let t_plant = {
                id:2,
                temp:100
            }
            resolve(t_plant);
        })
    }
};



