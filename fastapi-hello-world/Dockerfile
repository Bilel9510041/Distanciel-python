FROM tiangolo/uvicorn-gunicorn-fastapi:python3.8

WORKDIR /app

# Copier le fichier requirements.txt avant le dossier de l'application
COPY requirements.txt .

# Installer les dépendances
RUN pip install --no-cache-dir -r requirements.txt

# Copier le dossier de l'application
COPY ./app /app

CMD ["uvicorn", "app.app:app", "--host", "0.0.0.0", "--port", "80"]
