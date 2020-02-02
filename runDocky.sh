#!/bin/bash

cd CsvToJSONorXML
git reset --hard origin/master
git pull origin master
mvn clean package
cd ..
cp CsvToJSONorXML/target/ale2-1.0*.jar javaservice.jar
docker build -t javaservice .
docker-compose up
