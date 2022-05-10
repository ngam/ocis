FROM ubuntu:20.04

RUN apt-get update && apt-get install wget

RUN sh -c "wget -O - https://dl.openfoam.org/gpg.key | apt-key add -"

RUN add-apt-repository http://dl.openfoam.org/ubuntu

RUN apt-get update

RUN apt-get -y install openfoam9

