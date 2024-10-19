FROM python:3.11-slim

WORKDIR /app

COPY . /app

RUN pip install poetry
RUN poetry install --no-dev

CMD ["poetry", "run", "python", "persondocker build -t personal_assistant .al_assistant/main.py"]