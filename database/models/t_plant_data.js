'use strict'; 
const Sequelize = require('sequelize');
const conf    = require('../../conf/sequelize.json');
const sequelize = new Sequelize(conf.database, conf.username, conf.password,{host:conf.host,dialect:'mysql'});

const Project = sequelize.define('t_plant_data',{
    PlantId:Sequelize.INTEGER,
    temp:Sequelize.INTEGER,
    humidity:Sequelize.INTEGER,
    luminous:Sequelize.INTEGER,
    SoilHumidity:Sequelize.INTEGER,
    deleted:Sequelize.INTEGER
},{
    freezeTableName: true
});


module.exports = {
    findAll:function() {
        Project.findAll().then(t_plant_data =>{
            console.log(t_plant_data);
        });
    },
    findById:function(id){
	Project.findById(id).then(t_plant_data =>{
	    return t_plant_data;
	});
    }
};
