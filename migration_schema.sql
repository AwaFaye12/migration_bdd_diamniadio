--
-- PostgreSQL database dump
--

-- Dumped from database version 17.4
-- Dumped by pg_dump version 17.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- Name: client; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.client (
    id integer NOT NULL,
    nom character varying(50),
    prenom character varying(50),
    email character varying(100),
    telephone integer
);


ALTER TABLE public.client OWNER TO postgres;

--
-- Name: client_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.client_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.client_id_seq OWNER TO postgres;

--
-- Name: client_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.client_id_seq OWNED BY public.client.id;


--
-- Name: etudiant; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.etudiant (
    id integer NOT NULL,
    nom character varying(50),
    prenom character varying(50),
    email character varying(100),
    telephone integer
);


ALTER TABLE public.etudiant OWNER TO postgres;

--
-- Name: etudiant_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.etudiant_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.etudiant_id_seq OWNER TO postgres;

--
-- Name: etudiant_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.etudiant_id_seq OWNED BY public.etudiant.id;


--
-- Name: test_perf; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.test_perf (
    id integer NOT NULL,
    nom character varying(100),
    prenom character varying(100),
    email character varying(200),
    age integer,
    ville character varying(100),
    date_inscription date
);


ALTER TABLE public.test_perf OWNER TO postgres;

--
-- Name: test_perf_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.test_perf_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.test_perf_id_seq OWNER TO postgres;

--
-- Name: test_perf_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.test_perf_id_seq OWNED BY public.test_perf.id;


--
-- Name: client id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.client ALTER COLUMN id SET DEFAULT nextval('public.client_id_seq'::regclass);


--
-- Name: etudiant id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.etudiant ALTER COLUMN id SET DEFAULT nextval('public.etudiant_id_seq'::regclass);


--
-- Name: test_perf id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.test_perf ALTER COLUMN id SET DEFAULT nextval('public.test_perf_id_seq'::regclass);


--
-- Name: client client_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.client
    ADD CONSTRAINT client_email_key UNIQUE (email);


--
-- Name: client client_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.client
    ADD CONSTRAINT client_pkey PRIMARY KEY (id);


--
-- Name: etudiant etudiant_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.etudiant
    ADD CONSTRAINT etudiant_pkey PRIMARY KEY (id);


--
-- Name: test_perf test_perf_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.test_perf
    ADD CONSTRAINT test_perf_pkey PRIMARY KEY (id);


--
-- Name: idx_test_perf_ville; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_test_perf_ville ON public.test_perf USING btree (ville);


--
-- Name: idx_test_perf_ville_age; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_test_perf_ville_age ON public.test_perf USING btree (ville, age);


--
-- Name: idx_ville; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_ville ON public.test_perf USING btree (ville);


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: pg_database_owner
--

GRANT USAGE ON SCHEMA public TO user_test;
GRANT USAGE ON SCHEMA public TO user_stage;


--
-- Name: TABLE client; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.client TO user_test;
GRANT SELECT ON TABLE public.client TO groupe_lecture;
GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.client TO user_stage;


--
-- Name: TABLE etudiant; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT ON TABLE public.etudiant TO user_test;
GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.etudiant TO user_stage;


--
-- Name: TABLE test_perf; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.test_perf TO user_stage;


--
-- PostgreSQL database dump complete
--

