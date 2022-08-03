CREATE TABLE item
(
    id           SERIAL PRIMARY KEY,
    genre_id     INT,
    author_id    INT,
    label_id     INT,
    publish_date DATE,
    archived     BOOLEAN,
    CONSTRAINT label_fk FOREIGN KEY (label_id) REFERENCES labels (id)
);

CREATE TABLE labels
(
    id    SERIAL PRIMARY KEY,
    title VARCHAR(250),
    color VARCHAR(250)
);

CREATE TABLE books
(
    id          SERIAL PRIMARY KEY,
    publisher   VARCHAR(250),
    cover_state VARCHAR(250),
    item_id     INT,
    CONSTRAINT item_fk FOREIGN KEY (item_id) REFERENCES item (id)
);

CREATE TABLE music_albums
(
    id         INT,
    name       VARCHAR(100),
    on_spotify BOOLEAN,
    item_id    INT,
    CONSTRAINT item_fk FOREIGN KEY (item_id) REFERENCES item (id)
);

CREATE TABLE genres
(
    id   SERIAL PRIMARY KEY,
    name VARCHAR(100)
);

CREATE TABLE authors
(
    id          SERIAL PRIMARY KEY,
    first_name  VARCHAR(250),
    last_name   VARCHAR(250)
);

CREATE TABLE games
(
    id                SERIAL PRIMARY KEY,
    multiplayer       VARCHAR(250),
    last_played_at    INT,
    item_id           INT,
    CONSTRAINT item_fk FOREIGN KEY (item_id) REFERENCES item (id)
);