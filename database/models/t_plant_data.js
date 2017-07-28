'use strict'; 
const Sequelize = require('sequelize');
const conf    = require('../../conf/sequelize.json');
const sequelize = new Sequelize(conf.database, conf.username, conf.password,{host:conf.host,dialect:'mysql'});

const TPlant = sequelize.define('t_plant_data',{
    PlantId:Sequelize.INTEGER,
    temp:Sequelize.INTEGER,
    humidity:Sequelize.INTEGER,
    luminous:Sequelize.INTEGER,
    SoilHumidity:Sequelize.INTEGER,
    deleted:Sequelize.INTEGER
},{
    freezeTableName: true
});

module.exports.TPlant = TPlant;
