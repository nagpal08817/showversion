FROM ubuntu
RUN apt-get update
RUN apt-get install -y python
RUN apt-get install -y python-pip
RUN pip install flask
   
COPY showversion.py /opt/showversion.py 
  
ENTRYPOINT FLASK_APP=/opt/showversion.py flask run --host=0.0.0.0
