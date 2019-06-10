var connection = require('../app/database.js');
var LocalStrategy = require('passport-local').Strategy;

// expose this function to our app using module.exports
module.exports = function (passport) {

    // =========================================================================
    // passport session setup ==================================================
    // =========================================================================
    passport.serializeUser(function (user, done) {
        done(null, user.perfil_id);
    });

    passport.deserializeUser(function (id, done) {
        connection.query("select * from perfil where perfil_id = " + id, function (err, rows) {
            done(err, rows);
        });
    });

    // =========================================================================
    // LOCAL SIGNUP ============================================================
    // =========================================================================

passport.use('local-signup', new LocalStrategy({
    // by default, local strategy uses username and password, we will override with email
    usernameField: 'email',
    passwordField: 'password',
    passReqToCallback: true // allows us to pass back the entire request to the callback
},
    function (req, email, password, done) {
        var nome = req.body.nome;
        var bio = req.body.bio;
        var numero = req.body.numero;
        connection.query('SELECT * FROM perfil WHERE email = ?', [email], function (err, rows, fields) {
            if(err) done(err)
            if(rows.length==0){
                connection.query("INSERT INTO perfil (email, bio, nome, password, numero) VALUES ('" + email + "' , '" + bio + "' , '" + nome + "' , '" + password + "' , '" + numero + "');", function (err, rows, fields) {
                    if(err) done(err)
                    var user = new Object();
                    user['perfil_id']=rows.insertId
                    done(null,user,{message: "Registado"})
                });
            }else{
                    done(null,false, { message: "Email already exists"});
            }
        });


        // find a user whose email is the same as the forms email
        // we are checking to see if the user trying to login already exists
    }));

    // =========================================================================
    // LOCAL LOGIN =============================================================
    // =========================================================================
    passport.use('local-login', new LocalStrategy({
            usernameField: 'email',
            passwordField: 'password',
            passReqToCallback: true 
        },
        function (req, email, password, done) {
            connection.query("SELECT * FROM `perfil` WHERE `email` = '" + email + "'", function (err, rows) {
                if (err)
                    return done(err);
                if (!rows.length) {
                    return done(null, false, {message:'Utilizador nao existe ou email/password errada' });
                }

                if (!(rows[0].password == password))
                    return done(null, false,  {message:'Utilizador nao existe ou email/password errada' });
                return done(null, rows[0]);

            });
        }));

};