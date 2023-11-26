--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1 (Ubuntu 16.1-1.pgdg22.04+1)
-- Dumped by pg_dump version 16.1 (Ubuntu 16.1-1.pgdg22.04+1)

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

--
-- Name: pgcrypto; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pgcrypto WITH SCHEMA public;


--
-- Name: EXTENSION pgcrypto; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgcrypto IS 'cryptographic functions';


--
-- Name: uuid-ossp; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA public;


--
-- Name: EXTENSION "uuid-ossp"; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION "uuid-ossp" IS 'generate universally unique identifiers (UUIDs)';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: belong; Type: TABLE; Schema: public; Owner: abd
--

CREATE TABLE public.belong (
    product_uuid uuid NOT NULL,
    order_number integer NOT NULL
);


ALTER TABLE public.belong OWNER TO abd;

--
-- Name: orders; Type: TABLE; Schema: public; Owner: abd
--

CREATE TABLE public.orders (
    order_number integer NOT NULL,
    order_total_cost_ht numeric(10,2) NOT NULL,
    order_total_quantity integer NOT NULL,
    created_at timestamp without time zone NOT NULL,
    deliver_at timestamp without time zone,
    user_uuid uuid NOT NULL
);


ALTER TABLE public.orders OWNER TO abd;

--
-- Name: products; Type: TABLE; Schema: public; Owner: abd
--

CREATE TABLE public.products (
    product_uuid uuid DEFAULT public.uuid_generate_v4() NOT NULL,
    product_name character varying(50) NOT NULL,
    product_description character varying(500) NOT NULL,
    product_price numeric(10,2) NOT NULL,
    product_quantity integer NOT NULL,
    created_at date NOT NULL,
    updated_at date
);


ALTER TABLE public.products OWNER TO abd;

--
-- Name: users; Type: TABLE; Schema: public; Owner: abd
--

CREATE TABLE public.users (
    user_uuid uuid DEFAULT public.uuid_generate_v4() NOT NULL,
    user_pseudo character varying(25) NOT NULL,
    username character varying(25) NOT NULL,
    user_password text NOT NULL,
    created_at timestamp without time zone NOT NULL
);


ALTER TABLE public.users OWNER TO abd;

--
-- Data for Name: belong; Type: TABLE DATA; Schema: public; Owner: abd
--

COPY public.belong (product_uuid, order_number) FROM stdin;
\.


--
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: abd
--

COPY public.orders (order_number, order_total_cost_ht, order_total_quantity, created_at, deliver_at, user_uuid) FROM stdin;
\.


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: abd
--

COPY public.products (product_uuid, product_name, product_description, product_price, product_quantity, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: abd
--

COPY public.users (user_uuid, user_pseudo, username, user_password, created_at) FROM stdin;
\.


--
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: public; Owner: abd
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (order_number);


--
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: abd
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (product_uuid);


--
-- Name: products products_product_description_key; Type: CONSTRAINT; Schema: public; Owner: abd
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_product_description_key UNIQUE (product_description);


--
-- Name: products products_product_name_key; Type: CONSTRAINT; Schema: public; Owner: abd
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_product_name_key UNIQUE (product_name);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: abd
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_uuid);


--
-- Name: users users_user_password_key; Type: CONSTRAINT; Schema: public; Owner: abd
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_user_password_key UNIQUE (user_password);


--
-- Name: users users_user_pseudo_key; Type: CONSTRAINT; Schema: public; Owner: abd
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_user_pseudo_key UNIQUE (user_pseudo);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: abd
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: orders fk_orders; Type: FK CONSTRAINT; Schema: public; Owner: abd
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk_orders FOREIGN KEY (user_uuid) REFERENCES public.users(user_uuid);


--
-- Name: belong fk_orders; Type: FK CONSTRAINT; Schema: public; Owner: abd
--

ALTER TABLE ONLY public.belong
    ADD CONSTRAINT fk_orders FOREIGN KEY (order_number) REFERENCES public.orders(order_number);


--
-- Name: belong fk_products; Type: FK CONSTRAINT; Schema: public; Owner: abd
--

ALTER TABLE ONLY public.belong
    ADD CONSTRAINT fk_products FOREIGN KEY (product_uuid) REFERENCES public.products(product_uuid);


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: pg_database_owner
--

GRANT ALL ON SCHEMA public TO abd;


--
-- PostgreSQL database dump complete
--

