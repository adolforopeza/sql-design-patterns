CREATE DATABASE IF NOT EXISTS bittree CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE bittree;

CREATE TABLE bittree.profiles (
  id uuid NOT NULL DEFAULT uuid_generate_v4(),
  display_name character varying NOT NULL,
  headline character varying NOT NULL,
  bio text,
  avatar_url character varying,
  is_active boolean NOT NULL DEFAULT true,
  created_at timestamp with time zone NOT NULL DEFAULT timezone('utc'::text, now()),
  updated_at timestamp with time zone NOT NULL DEFAULT timezone('utc'::text, now()),
  CONSTRAINT profiles_pkey PRIMARY KEY (id)
);

CREATE TABLE bittree.links (
  id integer NOT NULL DEFAULT nextval('bittree.links_id_seq'::regclass),
  profile_id uuid NOT NULL,
  title character varying NOT NULL,
  url text NOT NULL,
  icon character varying,
  position integer NOT NULL DEFAULT 0,
  clicks integer NOT NULL DEFAULT 0,
  is_active boolean NOT NULL DEFAULT true,
  created_at timestamp with time zone NOT NULL DEFAULT timezone('utc'::text, now()),
  updated_at timestamp with time zone NOT NULL DEFAULT timezone('utc'::text, now()),
  CONSTRAINT links_pkey PRIMARY KEY (id),
  CONSTRAINT links_profile_id_fkey FOREIGN KEY (profile_id) REFERENCES bittree.profiles(id)
);

