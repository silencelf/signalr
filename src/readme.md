##run web server:
    cd src/
    dotnet publish -c Release
    docker build . -t dotnet_web
    docker run --name dotnet_web -dp 5000:5000 dotnet_web

##run nginx:
    cd nginx/
    docker build dockerfile -t nginx_web
    docker run --name nginx_web -dp 80:8080 nginx_web

##using docker-compose:
    ./run.sh