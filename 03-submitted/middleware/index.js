var express = require("express"),
    app = express();

middlewareObj = {};

middlewareObj.isLoggedIn = function(req, res, next){
    if(res.locals.loggedin){
        return next();
    }
    res.redirect("/login");
}

module.export = middlewareObj;