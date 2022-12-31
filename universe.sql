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
    name character varying(30) NOT NULL UNIQUE,
    age_in_millions_of_years integer,
    distance_from_earth_in_km integer,
    size_compared_to_earth numeric(10,1),
    description text,
    has_life boolean,
    supercluster_id integer
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
    name character varying(30) NOT NULL UNIQUE,
    age_in_millions_of_years integer,
    distance_from_earth_in_km integer,
    size_compared_to_earth numeric(10,1),
    description text,
    has_life boolean,
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
    name character varying(30) NOT NULL UNIQUE,
    age_in_millions_of_years integer,
    distance_from_earth_in_km integer,
    size_compared_to_earth numeric(10,1),
    description text,
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL UNIQUE,
    age_in_millions_of_years integer,
    distance_from_earth_in_km integer,
    size_compared_to_earth numeric(10,1),
    description text,
    has_life boolean,
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
-- Name: supercluster; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.supercluster (
    supercluster_id integer NOT NULL,
    name character varying(30) NOT NULL UNIQUE,
    description text
);


ALTER TABLE public.supercluster OWNER TO freecodecamp;

--
-- Name: supercluster_supercluster_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.supercluster_supercluster_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.supercluster_supercluster_id_seq OWNER TO freecodecamp;

--
-- Name: supercluster_supercluster_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.supercluster_supercluster_id_seq OWNED BY public.supercluster.supercluster_id;


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
-- Name: supercluster supercluster_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.supercluster ALTER COLUMN supercluster_id SET DEFAULT nextval('public.supercluster_supercluster_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 9000, 2537000, 10, 'Andromeda Galaxy', FALSE, 1);
INSERT INTO public.galaxy VALUES (2, 'Canis Major Dwarf', 9000, 2537000, 10, 'Canis Major Dwarf Galaxy', FALSE, 1);
INSERT INTO public.galaxy VALUES (3, 'Cygnus', 9000, 2537000, 10, 'Cygnus Galaxy', FALSE, 1);
INSERT INTO public.galaxy VALUES (4, 'Maffei I', 9000, 2537000, 10, 'Maffei I Galaxy', FALSE, 1);
INSERT INTO public.galaxy VALUES (5, 'Magellanic Clouds', 9000, 2537000, 10, 'Magellanic Clouds Galaxy', FALSE, 1);
INSERT INTO public.galaxy VALUES (6, 'Milky Way', 9000, 2537000, 10, 'Milky Way Galaxy', TRUE, 1);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 9000, 2537000, 10, 'Moon Star', FALSE, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 9000, 2537000, 10, 'Phobos Star', FALSE, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 9000, 2537000, 10, 'Deimos Star', FALSE, 4);
INSERT INTO public.moon VALUES (4, 'Io', 9000, 2537000, 10, 'Io Star', FALSE, 5);
INSERT INTO public.moon VALUES (5, 'Europa', 9000, 2537000, 10, 'Europa Star', FALSE, 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', 9000, 2537000, 10, 'Ganymede Star', TRUE, 5);
INSERT INTO public.moon VALUES (7, 'Callisto', 9000, 2537000, 10, 'Callisto Star', FALSE, 5);
INSERT INTO public.moon VALUES (8, 'Mimas', 9000, 2537000, 10, 'Mimas Star', FALSE, 6);
INSERT INTO public.moon VALUES (9, 'Enceladus', 9000, 2537000, 10, 'Enceladus Star', FALSE, 6);
INSERT INTO public.moon VALUES (10, 'Tethys', 9000, 2537000, 10, 'Tethys Star', FALSE, 6);
INSERT INTO public.moon VALUES (11, 'Dione', 9000, 2537000, 10, 'Dione Star', FALSE, 6);
INSERT INTO public.moon VALUES (12, 'Rhea', 9000, 2537000, 10, 'Rhea Star', TRUE, 6);
INSERT INTO public.moon VALUES (13, 'Titan', 9000, 2537000, 10, 'Titan Star', FALSE, 6);
INSERT INTO public.moon VALUES (14, 'Hyperion', 9000, 2537000, 10, 'Hyperion Star', FALSE, 6);
INSERT INTO public.moon VALUES (15, 'Iapetus', 9000, 2537000, 10, 'Iapetus Star', FALSE, 6);
INSERT INTO public.moon VALUES (16, 'Phoebe', 9000, 2537000, 10, 'Phoebe Star', FALSE, 6);
INSERT INTO public.moon VALUES (17, 'Puck', 9000, 2537000, 10, 'Puck Star', TRUE, 7);
INSERT INTO public.moon VALUES (18, 'Miranda', 9000, 2537000, 10, 'Miranda Star', FALSE, 7);
INSERT INTO public.moon VALUES (19, 'Ariel', 9000, 2537000, 10, 'Ariel Star', FALSE, 7);
INSERT INTO public.moon VALUES (20, 'Umbriel', 9000, 2537000, 10, 'Umbriel Star', FALSE, 7);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 9000, 2537000, 10, 'Mercury planet', FALSE, 6);
INSERT INTO public.planet VALUES (2, 'Venus', 9000, 2537000, 10, 'Venus planet', FALSE, 6);
INSERT INTO public.planet VALUES (3, 'Earth', 9000, 2537000, 10, 'Earth planet', TRUE, 6);
INSERT INTO public.planet VALUES (4, 'Mars', 9000, 2537000, 10, 'Mars planet', FALSE, 6);
INSERT INTO public.planet VALUES (5, 'Jupiter', 9000, 2537000, 10, 'Jupiter planet', FALSE, 6);
INSERT INTO public.planet VALUES (6, 'Saturn', 9000, 2537000, 10, 'Saturn planet', FALSE, 6);
INSERT INTO public.planet VALUES (7, 'Uranus', 9000, 2537000, 10, 'Uranus planet', FALSE, 6);
INSERT INTO public.planet VALUES (8, 'Neptune', 9000, 2537000, 10, 'Neptune planet', FALSE, 6);
INSERT INTO public.planet VALUES (9, 'Ceres', 9000, 2537000, 10, 'Ceres planet', FALSE, 1);
INSERT INTO public.planet VALUES (10, 'Makemake', 9000, 2537000, 10, 'Makemake planet', FALSE, 1);
INSERT INTO public.planet VALUES (11, 'Haumea', 9000, 2537000, 10, 'Haumea planet', FALSE, 1);
INSERT INTO public.planet VALUES (12, 'Eris', 9000, 2537000, 10, 'Eris planet', FALSE, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Polaris', 9000, 2537000, 10, 'Polaris star', FALSE, 1);
INSERT INTO public.star VALUES (2, 'Castor', 9000, 2537000, 10, 'Castor star', FALSE, 1);
INSERT INTO public.star VALUES (3, 'Pollux', 9000, 2537000, 10, 'Pollux star', FALSE, 1);
INSERT INTO public.star VALUES (4, 'Orion', 9000, 2537000, 10, 'Orion star', FALSE, 1);
INSERT INTO public.star VALUES (5, 'Sirius', 9000, 2537000, 10, 'Sirius star', FALSE, 1);
INSERT INTO public.star VALUES (6, 'Sun', 9000, 2537000, 10, 'Sun star', FALSE, 1);


--
-- Data for Name: supercluster; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.supercluster VALUES (1, 'Laniakea', 'Laniakea supercluster');
INSERT INTO public.supercluster VALUES (2, 'Perseus-Pisces', 'Perseus-Pisces supercluster');
INSERT INTO public.supercluster VALUES (3, 'Cetus', 'Cetus supercluster');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: supercluster_supercluster_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.supercluster_supercluster_id_seq', 3, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


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
-- Name: supercluster supercluster_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.supercluster
    ADD CONSTRAINT supercluster_pkey PRIMARY KEY (supercluster_id);


--
-- Name: galaxy galaxy_supercluster_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_supercluster_id_fkey FOREIGN KEY (supercluster_id) REFERENCES public.supercluster(supercluster_id);


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

