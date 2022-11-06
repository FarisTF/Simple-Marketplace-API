--
-- PostgreSQL database dump
--

-- Dumped from database version 10.20
-- Dumped by pg_dump version 10.20

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
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: keranjang; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.keranjang (
    id_keranjang integer NOT NULL,
    id_produk integer NOT NULL
);


ALTER TABLE public.keranjang OWNER TO postgres;

--
-- Name: keranjang_id_keranjang_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.keranjang_id_keranjang_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.keranjang_id_keranjang_seq OWNER TO postgres;

--
-- Name: keranjang_id_keranjang_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.keranjang_id_keranjang_seq OWNED BY public.keranjang.id_keranjang;


--
-- Name: keranjang_id_produk_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.keranjang_id_produk_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.keranjang_id_produk_seq OWNER TO postgres;

--
-- Name: keranjang_id_produk_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.keranjang_id_produk_seq OWNED BY public.keranjang.id_produk;


--
-- Name: produk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.produk (
    id_produk integer NOT NULL,
    nama_produk character varying(255) NOT NULL,
    harga integer NOT NULL,
    stok integer NOT NULL,
    id_toko integer NOT NULL
);


ALTER TABLE public.produk OWNER TO postgres;

--
-- Name: produk_id_produk_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.produk_id_produk_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.produk_id_produk_seq OWNER TO postgres;

--
-- Name: produk_id_produk_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.produk_id_produk_seq OWNED BY public.produk.id_produk;


--
-- Name: produk_id_toko_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.produk_id_toko_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.produk_id_toko_seq OWNER TO postgres;

--
-- Name: produk_id_toko_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.produk_id_toko_seq OWNED BY public.produk.id_toko;


--
-- Name: toko; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.toko (
    id_toko integer NOT NULL,
    nama_toko character varying(255) NOT NULL,
    lokasi character varying(255) NOT NULL
);


ALTER TABLE public.toko OWNER TO postgres;

--
-- Name: toko_id_toko_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.toko_id_toko_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.toko_id_toko_seq OWNER TO postgres;

--
-- Name: toko_id_toko_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.toko_id_toko_seq OWNED BY public.toko.id_toko;


--
-- Name: keranjang id_keranjang; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.keranjang ALTER COLUMN id_keranjang SET DEFAULT nextval('public.keranjang_id_keranjang_seq'::regclass);


--
-- Name: keranjang id_produk; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.keranjang ALTER COLUMN id_produk SET DEFAULT nextval('public.keranjang_id_produk_seq'::regclass);


--
-- Name: produk id_produk; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produk ALTER COLUMN id_produk SET DEFAULT nextval('public.produk_id_produk_seq'::regclass);


--
-- Name: produk id_toko; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produk ALTER COLUMN id_toko SET DEFAULT nextval('public.produk_id_toko_seq'::regclass);


--
-- Name: toko id_toko; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.toko ALTER COLUMN id_toko SET DEFAULT nextval('public.toko_id_toko_seq'::regclass);


--
-- Data for Name: keranjang; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.keranjang (id_keranjang, id_produk) FROM stdin;
1	2
3	1
\.


--
-- Data for Name: produk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.produk (id_produk, nama_produk, harga, stok, id_toko) FROM stdin;
1	motor beat	30000	10	1
2	rendang ayam	20000	23	1
\.


--
-- Data for Name: toko; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.toko (id_toko, nama_toko, lokasi) FROM stdin;
1	rumah padang asli	Kota Padang
\.


--
-- Name: keranjang_id_keranjang_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.keranjang_id_keranjang_seq', 7, true);


--
-- Name: keranjang_id_produk_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.keranjang_id_produk_seq', 1, false);


--
-- Name: produk_id_produk_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.produk_id_produk_seq', 2, true);


--
-- Name: produk_id_toko_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.produk_id_toko_seq', 1, false);


--
-- Name: toko_id_toko_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.toko_id_toko_seq', 1, true);


--
-- Name: keranjang keranjang_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.keranjang
    ADD CONSTRAINT keranjang_pkey PRIMARY KEY (id_keranjang);


--
-- Name: produk produk_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produk
    ADD CONSTRAINT produk_pkey PRIMARY KEY (id_produk);


--
-- Name: toko toko_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.toko
    ADD CONSTRAINT toko_pkey PRIMARY KEY (id_toko);


--
-- Name: keranjang fk_keranjang_produk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.keranjang
    ADD CONSTRAINT fk_keranjang_produk FOREIGN KEY (id_produk) REFERENCES public.produk(id_produk);


--
-- Name: produk fk_produk_toko; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produk
    ADD CONSTRAINT fk_produk_toko FOREIGN KEY (id_toko) REFERENCES public.toko(id_toko);


--
-- PostgreSQL database dump complete
--

