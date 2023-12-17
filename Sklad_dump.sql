--
-- PostgreSQL database dump
--

-- Dumped from database version 12.14 (Ubuntu 12.14-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.14 (Ubuntu 12.14-0ubuntu0.20.04.1)

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
-- Name: sklad; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sklad (
    id_tovara integer NOT NULL,
    name_tovara character varying(225),
    quantity integer,
    availability boolean
);


ALTER TABLE public.sklad OWNER TO postgres;

--
-- Name: sklad_id_tovara_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.sklad ALTER COLUMN id_tovara ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.sklad_id_tovara_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Data for Name: sklad; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sklad (id_tovara, name_tovara, quantity, availability) FROM stdin;
1	Chainik	20	t
2	Morozhenoe	15	f
3	Mishka	30	t
4	Tetradka	25	t
5	Chipsi	18	f
6	Shtanga	22	t
7	Moloko	17	f
8	Televizor	28	t
9	Tapki	23	f
10	Stul	21	t
\.


--
-- Name: sklad_id_tovara_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sklad_id_tovara_seq', 10, true);


--
-- Name: sklad sklad_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sklad
    ADD CONSTRAINT sklad_pkey PRIMARY KEY (id_tovara);


--
-- PostgreSQL database dump complete
--

