--
-- PostgreSQL database dump
--

-- Dumped from database version 16.8 (Ubuntu 16.8-1.pgdg22.04+1)
-- Dumped by pg_dump version 16.8 (Ubuntu 16.8-1.pgdg22.04+1)

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
-- Name: public; Type: SCHEMA; Schema: -; Owner: -
--

-- *not* creating schema, since initdb creates it


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: maxine_global_chat; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.maxine_global_chat (
    server_id bigint NOT NULL,
    channel_id bigint NOT NULL,
    webhook_url text
);


--
-- Name: maxine_global_chat maxine_global_chat_server_id_channel_id_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.maxine_global_chat
    ADD CONSTRAINT maxine_global_chat_server_id_channel_id_key UNIQUE (server_id, channel_id);


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: -
--

REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

