FROM    mcr.microsoft.com/dotnet/sdk:5.0
WORKDIR .
COPY    . .
CMD     ["dotnet", "run"]
