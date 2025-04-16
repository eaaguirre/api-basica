# Usar la imagen base de Debian
FROM node:20-alpine

# Actualizar la lista de paquetes e instalar las actualizaciones de seguridad
RUN apt-get update && apt-get upgrade -y && apt-get dist-upgrade -y && apt-get clean

# Continuar con la configuración de tu aplicación
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .

# Corre los tests durante el build
RUN npm test
