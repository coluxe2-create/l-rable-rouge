# Utiliser une image Node.js officielle
FROM node:22

# Répertoire de travail
WORKDIR /app

# Installation des dépendances
COPY package*.json ./
RUN npm install

# Copie du code source
COPY . .

# Build du frontend
RUN npm run build

# Variables d'environnement par défaut
ENV NODE_ENV=production
ENV PORT=3000

# Exposition du port
EXPOSE 3000

# Démarrage
CMD ["npm", "start"]