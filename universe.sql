--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    shape text,
    true_or_false boolean,
    irdk text
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
    name character varying(20) NOT NULL,
    year_discovered integer,
    diameter_in_km integer,
    planet_id integer
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
    name character varying(20) NOT NULL,
    year_discovered integer,
    has_life boolean,
    star_id integer
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
-- Name: random; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.random (
    random_id integer NOT NULL,
    name character varying(20) NOT NULL,
    idk text
);


ALTER TABLE public.random OWNER TO freecodecamp;

--
-- Name: random_random_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.random_random_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.random_random_id_seq OWNER TO freecodecamp;

--
-- Name: random_random_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.random_random_id_seq OWNED BY public.random.random_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    life_span_in_billion_years integer,
    size_in_km numeric,
    galaxy_id integer
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
-- Name: random random_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.random ALTER COLUMN random_id SET DEFAULT nextval('public.random_random_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'elliptical', 'sheprical);
', NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'sprial', 'spiral', NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'lenticular', 'cross spiral', NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'barred', 'bar', NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'irregular', 'no shape', NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'blazars', 'no shape', NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (2, 'moon', 1877, 3476, NULL);
INSERT INTO public.moon VALUES (3, 'phobos', 1877, 23, NULL);
INSERT INTO public.moon VALUES (4, 'deimos', 1877, 13, NULL);
INSERT INTO public.moon VALUES (5, 'lo', 1610, 3630, NULL);
INSERT INTO public.moon VALUES (6, 'europa', 1610, 3138, NULL);
INSERT INTO public.moon VALUES (7, 'ganymede', 1610, 5652, NULL);
INSERT INTO public.moon VALUES (8, 'callisto', 1610, 4800, NULL);
INSERT INTO public.moon VALUES (9, 'amalthea', 1892, 200, NULL);
INSERT INTO public.moon VALUES (10, 'himalia', 1904, 170, NULL);
INSERT INTO public.moon VALUES (11, 'thebe', 1979, 90, NULL);
INSERT INTO public.moon VALUES (12, 'aegir', 2005, 6, NULL);
INSERT INTO public.moon VALUES (13, 'albiorix', 2000, 30, NULL);
INSERT INTO public.moon VALUES (14, 'anthe', 2004, 1, NULL);
INSERT INTO public.moon VALUES (15, 'farbuati', 2005, 4, NULL);
INSERT INTO public.moon VALUES (16, 'fenrir', 2005, 1, NULL);
INSERT INTO public.moon VALUES (17, 'fornjot', 2005, 6, NULL);
INSERT INTO public.moon VALUES (18, 'ariel', 2003, 11, NULL);
INSERT INTO public.moon VALUES (19, 'mab', 2003, 16, NULL);
INSERT INTO public.moon VALUES (20, 'perdita', 1986, 20, NULL);
INSERT INTO public.moon VALUES (21, 'thalassa', 1989, 90, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'mercury', 1631, false, NULL);
INSERT INTO public.planet VALUES (2, 'venus', 1962, false, NULL);
INSERT INTO public.planet VALUES (3, 'mars', 1610, false, NULL);
INSERT INTO public.planet VALUES (4, 'jupiter', 1610, false, NULL);
INSERT INTO public.planet VALUES (5, 'saturn', 1610, false, NULL);
INSERT INTO public.planet VALUES (6, 'uranus', 1781, false, NULL);
INSERT INTO public.planet VALUES (7, 'neptune', 1846, false, NULL);
INSERT INTO public.planet VALUES (8, 'pluto', 1930, false, NULL);
INSERT INTO public.planet VALUES (9, 'vulcan', 1859, false, NULL);
INSERT INTO public.planet VALUES (10, 'charon', 1978, false, NULL);
INSERT INTO public.planet VALUES (11, 'eris', 2005, false, NULL);
INSERT INTO public.planet VALUES (12, 'earth', NULL, true, NULL);


--
-- Data for Name: random; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.random VALUES (1, 'Josiah', NULL);
INSERT INTO public.random VALUES (2, 'Elias', NULL);
INSERT INTO public.random VALUES (3, 'Deba', NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Red giants', 1, 100000000, NULL);
INSERT INTO public.star VALUES (2, 'White dwarves', 1000, 4300, NULL);
INSERT INTO public.star VALUES (3, 'Neutron stars', 10, 20, NULL);
INSERT INTO public.star VALUES (4, 'Red dwarves', 10, 200000, NULL);
INSERT INTO public.star VALUES (5, 'Brown dwarves', 10, 129000, NULL);
INSERT INTO public.star VALUES (6, 'Main sequence stars', 80, NULL, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: random_random_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.random_random_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 5, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_unique UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_unique UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_unique UNIQUE (name);


--
-- Name: random random_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.random
    ADD CONSTRAINT random_pkey PRIMARY KEY (random_id);


--
-- Name: random random_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.random
    ADD CONSTRAINT random_unique UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_unique UNIQUE (name);


--
-- Name: moon fk_moon; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

