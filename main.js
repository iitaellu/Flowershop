const express = require('express');
const {Client}=require('pg');
const path = require("path");

//open and connect to the server
const server = express();
const port = 3000;
server.use(express.json());
server.use(express.static(path.join(__dirname, "frontend")));
server.listen(port, () => {
    console.log('Server started on port '+port);
});

server.get('/city', async (req, res) => {
    const city = req.query.name;

    const con=new Client({
        host:"localhost",
        user:"postgres",
        port: 5432,
        password: "Admin",
        database: city
    });
    
    try {
        await con.connect();
        console.log(`Connected to database ${city}`);

        const databaseflowers = await con.query('SELECT * FROM flowers');
        const databaseBoquet = await con.query('SELECT * FROM bouquet');
        const databaseCards = await con.query('SELECT * FROM cards');
        const databasePots = await con.query('SELECT * FROM pots')
        console.log("Query successful:", databaseflowers.rows, databaseBoquet.rows, databaseCards.rows, databasePots.rows);

        let database = [databaseflowers.rows, databaseBoquet.rows, databaseCards.rows, databasePots.rows];
        console.log(database);
        res.json(database);  // Send the query result to the frontend as JSON
    } catch (err) {
        console.error("Database error:", err.message);
        res.status(500).send("Database error: " + err.message);
    } finally {
        await con.end();
        console.log("Database connection closed");
    }
})
/*const city = "Lappeenranta";

const con=new Client({
    host:"localhost",
    user:"postgres",
    port: 5432,
    password: "Admin",
    database: city
});

con.connect().then(()=> console.log("connected"));

con.query('Select * from demotable', (err, res)=>{
    if (!err){
        console.log(res.rows)
    }
    else{
        console.log(err.message)
    }
    con.end;
});*/

server.get('/', (reg, res) => {
    res.send('Flower Shop');
});