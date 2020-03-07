const express = require('express')
const mysql = require('mysql')
const bodyParser = require('body-parser')
const app = express()

app.use(bodyParser.json())

const sql = mysql.createConnection({
	host: 'localhost',
	user: 'skill17',
	password: 'Shanghai2021',
	database: 'skills_it_06'
})

sql.connect()

const router = express.Router()

router.get('/buildings', (req, res, next)=>{
	sql.query('SELECT buildings.*, COUNT(*) AS count_of_flats FROM buildings LEFT JOIN flats ON buildings.id = flats.building_id GROUP BY buildings.id;', (err, buildings)=>{
		res.send(buildings)
	})
})

router.get('/flats', (req, res, next)=>{
	sql.query('SELECT * FROM flats;', (err, flats)=>{
		res.send(flats.map(flat=>{return {...flat, sold:Boolean(flat.sold)}}))
	})
})

router.put('/flats/:flatId', (req, res, next)=>{
	sql.query('UPDATE flats SET building_id=?, ref=?, floor=?, rooms=?, orientation=?, net_area=?, balcony_area=?, price=?, sold=? WHERE flats.id=?', 
		[req.body.building_id, req.body.ref, req.body.floor, req.body.rooms, req.body.orientation, req.body.net_area, req.body.balcony_area, req.body.price, Number(req.body.sold), req.params.flatId],
		(err, result)=>{
			sql.query('SELECT * FROM flats WHERE id=?', req.params.flatId, ((err, flat)=>{
				res.send({...flat[0], sold: Boolean(flat[0].sold)})
			}))
		}
	)
})

app.use('/', router) // /api

app.listen(8000, ()=>{
	console.log('Listening on :8000')
})