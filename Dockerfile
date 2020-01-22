FROM python:3.6.5
MAINTAINER Your Name "miftahul@alterra.id"
RUN mkdir -p /SOSO_project
COPY . /SOSO_project
RUN pip install -r /SOSO_project/requirements.txt
WORKDIR /SOSO_project
ENTRYPOINT [ "python" ]
CMD [ "app.py" ]
