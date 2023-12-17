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
-- Name: dostavshik; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dostavshik (
    id_dostavshika integer NOT NULL,
    surname_dostavshika character varying(255),
    name_dostavshika character varying(255),
    phone_number character varying(255),
    car_number character varying(10)
);


ALTER TABLE public.dostavshik OWNER TO postgres;

--
-- Name: dostavshik_id_dostavshika_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.dostavshik ALTER COLUMN id_dostavshika ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.dostavshik_id_dostavshika_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Data for Name: dostavshik; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.dostavshik (id_dostavshika, surname_dostavshika, name_dostavshika, phone_number, car_number) FROM stdin;
1	Иванов	Иван	+123456789	ABC123
2	Петров	Петр	+987654321	XYZ789
3	Сидоров	Сидор	+111222333	DEF456
4	Кузнецов	Алексей	+999888777	GHI789
5	Смирнов	Дмитрий	+555444333	JKL123
6	Николаев	Николай	+777888999	MNO456
7	Козлов	Артем	+123789456	PQR789
8	Лебедев	Егор	+456789123	STU456
9	Андреев	Андрей	+321654987	VWX123
10	Борисов	Борис	+789123456	YZA789
\.


--
-- Name: dostavshik_id_dostavshika_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.dostavshik_id_dostavshika_seq', 10, true);


--
-- Name: dostavshik dostavshik_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dostavshik
    ADD CONSTRAINT dostavshik_pkey PRIMARY KEY (id_dostavshika);


--
-- PostgreSQL database dump complete
--

