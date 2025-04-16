# Usar la imagen base de Debian
FROM node:alpine
# Continuar con la configuración de tu aplicación
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .

# Corre los tests durante el build
RUN npm test
