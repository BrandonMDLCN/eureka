# Usamos una imagen ligera de Java
FROM eclipse-temurin:21-jre-alpine

# Directorio de trabajo
WORKDIR /app

# Copiamos el JAR (ajusta el nombre según tu proyecto)
COPY target/*.jar app.jar

# Exponemos el puerto estándar de Eureka
EXPOSE 8761

# Ejecutamos la aplicación
ENTRYPOINT ["java", "-jar", "app.jar"]