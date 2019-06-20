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

var server = app.listen(8081, function () {
    var port = server.address().port
    console.log("Example app listening at http://localhost:%s", port);
});
var connection = require('./database.js');
app.get('/api/allposts', function (req, res) {
    connection.query("SELECT * FROM `user`", function (err, rows) {
        if (err) throw err;
        res.send({
            posts: rows
        })
    })
});
app.get("/api/user", function (req, res) {
    connection.query("SELECT nome,bio,ava from user where user_id = 1", function (err, rows) {
        res.send({
            user: rows[0]
        })
    });
})
app.get('/api/myposts', function (req, res) {
    connection.query("SELECT * FROM `user` where user_id = 1", function (err, rows) {
        if (err) throw err;
        res.send({
            posts: rows
        })
    })
});