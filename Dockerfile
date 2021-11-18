FROM mcr.microsoft.com/azure-functions/python:3.0-python3.6

ENV AzureWebJobsScriptRoot=/home/site/wwwroot \
    AzureFunctionsJobHost__Logging__Console__IsEnabled=true

RUN apt install unzip

COPY requirements.txt /
RUN pip install -r /requirements.txt

COPY .serverless/azure-time-tracker-prueba.zip /home/site/wwwroot/

RUN cd /home/site/wwwroot/ && unzip azure-time-tracker-prueba.zip