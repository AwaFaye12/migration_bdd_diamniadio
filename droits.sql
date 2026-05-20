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
-- PostgreSQL database dump complete
--

