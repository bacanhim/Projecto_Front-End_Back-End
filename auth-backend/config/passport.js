// config/passport.js
var mysql = require('mysql')
// load all the things we need

var connection = mysql.createConnection({
    // connectionLimit: 100, //important
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'bedb',
    // debug: false
});

var LocalStrategy = require('passport-local').Strategy;

// MySQL connection

console.log("MySQL connection created at %s with database: %s", connection.config.host, connection.config.database);

// expose this function to our app using module.exports
module.exports = function (passport) {

    // =========================================================================
    // passport session setup ==================================================
    // =========================================================================
    // required for persistent login sessions
    // passport needs ability to serialize and unserialize users out of session

    // used to serialize the user for the session
    passport.serializeUser(function (user, done) {
        done(null, user.user_id);
    });

    // used to deserialize the user
    passport.deserializeUser(function (id, done) {
        connection.query("SELECT * FROM user WHERE user_id = " + id, function (err, rows) {
            done(err, rows);
        });
        // select from users where id =        
    });

    // =========================================================================
    // LOCAL SIGNUP ============================================================
    // =========================================================================
    // we are using named strategies since we have one for login and one for signup
    // by default, if there was no name, it would just be called 'local'

    passport.use('local-signup', new LocalStrategy({
        // by default, local strategy uses username and password, we will override with email
        usernameField: 'email',
        passwordField: 'password',
        passReqToCallback: true // allows us to pass back the entire request to the callback
    },
        function (req, email, password, done) {
            connection.query('SELECT * FROM user WHERE email = ?', [email], function (err, rows, fields) {
                if(err) done(err)
                if(rows.length==0){
                    connection.query('INSERT INTO user (email,password) VALUES (?,?)', [email,password], function (err, rows, fields) {
                        if(err) done(err)
                        var user = new Object();
                        user['user_id']=rows.insertId
                        done(null,user)
                    });
                }else{
                        done(null,false, { message: req.flash('signupMessage', "Email already exists")});
                }
            });


            // find a user whose email is the same as the forms email
            // we are checking to see if the user trying to login already exists            
        }));
    // =========================================================================
    // LOCAL LOGIN =============================================================
    // =========================================================================
    // we are using named strategies since we have one for login and one for signup
    // by default, if there was no name, it would just be called 'local'

    passport.use('local-login', new LocalStrategy({
        // by default, local strategy uses username and password, we will override with email
        usernameField: 'email',
        passwordField: 'password',
        passReqToCallback: true // allows us to pass back the entire request to the callback
    },
        function (req, email, password, done) { // callback with email and password from our form        
            connection.query('SELECT * FROM user WHERE email = ?', [email], function (err, rows, fields) {
                if(rows.length>0){
                    if(rows[0].password==password){
                        return done(null, rows[0]);
                    }else{
                        return done(null,false, { message: req.flash('loginMessage', "Incorrect password")});
                    }
                    // connection.query('SELECT * FROM user WHERE email = ? and password = ?', [email, password], function (err, rows, fields) {
                    //     if(rows.length>0){
                    //         return done(null, rows[0]);
                    //     }else{
                    //         return done(null,false, { message: req.flash('loginMessage', "Incorrect password")});
                    //     }
                    // });
                }else{
                   return done(null,false, { message: req.flash("loginMessage", "Incorrect email")});
                }
            });
        }));
};