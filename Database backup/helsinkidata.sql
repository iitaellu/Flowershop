toc.dat                                                                                             0000600 0004000 0002000 00000005624 14712674230 0014454 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP           	            
    |            Helsinki    15.2    15.2                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                    0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                    0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                    1262    51607    Helsinki    DATABASE        CREATE DATABASE "Helsinki" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Finnish_Finland.1252';
    DROP DATABASE "Helsinki";
                postgres    false         �            1259    51773    bouquet    TABLE     �   CREATE TABLE public.bouquet (
    id integer,
    name character varying,
    description character varying,
    small character varying,
    regular character varying,
    big character varying
);
    DROP TABLE public.bouquet;
       public         heap    postgres    false         �            1259    51778    cards    TABLE     �   CREATE TABLE public.cards (
    id integer,
    name character varying,
    description character varying,
    price character varying,
    stock integer
);
    DROP TABLE public.cards;
       public         heap    postgres    false         �            1259    51783    flowers    TABLE     �   CREATE TABLE public.flowers (
    id integer,
    name character varying,
    description character varying,
    price character varying,
    stock integer
);
    DROP TABLE public.flowers;
       public         heap    postgres    false         �            1259    51788    pots    TABLE     �   CREATE TABLE public.pots (
    id integer,
    name character varying,
    description character varying,
    price character varying,
    stock character varying
);
    DROP TABLE public.pots;
       public         heap    postgres    false         �          0    51773    bouquet 
   TABLE DATA           M   COPY public.bouquet (id, name, description, small, regular, big) FROM stdin;
    public          postgres    false    214       3326.dat �          0    51778    cards 
   TABLE DATA           D   COPY public.cards (id, name, description, price, stock) FROM stdin;
    public          postgres    false    215       3327.dat            0    51783    flowers 
   TABLE DATA           F   COPY public.flowers (id, name, description, price, stock) FROM stdin;
    public          postgres    false    216       3328.dat           0    51788    pots 
   TABLE DATA           C   COPY public.pots (id, name, description, price, stock) FROM stdin;
    public          postgres    false    217       3329.dat                                                                                                            3326.dat                                                                                            0000600 0004000 0002000 00000000621 14712674230 0014254 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	A pink dream	A wonderful bouquet in light pink and pink tones	32e	45e	62e
3	A bouquet of hearts	Heart bouquet red and pink shades (shown abundant)	18e	28e	38e
4	A sunny bouquet	Yellow-green fresh bouquet	32e	47e	60e
8	The bouquet is glowing red	Tight red mixed bouquet	35e	45e	65e
7	A fresh and playful bouquet	white and green flowers and gray cut greens, tied airily and playfully	28e	38e	58e
\.


                                                                                                               3327.dat                                                                                            0000600 0004000 0002000 00000000473 14712674230 0014262 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Flower card	Cute cards with picture of flowers	4e	5
4	Memorial card	Styleish card with picture of orchid	4e	9
8	baby card	Cute cards with picture of tadybear	4e	8
6	Greeting card	Unique cards for congratulations by Artist Anu-Riikka Lampinen	6,50e	4
9	Greeting card	Beautiful card with picture of roses	4e	7
\.


                                                                                                                                                                                                     3328.dat                                                                                            0000600 0004000 0002000 00000000547 14712674230 0014265 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Orchid	A three year old Phalaenipsis orchid in a glass pot	40e	12
3	Anthurium	The Anthurium is beautiful as a green plant and blooms again very easily!	18e	7
4	cactus	Medium sized cactus, different shapes!	13e	10
7	Norfolk Island pine	Traditional green plant 40-55cm high in a beautiful container	40e	10
8	Houseleek	A durable, trendy, easy gift	25e	25
\.


                                                                                                                                                         3329.dat                                                                                            0000600 0004000 0002000 00000000321 14712674230 0014254 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        4	Medium Lisa Pot Green	Ø12cm	7,75e	15
5	Nea Hanging Pot Grey	Ø13cm	25,45e	7
10	Small Happy Harry Pot Green	Ø6cm	14,95e	10
3	Small Ava Pot Cream	Ø6.5cm	5,95e	5
9	Large Ava Pot Cream	Ø18.5cm	27,95e	3
\.


                                                                                                                                                                                                                                                                                                               restore.sql                                                                                         0000600 0004000 0002000 00000006606 14712674230 0015402 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.2

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

DROP DATABASE "Helsinki";
--
-- Name: Helsinki; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "Helsinki" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Finnish_Finland.1252';


ALTER DATABASE "Helsinki" OWNER TO postgres;

\connect "Helsinki"

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
-- Name: bouquet; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bouquet (
    id integer,
    name character varying,
    description character varying,
    small character varying,
    regular character varying,
    big character varying
);


ALTER TABLE public.bouquet OWNER TO postgres;

--
-- Name: cards; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cards (
    id integer,
    name character varying,
    description character varying,
    price character varying,
    stock integer
);


ALTER TABLE public.cards OWNER TO postgres;

--
-- Name: flowers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.flowers (
    id integer,
    name character varying,
    description character varying,
    price character varying,
    stock integer
);


ALTER TABLE public.flowers OWNER TO postgres;

--
-- Name: pots; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pots (
    id integer,
    name character varying,
    description character varying,
    price character varying,
    stock character varying
);


ALTER TABLE public.pots OWNER TO postgres;

--
-- Data for Name: bouquet; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bouquet (id, name, description, small, regular, big) FROM stdin;
\.
COPY public.bouquet (id, name, description, small, regular, big) FROM '$$PATH$$/3326.dat';

--
-- Data for Name: cards; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cards (id, name, description, price, stock) FROM stdin;
\.
COPY public.cards (id, name, description, price, stock) FROM '$$PATH$$/3327.dat';

--
-- Data for Name: flowers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.flowers (id, name, description, price, stock) FROM stdin;
\.
COPY public.flowers (id, name, description, price, stock) FROM '$$PATH$$/3328.dat';

--
-- Data for Name: pots; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pots (id, name, description, price, stock) FROM stdin;
\.
COPY public.pots (id, name, description, price, stock) FROM '$$PATH$$/3329.dat';

--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          