FROM python:3.7.3-stretch

## Step 1:
# Create a working directory
RUN mkdir -p /usr/src/app



## Step 2:
# Copy source code to working directory
WORKDIR /usr/src/app
COPY . /usr/src/app/

## Step 3:
# Install packages from requirements.txt
# hadolint ignore=DL3013
WORKDIR /usr/src/app
RUN make install

## Step 4:
# Expose port 80
EXPOSE 80


## Step 5:
# Run app.py at container launch
CMD ["python","app.py"]
