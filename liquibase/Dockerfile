# First stage: Build dependencies and download files
FROM ubuntu:22.04 AS build

RUN apt-get update && apt-get install -y \
    curl \
    unzip && \
    apt-get clean

# Download the JDBC driver
RUN curl -L https://storage.googleapis.com/simba-bq-release/jdbc/SimbaJDBCDriverforGoogleBigQuery42_1.6.2.1003.zip -o /tmp/SimbaJDBCDriverforGoogleBigQuery42_1.6.2.1003.zip && \
    unzip /tmp/SimbaJDBCDriverforGoogleBigQuery42_1.6.2.1003.zip -d /tmp/jdbc && \
    rm -rf /tmp/SimbaJDBCDriverforGoogleBigQuery42_1.6.2.1003.zip

# Download Liquibase BigQuery jar
RUN curl -L https://github.com/liquibase/liquibase-bigquery/releases/download/v4.31.0/liquibase-bigquery-4.31.0.jar -o /tmp/liquibase-bigquery-4.31.0.jar

# Second stage: Final image with Liquibase
FROM liquibase:latest

# Copy and rename the JDBC driver
COPY --from=build /tmp/jdbc/ /liquibase/lib/

# Copy Liquibase BigQuery extension
COPY --from=build /tmp/liquibase-bigquery-4.31.0.jar /liquibase/lib/

# Copy changelog and properties files into the container
COPY ./changelog /liquibase/changelog
COPY ./liquibase.properties /liquibase/

# Set the working directory to liquibase
WORKDIR /liquibase

CMD ["liquibase", "update"]
