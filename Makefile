setup:
	# Create python virtualenv & source it
	# source ~/.devops/bin/activate
	#python3 -m venv ~/.project5
	python3 -m venv ~/.devops
	#source ~/.devops/bin/activate


install:
	# This should be run from inside a virtualenv
	pip install --upgrade pip &&\
		pip install -r requirements.txt&&\
	wget -O /bin/hadolint https://github.com/hadolint/hadolint/releases/download/v1.16.3/hadolint-Linux-x86_64 &&\
    	chmod +x /bin/hadolint 
    	#sudo wget https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 &&\
    	#sudo cp minikube-linux-amd64 /usr/local/bin/minikube &&\
    	#sudo chmod 755 /usr/local/bin/minikube &&\
    	#minikube start --memory=1954mb
    	 
    	


test:
	# Additional, optional, tests could go here
	#python -m pytest -vv --cov=myrepolib tests/*.py
	#python -m pytest --nbval notebook.ipynb

lint:
	# See local hadolint install instructions:   https://github.com/hadolint/hadolint
	# This is linter for Dockerfilesmake 
	hadolint Dockerfile
	# This is a linter for Python source code linter: https://www.pylint.org/
	# This should be run from inside a virtualenv
	pylint --disable=R,C,W1203,W1202 prject5.py

all: install lint test
