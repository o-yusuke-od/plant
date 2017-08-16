const express = require('express');
const path = require('path');
const favicon = require('serve-favicon');
const logger = require('morgan');
const cookieParser = require('cookie-parser');
const bodyParser = require('body-parser');
const index = require('./routes/top');
const detail = require('./routes/detail');
const about = require('./routes/about');
const ECT = require('ect');
const ectRenderer = ECT({watch:true,root:__dirname+'/views',ext:'.ect'});


const app = express();

if ( app.get('env') === 'development' ) {
  let browserSync = require('browser-sync');
  let connectBrowserSync = require('connect-browser-sync');

  let browserSyncConfigurations = { "files": "static/*" };
  app.use(connectBrowserSync(browserSync(browserSyncConfigurations)));
}


// view engine setup
app.set('view engine','ect');
app.engine('ect',ectRenderer.render);


// uncomment after placing your favicon in /public
//app.use(favicon(path.join(__dirname, 'public', 'favicon.ico')));
app.use(logger('dev'));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));

app.use('/', index);
app.use('/detail/',detail);
app.use('/about',about);

// catch 404 and forward to error handler
app.use(function(req, res, next) {
  let err = new Error('Not Found');
  err.status = 404;
  next(err);
});

// error handler
app.use(function(err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});

module.exports = app;
