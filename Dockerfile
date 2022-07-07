FROM python:3.8
COPY requirements.txt requirements.txt 
RUN apt-get update
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
WORKDIR /js-fastapi-monitoring
COPY . /js-fastapi-monitoring
EXPOSE 80
CMD ["uvicorn", "app.api:app", "--host", "0.0.0.0", "--port", "80"]