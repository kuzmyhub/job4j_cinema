CREATE TABLE sessions (
  id SERIAL PRIMARY KEY,
  name text
);

CREATE TABLE ticket (
    id SERIAL PRIMARY KEY,
    session_id INT NOT NULL REFERENCES sessions(id),
    pos_row INT NOT NULL,
    cell INT NOT NULL,
    user_id INT NOT NULL REFERENCES users(id),
    UNIQUE (session_id, pos_row, cell)
);