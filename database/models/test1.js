var models = require('./test.js');

console.log(models);
models.Project.findAll({}).then(function(){
});

