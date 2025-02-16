FROM python:3.13

RUN mkdir -p /var/app
COPY main.py /var/app
COPY requirements.txt /var/app
RUN /usr/local/bin/pip install -r /var/app/requirements.txt

HEALTHCHECK CMD ["/usr/bin/curl", "0.0.0.0:8001"]
ENTRYPOINT ["/usr/local/bin/fastapi", "run", "/var/app/main.py"]