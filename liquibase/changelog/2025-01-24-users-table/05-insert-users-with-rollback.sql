--liquibase formatted sql
--changeset jessicapla:05-insert-users
--tag test-tag
INSERT INTO users (name, email, age)
VALUES
  ('Alice Johnson', 'alice.johnson@example.com', 30),
  ('Bob Smith', 'bob.smith@example.com', 25),
  ('Charlie Brown', 'charlie.brown@example.com', 35);

--rollback DELETE FROM users WHERE name IN ('Alice Johnson', 'Bob Smith', 'Charlie Brown');
