# Etapa 1: Construcción de la aplicación Angular
FROM node:18-alpine AS build

# Instalar Angular CLI globalmente
RUN npm install -g @angular/cli

# Establecer el directorio de trabajo
WORKDIR /app

# Copiar los archivos de la aplicación al contenedor
COPY package*.json ./
COPY . .

# Instalar las dependencias
RUN npm install

# Construir la aplicación Angular
RUN ng build --configuration production

# Etapa 2: Servir la aplicación con Nginx
FROM nginx:alpine

# Copiar los archivos de la build de Angular desde la etapa anterior
COPY --from=build /app/dist/pamweb /usr/share/nginx/html

# Exponer el puerto en el que se servirá la aplicación
EXPOSE 80

# Comando para iniciar el servidor web Nginx
CMD ["nginx", "-g", "daemon off;"]
