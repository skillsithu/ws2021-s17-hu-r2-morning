//framework reqs
var express = require("express"),
    app = express(),
    mysql = require("mysql");
//GLOBAL VARS
const PORT = process.env.PORT || 8000;
const IP = process.env.IP || "127.0.0.1";
//middleware
//var middleware = require("./middleware/index.js");
middleware = {};

//middleware for checnking if user is loggex in
middleware.isLoggedIn = function(req, res, next){
    if((res.locals.username && res.locals.username === "admin") && (res.locals.password && res.locals.password === "123")){
        return next();
    }
    res.redirect("/login");
}

//Connect to db
var connection = mysql.createConnection({
  host: 'localhost',
  user: 'skill17',
  password: 'Shanghai2021',
  database: 'skills_it_03'
});
connection.connect();

//sharing public folders
app.use(express.static(__dirname + "/htdocs"));
app.use(express.static(__dirname + "/public"));

//main middleware for every route
app.use(function(req, res, next){
  res.locals.username = res.locals.use || null;
  res.locals.password = res.locals.password  || null;
  next();
});
//ROUTES PART
//"FRONTEND" routes
//index
app.get("/", middleware.isLoggedIn, (req, res) =>{
  if((res.locals.username && res.locals.username === "admin") && (res.locals.password && res.locals.password === "123")){
    res.sendFile(__dirname + "/htdocs/index.html");
  }
  else res.redirect("/login");
});
//login
app.get("/login", (req, res) => {
  res.sendFile(__dirname + "/htdocs/login.html");
});
//"authenticating"
app.post("/login", (req, res) => {
  if((!res.locals.username && req.body.username === "admin") && (!res.locals.username && req.body.password === "123")){
    res.locals.username = req.body.username;
    res.locals.password = req.body.password;
    res.redirect("/");
  } else {
    res.redirec("/login");
  }
});
app.get("/logout", (req, res) => {
  if(res.local.loggedIn){
    res.locals.loggedIn = false;
  }
  res.redirect("/login");
});
//buldings
app.get("/buildings", middleware.isLoggedIn, (req, res) => {
  res.sendFile(__dirname + "/htdocs/buldings.html");
});
//under construction
app.get("/import-export", middleware.isLoggedIn, (req, res) => {
  res.sendFile(__dirname + "/htdocs/import-export.html");
});

//REST API part
//ALL BUILDINGS
app.get("/api/buildings", middleware.isLoggedIn, (req, res) =>{
  connection.query('SELECT * FROM buildings', function (err, rows, fields) {
      if (err) return res.redirect("back");
      res.json(rows);
  });  
});
//ALL FLATS
app.get("/api/flats", middleware.isLoggedIn, (req, res) =>{
  connection.query('SELECT * FROM flats', function (err, rows, fields) {
      if (err) return res.redirect("back");
      res.json(rows);
  });  
});
//SPECIFIC FLAT
app.get("/api/flats/:id", middleware.isLoggedIn, (req, res) =>{
  connection.query('SELECT * FROM flats WHERE id = ' + req.params.id, function (err, rows, fields) {
      if (err) return res.redirect("back");
      res.json(rows[0]);
  });  
});
//UPDATE SPECIFIC FLAT
app.put("/api/flats/:id", middleware.isLoggedIn, (req, res) => {
  var toUpdate = req.body;
  //update db
  connection.query('UPDATE flats SET '.concat(
    "bulding_id = " + toUpdate.bulding_id,
    "ref =" + toUpdatet.ref,
    "floor = " + toUpdate.floor,
    "rooms = " + toUpdate.rooms,
    "orientation = " + toUpdate.orientation,
    "net_area = " + toUpdate.net_area,
    "balcony_area = " + toUpdate.balcony_area,
    "price = " + toUpdate.price,
    "sold = " + toUpdate.sold,
    ' WHERE flats.id = ' + req.params.id
  ), function (err, rows, fields) {
      if (err) return res.redirect("back");
      res.json(toUpdate);
  });
});



app.listen(PORT, IP, (req, res) => {
  console.log("APP IS UP 8)");
  console.log("__RUNNING ON:___\nPORT:" + PORT + "\nIP:" + IP);
});
