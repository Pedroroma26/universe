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
    name character varying(10) NOT NULL,
    has_life boolean,
    age numeric,
    description text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(10) NOT NULL,
    radius numeric NOT NULL,
    age integer,
    has_atmosphere boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: pair; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.pair (
    pair_id integer NOT NULL,
    name character varying(10) NOT NULL,
    galaxy_id integer,
    star_id integer,
    planet_id integer,
    moon_id integer
);


ALTER TABLE public.pair OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(10) NOT NULL,
    has_life boolean,
    radius numeric NOT NULL,
    age integer,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(10) NOT NULL,
    has_life boolean,
    radius numeric NOT NULL,
    age integer,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky_Way', true, 10, 'It is where earth is');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', false, 20, ' Nearest to milky way');
INSERT INTO public.galaxy VALUES (3, 'Black_Eye', false, 30, 'Has black dust in its core');
INSERT INTO public.galaxy VALUES (4, 'Goat', false, 40, 'Discovered in 1774');
INSERT INTO public.galaxy VALUES (5, 'Cartwheel', false, 50, 'Has the shape of a wheel');
INSERT INTO public.galaxy VALUES (6, 'Cigar', false, 60, 'Looks like a cigar');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'none', 0, 0, false, 1);
INSERT INTO public.moon VALUES (2, 'none1', 0, 0, false, 2);
INSERT INTO public.moon VALUES (3, 'Moon', 1737, 30, false, 3);
INSERT INTO public.moon VALUES (4, 'Phobos', 112667, 40, false, 4);
INSERT INTO public.moon VALUES (5, 'Deimos', 6200, 50, false, 4);
INSERT INTO public.moon VALUES (6, 'Io', 1500, 60, false, 5);
INSERT INTO public.moon VALUES (7, 'Europa', 1600, 70, false, 5);
INSERT INTO public.moon VALUES (8, 'Ganymede', 1700, 80, false, 5);
INSERT INTO public.moon VALUES (9, 'Titan', 1800, 90, false, 6);
INSERT INTO public.moon VALUES (10, 'Mimas', 1900, 100, false, 6);
INSERT INTO public.moon VALUES (11, 'Enceladus', 2000, 110, false, 6);
INSERT INTO public.moon VALUES (12, 'Tethys', 2100, 120, false, 6);
INSERT INTO public.moon VALUES (13, 'Dione', 2200, 130, false, 6);
INSERT INTO public.moon VALUES (14, 'Rhea', 2300, 140, false, 6);
INSERT INTO public.moon VALUES (15, 'Iapetus', 2400, 150, false, 6);
INSERT INTO public.moon VALUES (16, 'Miranda', 2500, 160, false, 7);
INSERT INTO public.moon VALUES (17, 'Ariel', 2600, 170, false, 7);
INSERT INTO public.moon VALUES (18, 'Titania', 2800, 1900, false, 7);
INSERT INTO public.moon VALUES (19, 'Oberon', 2900, 2000, false, 7);
INSERT INTO public.moon VALUES (20, 'Nix', 3000, 2100, false, 8);


--
-- Data for Name: pair; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.pair VALUES (1, 'pair_earth', 1, 1, 3, 3);
INSERT INTO public.pair VALUES (2, 'pair_mars', 1, 1, 4, 4);
INSERT INTO public.pair VALUES (3, 'pair_jupi', 1, 1, 5, 7);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', false, 2440, 10, 1);
INSERT INTO public.planet VALUES (2, 'Venus', false, 6052, 20, 1);
INSERT INTO public.planet VALUES (3, 'Earth', true, 6371, 30, 1);
INSERT INTO public.planet VALUES (4, 'Mars', false, 3390, 40, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', false, 69911, 50, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', false, 58232, 60, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', false, 25362, 70, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', false, 24662, 80, 1);
INSERT INTO public.planet VALUES (9, 'Pluto', false, 1188, 90, 1);
INSERT INTO public.planet VALUES (10, 'Proxima A', false, 13000, 60, 2);
INSERT INTO public.planet VALUES (11, 'Proxima B', false, 15000, 70, 2);
INSERT INTO public.planet VALUES (12, 'Proxima C', false, 17000, 80, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', false, 696340, 4603, 1);
INSERT INTO public.star VALUES (2, 'Alpha', false, 270000, 60003, 2);
INSERT INTO public.star VALUES (3, 'Messier', false, 50000, 7500, 3);
INSERT INTO public.star VALUES (4, 'Capella', false, 600000, 800000, 4);
INSERT INTO public.star VALUES (5, 'Sculptor', false, 700000, 900000, 5);
INSERT INTO public.star VALUES (6, 'Messier 4', false, 800000, 1000000, 6);


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
-- Name: pair pair_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.pair
    ADD CONSTRAINT pair_name_key UNIQUE (name);


--
-- Name: pair pair_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.pair
    ADD CONSTRAINT pair_pkey PRIMARY KEY (pair_id);


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
-- Name: pair pair_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.pair
    ADD CONSTRAINT pair_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: pair pair_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.pair
    ADD CONSTRAINT pair_moon_id_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


--
-- Name: pair pair_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.pair
    ADD CONSTRAINT pair_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: pair pair_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.pair
    ADD CONSTRAINT pair_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


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
