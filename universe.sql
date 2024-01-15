--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-0ubuntu0.20.04.1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: fifth_table; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.fifth_table (
    table_id integer NOT NULL,
    name character varying,
    second_int integer,
    fifth_table_id integer NOT NULL
);


ALTER TABLE public.fifth_table OWNER TO freecodecamp;

--
-- Name: fifth_table_fifth_table_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.fifth_table_fifth_table_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fifth_table_fifth_table_id_seq OWNER TO freecodecamp;

--
-- Name: fifth_table_fifth_table_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.fifth_table_fifth_table_id_seq OWNED BY public.fifth_table.fifth_table_id;


--
-- Name: fifth_table_table_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.fifth_table_table_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fifth_table_table_id_seq OWNER TO freecodecamp;

--
-- Name: fifth_table_table_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.fifth_table_table_id_seq OWNED BY public.fifth_table.table_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    int1 integer,
    int2 integer,
    num numeric,
    tvsf boolean,
    description text,
    second_bool boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying NOT NULL,
    intw integer,
    planet_id integer,
    fifth integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying NOT NULL,
    intw integer,
    star_id integer,
    fifth integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying NOT NULL,
    intw integer,
    galaxy_id integer,
    fifth integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: fifth_table table_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fifth_table ALTER COLUMN table_id SET DEFAULT nextval('public.fifth_table_table_id_seq'::regclass);


--
-- Name: fifth_table fifth_table_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fifth_table ALTER COLUMN fifth_table_id SET DEFAULT nextval('public.fifth_table_fifth_table_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: fifth_table; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.fifth_table VALUES (1, 'kjskjfhks', 12, 1);
INSERT INTO public.fifth_table VALUES (2, 'kjshk', 13, 2);
INSERT INTO public.fifth_table VALUES (3, 'kjskjs', 2, 3);
INSERT INTO public.fifth_table VALUES (4, 'keejshk', 1, 4);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'milky', 1, 2, NULL, true, 'JFSKJF', false);
INSERT INTO public.galaxy VALUES (2, 'hjhgj', 1, 2, NULL, true, 'JFSKJF', false);
INSERT INTO public.galaxy VALUES (3, 'milky3', 1, 2, NULL, true, 'JFSKJF', false);
INSERT INTO public.galaxy VALUES (4, 'sfds', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'hfsgfhjskhk', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'jhgsjhfgs', NULL, NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon', 1, 1, 1);
INSERT INTO public.moon VALUES (2, 'sdfs', 1, 2, 1);
INSERT INTO public.moon VALUES (3, 'sdf', 1, 3, 1);
INSERT INTO public.moon VALUES (4, 'sfds', NULL, 3, NULL);
INSERT INTO public.moon VALUES (5, 'hfsgfhjskhk', NULL, 3, NULL);
INSERT INTO public.moon VALUES (6, 'jhgsjhfgs', NULL, 3, NULL);
INSERT INTO public.moon VALUES (7, 'sdfsdfsdf', NULL, 3, NULL);
INSERT INTO public.moon VALUES (8, 'hgfytfsvfjs', NULL, 3, NULL);
INSERT INTO public.moon VALUES (9, 'fufbk', NULL, 3, NULL);
INSERT INTO public.moon VALUES (10, 'jhgfvj', NULL, 3, NULL);
INSERT INTO public.moon VALUES (11, 'gjkdsfhskg', NULL, 3, NULL);
INSERT INTO public.moon VALUES (12, 'hgsjbskjfsjhfskjfdk', NULL, 3, NULL);
INSERT INTO public.moon VALUES (13, 'dah', NULL, 3, NULL);
INSERT INTO public.moon VALUES (14, 'yazdah', NULL, 3, NULL);
INSERT INTO public.moon VALUES (15, 'davazda', NULL, 3, NULL);
INSERT INTO public.moon VALUES (16, 'sizdah', NULL, 3, NULL);
INSERT INTO public.moon VALUES (17, 'chrda', NULL, 3, NULL);
INSERT INTO public.moon VALUES (18, 'punzda', NULL, 3, NULL);
INSERT INTO public.moon VALUES (19, 'shunzda', NULL, 3, NULL);
INSERT INTO public.moon VALUES (20, 'hifda', NULL, 3, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'earth', 1, 1, 1);
INSERT INTO public.planet VALUES (2, 'sdfs', 1, 2, 1);
INSERT INTO public.planet VALUES (3, 'sdf', 1, 3, 1);
INSERT INTO public.planet VALUES (4, 'sfds', NULL, 3, NULL);
INSERT INTO public.planet VALUES (5, 'hfsgfhjskhk', NULL, 3, NULL);
INSERT INTO public.planet VALUES (6, 'jhgsjhfgs', NULL, 3, NULL);
INSERT INTO public.planet VALUES (7, 'sdfsdfsdf', NULL, 3, NULL);
INSERT INTO public.planet VALUES (8, 'hgfytfsvfjs', NULL, 3, NULL);
INSERT INTO public.planet VALUES (9, 'fufbk', NULL, 3, NULL);
INSERT INTO public.planet VALUES (10, 'jhgfvj', NULL, 3, NULL);
INSERT INTO public.planet VALUES (11, 'gjkdsfhskg', NULL, 3, NULL);
INSERT INTO public.planet VALUES (12, 'hgsjbskjfsjhfskjfdk', NULL, 3, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'zohreh', 1, 1, 1);
INSERT INTO public.star VALUES (2, 'sdfs', 1, 2, 1);
INSERT INTO public.star VALUES (3, 'sdf', 1, 1, 1);
INSERT INTO public.star VALUES (4, 'sfds', NULL, 1, NULL);
INSERT INTO public.star VALUES (5, 'hfsgfhjskhk', NULL, 1, NULL);
INSERT INTO public.star VALUES (6, 'jhgsjhfgs', NULL, 1, NULL);


--
-- Name: fifth_table_fifth_table_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.fifth_table_fifth_table_id_seq', 4, true);


--
-- Name: fifth_table_table_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.fifth_table_table_id_seq', 4, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: fifth_table fifth_table_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fifth_table
    ADD CONSTRAINT fifth_table_pkey PRIMARY KEY (fifth_table_id);


--
-- Name: fifth_table fifth_table_second_int_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fifth_table
    ADD CONSTRAINT fifth_table_second_int_key UNIQUE (second_int);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

