# DS-docker
DS-docker is a docker container for Datascience and Machine Learning projects.

## How to use

* Install docker https://docs.docker.com/engine/installation/
* Clone the project
* Go inside the ds-docker project `$ cd ds-docker`
* Run `$ docker build -t dsdocker .`
* After the build is complete run the docker container
* Run `$ docker run -it -v "$PWD:/mnt" ds-docker`


