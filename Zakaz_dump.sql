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
-- Name: zakaz; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.zakaz (
    id_zakaza integer NOT NULL,
    id_tovara integer,
    name_tovara character varying(255),
    id_klienta integer,
    surname character varying(255),
    name character varying(255),
    status_zakaza character varying(50),
    id_dostavshika integer,
    name_dostavshika character varying(50)
);


ALTER TABLE public.zakaz OWNER TO postgres;

--
-- Name: zakaz_id_zakaza_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.zakaz ALTER COLUMN id_zakaza ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.zakaz_id_zakaza_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Data for Name: zakaz; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.zakaz (id_zakaza, id_tovara, name_tovara, id_klienta, surname, name, status_zakaza, id_dostavshika, name_dostavshika) FROM stdin;
1	1	Chainik	1	Петров	Иван	В обработке	1	Иван
2	2	Morozhenoe	2	Сидоров	Петр	Выполнен	3	Сидор
3	3	Mishka	3	Смирнов	Алексей	Отменен	5	Дмитрий
4	4	Tetradka	4	Кузнецов	Сидор	В пути	7	Артем
5	5	Chipsi	5	Николаев	Дмитрий	В обработке	9	Андрей
6	6	Shtanga	6	Козлов	Николай	Выполнен	2	Петр
7	7	Moloko	7	Лебедев	Артем	Отменен	4	Алексей
8	8	Televizor	8	Андреев	Егор	В пути	6	Николай
9	9	Tapki	9	Борисов	Андрей	В обработке	8	Егор
10	10	Stul	10	Иванов	Борис	Выполнен	10	Борис
\.


--
-- Name: zakaz_id_zakaza_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.zakaz_id_zakaza_seq', 10, true);


--
-- Name: zakaz zakaz_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.zakaz
    ADD CONSTRAINT zakaz_pkey PRIMARY KEY (id_zakaza);


--
-- Name: zakaz zakaz_id_dostavshika_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.zakaz
    ADD CONSTRAINT zakaz_id_dostavshika_fkey FOREIGN KEY (id_dostavshika) REFERENCES public.dostavshik(id_dostavshika);


--
-- Name: zakaz zakaz_id_klienta_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.zakaz
    ADD CONSTRAINT zakaz_id_klienta_fkey FOREIGN KEY (id_klienta) REFERENCES public.klient(id_klienta);


--
-- Name: zakaz zakaz_id_tovara_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.zakaz
    ADD CONSTRAINT zakaz_id_tovara_fkey FOREIGN KEY (id_tovara) REFERENCES public.sklad(id_tovara);


--
-- PostgreSQL database dump complete
--

