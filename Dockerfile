FROM python:3.11-slim

RUN apt-get update && apt-get install -y ffmpeg libopus0 ffmpeg

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .

CMD ["python", "main.py"]
