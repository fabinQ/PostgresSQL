-- Database: hospital

-- DROP DATABASE IF EXISTS hospital;

CREATE DATABASE hospital
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'Polish_Poland.1250'
    LC_CTYPE = 'Polish_Poland.1250'
    TABLESPACE = pg_default
    CONNECTION LIMIT = 100
    IS_TEMPLATE = False;

COMMENT ON DATABASE hospital
    IS 'DB for hospital';