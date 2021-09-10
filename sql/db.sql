CREATE DATABASE mrakotop;
CREATE SCHEMA public;

CREATE TABLE IF NOT EXISTS public.authors
(
    id integer PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    name text
)

CREATE TABLE IF NOT EXISTS public.posts
(
    id integer PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    author_id integer REFERENCES authors ON DELETE CASCADE,
    title text NOT NULL,
    url text NOT NULL,
    votes integer NOT NULL DEFAULT 0,
    rating integer  NOT NULL DEFAULT 0,
    last_access timestamp
)