DROP TABLE IF EXISTS messages CASCADE;

CREATE TABLE messages (
  id SERIAL PRIMARY KEY NOT NULL,
  user_id INTEGER REFERENCES users(id) on DELETE CASCADE,
  item_id INTEGER REFERENCES items(id) on DELETE CASCADE,
  user_message VARCHAR(255),
  sent_at TIMESTAMP DEFAULT NOW()
)
