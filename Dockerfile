FROM python:3.10

RUN mkdir -p /usr/src/hello/
WORKDIR /usr/src/hello/

COPY . /usr/src/hello/
RUN pip install --no-cache-dir -r reqs

EXPOSE 8080

CMD ["python", "webhello.py"]