var express = require("express"),
    router = express.Router(),
    mysql = require("mysql");

router.get("/", (req, res) =>{
    res.send("CSÁSZÁR VAGYOK");
});

module.exports = router;