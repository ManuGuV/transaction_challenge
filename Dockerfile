#Python base image
FROM python:3

#Copy required files to the image
COPY libraries.txt libraries.txt
COPY /src/. /src

#Install python dependencies
RUN pip install -r libraries.txt

#Start the application
CMD python /src/main.py