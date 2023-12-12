--
-- PostgreSQL database dump
--

-- Dumped from database version 15.4 (Ubuntu 15.4-1ubuntu1)
-- Dumped by pg_dump version 15.4 (Ubuntu 15.4-1ubuntu1)

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: sga_cargos; Type: TABLE; Schema: negocio; Owner: postgres
--

CREATE TABLE guarani.sga_cargos (
    cargo integer DEFAULT nextval(('sga_cargos_seq'::text)::regclass) NOT NULL,
    nombre character varying(100) NOT NULL,
    nombre_femenino character varying(100) NOT NULL,
    activo character(1) DEFAULT 'S'::bpchar NOT NULL,
    nombre_no_binario character varying(100),
    CONSTRAINT ck_sga_cargos_activo CHECK ((activo = ANY (ARRAY['S'::bpchar, 'N'::bpchar])))
);


ALTER TABLE guarani.sga_cargos OWNER TO postgres;

--
-- Data for Name: sga_cargos; Type: TABLE DATA; Schema: negocio; Owner: postgres
--

COPY guarani.sga_cargos (cargo, nombre, nombre_femenino, activo, nombre_no_binario) FROM stdin;
1	Rector	Rectora	S	\N
\.


--
-- Name: sga_cargos pk_sga_cargos; Type: CONSTRAINT; Schema: negocio; Owner: postgres
--

ALTER TABLE ONLY guarani.sga_cargos
    ADD CONSTRAINT pk_sga_cargos PRIMARY KEY (cargo);


--
-- Name: sga_cargos tauditoria_sga_cargos; Type: TRIGGER; Schema: negocio; Owner: postgres
--

CREATE TRIGGER tauditoria_sga_cargos AFTER INSERT OR DELETE OR UPDATE ON guarani.sga_cargos FOR EACH ROW EXECUTE FUNCTION negocio_auditoria.sp_sga_cargos();


--
-- Name: TABLE sga_cargos; Type: ACL; Schema: negocio; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE guarani.sga_cargos TO PUBLIC;


--
-- PostgreSQL database dump complete
--

