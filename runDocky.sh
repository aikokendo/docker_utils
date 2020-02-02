#!/bin/bash

cd CsvToJSONorXML
git reset --hard origin/master
git pull origin master
mvn clean package
cd ..
cp CsvToJSONorXML/target/ale2-1.0*.jar javaService.jar
docker build -t javaService .
docker-compose up
