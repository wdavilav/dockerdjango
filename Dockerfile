# imagen que necesitamos
FROM python:3.9.16-buster
# Donde ejecutaremos los siguientes comandos
WORKDIR /home/projects
# install requirements
COPY . .
RUN pip install -r requirements.txt
RUN sh entrypoint.sh
RUN rm -r Dockerfile && rm -r entrypoint.sh


