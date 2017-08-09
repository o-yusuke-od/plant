'use strict';

const data = require('../models/t_plant_data');
const name = require('../models/m_plant');
const time = require('moment');

module.exports = {
    findById:function(id){
        return new Promise((resolve,reject) =>{
            data.TPlant.findOne({
                limit :1,
                where :{
                    PlantId:id,
                    deleted:0
                },
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
    findListByDate:function(id,start_date,end_date){
        return new Promise((resolve,reject) =>{
            data.TPlant.findAll({
                where :{
                    PlantId:id,
                    deleted:0,
                    CreatedAt:{
                        $gte:start_date,
                        $lt:end_date
                    }
                }
            }).then(project => {
                resolve(project);
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
    },
    createDHT:function(id,temp,humidity){
        data.TPlant.create({
            PlantId:id,
            temp:temp,
            humidity:humidity,
            CreatedAt:time().format(),
            UpdatedAt:time().format()
        }).then(function(){
            process.exit(0);
        });
    }
};

