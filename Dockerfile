FROM python:2.7-alpine
RUN pip install requests
WORKDIR /
COPY . /
ENTRYPOINT ["python", "noisy.py"]