FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build-env
#WORKDIR /App

COPY ./stackjudge_identity_service/IDS/StackjudgeIdentityServer/StackjudgeIdentityServer.csproj /project/IDS/StackjudgeIdentityServer/StackjudgeIdentityServer.csproj

RUN cd /project/IDS/StackjudgeIdentityServer && dotnet restore

COPY ./stackjudge_identity_service /project

RUN cd /project/IDS/StackjudgeIdentityServer && dotnet publish -c Release -o /out

FROM mcr.microsoft.com/dotnet/aspnet:6.0

COPY --from=build-env /out .

ENTRYPOINT ["dotnet", "StackjudgeIdentityServer.dll"]
