--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: alien; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.alien (
    alien_id integer NOT NULL,
    name character varying(20) NOT NULL,
    tempo_vida numeric(8,2),
    descricao text NOT NULL,
    planet_id integer
);


ALTER TABLE public.alien OWNER TO freecodecamp;

--
-- Name: alien_alien_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.alien_alien_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alien_alien_id_seq OWNER TO freecodecamp;

--
-- Name: alien_alien_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.alien_alien_id_seq OWNED BY public.alien.alien_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    num_estrelas integer NOT NULL,
    num_materiaescura integer NOT NULL,
    tempo_vida numeric(10,2),
    buraco_negro boolean,
    eh_espiral boolean,
    descricao text,
    name character varying(30) NOT NULL
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
    distancia_planeta integer NOT NULL,
    tam_em_km integer NOT NULL,
    tempo_vida numeric(10,2),
    eh_grande boolean,
    orbita_planeta boolean,
    descricao text,
    planet_id integer,
    name character varying(30) NOT NULL
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
    distancia_da_terra integer NOT NULL,
    tam_em_km integer NOT NULL,
    tempo_vida numeric(10,2),
    tem_lua boolean,
    tem_vida boolean,
    descricao text,
    star_id integer,
    name character varying(30) NOT NULL
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
    energia integer NOT NULL,
    tam_em_km integer NOT NULL,
    tempo_vida numeric(10,2),
    eh_ana boolean,
    eh_gigante boolean,
    descricao text,
    galaxy_id integer,
    name character varying(30) NOT NULL
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
-- Name: alien alien_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.alien ALTER COLUMN alien_id SET DEFAULT nextval('public.alien_alien_id_seq'::regclass);


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
-- Data for Name: alien; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.alien VALUES (1, 'zatura', 234.12, 'Alien do filme zatura', 1);
INSERT INTO public.alien VALUES (2, 'Alien', 654.23, 'Alien do fime alien', 2);
INSERT INTO public.alien VALUES (3, 'andromeda', 267.96, 'Alien da galaxia de andromeda', 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 12, 43, 94350.54, true, true, 'Qualquer coisa so pra dizer', 'Via Lactea');
INSERT INTO public.galaxy VALUES (2, 12, 43, 9000.12, true, true, 'Qualquer coisa so pra dizer', 'Andromea');
INSERT INTO public.galaxy VALUES (3, 12, 43, 34560.43, true, true, 'Qualquer coisa so pra dizer', 'Triangulo');
INSERT INTO public.galaxy VALUES (4, 12, 43, 5384.01, true, true, 'Qualquer coisa so pra dizer', 'Sombrero');
INSERT INTO public.galaxy VALUES (5, 12, 43, 235460.12, true, true, 'Qualquer coisa so pra dizer', 'Messier 87');
INSERT INTO public.galaxy VALUES (6, 12, 43, 91745.87, true, true, 'Qualquer coisa so pra dizer', 'Redemoinho');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (11, 1234, 523, 5262.40, true, true, 'Maior lua de Júpiter e do Sistema Solar', 1, 'Ganimedes');
INSERT INTO public.moon VALUES (12, 2423, 512, 4821.60, true, true, 'Segunda maior lua de Júpiter, rica em gelo', 2, 'Calisto');
INSERT INTO public.moon VALUES (13, 3234, 514, 3121.60, true, true, 'Lua vulcânica ativa de Júpiter', 3, 'Io');
INSERT INTO public.moon VALUES (14, 4423, 554, 3122.00, true, true, 'Possui um oceano sob a camada de gelo', 4, 'Europa');
INSERT INTO public.moon VALUES (15, 5234, 676, 5150.00, true, true, 'Maior lua de Saturno, tem uma atmosfera densa', 5, 'Titã');
INSERT INTO public.moon VALUES (16, 6234, 686, 1578.00, false, true, 'Lua com reflexo brilhante devido ao gelo', 6, 'Encélado');
INSERT INTO public.moon VALUES (17, 7234, 695, 1062.00, false, true, 'Uma das luas médias de Saturno', 7, 'Dione');
INSERT INTO public.moon VALUES (18, 8234, 636, 1527.00, false, true, 'Apresenta vales e cânions profundos', 8, 'Reia');
INSERT INTO public.moon VALUES (19, 9234, 6234, 396.40, false, true, 'Conhecida pela sua órbita retrógrada', 9, 'Febe');
INSERT INTO public.moon VALUES (20, 1043, 712, 1578.53, false, true, 'Maior lua de Urano, com cânions gigantes', 10, 'Titânia');
INSERT INTO public.moon VALUES (21, 1143, 732, 1353.40, false, true, 'Superfície fortemente marcada por crateras', 11, 'Oberon');
INSERT INTO public.moon VALUES (22, 1234, 742, 1576.00, false, true, 'Lua muito escura e cheia de vales', 12, 'Ariel');
INSERT INTO public.moon VALUES (23, 1334, 753, 1169.00, false, true, 'Possui sinais de atividade criovulcânica', 1, 'Umbriel');
INSERT INTO public.moon VALUES (24, 1434, 864, 2706.80, true, true, 'Maior lua de Netuno, tem uma órbita retrógrada', 2, 'Tritão');
INSERT INTO public.moon VALUES (25, 1534, 445, 22.20, false, true, 'Uma das pequenas luas de Marte', 3, 'Fobos');
INSERT INTO public.moon VALUES (26, 1656, 434, 12.40, false, true, 'Menor lua de Marte, com superfície irregular', 4, 'Deimos');
INSERT INTO public.moon VALUES (27, 1756, 364, 3474.80, false, true, 'Único satélite natural da Terra', 5, 'Lua');
INSERT INTO public.moon VALUES (28, 1856, 665, 531.00, false, true, 'Lua irregular de Saturno com formato alongado', 6, 'Hipérion');
INSERT INTO public.moon VALUES (29, 1956, 568, 16.00, false, true, 'Uma das menores luas de Júpiter', 7, 'Himalia');
INSERT INTO public.moon VALUES (30, 2056, 767, 470.00, false, true, 'Pequena lua de Urano descoberta por Voyager 2', 8, 'Miranda');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 321, 213, 898.12, true, true, 'Nossa casa', 1, 'Terra');
INSERT INTO public.planet VALUES (2, 321, 213, 8458.12, true, false, 'Sistema Solar', 1, 'Venus');
INSERT INTO public.planet VALUES (3, 321, 213, 18238.12, true, false, 'Sistema Solar', 2, 'Marte');
INSERT INTO public.planet VALUES (4, 321, 213, 13438.12, true, false, 'Sistema Solar', 2, 'Jupter');
INSERT INTO public.planet VALUES (5, 321, 213, 13968.12, true, false, 'Sistema Solar', 3, 'Saturno');
INSERT INTO public.planet VALUES (6, 321, 213, 73438.12, true, false, 'Sistema Solar', 3, 'Urano');
INSERT INTO public.planet VALUES (7, 321, 213, 91438.12, true, false, 'Sistema Solar', 4, 'Netuno');
INSERT INTO public.planet VALUES (8, 321, 213, 13438.98, true, false, 'Sistema Solar', 4, 'Mercurio');
INSERT INTO public.planet VALUES (9, 321, 213, 13438.66, true, false, 'Exoplanetas', 5, 'Proxima b');
INSERT INTO public.planet VALUES (10, 321, 213, 13124.66, true, false, 'Exoplanetas', 5, 'Kepler-22b');
INSERT INTO public.planet VALUES (11, 321, 213, 13438.77, true, false, 'Exoplanetas', 6, 'Osiris');
INSERT INTO public.planet VALUES (12, 321, 213, 19438.66, true, false, 'Exoplanetas', 6, 'Gisele 581d');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 233, 435, 2234.12, true, false, 'Qualquer coisa so pra dizer', 1, 'Sol');
INSERT INTO public.star VALUES (2, 233, 435, 2334.12, true, false, 'Qualquer coisa so pra dizer', 2, 'Sirius');
INSERT INTO public.star VALUES (3, 233, 435, 873.12, true, false, 'Qualquer coisa so pra dizer', 3, 'Betelgeuse');
INSERT INTO public.star VALUES (4, 233, 435, 9234.12, true, false, 'Qualquer coisa so pra dizer', 4, 'Vega');
INSERT INTO public.star VALUES (5, 233, 435, 9826.72, true, false, 'Qualquer coisa so pra dizer', 5, 'Antares');
INSERT INTO public.star VALUES (6, 233, 435, 5492.82, true, false, 'Qualquer coisa so pra dizer', 6, 'Proxima Centauri');


--
-- Name: alien_alien_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.alien_alien_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 30, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: alien alien_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.alien
    ADD CONSTRAINT alien_pkey PRIMARY KEY (alien_id);


--
-- Name: alien alien_tempo_vida_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.alien
    ADD CONSTRAINT alien_tempo_vida_key UNIQUE (tempo_vida);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_tempo_vida_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_tempo_vida_key UNIQUE (tempo_vida);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_tempo_vida_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_tempo_vida_key UNIQUE (tempo_vida);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_tempo_vida_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_tempo_vida_key UNIQUE (tempo_vida);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_tempo_vida_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_tempo_vida_key UNIQUE (tempo_vida);


--
-- Name: alien fk_alien_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.alien
    ADD CONSTRAINT fk_alien_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: moon fk_moon_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_planet_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star fk_star_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

