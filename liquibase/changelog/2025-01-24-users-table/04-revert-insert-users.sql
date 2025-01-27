--changeset jessicapla:04-revert-insert-users
DELETE FROM users
WHERE name IN ('Alice Johnson', 'Bob Smith', 'Charlie Brown');
