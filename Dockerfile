FROM python:3.10-slim

WORKDIR /home

RUN apt-get update && apt-get install -y git nodejs npm && rm -rf /var/lib/apt/lists/*

COPY req /home

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["sleep", "infinity"]
