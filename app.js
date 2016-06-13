var express = require('express');
var app = express();

app.use(function (req, res) {
    res.end('OK!');
});

app.listen(3000, function () {
    console.log('server listening on port: 3000');
});
