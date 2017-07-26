'use strict';

const Sequelize = require('sequelize');
const conf    = require('../../conf/sequelize.json');
const sequelize = new Sequelize(conf.database, conf.username, conf.password,{host:conf.host,dialect:'mysql'});

const Project = sequelize.define('m_plant',{
    name:Sequelize.STRING,
    temp:Sequelize.INTEGER,
    humidity:Sequelize.INTEGER,
    luminous:Sequelize.INTEGER,
    SoilHumidity:Sequelize.INTEGER,
    deleted:Sequelize.INTEGER
},{
    freezeTableName: true
});


module.exports = {
    findAll:function(){
        Project.findAll().then(m_plant =>{
            console.log(m_plant);
        });
    }
};
