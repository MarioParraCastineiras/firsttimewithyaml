# Usamos una imagen base de Python 3.12 esencial para ejecutar nuestra aplicación Django.
FROM python:3.12-slim

ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1

WORKDIR /app

# Dependencias del proyecto.
RUN pip install --no-cache-dir \
    Django \
    djangorestframework \
    python-dotenv \
    django-extensions \
    requests

COPY . .

EXPOSE 8000
# Comando para ejecutar el servidor de desarrollo de Django.
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
