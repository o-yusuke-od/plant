'use strict';

const data = require('../models/t_plant_data');
const name = require('../models/m_plant');

module.exports = {
    findById:function(id){
        return new Promise((resolve,reject) =>{
            data.TPlant.findOne({
                limit :1,
                where :{PlantId:id},
                order:[['createdAt','DESC']]

            }).then(project => {
                let t_plant = {
                    id:project.id,
                    temp:project.temp,
                    humidity:project.humidity,
                    luminous:project.luminous,
                    SoilHumidity:project.SoilHumidity,
                    CreatedAt:project.CreatedAt
                }
                resolve(t_plant);
            })
        })
    },
    findNameById:function(id){
        return new Promise((resolve,reject) =>{
            name.MPlant.findById(id).then(project =>{
                let m_plant ={
                    name:project.name
                }
                resolve(m_plant);
            })
        });
    }
};



