'use strict';
var Sequelize = require('sequelize');
var config    = require('../../config/sequelize.json');
var sequelize = new Sequelize(config.database, config.username, config.password);
module.export = {
};
