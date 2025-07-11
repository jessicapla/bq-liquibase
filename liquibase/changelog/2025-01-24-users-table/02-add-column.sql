--changeset 02-add-columns --author jessicapla
ALTER TABLE users
  ADD COLUMN email STRING;

ALTER TABLE users
  ADD COLUMN age INT64;

ALTER TABLE users
  ADD COLUMN created_at TIMESTAMP;

ALTER TABLE users
  ADD COLUMN updated_at TIMESTAMP;

ALTER TABLE users
  ALTER COLUMN created_at SET DEFAULT CURRENT_TIMESTAMP();

ALTER TABLE users
  ALTER COLUMN updated_at SET DEFAULT CURRENT_TIMESTAMP();
