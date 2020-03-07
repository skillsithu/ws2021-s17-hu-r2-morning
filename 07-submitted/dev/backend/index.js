const express = require("express")
const app = express()

app.use(express.json())

const mysql = require('mysql');
const db = mysql.createConnection({
    host: "localhost",
    user: "skill17",
    password: "Shanghai2021",
    database: "skills_it_07"
})

db.connect((err) => {
    if(err) throw err;
    console.log("DB connected")

    app.get("/buildings", (req, res) => {
        const sql = "SELECT * FROM buildings";
        db.query(sql, (err, result) => {
            if(err) throw err;
            res.send(result);
        })
    })

    app.get("/flats", (req, res) => {
        const sql = "SELECT * FROM flats";
        db.query(sql, (err, result) => {
            if(err) throw err;
            res.send(result);
        })
    })

    app.put("/flats/:id", (req, res) => {
        const sql = "UPDATE flats SET building_id=?, ref=?, floor=?, rooms=?, orientation=?, net_area=?, balcony_area=?, price=?, sold=? WHERE id=?";
        const {building_id, ref, floor, rooms, orientation, net_area, balcony_area, price, sold} = req.body;
        db.query(sql, [building_id, ref, floor, rooms, orientation, net_area, balcony_area, price, sold, req.params.id], (err, result) => {
            if(err) throw err;
            db.query("SELECT * FROM flats WHERE id = ?", [req.params.id], (err, result) => {
                if(err) throw err;
                res.json(result)
            })
        })
    })
}), 

app.listen("8000", () => {
    console.log("App is listening on port 8000")
})