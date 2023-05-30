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
    name character varying(50) NOT NULL,
    age integer,
    diameter integer,
    description text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_pk_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_pk_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_pk_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_pk_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_pk_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50),
    age integer,
    diameter integer,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_pk_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_pk_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_pk_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_pk_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_pk_seq OWNED BY public.moon.moon_id;


--
-- Name: movie; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.movie (
    movie_id integer NOT NULL,
    planet_id integer NOT NULL,
    name character varying(30),
    is_good boolean,
    watched boolean
);


ALTER TABLE public.movie OWNER TO freecodecamp;

--
-- Name: movie_movie_pk_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.movie_movie_pk_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.movie_movie_pk_seq OWNER TO freecodecamp;

--
-- Name: movie_movie_pk_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.movie_movie_pk_seq OWNED BY public.movie.movie_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50),
    age integer,
    diameter integer,
    has_life boolean,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_pk_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_pk_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_pk_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_pk_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_pk_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50),
    age integer,
    diameter integer,
    temp numeric,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_pk_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_pk_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_pk_seq OWNER TO freecodecamp;

--
-- Name: star_star_pk_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_pk_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_pk_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_pk_seq'::regclass);


--
-- Name: movie movie_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.movie ALTER COLUMN movie_id SET DEFAULT nextval('public.movie_movie_pk_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_pk_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_pk_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Outer Rim', 190000, 320000, 'This galaxy contains the Rebel Base');
INSERT INTO public.galaxy VALUES (2, 'Core Worlds', 250000, 540000, 'This galaxy contains the Coruscant');
INSERT INTO public.galaxy VALUES (3, 'Hutt Space', 275000, 458000, 'This galaxy contains the Nar Shadaa');
INSERT INTO public.galaxy VALUES (4, 'Mid Rim', 285000, 475000, 'This galaxy contains Utapau');
INSERT INTO public.galaxy VALUES (5, 'Expansion Region', 295000, 485000, 'This galaxy contains Yavin IV');
INSERT INTO public.galaxy VALUES (6, 'Unknown Territories', 305000, 495000, 'This galaxy contains Zakuul');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Coruscant', NULL, NULL, 1);
INSERT INTO public.moon VALUES (2, 'Dromund,Kaas', NULL, NULL, 2);
INSERT INTO public.moon VALUES (3, 'Alderaan', NULL, NULL, 3);
INSERT INTO public.moon VALUES (4, 'Naboo', NULL, NULL, 4);
INSERT INTO public.moon VALUES (5, 'Tattooine', NULL, NULL, 5);
INSERT INTO public.moon VALUES (6, 'Zakuul', NULL, NULL, 6);
INSERT INTO public.moon VALUES (7, 'Nar,Shadaa', NULL, NULL, 7);
INSERT INTO public.moon VALUES (8, 'Quesh', NULL, NULL, 8);
INSERT INTO public.moon VALUES (9, 'Balmorra', NULL, NULL, 9);
INSERT INTO public.moon VALUES (10, 'Hoth', NULL, NULL, 10);
INSERT INTO public.moon VALUES (11, 'Kamino', NULL, NULL, 11);
INSERT INTO public.moon VALUES (12, 'Dagobah', NULL, NULL, 12);
INSERT INTO public.moon VALUES (13, 'Coruscant', NULL, NULL, 1);
INSERT INTO public.moon VALUES (14, 'Dromund,Kaas', NULL, NULL, 2);
INSERT INTO public.moon VALUES (15, 'Alderaan', NULL, NULL, 3);
INSERT INTO public.moon VALUES (16, 'Naboo', NULL, NULL, 4);
INSERT INTO public.moon VALUES (17, 'Tattooine', NULL, NULL, 5);
INSERT INTO public.moon VALUES (18, 'Zakuul', NULL, NULL, 6);
INSERT INTO public.moon VALUES (19, 'Nar,Shadaa', NULL, NULL, 7);
INSERT INTO public.moon VALUES (20, 'Quesh', NULL, NULL, 8);


--
-- Data for Name: movie; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.movie VALUES (1, 4, 'Phantom Menace', NULL, NULL);
INSERT INTO public.movie VALUES (2, 11, 'Attack of the Clones', NULL, NULL);
INSERT INTO public.movie VALUES (3, 5, 'A New Hope', NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Coruscant', NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (2, 'Dromund Kaas', NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (3, 'Alderaan', NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (4, 'Naboo', NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (5, 'Tattooine', NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (6, 'Zakuul', NULL, NULL, NULL, 6);
INSERT INTO public.planet VALUES (7, 'Nar Shadaa', NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (8, 'Quesh', NULL, NULL, NULL, 6);
INSERT INTO public.planet VALUES (9, 'Balmorra', NULL, NULL, NULL, 5);
INSERT INTO public.planet VALUES (10, 'Hoth', NULL, NULL, NULL, 4);
INSERT INTO public.planet VALUES (11, 'Kamino', NULL, NULL, NULL, 5);
INSERT INTO public.planet VALUES (12, 'Dagobah', NULL, NULL, NULL, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Star 000001', 495000, 75000, 3000000, 1);
INSERT INTO public.star VALUES (2, 'Star 000002', 505000, 74500, 2950000, 2);
INSERT INTO public.star VALUES (3, 'Star 000003', 515000, 75500, 2850000, 3);
INSERT INTO public.star VALUES (4, 'Star D', 494000, 64500, 2927262, 4);
INSERT INTO public.star VALUES (5, 'Star E', 494600, 39400, 2923962, 5);
INSERT INTO public.star VALUES (6, 'Star F', 827300, 39680, 2987662, 6);


--
-- Name: galaxy_galaxy_pk_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_pk_seq', 3, true);


--
-- Name: moon_moon_pk_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_pk_seq', 1, false);


--
-- Name: movie_movie_pk_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.movie_movie_pk_seq', 1, false);


--
-- Name: planet_planet_pk_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_pk_seq', 1, false);


--
-- Name: star_star_pk_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_pk_seq', 1, false);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_unique UNIQUE (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_unique UNIQUE (moon_id);


--
-- Name: movie movie_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.movie
    ADD CONSTRAINT movie_pkey PRIMARY KEY (movie_id);


--
-- Name: movie movie_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.movie
    ADD CONSTRAINT movie_unique UNIQUE (movie_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_unique UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_unique UNIQUE (star_id);


--
-- Name: star galaxy_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy_fk FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon moon_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_fk FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: movie movie_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.movie
    ADD CONSTRAINT movie_fk FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet star_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT star_fk FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

