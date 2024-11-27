FROM python:3.9.20-slim

COPY requirements.txt ./

RUN pip3 install --no-cache -r requirements.txt

COPY main.py ./
COPY src ./src

CMD ["python3", "-u", "main.py"]
