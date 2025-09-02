# Etapa de build
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /src

# Copia e restaura os pacotes
COPY *.csproj ./
RUN dotnet restore

# Copia todo o código e publica em Release
COPY . ./
RUN dotnet publish -c Release -o /app

# Etapa de runtime
FROM mcr.microsoft.com/dotnet/aspnet:8.0
WORKDIR /app

# Copia artefatos da etapa de build
COPY --from=build /app ./

# Expõe a porta padrão do ASP.NET Core
EXPOSE 80

# Comando de inicialização
ENTRYPOINT ["dotnet", "TodoAPI.dll"]