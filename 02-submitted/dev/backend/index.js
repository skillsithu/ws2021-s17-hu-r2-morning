const express = require('express');
const mysql = require('mysql');

const conn = mysql.createConnection({
    user: 'skill17',
    password: 'Shanghai2021',
    database: 'skills_it_02'
});
const app = express();

const getBuildingWithFlatCount = async (building, response) => {
    return new Promise(resolve => {
        conn.query(`SELECT COUNT(*) FROM flats WHERE building_id = ${building.id}`, (err, rows) => {
            if(err) {
                console.error('Failed to get flats count for a building!');
                console.error(err);
            }
            response.push({
                ...building,
                count_of_flats: err ? 0 : rows[0]['COUNT(*)']
            });
            resolve();
        });
    });
}

app.use(express.json());

app.get('/buildings', (req, res) => {
    conn.query('SELECT * FROM buildings', async (err, rows) => {
        if(err) {
            console.error('Failed to get buildings from database!');
            console.error(err);
            res.json({ error: true });
            return;
        }
        const response = new Array();
        for (var row of rows) 
            await getBuildingWithFlatCount(row, response);
        res.json(response);
    });
});

app.get('/flats', (req, res) => {
    conn.query('SELECT * FROM flats', (err, rows) => {
        if(err) {
            console.error('Failed to get flats from database!');
            console.error(err);
            res.json({ error: true });
            return;
        }
        res.json(rows)
    });
});

app.put('/flats/:id', (req, res) => {
    conn.query(`UPDATE flats SET building_id=${mysql.escape(req.body.building_id)}, ref=${mysql.escape(req.body.ref)}, floor=${mysql.escape(req.body.floor)}, rooms=${mysql.escape(req.body.rooms)}, orientation=${mysql.escape(req.body.orientation)}, net_area=${mysql.escape(req.body.net_area)}, balcony_area=${mysql.escape(req.body.balcony_area)}, price=${mysql.escape(req.body.price)}, sold=${mysql.escape(req.body.sold)} WHERE id=${mysql.escape(req.params.id)}`, err => {
        if(err) {
            console.error('Failed to update a flat!');
            console.error(err);
            res.json({ error: true });
            return;
        }
        res.json({
            id: req.params.id,
            ...req.body
        });
    });
});

conn.connect(err => {
    if (err) {
        console.error('Mysql connection failed!');
        console.error(err);
        process.exit(1);
    }
    console.log('Mysql connection created!');
    app.listen(8000, () => console.log('The backend is listening on port 8000!'));
});