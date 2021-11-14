#Create a ubuntu base image with python 3 installed.
FROM python:3

#copy all the files
COPY . /usr/src/app/.

#Set the working directory
WORKDIR /usr/src/app

#Install the dependencies

RUN apt-get -y update && apt-get install -y python3 python3-pip

RUN pip install flask Flask-SQLAlchemy
RUN pip install sqlalchemy
RUN pip install -r requirements.txt

#Expose the required port
#EXPOSE 5001

#Run the command
CMD python ./app.py

