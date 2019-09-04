FROM mcr.microsoft.com/dotnet/core/sdk:2.2-alpine

RUN dotnet tool install --global dotnet-sonarscanner --version 4.6.2
RUN PATH="${PATH}:/root/.dotnet/tools"

RUN apk add --no-cache openjdk8-jre

RUN apk add --update curl git jq python py-pip
RUN pip --cache-dir=pip_cache install awscli