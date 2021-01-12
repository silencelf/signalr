#!/bin/sh
cd src/ &&
dotnet publish -c release &&
cp -R bin/Release/net5.0/publish/wwwroot/ ../nginx/wwwroot/
docker build . -t dotnet_web &&
cd ../nginx/ &&
docker build . -t nginx_web &&
cd .. &&
docker-compose up
