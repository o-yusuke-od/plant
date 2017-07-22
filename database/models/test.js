'use strict';

var Sequelize = require('sequelize');
var config    = require('../../config/sequelize.json');
var sequelize = new Sequelize(config.database, config.username, config.password);

sequelize.query('select * from m_plant').then(m_plant =>{
    console.log(m_plant);
});
