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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    year integer NOT NULL,
    round character varying(50) NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_games_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_games_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_games_id_seq OWNER TO freecodecamp;

--
-- Name: games_games_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_games_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_games_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (6, 39, 40, 4, 2, 2018, 'Final');
INSERT INTO public.games VALUES (7, 41, 42, 2, 0, 2018, 'Third Place');
INSERT INTO public.games VALUES (8, 40, 42, 2, 1, 2018, 'Semi-Final');
INSERT INTO public.games VALUES (9, 39, 41, 1, 0, 2018, 'Semi-Final');
INSERT INTO public.games VALUES (10, 40, 43, 3, 2, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (11, 42, 44, 2, 0, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (12, 41, 45, 2, 1, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (13, 39, 46, 2, 0, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (14, 42, 47, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (15, 44, 48, 1, 0, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (16, 41, 49, 3, 2, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (17, 45, 50, 2, 0, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (18, 40, 51, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (19, 43, 52, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (20, 46, 53, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (21, 39, 54, 4, 3, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (22, 55, 54, 1, 0, 2014, 'Final');
INSERT INTO public.games VALUES (23, 56, 45, 3, 0, 2014, 'Third Place');
INSERT INTO public.games VALUES (24, 54, 56, 1, 0, 2014, 'Semi-Final');
INSERT INTO public.games VALUES (25, 55, 45, 7, 1, 2014, 'Semi-Final');
INSERT INTO public.games VALUES (26, 56, 57, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (27, 54, 41, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (28, 45, 47, 2, 1, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (29, 55, 39, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (30, 45, 58, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (31, 47, 46, 2, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (32, 39, 59, 2, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (33, 55, 60, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (34, 56, 50, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (35, 57, 61, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (36, 54, 48, 1, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (37, 41, 62, 2, 1, 2014, 'Eighth-Final');


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (39, 'France');
INSERT INTO public.teams VALUES (40, 'Croatia');
INSERT INTO public.teams VALUES (41, 'Belgium');
INSERT INTO public.teams VALUES (42, 'England');
INSERT INTO public.teams VALUES (43, 'Russia');
INSERT INTO public.teams VALUES (44, 'Sweden');
INSERT INTO public.teams VALUES (45, 'Brazil');
INSERT INTO public.teams VALUES (46, 'Uruguay');
INSERT INTO public.teams VALUES (47, 'Colombia');
INSERT INTO public.teams VALUES (48, 'Switzerland');
INSERT INTO public.teams VALUES (49, 'Japan');
INSERT INTO public.teams VALUES (50, 'Mexico');
INSERT INTO public.teams VALUES (51, 'Denmark');
INSERT INTO public.teams VALUES (52, 'Spain');
INSERT INTO public.teams VALUES (53, 'Portugal');
INSERT INTO public.teams VALUES (54, 'Argentina');
INSERT INTO public.teams VALUES (55, 'Germany');
INSERT INTO public.teams VALUES (56, 'Netherlands');
INSERT INTO public.teams VALUES (57, 'Costa Rica');
INSERT INTO public.teams VALUES (58, 'Chile');
INSERT INTO public.teams VALUES (59, 'Nigeria');
INSERT INTO public.teams VALUES (60, 'Algeria');
INSERT INTO public.teams VALUES (61, 'Greece');
INSERT INTO public.teams VALUES (62, 'United States');


--
-- Name: games_games_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_games_id_seq', 37, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 62, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

