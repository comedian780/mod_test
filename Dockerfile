FROM python:3.6-alpine

RUN pip install pymodbus
WORKDIR /app

COPY . .

EXPOSE 502

ENTRYPOINT ["python"]
CMD ["synchronous_server.py"]
