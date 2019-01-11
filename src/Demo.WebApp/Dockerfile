FROM microsoft/dotnet:2.2-aspnetcore-runtime AS base
WORKDIR /app
EXPOSE 80
EXPOSE 443

FROM microsoft/dotnet:2.2-sdk AS build
WORKDIR /src
COPY ["src/Demo.WebApp/Demo.WebApp.csproj", "src/Demo.WebApp/"]
RUN dotnet restore "src/Demo.WebApp/Demo.WebApp.csproj"
COPY . .
WORKDIR "/src/src/Demo.WebApp"
RUN dotnet build "Demo.WebApp.csproj" -c Release -o /app

FROM build AS publish
RUN dotnet publish "Demo.WebApp.csproj" -c Release -o /app

FROM base AS final
WORKDIR /app
COPY --from=publish /app .
ENTRYPOINT ["dotnet", "Demo.WebApp.dll"]