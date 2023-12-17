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
-- Name: klient; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.klient (
    id_klienta integer NOT NULL,
    surname character varying(255),
    name character varying(255),
    patronymic character varying(255),
    passport_series character varying(10),
    passport_number character varying(15),
    phone_number character varying(15),
    residential_address character varying(255)
);


ALTER TABLE public.klient OWNER TO postgres;

--
-- Name: klient_id_klienta_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.klient ALTER COLUMN id_klienta ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.klient_id_klienta_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Data for Name: klient; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.klient (id_klienta, surname, name, patronymic, passport_series, passport_number, phone_number, residential_address) FROM stdin;
1	Петров	Иван	Иванович	AB	123456	+987654321	ул. Ленина, 1
2	Сидоров	Петр	Петрович	CD	789012	+111222333	ул. Гагарина, 2
3	Кузнецов	Сидор	Сидорович	EF	345678	+999888777	ул. Пушкина, 3
4	Смирнов	Алексей	Алексеевич	GH	901234	+555444333	ул. Чехова, 4
5	Николаев	Дмитрий	Дмитриевич	IJ	567890	+777888999	ул. Тургенева, 5
6	Козлов	Николай	Николаевич	KL	234567	+123789456	ул. Достоевского, 6
7	Лебедев	Артем	Артемович	MN	890123	+456789123	ул. Булгакова, 7
8	Андреев	Егор	Егорович	OP	456789	+321654987	ул. Горького, 8
9	Борисов	Андрей	Андреевич	QR	123456	+789123456	ул. Пастернака, 9
10	Иванов	Борис	Борисович	ST	789012	+111111111	ул. Бродского, 10
\.


--
-- Name: klient_id_klienta_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.klient_id_klienta_seq', 10, true);


--
-- Name: klient klient_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.klient
    ADD CONSTRAINT klient_pkey PRIMARY KEY (id_klienta);


--
-- PostgreSQL database dump complete
--

