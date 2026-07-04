--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
    user_id integer,
    attempts integer
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
-- Name: guesses; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.guesses (
    guess_id integer NOT NULL,
    game_id integer,
    guess_value integer,
    hint character varying(75)
);


ALTER TABLE public.guesses OWNER TO freecodecamp;

--
-- Name: guesses_guess_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.guesses_guess_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.guesses_guess_id_seq OWNER TO freecodecamp;

--
-- Name: guesses_guess_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.guesses_guess_id_seq OWNED BY public.guesses.guess_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(30)
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: guesses guess_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.guesses ALTER COLUMN guess_id SET DEFAULT nextval('public.guesses_guess_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 9);
INSERT INTO public.games VALUES (2, 2, 188);
INSERT INTO public.games VALUES (3, 2, 302);
INSERT INTO public.games VALUES (4, 3, 819);
INSERT INTO public.games VALUES (5, 3, 698);
INSERT INTO public.games VALUES (6, 2, 921);
INSERT INTO public.games VALUES (7, 2, 31);
INSERT INTO public.games VALUES (8, 2, 654);
INSERT INTO public.games VALUES (9, 1, 13);
INSERT INTO public.games VALUES (10, 4, 168);
INSERT INTO public.games VALUES (11, 4, 172);
INSERT INTO public.games VALUES (12, 5, 120);
INSERT INTO public.games VALUES (13, 5, 6);
INSERT INTO public.games VALUES (14, 4, 154);
INSERT INTO public.games VALUES (15, 4, 738);
INSERT INTO public.games VALUES (16, 4, 777);
INSERT INTO public.games VALUES (17, 6, 864);
INSERT INTO public.games VALUES (18, 6, 133);
INSERT INTO public.games VALUES (19, 7, 137);
INSERT INTO public.games VALUES (20, 7, 761);
INSERT INTO public.games VALUES (21, 6, 380);
INSERT INTO public.games VALUES (22, 6, 673);
INSERT INTO public.games VALUES (23, 6, 196);
INSERT INTO public.games VALUES (24, 8, 993);
INSERT INTO public.games VALUES (25, 8, 931);
INSERT INTO public.games VALUES (26, 9, 237);
INSERT INTO public.games VALUES (27, 9, 176);
INSERT INTO public.games VALUES (28, 8, 571);
INSERT INTO public.games VALUES (29, 8, 416);
INSERT INTO public.games VALUES (30, 8, 366);
INSERT INTO public.games VALUES (31, 10, 363);
INSERT INTO public.games VALUES (32, 10, 151);
INSERT INTO public.games VALUES (33, 11, 419);
INSERT INTO public.games VALUES (34, 11, 353);
INSERT INTO public.games VALUES (35, 10, 559);
INSERT INTO public.games VALUES (36, 10, 675);
INSERT INTO public.games VALUES (37, 10, 574);
INSERT INTO public.games VALUES (38, 1, 22);
INSERT INTO public.games VALUES (39, 12, 979);
INSERT INTO public.games VALUES (40, 12, 581);
INSERT INTO public.games VALUES (41, 13, 422);
INSERT INTO public.games VALUES (42, 13, 219);
INSERT INTO public.games VALUES (43, 12, 310);
INSERT INTO public.games VALUES (44, 12, 414);
INSERT INTO public.games VALUES (45, 12, 380);
INSERT INTO public.games VALUES (46, 14, 373);
INSERT INTO public.games VALUES (47, 14, 615);
INSERT INTO public.games VALUES (48, 15, 185);
INSERT INTO public.games VALUES (49, 15, 781);
INSERT INTO public.games VALUES (50, 14, 248);
INSERT INTO public.games VALUES (51, 14, 520);
INSERT INTO public.games VALUES (52, 14, 412);


--
-- Data for Name: guesses; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--



--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'Jasper');
INSERT INTO public.users VALUES (2, 'user_1783128104471');
INSERT INTO public.users VALUES (3, 'user_1783128104470');
INSERT INTO public.users VALUES (4, 'user_1783128196874');
INSERT INTO public.users VALUES (5, 'user_1783128196873');
INSERT INTO public.users VALUES (6, 'user_1783128396806');
INSERT INTO public.users VALUES (7, 'user_1783128396805');
INSERT INTO public.users VALUES (8, 'user_1783128760709');
INSERT INTO public.users VALUES (9, 'user_1783128760708');
INSERT INTO public.users VALUES (10, 'user_1783128827719');
INSERT INTO public.users VALUES (11, 'user_1783128827717');
INSERT INTO public.users VALUES (12, 'user_1783128934501');
INSERT INTO public.users VALUES (13, 'user_1783128934500');
INSERT INTO public.users VALUES (14, 'user_1783129394037');
INSERT INTO public.users VALUES (15, 'user_1783129394036');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 52, true);


--
-- Name: guesses_guess_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.guesses_guess_id_seq', 1, false);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 15, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: guesses guesses_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.guesses
    ADD CONSTRAINT guesses_pkey PRIMARY KEY (guess_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: guesses fk_game; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.guesses
    ADD CONSTRAINT fk_game FOREIGN KEY (game_id) REFERENCES public.games(game_id);


--
-- Name: games fk_user; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

