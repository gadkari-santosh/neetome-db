FROM openjdk:17

COPY ./build/libs/neetome-db-*.jar neetome-db.jar
COPY ./file-storage /file-storage
COPY ./csv /csv
COPY ./nosql /nosql

CMD ["java","-Dspring.profiles.active=local-docker","-jar","neetome-db.jar"]