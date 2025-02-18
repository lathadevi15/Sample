const express = require('express');
const mysql = require('mysql');
const cors = require('cors');

const app = express();
app.use(cors());
app.use(express.json());

// MySQL Database Connection
const db = mysql.createConnection({
    host: 'localhost',
    user: 'root',  // Change this if needed
    password: '',  // Change this if needed
    database: 'quizdb'  // Change this to your DB name
  });

//  app.get('/api/questions', (req, res) => {
 //   db.query('SELECT * FROM questions ORDER BY RAND() LIMIT 10', (err, results) => {
  app.get('/api/questions', (req, res) => {
    db.query('SELECT id, question, option1, option2, option3, option4, correct FROM questions ORDER BY RAND() LIMIT 10', (err, results) => {
        if (err) {
            console.error(err);
            res.status(500).send('Server Error');
            return;
        }
        const formattedResults = results.map(q => ({
            ...q,
            correct: Number(q.correct) // Ensure correct answer is a number
        }));
        res.json(formattedResults);
    });
});

app.post('/name', (req, res) => {
  const sql = "INSERT INTO `name`(`name`) VALUES (?)"; // Use `users` if `name` is your table
  const values = [req.body.name];

  db.query(sql, values, (err, data) => {
    if (err) {
      console.error("Database error:", err);
      return res.status(500).json({ error: "Database error" });
    }
    return res.json({ message: "Name saved successfully", data });
  });
});

app.get('/name', (req, res) => {
  db.query("SELECT name FROM name", (err, results) => {
    if (err) {
      console.error("Database error:", err);
      return res.status(500).json({ error: "Database error" });
    }
    res.json(results);
  });
});




  app.listen(5000, () => {
    console.log('Server is running on port 5000');
  });