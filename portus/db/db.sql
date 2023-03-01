--
-- PostgreSQL database dump
--

-- Dumped from database version 13.3 (Debian 13.3-1.pgdg100+1)
-- Dumped by pg_dump version 15.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: portus; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA portus;


ALTER SCHEMA portus OWNER TO postgres;

--
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

-- *not* creating schema, since initdb creates it


ALTER SCHEMA public OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: estaciones; Type: TABLE; Schema: portus; Owner: postgres
--

CREATE TABLE portus.estaciones (
    nombre text,
    id integer NOT NULL
);


ALTER TABLE portus.estaciones OWNER TO postgres;

--
-- Name: predicciones; Type: TABLE; Schema: portus; Owner: postgres
--

CREATE TABLE portus.predicciones (
    fecha_pasada timestamp without time zone NOT NULL,
    id_estacion integer,
    var text,
    pred real[]
);


ALTER TABLE portus.predicciones OWNER TO postgres;

--
-- Data for Name: estaciones; Type: TABLE DATA; Schema: portus; Owner: postgres
--

COPY portus.estaciones (nombre, id) FROM stdin;
Boya de Begur	2128143
\.


--
-- Data for Name: predicciones; Type: TABLE DATA; Schema: portus; Owner: postgres
--

COPY portus.predicciones (fecha_pasada, id_estacion, var, pred) FROM stdin;
\.


--
-- Name: estaciones estaciones_pk; Type: CONSTRAINT; Schema: portus; Owner: postgres
--

ALTER TABLE ONLY portus.estaciones
    ADD CONSTRAINT estaciones_pk PRIMARY KEY (id);


--
-- Name: predicciones predicciones_estaciones_id_fk; Type: FK CONSTRAINT; Schema: portus; Owner: postgres
--

ALTER TABLE ONLY portus.predicciones
    ADD CONSTRAINT predicciones_estaciones_id_fk FOREIGN KEY (id_estacion) REFERENCES portus.estaciones(id);


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

