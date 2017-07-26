'use strict';

var Sequelize = require('sequelize');
var config    = require('../../config/sequelize.json');
var sequelize = new Sequelize(config.database, config.username, config.password,{dialect:'mysql'});

sequelize.query('select * from m_plant',null,{raw:true}).then(m_plant =>{
    console.log(m_plant);
});

