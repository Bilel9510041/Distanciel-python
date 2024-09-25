# Utiliser une image de base Python
FROM python:3.9

# Définir le répertoire de travail
WORKDIR /app

# Copier le fichier requirements.txt (s'il existe) et installer les dépendances
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Copier le fichier main.py
COPY main.py ./

# Exposer le port sur lequel l'application s'exécute
EXPOSE 5000

# Commande pour exécuter l'application
CMD ["python", "main.py"]
