FROM python:3.11.3
WORKDIR /app
COPY . /app
RUN pip install -r requirements.txt
EXPOSE 5000 
CMD python ./my_flask.py