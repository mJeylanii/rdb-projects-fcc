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
    galaxy_type character varying(50),
    distance_from_earth integer,
    description text,
    latin_name character varying
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
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
    moon_id bigint NOT NULL,
    name character varying(50) NOT NULL,
    is_spherical boolean,
    planet_id integer,
    description text,
    latin_name character varying
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
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
    planet_id bigint NOT NULL,
    name character varying(50) NOT NULL,
    has_life boolean,
    no_of_moons integer,
    planet_population integer,
    star_id integer,
    latin_name character varying
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
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
    star_id bigint NOT NULL,
    name character varying(50) NOT NULL,
    star_age integer,
    distance_from_earth numeric,
    galaxy_id integer NOT NULL,
    latin_name character varying
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
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
-- Name: systems; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.systems (
    systems_id bigint NOT NULL,
    name character varying(50) NOT NULL,
    no_of_stars integer,
    no_of_planets integer,
    constellation character varying(50)
);


ALTER TABLE public.systems OWNER TO freecodecamp;

--
-- Name: systems_systems_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.systems_systems_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.systems_systems_id_seq OWNER TO freecodecamp;

--
-- Name: systems_systems_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.systems_systems_id_seq OWNED BY public.systems.systems_id;


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
-- Name: systems systems_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.systems ALTER COLUMN systems_id SET DEFAULT nextval('public.systems_systems_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Spiral', 0, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Large Megallenic Cloud', 'Satellite', 1212, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Small Magellanic Cloud', 'Dawrf Irregular', 88883, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Elliptical', 3, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Canis Major dwarf', 'Irregular', 25000, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Sag Deg', 'Elliptical', 65230, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (2, 'Our Moon', true, 1, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'Phobos', false, 1, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'Phobos', false, 4, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'Ganyemede', true, 7, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'Callisto', true, 7, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'Titan', true, 6, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'Triton', true, 10, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'Lo', true, 7, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'Charon', false, 8, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'Rhea', true, 6, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'Tethys', true, 6, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'Dione', true, 6, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'Lapetus', true, 6, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'Oberon', true, 9, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'Umbriel', true, 9, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'Ariel', true, 9, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'Enceladus', true, 6, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'Mimas', true, 6, NULL, NULL);
INSERT INTO public.moon VALUES (21, 'Hyperiod', false, 6, NULL, NULL);
INSERT INTO public.moon VALUES (22, 'Miranda', true, 10, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (2, 'Merucy', false, 0, 0, 1, NULL);
INSERT INTO public.planet VALUES (1, 'Earth', true, 1, 7000, 1, NULL);
INSERT INTO public.planet VALUES (4, 'Mars', false, 2, NULL, 1, NULL);
INSERT INTO public.planet VALUES (5, 'Venus', false, 0, 0, 1, NULL);
INSERT INTO public.planet VALUES (6, 'Saturn', false, 82, 0, 1, NULL);
INSERT INTO public.planet VALUES (7, 'Jupiter', false, 79, 0, 1, NULL);
INSERT INTO public.planet VALUES (9, 'Uranus', false, 27, 0, 1, NULL);
INSERT INTO public.planet VALUES (8, 'Pluto', false, 5, 0, 1, NULL);
INSERT INTO public.planet VALUES (10, 'Neptune', false, 14, 0, 1, NULL);
INSERT INTO public.planet VALUES (11, 'Proxima Centauri B', false, 0, 0, 2, NULL);
INSERT INTO public.planet VALUES (12, 'Proxima Centauri C', false, 0, 0, 2, NULL);
INSERT INTO public.planet VALUES (13, 'Proxima Centauri D', false, 0, 0, 2, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 4603, 149.6, 1, NULL);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 4850, 4.246, 1, NULL);
INSERT INTO public.star VALUES (3, 'Rigil Kentaurus', 4, 9200, 1, NULL);
INSERT INTO public.star VALUES (4, 'Toliman', 4, 6500, 1, NULL);
INSERT INTO public.star VALUES (5, 'Barnards Star', 6, 10000, 1, NULL);
INSERT INTO public.star VALUES (6, 'Sirius', 242, 8.611, 1, NULL);


--
-- Data for Name: systems; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.systems VALUES (1, 'Solar System', 1, 8, NULL);
INSERT INTO public.systems VALUES (2, 'Alpha Canis Majoris', 10, 7, NULL);
INSERT INTO public.systems VALUES (4, 'Alpha Centauri', 10, 3, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: systems_systems_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.systems_systems_id_seq', 4, true);


--
-- Name: galaxy galaxy_latin_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_latin_name_key UNIQUE (latin_name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_latin_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_latin_name_key UNIQUE (latin_name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_latin_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_latin_name_key UNIQUE (latin_name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_latin_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_latin_name_key UNIQUE (latin_name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: systems systems_constellation_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.systems
    ADD CONSTRAINT systems_constellation_key UNIQUE (constellation);


--
-- Name: systems systems_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.systems
    ADD CONSTRAINT systems_pkey PRIMARY KEY (systems_id);


--
-- Name: moon moon_orbits_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_orbits_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_orbiting_star_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_orbiting_star_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_in_galaxy_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_in_galaxy_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

