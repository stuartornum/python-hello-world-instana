FROM python:2.7.15-alpine3.9
ADD ./requirements.txt /srv
RUN pip install -r /srv/requirements.txt
WORKDIR /srv
ENV FLASK_APP=hello.py
ENV INSTANA_AGENT_HOST='10.51.2.93'
ENV INSTANA_AGENT_PORT='1444'
ENV INSTANA_AGENT_KEY='0UgNQXwVTLCeYhQgExOjCQ'
ENV INSTANA_SERVICE_NAME=flash_helloworld
ENV INSTANA_DEV="true"
ENV AUTOWRAPT_BOOTSTRAP=flask
ADD hello.py /srv/hello.py
EXPOSE 5000
ENTRYPOINT ["flask", "run", "--host=0.0.0.0"]
