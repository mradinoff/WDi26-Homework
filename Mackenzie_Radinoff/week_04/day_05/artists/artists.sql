CREATE TABLE artists (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  origin TEXT,
  years_active TEXT,
  image TEXT
);

INSERT INTO artists (name, origin, years_active) VALUES ('Radiohead', 'Oxfordshire, England', '1985-present');
