const express = require('express');
const bodyParser = require('body-parser');
const morgan = require('morgan');
const passport = require('passport');
const app = express();
const session = require('express-session');
const cookieParser = require('cookie-parser');

app.use(morgan('tiny'));
app.use(bodyParser.json());
app.use(cookieParser()); // read cookies (needed for auth)
app.use(bodyParser.json()); // get information from html forms
app.use(bodyParser.urlencoded({
    extended: true
}));
app.use(session({
    secret: 'keyboard cat',
    cookie: {
        maxAge: 60 * 60 * 1000
    }
}));
app.use(passport.initialize());
app.use(passport.session()); // persistent login sessions

require('./config/passport.js')(passport);
require('./app/routes.js')(app, passport);

var server = app.listen(8081, function () {
    var port = server.address().port
    console.log("Example app listening at http://localhost/%s", port);
});