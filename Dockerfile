FROM python:3.14-slim

WORKDIR /app

RUN useradd -ms /bin/bash pythonuser

COPY /app/requirements.txt .

RUN pip install -r requirements.txt

COPY app/ .

EXPOSE 5000

USER pythonuser

ENV FLASK_APP=/app/main.py

CMD ["flask", "run", "--host=0.0.0.0", "--port=5000"]