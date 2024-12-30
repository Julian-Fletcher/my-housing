const mysql = require('mysql2')

// Database connection
const db = mysql.createConnection({
    host: 'localhost',
    user: 'user1',
    password: '',
    database: 'myhousing'
});

db.connect((err) => {
    if(err){
        console.error('Error connecting to database was: ', err);
        return;
    }
    console.log('Successfully connected to database!');
});

