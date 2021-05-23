[![CircleCI](https://circleci.com/gh/vprocopan/c4-project-udacity.svg?style=svg)](https://app.circleci.com/pipelines/github/vprocopan/c4-project-udacity/21/workflows/cee66691-a5e2-4cd2-b5a0-70ee2cee4bab/jobs/27)
## Cloud DevOps, Microservices and Containers

The project's goal is to operationalize a machine learning microservice using kubernetes. Predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. The service serves out predictions (inference) about housing prices through API calls. The model has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on.


## Files explanation
config.yml: CircleCI configuration file for running the tests
app.py: Python flask app that serves out predictions (inference) about housing prices through API calls
Dockerfile: Dockerfile for building the image
make_prediction.sh: Send a request to the Python flask app to get a prediction, for localhost
Makefile: includes instructions on environment setup and lint tests
run_docker.sh: file to be able to get Docker running, locally
run_kubernetes.sh: file to run the app in kubernetes
upload_docker.sh: file to upload the image to docker


## Instructions
---

## Setup the Environment

* Create a virtualenv and activate it
1. python3 -m venv ~/.devops
2. source ~/.devops/bin/activate
3. make install
4. make lint

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`


* Setup and Configure Docker locally
1. curl -fsSL https://get.docker.com -o get-docker.sh
2. bash get-docker.sh 

 Setup and Configure Kubernetes locally
1. curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube_latest_amd64.deb
2. sudo dpkg -i minikube_latest_amd64.deb
3. minikube start

* Create Flask app in Container
1. minikube kubectl run project-ml -- --image=vprocopan/project-ml:v1 --port=80
2. minikube kubectl port-forward project-ml 8000:80
