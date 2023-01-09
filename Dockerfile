FROM mcr.microsoft.com/dotnet/aspnet:7.0 AS base
WORKDIR /app
EXPOSE 8080

FROM mcr.microsoft.com/dotnet/sdk:7.0 as build
WORKDIR /src
COPY ./LearningBlazor/LearningBlazor.csproj .
RUN dotnet restore ./LearningBlazor.csproj
COPY ./LearningBlazor .
RUN dotnet build ./LearningBlazor.csproj -c Release -o /app/build

FROM build AS publish
RUN dotnet publish LearningBlazor.csproj -c Release -o /app/publish /p:UseAppHost=false

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "LearningBlazor.dll"]
