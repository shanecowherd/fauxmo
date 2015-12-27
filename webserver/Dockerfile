FROM ubuntu
RUN apt-get update && \
apt-get install nodejs npm -y && \
mkdir web && \
cd web && \
npm install express
RUN echo "var express = require('express'); " + \
"var app = express(); " + \
\
"app.get('/lightsOn', function (req, res) { " + \
"    console.log('Turning the lights on'); " + \
"    res.send('Turning the lights on'); " + \
"}); " + \
\
"app.get('/lightsOff', function (req, res) { " + \
"    console.log('Turning the lights off'); " + \
"    res.send('Turning the lights off'); " + \
"}); " + \
\
"var server = app.listen(1620, function () { " + \
"  console.log('Webserver Started'); " + \
"}); " > start.js
EXPOSE 1620
ENTRYPOINT nodejs /web/start.js
