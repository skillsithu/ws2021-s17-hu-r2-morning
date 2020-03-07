var express = require("express"),
    router = express.Router(),
    mysql = require("mysql");

var connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: null,
    //user: 'skill17',
    //password: 'shanghai2021',
    database: 'skills_it_03'
});


connection.connect();
//REST API part
//ALL BUILDINGS
router.get("/api/buildings", (req, res) =>{
    connection.query('SELECT * FROM buildings', function (err, rows, fields) {
        if (err) return res.redirect("back");
        res.json(rows);
    });  
});
//ALL FLATS
router.get("/api/flats", (req, res) =>{
    connection.query('SELECT * FROM flats', function (err, rows, fields) {
        if (err) return res.redirect("back");
        res.json(rows);
    });  
});
//SPECIFIC FLAT
router.get("/api/flats/:id", (req, res) =>{
    connection.query('SELECT * FROM flats WHERE id = ' + req.params.id, function (err, rows, fields) {
        if (err) return res.redirect("back");
        res.json(rows[0]);
    });  
});
//UPDATE SPECIFIC FLAT
router.put("/api/flats/:id", (req, res) => {
    var toUpdate = req.body;
    connection.query('ALTER * FROM flats WHERE id = ' + req.params.id, function (err, rows, fields) {
        if (err) return res.redirect("back");
        res.json(rows[0]);
    }); 
});

module.export = router;