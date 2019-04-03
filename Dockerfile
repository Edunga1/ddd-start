FROM evoila/concourse-mvn-resource

RUN mkdir app
WORKDIR app

COPY . .

# Replace a database uri with environment
RUN sed -i 's/localhost/${DB_HOST}/' ./src/main/resources/application.properties

CMD mvn spring-boot:run

