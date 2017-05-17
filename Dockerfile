FROM python:3.4-alpine
ADD . /code
WORKDIR /code
ENV HTTP_PROXY http://192.169.32.2:8000 
ENV HTTPS_PROXY https://192.169.32.2:8000
RUN export http_proxy=$HTTP_PROXY
RUN export https_proxy=$HTTPS_PROXY
RUN pip install -r requirements.txt
CMD ["python", "app.py"]

