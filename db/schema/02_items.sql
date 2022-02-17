DROP TABLE IF EXISTS items CASCADE;

CREATE TABLE items (
  id SERIAL PRIMARY KEY NOT NULL,
  owner_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
  title VARCHAR(255) NOT NULL,
  quantity SMALLINT NOT NULL,
  price_per_item INTEGER NOT NULL DEFAULT 0,
  description TEXT NOT NULL,
  picture_url VARCHAR(255) NOT NULL,
  posted_at DATE NOT NULL DEFAULT NOW(),
  sold BOOLEAN NOT NULL DEFAULT FALSE,
  active BOOLEAN NOT NULL DEFAULT TRUE
);
