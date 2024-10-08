# PAMWeb

Aquí está el README actualizado con los bloques de código formateados y resaltados para copiar y pegar comandos:

PAMWeb
##Proyecto web para la administración de admisiones a maestrías.

##Este proyecto fue generado con Angular CLI versión 14.2.6.

Requisitos previos
Docker
Docker Compose
Configuración del entorno con Docker
Sigue los pasos a continuación para construir y ejecutar el proyecto con Docker.

1. Clonar el repositorio
Clona el repositorio localmente:

 ```bas
Copiar código
git clone https://github.com/JonnyJaimes/pamweb.git
 ```
cd pamweb
2. Construir la imagen de Docker
Construye la imagen Docker utilizando el Dockerfile incluido:

 ```bash
Copiar código
sudo docker build -t pamweb .
 ```

3. Ejecutar el contenedor
Ejecuta el contenedor con el nombre pamweb-container y expone la aplicación en el puerto 4200:

 ```bash
Copiar código
sudo docker run -p 4200:80 --name pamweb-container pamweb
Ahora, puedes acceder a la aplicación en tu navegador a través de: http://localhost:4200.
 ```

4. Detener y eliminar el contenedor
Para detener el contenedor que está en ejecución:

 ```bash
Copiar código
sudo docker stop pamweb-container
Para eliminar el contenedor:
 ```
bash
Copiar código
sudo docker rm pamweb-container
5. Uso de Docker Compose (opcional)
Si tienes un archivo docker-compose.yml, puedes iniciar todos los servicios definidos con:

 ```bash
Copiar código
sudo docker-compose up --build
Para detener los servicios ejecutados con Docker Compose:
 ```


 ```bash
Copiar código
sudo docker-compose down
6. Comandos útiles
Verificar los contenedores activos:

 ```

 ```bash
Copiar código
sudo docker ps
Ver los registros de un contenedor en ejecución:
 ```

 ```bash
Copiar código
sudo docker logs pamweb-container
Eliminar una imagen de Docker:

 ```

 ```bash
Copiar código
sudo docker rmi pamweb

 ```

##Notas adicionales
####Asegúrate de que el puerto 4200 esté libre antes de ejecutar el contenedor.

####Si realizas cambios en la aplicación, deberás reconstruir la imagen usando el comando docker build antes de volver a ejecutar el contenedor.
####Desarrollo con Angular CLI
####Ejecuta ng serve para un servidor de desarrollo. Navega a http://localhost:4200. La aplicación se recargará automáticamente si cambias cualquiera de los archivos fuente.
###Code scaffolding
###Ejecuta ng generate component component-name para generar un nuevo componente. También puedes usar ng generate directive|pipe|service|class|guard|interface|enum|module.
Build
Ejecuta ng build para compilar el proyecto. Los artefactos de la compilación se almacenarán en el directorio dist/.
Ejecutar pruebas unitarias
Ejecuta ng test para ejecutar las pruebas unitarias a través de Karma.
Ejecutar pruebas end-to-end
Ejecuta ng e2e para ejecutar las pruebas end-to-end utilizando una plataforma de tu elección. Para usar este comando, primero debes agregar un paquete que implemente capacidades de pruebas end-to-end.
Ayuda adicional
Para obtener más ayuda sobre Angular CLI, usa ng help o consulta la página oficial de Angular CLI.
