module.exports = function (app, passport) {
    var connection = require('../app/database.js');
    const authMiddleware = (req, res, next) => {
        if (!req.isAuthenticated()) {
            res.status(401).send("Não está autenticado")
        } else {
            return next()
        }
    }
    app.post('/api/login', (req, res, next) => {
        passport.authenticate('local-login', (err, user, info) => {
            if (err) {
                return next(err);
            }
            if (!user) {
                return res.status(400).send([user, "Não é possivel realizar o Login", info])
            }
            req.login(user, (err) => {
                res.send("Logged in")
            })
        })(req, res, next)
    });
    app.post('/api/signup', (req, res, next) => {
        passport.authenticate('local-signup', (err, user, info) => {
            if (err) {
                return next(err);
            }
            if (!user) {
                return res.status(400).send([user, "Não é possivel realizar o registo", info])
            }
            req.login(user, (err) => {
                res.send({
                    message: "Registado"
                })
            })
        })(req, res, next)
    });
    app.get("/api/galeria/", authMiddleware, function (req, res) { //mostra todos as as fotos de um user para formar a galeria
        connection.query("SELECT foto FROM `galeria` WHERE `perfil_id` = " + req.session.passport.user, function (err, rows) {
            if (err) throw err;
            res.send(rows);
        });
    })
    app.get('/api/profile', authMiddleware, function (req, res) {
        res.send("Logged in");
    })
    app.get('/api/home', authMiddleware, function (req, res) {
        res.send("Logged in");
    })
    app.get('/api/logout', function (req, res) {
        req.logout();
        res.send("Logouted");
    });
    app.get('/api/allposts', authMiddleware, function (req, res) {
        connection.query("SELECT `publicacao_id`,`texto` FROM `publicacao` order by publicacao_id desc", function (err, rows) {
            if (err) throw err;
            res.send({
                posts: rows
            })
        })
    });
    app.post('/api/post', authMiddleware, function (req, res) {
        var texto = req.body.texto;
        if (!texto == undefined) {
            connection.query("INSERT INTO `publicacao`(`texto`, `perfil_id`) VALUES ('" + texto + "','" + req.session.passport.user + "');", function (err, rows) {
                if (err) throw err;
                res.send({
                    message: "Post inserido com sucesso"
                })
            })
        }
    });
    app.get('/api/myposts', authMiddleware, function (req, res) {
        connection.query("SELECT `publicacao_id`,`texto` FROM publicacao where perfil_id =" + req.session.passport.user+" order by publicacao_id desc", function (err, rows) {
            if (err) throw err;
            res.send({
                posts: rows
            })
        })
    });
    app.get("/api/deletepost", authMiddleware, function (req, res) {
        var pub_id = req.body.pub_id;
        console.log(pub_id);
        connection.query("DELETE FROM `publicacao` WHERE `publicacao_id` = " + pub_id + ";", function (err, rows) {
            res.send({
                message : "Apagado com sucesso"
            })
        });
    })
    app.get("/api/user", authMiddleware, function (req, res) {
        connection.query("SELECT gender,data_nasc,perfil_id,nome,bio,email,numero,ava from perfil where perfil_id =" + req.session.passport.user + ";", function (err, rows) {
            res.send({
                user: rows[0]
            })
        });
    })

};