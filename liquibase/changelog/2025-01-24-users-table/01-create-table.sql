--changeset 01-changelog
CREATE TABLE users (
                       id STRING DEFAULT GENERATE_UUID(),
                       name STRING
);
