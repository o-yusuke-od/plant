'use strict';

const Sequelize = require('sequelize');
const conf    = require('../../conf/sequelize.json');
const sequelize = new Sequelize(conf.database, conf.username, conf.password,{host:conf.host,dialect:conf.dialect,timezone:conf.timezone});

const MPlant = sequelize.define('m_plant',{
    name:Sequelize.STRING,
    temp:Sequelize.INTEGER,
    humidity:Sequelize.INTEGER,
    luminous:Sequelize.INTEGER,
    SoilHumidity:Sequelize.INTEGER,
    deleted:Sequelize.INTEGER,
    CreatedAt:Sequelize.DATE,
    UpdatedAt:Sequelize.DATE
},{
    timestamps:false,
    freezeTableName: true
});

module.exports.MPlant = MPlant;
