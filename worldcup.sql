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
    year integer NOT NULL,
    round character varying(60) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(60) NOT NULL
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

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (155, 2018, 'Final', 276, 277, 4, 2);
INSERT INTO public.games VALUES (156, 2018, 'Third Place', 278, 279, 2, 0);
INSERT INTO public.games VALUES (157, 2018, 'Semi-Final', 277, 279, 2, 1);
INSERT INTO public.games VALUES (158, 2018, 'Semi-Final', 276, 278, 1, 0);
INSERT INTO public.games VALUES (159, 2018, 'Quarter-Final', 277, 280, 3, 2);
INSERT INTO public.games VALUES (160, 2018, 'Quarter-Final', 279, 281, 2, 0);
INSERT INTO public.games VALUES (161, 2018, 'Quarter-Final', 278, 282, 2, 1);
INSERT INTO public.games VALUES (162, 2018, 'Quarter-Final', 276, 283, 2, 0);
INSERT INTO public.games VALUES (163, 2018, 'Eighth-Final', 279, 284, 2, 1);
INSERT INTO public.games VALUES (164, 2018, 'Eighth-Final', 281, 285, 1, 0);
INSERT INTO public.games VALUES (165, 2018, 'Eighth-Final', 278, 286, 3, 2);
INSERT INTO public.games VALUES (166, 2018, 'Eighth-Final', 282, 287, 2, 0);
INSERT INTO public.games VALUES (167, 2018, 'Eighth-Final', 277, 288, 2, 1);
INSERT INTO public.games VALUES (168, 2018, 'Eighth-Final', 280, 289, 2, 1);
INSERT INTO public.games VALUES (169, 2018, 'Eighth-Final', 283, 290, 2, 1);
INSERT INTO public.games VALUES (170, 2018, 'Eighth-Final', 276, 291, 4, 3);
INSERT INTO public.games VALUES (171, 2014, 'Final', 292, 291, 1, 0);
INSERT INTO public.games VALUES (172, 2014, 'Third Place', 293, 282, 3, 0);
INSERT INTO public.games VALUES (173, 2014, 'Semi-Final', 291, 293, 1, 0);
INSERT INTO public.games VALUES (174, 2014, 'Semi-Final', 292, 282, 7, 1);
INSERT INTO public.games VALUES (175, 2014, 'Quarter-Final', 293, 294, 1, 0);
INSERT INTO public.games VALUES (176, 2014, 'Quarter-Final', 291, 278, 1, 0);
INSERT INTO public.games VALUES (177, 2014, 'Quarter-Final', 282, 284, 2, 1);
INSERT INTO public.games VALUES (178, 2014, 'Quarter-Final', 292, 276, 1, 0);
INSERT INTO public.games VALUES (179, 2014, 'Eighth-Final', 282, 295, 2, 1);
INSERT INTO public.games VALUES (180, 2014, 'Eighth-Final', 284, 283, 2, 0);
INSERT INTO public.games VALUES (181, 2014, 'Eighth-Final', 276, 296, 2, 0);
INSERT INTO public.games VALUES (182, 2014, 'Eighth-Final', 292, 297, 2, 1);
INSERT INTO public.games VALUES (183, 2014, 'Eighth-Final', 293, 287, 2, 1);
INSERT INTO public.games VALUES (184, 2014, 'Eighth-Final', 294, 298, 2, 1);
INSERT INTO public.games VALUES (185, 2014, 'Eighth-Final', 291, 285, 1, 0);
INSERT INTO public.games VALUES (186, 2014, 'Eighth-Final', 278, 299, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (276, 'France');
INSERT INTO public.teams VALUES (277, 'Croatia');
INSERT INTO public.teams VALUES (278, 'Belgium');
INSERT INTO public.teams VALUES (279, 'England');
INSERT INTO public.teams VALUES (280, 'Russia');
INSERT INTO public.teams VALUES (281, 'Sweden');
INSERT INTO public.teams VALUES (282, 'Brazil');
INSERT INTO public.teams VALUES (283, 'Uruguay');
INSERT INTO public.teams VALUES (284, 'Colombia');
INSERT INTO public.teams VALUES (285, 'Switzerland');
INSERT INTO public.teams VALUES (286, 'Japan');
INSERT INTO public.teams VALUES (287, 'Mexico');
INSERT INTO public.teams VALUES (288, 'Denmark');
INSERT INTO public.teams VALUES (289, 'Spain');
INSERT INTO public.teams VALUES (290, 'Portugal');
INSERT INTO public.teams VALUES (291, 'Argentina');
INSERT INTO public.teams VALUES (292, 'Germany');
INSERT INTO public.teams VALUES (293, 'Netherlands');
INSERT INTO public.teams VALUES (294, 'Costa Rica');
INSERT INTO public.teams VALUES (295, 'Chile');
INSERT INTO public.teams VALUES (296, 'Nigeria');
INSERT INTO public.teams VALUES (297, 'Algeria');
INSERT INTO public.teams VALUES (298, 'Greece');
INSERT INTO public.teams VALUES (299, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 186, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 299, true);


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

