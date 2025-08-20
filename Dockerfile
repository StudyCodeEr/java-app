# Stage 1: Build WAR bằng Maven (Render tự làm)
FROM maven:3.9.6-eclipse-temurin-17 AS build
WORKDIR /app
COPY . .
RUN mvn -U clean package -DskipTests

# Stage 2: Chạy Tomcat
FROM tomcat:9.0-jdk17

# Disable shutdown port để hết warning
RUN sed -i 's/port="8005"/port="-1"/' /usr/local/tomcat/conf/server.xml
# Giảm log rác
RUN echo "org.apache.catalina.core.StandardServer.level = SEVERE" >> /usr/local/tomcat/conf/logging.properties

# Copy WAR sang ROOT.war để chạy thẳng ở "/"
COPY --from=build /app/target/JavaApp.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080
CMD ["catalina.sh", "run"]
