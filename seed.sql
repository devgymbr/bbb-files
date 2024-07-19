CREATE TABLE voting_summaries (
    id SERIAL PRIMARY KEY NOT NULL,
    player_public_id char NOT NULL,
    voting_window_id int NOT NULL,
    votes_count bigint NOT NULL,
    UNIQUE (player_public_id, voting_window_id)
);

CREATE TABLE voting_windows (
    id SERIAL PRIMARY KEY NOT NULL,
    time_start timestamp NOT NULL,
    time_end timestamp NOT NULL
);

CREATE TABLE players (
    id SERIAL PRIMARY KEY NOT NULL,
    public_id char NOT NULL,
    voting_window_id int NOT NULL
);

INSERT INTO voting_windows (id, time_start, time_end) 
VALUES (1, NOW()  - INTERVAL '5 day', NOW() - INTERVAL '2 day'), (2, NOW(), NOW() + INTERVAL '2 day');

INSERT INTO players (public_id, voting_window_id)
VALUES ('A', 1), ('B', 1), ('C', 1), ('A', 2), ('B', 2);