DROP TABLE IF EXISTS Users
CASCADE;
DROP TABLE IF EXISTS Projects;

-- TODO: remigrate the DB here
CREATE TABLE Users
(
  login VARCHAR(150) NOT NULL,
  id SERIAL PRIMARY KEY,
  node_id "MDQ6VXNlcjM3MzM3NzM=",
  avatar_url "https://avatars3.githubusercontent.com/u/3733773?v=4",
  name "Rey Dekker",
  bio "She's Coding Seattle Chapter Lead Humanitarian Loves Typescript",
  html_url "https://github.com/nurmerey",
);

CREATE TABLE Projects
(
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  github_url VARCHAR(255) NOT NULL UNIQUE,
  description TEXT NOT NULL,
  looking_for TEXT NOT NULL,
  created TIMESTAMPTZ NOT NULL,
  updated TIMESTAMPTZ NOT NULL,
  lead_id INTEGER REFERENCES Users(id)
  DEFERRABLE INITIALLY DEFERRED,
  contributors VARCHAR
  (100)
  [] NOT NULL,
  tags TEXT
);
