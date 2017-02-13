#FROM microsoft/dotnet:1.0.0-core
FROM microsoft/dotnet:1.1-runtime # if not building in container
WORKDIR /app
ENV ASPNETCORE_URLS http://*:5000
EXPOSE 5000
ENTRYPOINT ["dotnet", "testwebapi.dll"]
COPY . /app
