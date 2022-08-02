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
    color VARCHAR(250),
);

CREATE TABLE books
(
    id          SERIAL PRIMARY KEY,
    publisher   VARCHAR(250),
    cover_state VARCHAR(250),
    item_id     INT,
    CONSTRAINT item_fk FOREIGN KEY (item_id) REFERENCES item (id)
);