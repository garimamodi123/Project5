FROM python:3.7.3-stretch

## Step 1:
# Create a working directory
#RUN mkdir /app
#ADD . /app
WORKDIR /app

## Step 2:
# Copy source code to working directory
#COPY ./prject5.py /app/
COPY . /app/

## Step 3:
# Install packages from requirements.txt
# hadolint ignore=DL3013
#RUN pip install --upgrade pip &&\
#RUN pip install --trusted-host pypi.python.org -r requirements.txt
#RUN pip install -r requirements.txt
RUN pip install --no-cache-dir --upgrade pip &&\ 
    pip install --no-cache-dir --trusted-host pypi.python.org -r requirements.txt

## Step 4:
# Expose port 80
EXPOSE 5000

## Step 5:
# Run app.py at container launch
CMD ["python", "prject5.py"]
