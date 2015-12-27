FROM ubuntu
RUN apt-get update && \
apt-get install nodejs npm -y && \
mkdir web && \
cd web && \
npm install express
RUN echo "var express = require('express'); \n\
var app = express(); \n\
var exec = require('child_process').exec; \n\
\n\
app.get('/lightsOn', function (req, res) { \n\
    exec('wemo light \"Shanes Light\" on'); \n\
    exec('wemo light \"Megans Light\" on'); \n\
    console.log('Turning the lights on'); \n\
    res.send('Turning the lights on'); \n\
}); \n\
\n\
app.get('/lightsOff', function (req, res) { \n\
    exec('wemo light \"Shanes Light\" off'); \n\
    exec('wemo light \"Megans Light\" off'); \n\
    console.log('Turning the lights off'); \n\
    res.send('Turning the lights off'); \n\
}); \n\
\n\
var server = app.listen(1620, function () { \n\
  console.log('Webserver Started'); \n\
}); " > /web/start.js
RUN apt-get install python-setuptools python-dev -y
RUN easy_install ouimeaux
ENTRYPOINT nodejs /web/start.js
