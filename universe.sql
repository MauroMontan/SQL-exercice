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
-- Name: constellation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constellation (
    constellation_id integer NOT NULL,
    name character varying(60) NOT NULL,
    description text
);


ALTER TABLE public.constellation OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.constellation_constellation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.constellation_constellation_id_seq OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.constellation_constellation_id_seq OWNED BY public.constellation.constellation_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(60),
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    description text NOT NULL,
    has_life boolean NOT NULL,
    is_spherical boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(60),
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    description text NOT NULL,
    has_life boolean NOT NULL,
    is_spherical boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(60),
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    description text NOT NULL,
    has_life boolean NOT NULL,
    is_spherical boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(60),
    is_spherical boolean,
    has_life boolean NOT NULL,
    description text NOT NULL,
    distance_from_earth numeric,
    age_in_millions_of_years integer,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: constellation constellation_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation ALTER COLUMN constellation_id SET DEFAULT nextval('public.constellation_constellation_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: constellation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constellation VALUES (1, 'constellation 1', NULL);
INSERT INTO public.constellation VALUES (2, 'constellation 2', NULL);
INSERT INTO public.constellation VALUES (3, 'constellation 3', NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, NULL, 23, 3445.45, 'is a galaxy', true, false);
INSERT INTO public.galaxy VALUES (2, NULL, 23, 3445.45, 'is a galaxy 2', true, false);
INSERT INTO public.galaxy VALUES (3, NULL, 23, 3445.45, 'is a galaxy 3', true, false);
INSERT INTO public.galaxy VALUES (4, NULL, 23, 3445.45, 'is a galaxy 4', true, false);
INSERT INTO public.galaxy VALUES (5, NULL, 23, 3445.45, 'is a galaxy 5', true, false);
INSERT INTO public.galaxy VALUES (6, NULL, 23, 3445.45, 'is a galaxy 6', true, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, NULL, 13, 34.45, 'is a planet 3', true, true, 1);
INSERT INTO public.moon VALUES (2, NULL, 13, 34.45, 'is a moon 2', true, true, 2);
INSERT INTO public.moon VALUES (3, NULL, 13, 34.45, 'is a moon 3', true, true, 3);
INSERT INTO public.moon VALUES (4, NULL, 13, 34.45, 'is a moon 4', true, true, 3);
INSERT INTO public.moon VALUES (5, NULL, 13, 34.45, 'is a moon 5', true, true, 3);
INSERT INTO public.moon VALUES (6, NULL, 13, 34.45, 'is a moon 6', true, true, 3);
INSERT INTO public.moon VALUES (7, NULL, 13, 34.45, 'is a moon 7', true, true, 3);
INSERT INTO public.moon VALUES (8, NULL, 13, 34.45, 'is a moon 8', true, true, 3);
INSERT INTO public.moon VALUES (9, NULL, 13, 34.45, 'is a moon 9', true, true, 3);
INSERT INTO public.moon VALUES (10, NULL, 13, 34.45, 'is a moon 10', true, true, 3);
INSERT INTO public.moon VALUES (11, NULL, 13, 34.45, 'is a moon 11', true, true, 3);
INSERT INTO public.moon VALUES (12, NULL, 13, 34.45, 'is a moon 12', true, true, 3);
INSERT INTO public.moon VALUES (13, NULL, 13, 34.45, 'is a moon 13', true, true, 3);
INSERT INTO public.moon VALUES (14, NULL, 13, 34.45, 'is a moon 14', true, true, 3);
INSERT INTO public.moon VALUES (15, NULL, 13, 34.45, 'is a moon 15', true, true, 3);
INSERT INTO public.moon VALUES (16, NULL, 13, 34.45, 'is a moon 16', true, true, 3);
INSERT INTO public.moon VALUES (17, NULL, 13, 34.45, 'is a moon 17', true, true, 3);
INSERT INTO public.moon VALUES (18, NULL, 13, 34.45, 'is a moon 18', true, true, 3);
INSERT INTO public.moon VALUES (19, NULL, 13, 34.45, 'is a moon 19', true, true, 3);
INSERT INTO public.moon VALUES (20, NULL, 13, 34.45, 'is a moon 20', true, true, 3);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, NULL, 13, 34.45, 'is a planet', true, true, NULL);
INSERT INTO public.planet VALUES (2, NULL, 13, 34.45, 'is a planet 2', true, true, NULL);
INSERT INTO public.planet VALUES (3, NULL, 13, 34.45, 'is a planet 3', true, true, NULL);
INSERT INTO public.planet VALUES (4, NULL, 13, 34.45, 'is a planet 4', true, true, NULL);
INSERT INTO public.planet VALUES (5, NULL, 13, 34.45, 'is a planet 5', true, true, NULL);
INSERT INTO public.planet VALUES (6, NULL, 13, 34.45, 'is a planet 6', true, true, NULL);
INSERT INTO public.planet VALUES (7, NULL, 13, 34.45, 'is a planet 7', true, true, NULL);
INSERT INTO public.planet VALUES (8, NULL, 13, 34.45, 'is a planet 8', true, true, NULL);
INSERT INTO public.planet VALUES (9, NULL, 13, 34.45, 'is a planet 9', true, true, NULL);
INSERT INTO public.planet VALUES (10, NULL, 13, 34.45, 'is a planet 10', true, true, NULL);
INSERT INTO public.planet VALUES (11, NULL, 13, 34.45, 'is a planet 11', true, true, NULL);
INSERT INTO public.planet VALUES (12, NULL, 13, 34.45, 'is a planet 12', true, true, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, NULL, false, false, 'is a star', 34.45, 13, 1);
INSERT INTO public.star VALUES (2, NULL, false, false, 'is a star 2', 34.45, 13, 1);
INSERT INTO public.star VALUES (3, NULL, false, false, 'is a star 3', 34.45, 13, 1);
INSERT INTO public.star VALUES (4, NULL, false, false, 'is a star 4', 34.45, 13, 1);
INSERT INTO public.star VALUES (5, NULL, false, false, 'is a star 5', 34.45, 13, 1);
INSERT INTO public.star VALUES (6, NULL, false, false, 'is a star 6', 34.45, 13, 1);


--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.constellation_constellation_id_seq', 3, true);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 20, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 12, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 6, true);


--
-- Name: constellation constellation_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_name_key UNIQUE (name);


--
-- Name: constellation constellation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_pkey PRIMARY KEY (constellation_id);


--
-- Name: galaxy galaxy_description_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_description_galaxy_id_key UNIQUE (description, galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id_key UNIQUE (planet_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


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

