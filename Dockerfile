FROM python:3.11-slim-bookworm

WORKDIR /app

# system deps (psycopg2 등 빌드용)
RUN apt-get update \
 && apt-get install --no-install-recommends -y \
    dnsutils libpq-dev python3-dev gcc build-essential \
 && rm -rf /var/lib/apt/lists/*

# Python deps
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# App source
COPY . .

# Django settings 및 포트
ENV DJANGO_SETTINGS_MODULE=pygoat.settings
EXPOSE 8000

# 개발 서버 기동 (compose에서도 이 커맨드를 쓸 수 있음)
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
