FROM    mcr.microsoft.com/dotnet/sdk:5.0
COPY    bin/Release/net5.0/ app/ 
WORKDIR /app/
ENTRYPOINT ["dotnet", "signalr.dll", "--urls=http://0.0.0.0:5000"]
