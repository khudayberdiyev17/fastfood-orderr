FROM python:3.9-slim-buster

WORKDIR /app

COPY src/requirements.txt ./

RUN pip install aiogram && pip install aiohttp

COPY src /app

CMD ["python", "./main.py"]
