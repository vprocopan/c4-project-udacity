## The Makefile includes instructions on environment setup and lint tests
# Create and activate a virtual environment
# Install dependencies in requirements.txt
# Dockerfile should pass hadolint
# app.py should pass pylint
# (Optional) Build a simple integration test

setup:
	# Create python virtualenv & source it
	source ~/.devops/bin/activate
	python3 -m venv ~/.devops
install:
	# This should be run from inside a virtualenv
	pip3 install --upgrade pip &&\
	pip3 install -r requirements.txt
	wget https://github.com/hadolint/hadolint/releases/download/v1.16.3/hadolint-Linux-x86_64
	mv hadolint-Linux-x86_64 hadolint
	chmod +x ./hadolint	

test:
	# Additional, optional, tests could go here
	#python -m pytest -vv --cov=myrepolib tests/*.py
	#python -m pytest --nbval notebook.ipynb

lint:
	./hadolint Dockerfile
	pylint --disable=R,C,W1203,W1202 app.py

all: install lint test
