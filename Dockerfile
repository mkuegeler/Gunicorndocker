# Docker with flask and gunicorn
FROM python:3.6-alpine 

COPY server /server
WORKDIR /server

RUN chmod +x start.sh

RUN pip install -r requirements.txt

EXPOSE 8000
# ENTRYPOINT ["python3","server.py"]
# ENTRYPOINT ["gunicorn", "--bind 0.0.0.0:8000", "wsgi.py"]
ENTRYPOINT ["./start.sh"]
