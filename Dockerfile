FROM mcr.microsoft.com/dotnet/sdk:5.0 AS build-env
WORKDIR /app

# Copy everything else and build
COPY . ./
WORKDIR /app/sdks/cli
RUN git submodule update --init
# RUN dotnet restore
# RUN dotnet publish -c Release -o out

# # Build runtime image
# FROM mcr.microsoft.com/dotnet/aspnet:5.0
# WORKDIR /app
# COPY --from=build-env /app/server/Trinsic.Identity.Server/out .
# ENV ASPNETCORE_URLS=http://+:6369
# ENTRYPOINT ["dotnet", "Trinsic.Server.dll", "--environment=Development"]
# EXPOSE 6369
