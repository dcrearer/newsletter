-- Add migration script here
INSERT INTO users (user_id, username, password_hash)
VALUES (
    '23301E4B-22F1-42C6-AC8F-B99DD8ACA358',
    'admin',
    '$argon2id$v=19$m=15000,t=2,p=1$ivDyBt9wNLrVvLK6On4HFA$thOmAWKfb75/6QBgXl7I23E2Rt/Lf3dwKA4c8v5ht/Q'
);