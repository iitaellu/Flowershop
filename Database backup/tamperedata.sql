toc.dat                                                                                             0000600 0004000 0002000 00000005606 14712674177 0014466 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP           	            
    |            Tampere    15.2    15.2                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                    0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                    0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                    1262    51601    Tampere    DATABASE     ~   CREATE DATABASE "Tampere" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Finnish_Finland.1252';
    DROP DATABASE "Tampere";
                postgres    false         �            1259    51696    bouquet    TABLE     �   CREATE TABLE public.bouquet (
    id integer,
    name character varying,
    description character varying,
    small character varying,
    regular character varying,
    big character varying
);
    DROP TABLE public.bouquet;
       public         heap    postgres    false         �            1259    51711    cards    TABLE     �   CREATE TABLE public.cards (
    id integer,
    name character varying,
    description character varying,
    price character varying,
    stock integer
);
    DROP TABLE public.cards;
       public         heap    postgres    false         �            1259    51671    flowers    TABLE     �   CREATE TABLE public.flowers (
    id integer,
    name character varying,
    description character varying,
    price character varying,
    stock integer
);
    DROP TABLE public.flowers;
       public         heap    postgres    false         �            1259    51726    pots    TABLE     �   CREATE TABLE public.pots (
    id integer,
    name character varying,
    description character varying,
    price character varying,
    stock integer
);
    DROP TABLE public.pots;
       public         heap    postgres    false         �          0    51696    bouquet 
   TABLE DATA           M   COPY public.bouquet (id, name, description, small, regular, big) FROM stdin;
    public          postgres    false    215       3327.dat            0    51711    cards 
   TABLE DATA           D   COPY public.cards (id, name, description, price, stock) FROM stdin;
    public          postgres    false    216       3328.dat �          0    51671    flowers 
   TABLE DATA           F   COPY public.flowers (id, name, description, price, stock) FROM stdin;
    public          postgres    false    214       3326.dat           0    51726    pots 
   TABLE DATA           C   COPY public.pots (id, name, description, price, stock) FROM stdin;
    public          postgres    false    217       3329.dat                                                                                                                          3327.dat                                                                                            0000600 0004000 0002000 00000001045 14712674177 0014270 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	A pink dream	A wonderful bouquet in light pink and pink tones	32e	45e	62e
2	A bouquet of drops of joy	A happy colored mixed bouquet from current selection	25e	30e	35e
3	A bouquet of hearts	Heart bouquet red and pink shades (shown abundant)	18e	28e	38e
6	BOUQUET broken shades	a relaxed bouquet in light and muted tones, spectacular in the picturea relaxed bouquet in light and muted tones, spectacular in the picture	38e	50e	90e
7	A fresh and playful bouquet	white and green flowers and gray cut greens, tied airily and playfully	28e	38e	58e
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3328.dat                                                                                            0000600 0004000 0002000 00000000543 14712674177 0014273 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Flower card	Cute cards with picture of flowers	4e	8
6	Greeting card	Unique cards for congratulations by Artist Anu-Riikka Lampinen	6,50e	1
7	Memorial card	Unique cards for participation by Artist Anu-Riikka Lampinen	7e	4
2	Greeting card	Congratulate with a beautiful birthday card!	5e	6
3	Thank you card	A thank you card for many situations.	6e	10
\.


                                                                                                                                                             3326.dat                                                                                            0000600 0004000 0002000 00000000522 14712674177 0014266 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Orchid	A three year old Phalaenipsis orchid in a glass pot	40e	10
2	Jade plant	Easy-care scarce watering Jade plant in a ceramic pot	20e	15
6	Snake plant	Fashionable and easy snake plant	22e	5
7	Norfolk Island pine	Traditional green plant 40-55cm high in a beautiful container	40e	2
8	Houseleek	A durable, trendy, easy gift	25e	13
\.


                                                                                                                                                                              3329.dat                                                                                            0000600 0004000 0002000 00000000313 14712674177 0014267 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        3	Small Ava Pot Cream	Ø6.5cm	5,95e	4
5	Nea Hanging Pot Grey	Ø13cm	25,45e	5
6	Grow Baby Grow Pot Beige	Ø8cm	39,95e	5
7	Please Do Not Die Pot Black	Ø8cm	39,95e	2
8	Tess Pot Black	Ø13cm	21,95e	12
\.


                                                                                                                                                                                                                                                                                                                     restore.sql                                                                                         0000600 0004000 0002000 00000006567 14712674177 0015422 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
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

DROP DATABASE "Tampere";
--
-- Name: Tampere; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "Tampere" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Finnish_Finland.1252';


ALTER DATABASE "Tampere" OWNER TO postgres;

\connect "Tampere"

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
    stock integer
);


ALTER TABLE public.pots OWNER TO postgres;

--
-- Data for Name: bouquet; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bouquet (id, name, description, small, regular, big) FROM stdin;
\.
COPY public.bouquet (id, name, description, small, regular, big) FROM '$$PATH$$/3327.dat';

--
-- Data for Name: cards; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cards (id, name, description, price, stock) FROM stdin;
\.
COPY public.cards (id, name, description, price, stock) FROM '$$PATH$$/3328.dat';

--
-- Data for Name: flowers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.flowers (id, name, description, price, stock) FROM stdin;
\.
COPY public.flowers (id, name, description, price, stock) FROM '$$PATH$$/3326.dat';

--
-- Data for Name: pots; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pots (id, name, description, price, stock) FROM stdin;
\.
COPY public.pots (id, name, description, price, stock) FROM '$$PATH$$/3329.dat';

--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         