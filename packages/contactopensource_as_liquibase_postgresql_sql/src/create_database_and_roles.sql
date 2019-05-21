CREATE DATABASE contact_open_source;

CREATE ROLE contact_open_source_administrator WITH LOGIN ENCRYPTED PASSWORD 'secret';
CREATE ROLE contact_open_source_reader WITH LOGIN ENCRYPTED PASSWORD 'secret';

GRANT ALL ON DATABASE contact_open_source TO contact_open_source_administrator;

GRANT CONNECT ON DATABASE contact_open_source TO contact_open_source_reader;
GRANT USAGE ON SCHEMA public TO contact_open_source_reader;
GRANT SELECT ON ALL TABLES IN SCHEMA public TO contact_open_source_reader;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT SELECT ON TABLES TO contact_open_source_reader;