--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.14
-- Dumped by pg_dump version 11.0

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: hackaton; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE hackaton WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Portuguese_Brazil.1252' LC_CTYPE = 'Portuguese_Brazil.1252';


ALTER DATABASE hackaton OWNER TO postgres;

\connect hackaton

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: hackaton; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA hackaton;


ALTER SCHEMA hackaton OWNER TO postgres;

--
-- Name: sq_pessoa; Type: SEQUENCE; Schema: hackaton; Owner: postgres
--

CREATE SEQUENCE hackaton.sq_pessoa
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 999999999
    CACHE 1;


ALTER TABLE hackaton.sq_pessoa OWNER TO postgres;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: pessoa; Type: TABLE; Schema: hackaton; Owner: postgres
--

CREATE TABLE hackaton.pessoa (
    id integer DEFAULT nextval('hackaton.sq_pessoa'::regclass) NOT NULL,
    nome text NOT NULL,
    email text NOT NULL
);


ALTER TABLE hackaton.pessoa OWNER TO postgres;

--
-- Data for Name: pessoa; Type: TABLE DATA; Schema: hackaton; Owner: postgres
--

INSERT INTO hackaton.pessoa VALUES (1, 'Rebeca Nonato', 'rebecanonato89@gmail.com');


--
-- Name: sq_pessoa; Type: SEQUENCE SET; Schema: hackaton; Owner: postgres
--

SELECT pg_catalog.setval('hackaton.sq_pessoa', 1, false);


--
-- Name: pessoa pessoa_pkey; Type: CONSTRAINT; Schema: hackaton; Owner: postgres
--

ALTER TABLE ONLY hackaton.pessoa
    ADD CONSTRAINT pessoa_pkey PRIMARY KEY (id);


--
-- Name: pessoa unique_pessoa_Email; Type: CONSTRAINT; Schema: hackaton; Owner: postgres
--

ALTER TABLE ONLY hackaton.pessoa
    ADD CONSTRAINT "unique_pessoa_Email" UNIQUE (email);


--
-- PostgreSQL database dump complete
--

