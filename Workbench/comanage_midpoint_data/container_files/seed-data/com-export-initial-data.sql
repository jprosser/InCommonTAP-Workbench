--
-- PostgreSQL database dump
--

-- Dumped from database version 12.12 (Debian 12.12-1.pgdg110+1)
-- Dumped by pg_dump version 12.12 (Debian 12.12-1.pgdg110+1)

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
-- Name: sp_ad_hoc_attributes; Type: TABLE; Schema: public; Owner: comanage_midpoint_loader
--

CREATE TABLE public.sp_ad_hoc_attributes (
    id integer NOT NULL,
    tag character varying(128),
    value character varying(256),
    co_person_role_id integer,
    org_identity_source_id integer,
    created timestamp without time zone,
    modified timestamp without time zone
);


ALTER TABLE public.sp_ad_hoc_attributes OWNER TO comanage_midpoint_loader;

--
-- Name: sp_addresses; Type: TABLE; Schema: public; Owner: comanage_midpoint_loader
--

CREATE TABLE public.sp_addresses (
    id integer NOT NULL,
    street text,
    room character varying(64),
    locality character varying(128),
    state character varying(128),
    postal_code character varying(16),
    country character varying(128),
    description character varying(128),
    type character varying(32),
    language character varying(16),
    co_person_role_id integer,
    org_identity_source_id integer,
    created timestamp without time zone,
    modified timestamp without time zone
);


ALTER TABLE public.sp_addresses OWNER TO comanage_midpoint_loader;

--
-- Name: sp_co_group_members; Type: TABLE; Schema: public; Owner: comanage_midpoint_loader
--

CREATE TABLE public.sp_co_group_members (
    id integer NOT NULL,
    co_group_id integer NOT NULL,
    co_person_id integer NOT NULL,
    member boolean,
    owner boolean,
    valid_from timestamp without time zone,
    valid_through timestamp without time zone,
    org_identity_source_id integer,
    created timestamp without time zone,
    modified timestamp without time zone
);


ALTER TABLE public.sp_co_group_members OWNER TO comanage_midpoint_loader;

--
-- Name: sp_co_groups; Type: TABLE; Schema: public; Owner: comanage_midpoint_loader
--

CREATE TABLE public.sp_co_groups (
    id integer NOT NULL,
    cou_id integer,
    name character varying(128),
    description character varying(256),
    open boolean,
    status character varying(2),
    group_type character varying(2),
    auto boolean,
    created timestamp without time zone,
    modified timestamp without time zone
);


ALTER TABLE public.sp_co_groups OWNER TO comanage_midpoint_loader;

--
-- Name: sp_co_people; Type: TABLE; Schema: public; Owner: comanage_midpoint_loader
--

CREATE TABLE public.sp_co_people (
    id integer NOT NULL,
    status character varying(2),
    date_of_birth date,
    timezone character varying(80),
    created timestamp without time zone,
    modified timestamp without time zone
);


ALTER TABLE public.sp_co_people OWNER TO comanage_midpoint_loader;

--
-- Name: sp_co_person_roles; Type: TABLE; Schema: public; Owner: comanage_midpoint_loader
--

CREATE TABLE public.sp_co_person_roles (
    id integer NOT NULL,
    co_person_id integer NOT NULL,
    sponsor_co_person_id integer,
    cou_id integer,
    affiliation character varying(32),
    title character varying(128),
    o character varying(128),
    ou character varying(128),
    valid_from timestamp without time zone,
    valid_through timestamp without time zone,
    ordr integer,
    status character varying(2),
    org_identity_source_id integer,
    created timestamp without time zone,
    modified timestamp without time zone
);


ALTER TABLE public.sp_co_person_roles OWNER TO comanage_midpoint_loader;

--
-- Name: sp_co_t_and_c_agreements; Type: TABLE; Schema: public; Owner: comanage_midpoint_loader
--

CREATE TABLE public.sp_co_t_and_c_agreements (
    id integer NOT NULL,
    co_person_id integer,
    co_terms_and_conditions_id integer,
    agreement_time timestamp without time zone,
    identifier character varying(256),
    created timestamp without time zone,
    modified timestamp without time zone
);


ALTER TABLE public.sp_co_t_and_c_agreements OWNER TO comanage_midpoint_loader;

--
-- Name: sp_co_terms_and_conditions; Type: TABLE; Schema: public; Owner: comanage_midpoint_loader
--

CREATE TABLE public.sp_co_terms_and_conditions (
    id integer NOT NULL,
    description character varying(256),
    url character varying(256),
    body text,
    cou_id integer,
    status character varying(2),
    ordr integer,
    created timestamp without time zone,
    modified timestamp without time zone
);


ALTER TABLE public.sp_co_terms_and_conditions OWNER TO comanage_midpoint_loader;

--
-- Name: sp_cous; Type: TABLE; Schema: public; Owner: comanage_midpoint_loader
--

CREATE TABLE public.sp_cous (
    id integer NOT NULL,
    name character varying(128),
    description character varying(128),
    parent_id integer,
    created timestamp without time zone,
    modified timestamp without time zone
);


ALTER TABLE public.sp_cous OWNER TO comanage_midpoint_loader;

--
-- Name: sp_email_addresses; Type: TABLE; Schema: public; Owner: comanage_midpoint_loader
--

CREATE TABLE public.sp_email_addresses (
    id integer NOT NULL,
    co_person_id integer,
    mail character varying(256),
    description character varying(128),
    type character varying(32),
    verified boolean,
    org_identity_source_id integer,
    created timestamp without time zone,
    modified timestamp without time zone
);


ALTER TABLE public.sp_email_addresses OWNER TO comanage_midpoint_loader;

--
-- Name: sp_identifiers; Type: TABLE; Schema: public; Owner: comanage_midpoint_loader
--

CREATE TABLE public.sp_identifiers (
    id integer NOT NULL,
    co_person_id integer,
    identifier character varying(256),
    type character varying(32),
    login boolean,
    status character varying(2),
    org_identity_source_id integer,
    created timestamp without time zone,
    modified timestamp without time zone
);


ALTER TABLE public.sp_identifiers OWNER TO comanage_midpoint_loader;

--
-- Name: sp_names; Type: TABLE; Schema: public; Owner: comanage_midpoint_loader
--

CREATE TABLE public.sp_names (
    id integer NOT NULL,
    co_person_id integer,
    honorific character varying(32),
    given character varying(128),
    middle character varying(128),
    family character varying(128),
    suffix character varying(32),
    type character varying(32),
    language character varying(16),
    primary_name boolean,
    org_identity_source_id integer,
    created timestamp without time zone,
    modified timestamp without time zone
);


ALTER TABLE public.sp_names OWNER TO comanage_midpoint_loader;

--
-- Name: sp_org_identity_sources; Type: TABLE; Schema: public; Owner: comanage_midpoint_loader
--

CREATE TABLE public.sp_org_identity_sources (
    id integer NOT NULL,
    description character varying(256),
    plugin character varying(32),
    status character varying(2),
    created timestamp without time zone,
    modified timestamp without time zone
);


ALTER TABLE public.sp_org_identity_sources OWNER TO comanage_midpoint_loader;

--
-- Name: sp_telephone_numbers; Type: TABLE; Schema: public; Owner: comanage_midpoint_loader
--

CREATE TABLE public.sp_telephone_numbers (
    id integer NOT NULL,
    country_code character varying(3),
    area_code character varying(8),
    number character varying(64),
    extension character varying(16),
    description character varying(128),
    type character varying(32),
    co_person_role_id integer,
    org_identity_source_id integer,
    created timestamp without time zone,
    modified timestamp without time zone
);


ALTER TABLE public.sp_telephone_numbers OWNER TO comanage_midpoint_loader;

--
-- Name: sp_urls; Type: TABLE; Schema: public; Owner: comanage_midpoint_loader
--

CREATE TABLE public.sp_urls (
    id integer NOT NULL,
    co_person_id integer,
    url character varying(256),
    description character varying(128),
    type character varying(32),
    org_identity_source_id integer,
    created timestamp without time zone,
    modified timestamp without time zone
);


ALTER TABLE public.sp_urls OWNER TO comanage_midpoint_loader;

--
-- Name: vwpersons; Type: VIEW; Schema: public; Owner: comanage_midpoint_loader
--

CREATE VIEW public.vwpersons AS
 SELECT DISTINCT co.id AS coperson_id,
    nms.given AS givenname,
    nms.family AS familyname,
    concat(nms.given, ' ', nms.family) AS fullname,
    idt.identifier AS name,
    em.mail AS emailaddress,
    concat(nms.given, ' ', nms.family, ' (', split_part((em.mail)::text, '@'::text, 2), ')') AS description,
    GREATEST(co.modified, nms.modified, idt.modified, em.modified) AS last_modified
   FROM (((public.sp_co_people co
     JOIN public.sp_names nms ON ((co.id = nms.co_person_id)))
     JOIN public.sp_identifiers idt ON (((co.id = idt.co_person_id) AND ((idt.type)::text = 'GuestID'::text))))
     LEFT JOIN public.sp_email_addresses em ON (((co.id = em.co_person_id) AND ((em.type)::text = 'official'::text) AND (em.org_identity_source_id IS NULL))))
  WHERE ((co.status)::text = 'A'::text);


ALTER TABLE public.vwpersons OWNER TO comanage_midpoint_loader;

--
-- Data for Name: sp_ad_hoc_attributes; Type: TABLE DATA; Schema: public; Owner: comanage_midpoint_loader
--

COPY public.sp_ad_hoc_attributes (id, tag, value, co_person_role_id, org_identity_source_id, created, modified) FROM stdin;
\.


--
-- Data for Name: sp_addresses; Type: TABLE DATA; Schema: public; Owner: comanage_midpoint_loader
--

COPY public.sp_addresses (id, street, room, locality, state, postal_code, country, description, type, language, co_person_role_id, org_identity_source_id, created, modified) FROM stdin;
\.


--
-- Data for Name: sp_co_group_members; Type: TABLE DATA; Schema: public; Owner: comanage_midpoint_loader
--

COPY public.sp_co_group_members (id, co_group_id, co_person_id, member, owner, valid_from, valid_through, org_identity_source_id, created, modified) FROM stdin;
3	5	2	t	f	\N	\N	\N	2022-09-23 18:46:10	2022-09-23 18:46:10
4	6	2	t	f	\N	\N	\N	2022-09-23 18:46:11	2022-09-23 18:46:11
5	5	3	t	f	\N	\N	\N	2022-09-23 18:46:18	2022-09-23 18:46:18
6	6	3	t	f	\N	\N	\N	2022-09-23 18:46:18	2022-09-23 18:46:18
7	5	4	t	f	\N	\N	\N	2022-09-23 18:46:24	2022-09-23 18:46:24
8	6	4	t	f	\N	\N	\N	2022-09-23 18:46:24	2022-09-23 18:46:24
9	5	5	t	f	\N	\N	\N	2022-09-23 18:49:40	2022-09-23 18:49:40
10	6	5	t	f	\N	\N	\N	2022-09-23 18:49:41	2022-09-23 18:49:41
11	5	6	t	f	\N	\N	\N	2022-09-23 18:49:47	2022-09-23 18:49:47
12	6	6	t	f	\N	\N	\N	2022-09-23 18:49:47	2022-09-23 18:49:47
13	5	7	t	f	\N	\N	\N	2022-09-23 18:49:53	2022-09-23 18:49:53
14	6	7	t	f	\N	\N	\N	2022-09-23 18:49:54	2022-09-23 18:49:54
15	5	8	t	f	\N	\N	\N	2022-09-23 18:50:00	2022-09-23 18:50:00
16	6	8	t	f	\N	\N	\N	2022-09-23 18:50:00	2022-09-23 18:50:00
17	5	9	t	f	\N	\N	\N	2022-09-23 18:50:07	2022-09-23 18:50:07
18	6	9	t	f	\N	\N	\N	2022-09-23 18:50:07	2022-09-23 18:50:07
19	5	10	t	f	\N	\N	\N	2022-09-23 18:50:14	2022-09-23 18:50:14
20	6	10	t	f	\N	\N	\N	2022-09-23 18:50:14	2022-09-23 18:50:14
21	5	11	t	f	\N	\N	\N	2022-09-23 18:50:21	2022-09-23 18:50:21
22	6	11	t	f	\N	\N	\N	2022-09-23 18:50:21	2022-09-23 18:50:21
\.


--
-- Data for Name: sp_co_groups; Type: TABLE DATA; Schema: public; Owner: comanage_midpoint_loader
--

COPY public.sp_co_groups (id, cou_id, name, description, open, status, group_type, auto, created, modified) FROM stdin;
4	\N	CO:admins	Guests/Sponsored Accounts Administrators	f	A	A	f	2022-09-23 17:37:31	2022-09-23 17:37:31
5	\N	CO:members:active	Guests/Sponsored Accounts Active Members	f	A	MA	t	2022-09-23 17:37:31	2022-09-23 17:37:31
6	\N	CO:members:all	Guests/Sponsored Accounts Members	f	A	M	t	2022-09-23 17:37:31	2022-09-23 17:37:31
\.


--
-- Data for Name: sp_co_people; Type: TABLE DATA; Schema: public; Owner: comanage_midpoint_loader
--

COPY public.sp_co_people (id, status, date_of_birth, timezone, created, modified) FROM stdin;
2	A	\N	\N	2022-09-23 18:46:10	2022-09-23 18:46:10
3	A	\N	\N	2022-09-23 18:46:18	2022-09-23 18:46:18
4	A	\N	\N	2022-09-23 18:46:24	2022-09-23 18:46:24
5	A	\N	\N	2022-09-23 18:49:40	2022-09-23 18:49:40
6	A	\N	\N	2022-09-23 18:49:47	2022-09-23 18:49:47
7	A	\N	\N	2022-09-23 18:49:53	2022-09-23 18:49:53
8	A	\N	\N	2022-09-23 18:50:00	2022-09-23 18:50:00
9	A	\N	\N	2022-09-23 18:50:07	2022-09-23 18:50:07
10	A	\N	\N	2022-09-23 18:50:14	2022-09-23 18:50:14
11	A	\N	\N	2022-09-23 18:50:20	2022-09-23 18:50:20
\.


--
-- Data for Name: sp_co_person_roles; Type: TABLE DATA; Schema: public; Owner: comanage_midpoint_loader
--

COPY public.sp_co_person_roles (id, co_person_id, sponsor_co_person_id, cou_id, affiliation, title, o, ou, valid_from, valid_through, ordr, status, org_identity_source_id, created, modified) FROM stdin;
2	2	\N	\N	member	\N	\N	\N	\N	\N	\N	A	\N	2022-09-23 18:46:15	2022-09-23 18:46:15
3	3	\N	\N	member	\N	\N	\N	\N	\N	\N	A	\N	2022-09-23 18:46:21	2022-09-23 18:46:21
4	4	\N	\N	member	\N	\N	\N	\N	\N	\N	A	\N	2022-09-23 18:46:28	2022-09-23 18:46:28
5	5	\N	\N	member	\N	\N	\N	\N	\N	\N	A	\N	2022-09-23 18:49:44	2022-09-23 18:49:44
6	6	\N	\N	member	\N	\N	\N	\N	\N	\N	A	\N	2022-09-23 18:49:51	2022-09-23 18:49:51
7	7	\N	\N	member	\N	\N	\N	\N	\N	\N	A	\N	2022-09-23 18:49:57	2022-09-23 18:49:57
8	8	\N	\N	member	\N	\N	\N	\N	\N	\N	A	\N	2022-09-23 18:50:04	2022-09-23 18:50:04
9	9	\N	\N	member	\N	\N	\N	\N	\N	\N	A	\N	2022-09-23 18:50:11	2022-09-23 18:50:11
10	10	\N	\N	member	\N	\N	\N	\N	\N	\N	A	\N	2022-09-23 18:50:17	2022-09-23 18:50:17
11	11	\N	\N	member	\N	\N	\N	\N	\N	\N	A	\N	2022-09-23 18:50:24	2022-09-23 18:50:24
\.


--
-- Data for Name: sp_co_t_and_c_agreements; Type: TABLE DATA; Schema: public; Owner: comanage_midpoint_loader
--

COPY public.sp_co_t_and_c_agreements (id, co_person_id, co_terms_and_conditions_id, agreement_time, identifier, created, modified) FROM stdin;
\.


--
-- Data for Name: sp_co_terms_and_conditions; Type: TABLE DATA; Schema: public; Owner: comanage_midpoint_loader
--

COPY public.sp_co_terms_and_conditions (id, description, url, body, cou_id, status, ordr, created, modified) FROM stdin;
\.


--
-- Data for Name: sp_cous; Type: TABLE DATA; Schema: public; Owner: comanage_midpoint_loader
--

COPY public.sp_cous (id, name, description, parent_id, created, modified) FROM stdin;
\.


--
-- Data for Name: sp_email_addresses; Type: TABLE DATA; Schema: public; Owner: comanage_midpoint_loader
--

COPY public.sp_email_addresses (id, co_person_id, mail, description, type, verified, org_identity_source_id, created, modified) FROM stdin;
1	2	guest1@workbench.incommon.org		official	f	\N	2022-09-23 18:46:12	2022-09-23 18:46:12
2	3	guest2@workbench.incommon.org		official	f	\N	2022-09-23 18:46:19	2022-09-23 18:46:19
3	4	guest3@workbench.incommon.org		official	f	\N	2022-09-23 18:46:26	2022-09-23 18:46:26
4	5	guest4@workbench.incommon.org		official	f	\N	2022-09-23 18:49:42	2022-09-23 18:49:42
5	6	guest5@workbench.incommon.org		official	f	\N	2022-09-23 18:49:49	2022-09-23 18:49:49
6	7	guest6@workbench.incommon.org		official	f	\N	2022-09-23 18:49:55	2022-09-23 18:49:55
7	8	guest7@workbench.incommon.org		official	f	\N	2022-09-23 18:50:02	2022-09-23 18:50:02
8	9	guest8@workbench.incommon.org		official	f	\N	2022-09-23 18:50:09	2022-09-23 18:50:09
9	10	guest9@workbench.incommon.org		official	f	\N	2022-09-23 18:50:15	2022-09-23 18:50:15
10	11	guest10@workbench.incommon.org		official	f	\N	2022-09-23 18:50:22	2022-09-23 18:50:22
\.


--
-- Data for Name: sp_identifiers; Type: TABLE DATA; Schema: public; Owner: comanage_midpoint_loader
--

COPY public.sp_identifiers (id, co_person_id, identifier, type, login, status, org_identity_source_id, created, modified) FROM stdin;
3	2	guest1@workbench.incommon.org	eppn	t	A	\N	2022-09-23 18:46:14	2022-09-23 18:46:14
4	2	G00000001	GuestID	t	A	\N	2022-09-23 18:46:15	2022-09-23 18:46:15
6	3	guest2@workbench.incommon.org	eppn	t	A	\N	2022-09-23 18:46:21	2022-09-23 18:46:21
7	3	G00000002	GuestID	t	A	\N	2022-09-23 18:46:22	2022-09-23 18:46:22
9	4	guest3@workbench.incommon.org	eppn	t	A	\N	2022-09-23 18:46:27	2022-09-23 18:46:27
10	4	G00000003	GuestID	t	A	\N	2022-09-23 18:46:29	2022-09-23 18:46:29
12	5	guest4@workbench.incommon.org	eppn	t	A	\N	2022-09-23 18:49:43	2022-09-23 18:49:43
13	5	G00000004	GuestID	t	A	\N	2022-09-23 18:49:45	2022-09-23 18:49:45
15	6	guest5@workbench.incommon.org	eppn	t	A	\N	2022-09-23 18:49:50	2022-09-23 18:49:50
16	6	G00000005	GuestID	t	A	\N	2022-09-23 18:49:51	2022-09-23 18:49:51
18	7	guest6@workbench.incommon.org	eppn	t	A	\N	2022-09-23 18:49:56	2022-09-23 18:49:56
19	7	G00000006	GuestID	t	A	\N	2022-09-23 18:49:58	2022-09-23 18:49:58
21	8	guest7@workbench.incommon.org	eppn	t	A	\N	2022-09-23 18:50:03	2022-09-23 18:50:03
22	8	G00000007	GuestID	t	A	\N	2022-09-23 18:50:05	2022-09-23 18:50:05
24	9	guest8@workbench.incommon.org	eppn	t	A	\N	2022-09-23 18:50:10	2022-09-23 18:50:10
25	9	G00000008	GuestID	t	A	\N	2022-09-23 18:50:11	2022-09-23 18:50:11
27	10	guest9@workbench.incommon.org	eppn	t	A	\N	2022-09-23 18:50:17	2022-09-23 18:50:17
28	10	G00000009	GuestID	t	A	\N	2022-09-23 18:50:18	2022-09-23 18:50:18
30	11	guest10@workbench.incommon.org	eppn	t	A	\N	2022-09-23 18:50:23	2022-09-23 18:50:23
31	11	G00000010	GuestID	t	A	\N	2022-09-23 18:50:25	2022-09-23 18:50:25
\.


--
-- Data for Name: sp_names; Type: TABLE DATA; Schema: public; Owner: comanage_midpoint_loader
--

COPY public.sp_names (id, co_person_id, honorific, given, middle, family, suffix, type, language, primary_name, org_identity_source_id, created, modified) FROM stdin;
4	2		Gusto		Guest		official	en	t	\N	2022-09-23 18:46:12	2022-09-23 18:46:12
6	3		Philipe		Invitado		official	en	t	\N	2022-09-23 18:46:19	2022-09-23 18:46:19
8	4		Christie		Walken		official	en	t	\N	2022-09-23 18:46:26	2022-09-23 18:46:26
10	5		Luke		Skywalker		official	en	t	\N	2022-09-23 18:49:42	2022-09-23 18:49:42
12	6		Chew		Baca		official	en	t	\N	2022-09-23 18:49:48	2022-09-23 18:49:48
14	7		Han		Solo		official	en	t	\N	2022-09-23 18:49:55	2022-09-23 18:49:55
16	8		Obi-Wan		Kenobi		official	en	t	\N	2022-09-23 18:50:01	2022-09-23 18:50:01
18	9		Donald		Duck		official	en	t	\N	2022-09-23 18:50:08	2022-09-23 18:50:08
20	10		Bugs		Bunny		official	en	t	\N	2022-09-23 18:50:15	2022-09-23 18:50:15
22	11		Mickey		Mouse		official	en	t	\N	2022-09-23 18:50:22	2022-09-23 18:50:22
\.


--
-- Data for Name: sp_org_identity_sources; Type: TABLE DATA; Schema: public; Owner: comanage_midpoint_loader
--

COPY public.sp_org_identity_sources (id, description, plugin, status, created, modified) FROM stdin;
\.


--
-- Data for Name: sp_telephone_numbers; Type: TABLE DATA; Schema: public; Owner: comanage_midpoint_loader
--

COPY public.sp_telephone_numbers (id, country_code, area_code, number, extension, description, type, co_person_role_id, org_identity_source_id, created, modified) FROM stdin;
\.


--
-- Data for Name: sp_urls; Type: TABLE DATA; Schema: public; Owner: comanage_midpoint_loader
--

COPY public.sp_urls (id, co_person_id, url, description, type, org_identity_source_id, created, modified) FROM stdin;
\.


--
-- Name: sp_ad_hoc_attributes sp_ad_hoc_attributes_pkey; Type: CONSTRAINT; Schema: public; Owner: comanage_midpoint_loader
--

ALTER TABLE ONLY public.sp_ad_hoc_attributes
    ADD CONSTRAINT sp_ad_hoc_attributes_pkey PRIMARY KEY (id);


--
-- Name: sp_addresses sp_addresses_pkey; Type: CONSTRAINT; Schema: public; Owner: comanage_midpoint_loader
--

ALTER TABLE ONLY public.sp_addresses
    ADD CONSTRAINT sp_addresses_pkey PRIMARY KEY (id);


--
-- Name: sp_co_group_members sp_co_group_members_pkey; Type: CONSTRAINT; Schema: public; Owner: comanage_midpoint_loader
--

ALTER TABLE ONLY public.sp_co_group_members
    ADD CONSTRAINT sp_co_group_members_pkey PRIMARY KEY (id);


--
-- Name: sp_co_groups sp_co_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: comanage_midpoint_loader
--

ALTER TABLE ONLY public.sp_co_groups
    ADD CONSTRAINT sp_co_groups_pkey PRIMARY KEY (id);


--
-- Name: sp_co_people sp_co_people_pkey; Type: CONSTRAINT; Schema: public; Owner: comanage_midpoint_loader
--

ALTER TABLE ONLY public.sp_co_people
    ADD CONSTRAINT sp_co_people_pkey PRIMARY KEY (id);


--
-- Name: sp_co_person_roles sp_co_person_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: comanage_midpoint_loader
--

ALTER TABLE ONLY public.sp_co_person_roles
    ADD CONSTRAINT sp_co_person_roles_pkey PRIMARY KEY (id);


--
-- Name: sp_co_t_and_c_agreements sp_co_t_and_c_agreements_pkey; Type: CONSTRAINT; Schema: public; Owner: comanage_midpoint_loader
--

ALTER TABLE ONLY public.sp_co_t_and_c_agreements
    ADD CONSTRAINT sp_co_t_and_c_agreements_pkey PRIMARY KEY (id);


--
-- Name: sp_co_terms_and_conditions sp_co_terms_and_conditions_pkey; Type: CONSTRAINT; Schema: public; Owner: comanage_midpoint_loader
--

ALTER TABLE ONLY public.sp_co_terms_and_conditions
    ADD CONSTRAINT sp_co_terms_and_conditions_pkey PRIMARY KEY (id);


--
-- Name: sp_cous sp_cous_pkey; Type: CONSTRAINT; Schema: public; Owner: comanage_midpoint_loader
--

ALTER TABLE ONLY public.sp_cous
    ADD CONSTRAINT sp_cous_pkey PRIMARY KEY (id);


--
-- Name: sp_email_addresses sp_email_addresses_pkey; Type: CONSTRAINT; Schema: public; Owner: comanage_midpoint_loader
--

ALTER TABLE ONLY public.sp_email_addresses
    ADD CONSTRAINT sp_email_addresses_pkey PRIMARY KEY (id);


--
-- Name: sp_identifiers sp_identifiers_pkey; Type: CONSTRAINT; Schema: public; Owner: comanage_midpoint_loader
--

ALTER TABLE ONLY public.sp_identifiers
    ADD CONSTRAINT sp_identifiers_pkey PRIMARY KEY (id);


--
-- Name: sp_names sp_names_pkey; Type: CONSTRAINT; Schema: public; Owner: comanage_midpoint_loader
--

ALTER TABLE ONLY public.sp_names
    ADD CONSTRAINT sp_names_pkey PRIMARY KEY (id);


--
-- Name: sp_org_identity_sources sp_org_identity_sources_pkey; Type: CONSTRAINT; Schema: public; Owner: comanage_midpoint_loader
--

ALTER TABLE ONLY public.sp_org_identity_sources
    ADD CONSTRAINT sp_org_identity_sources_pkey PRIMARY KEY (id);


--
-- Name: sp_telephone_numbers sp_telephone_numbers_pkey; Type: CONSTRAINT; Schema: public; Owner: comanage_midpoint_loader
--

ALTER TABLE ONLY public.sp_telephone_numbers
    ADD CONSTRAINT sp_telephone_numbers_pkey PRIMARY KEY (id);


--
-- Name: sp_urls sp_urls_pkey; Type: CONSTRAINT; Schema: public; Owner: comanage_midpoint_loader
--

ALTER TABLE ONLY public.sp_urls
    ADD CONSTRAINT sp_urls_pkey PRIMARY KEY (id);


--
-- Name: sp_ad_hoc_attributes_i1; Type: INDEX; Schema: public; Owner: comanage_midpoint_loader
--

CREATE INDEX sp_ad_hoc_attributes_i1 ON public.sp_ad_hoc_attributes USING btree (co_person_role_id);


--
-- Name: sp_addresses_i1; Type: INDEX; Schema: public; Owner: comanage_midpoint_loader
--

CREATE INDEX sp_addresses_i1 ON public.sp_addresses USING btree (co_person_role_id);


--
-- Name: sp_co_group_members_i1; Type: INDEX; Schema: public; Owner: comanage_midpoint_loader
--

CREATE INDEX sp_co_group_members_i1 ON public.sp_co_group_members USING btree (co_group_id);


--
-- Name: sp_co_group_members_i2; Type: INDEX; Schema: public; Owner: comanage_midpoint_loader
--

CREATE INDEX sp_co_group_members_i2 ON public.sp_co_group_members USING btree (co_person_id);


--
-- Name: sp_co_person_roles_i1; Type: INDEX; Schema: public; Owner: comanage_midpoint_loader
--

CREATE INDEX sp_co_person_roles_i1 ON public.sp_co_person_roles USING btree (co_person_id);


--
-- Name: sp_co_t_and_c_agreements_i1; Type: INDEX; Schema: public; Owner: comanage_midpoint_loader
--

CREATE INDEX sp_co_t_and_c_agreements_i1 ON public.sp_co_t_and_c_agreements USING btree (co_person_id);


--
-- Name: sp_co_t_and_c_agreements_i2; Type: INDEX; Schema: public; Owner: comanage_midpoint_loader
--

CREATE INDEX sp_co_t_and_c_agreements_i2 ON public.sp_co_t_and_c_agreements USING btree (co_terms_and_conditions_id);


--
-- Name: sp_email_addresses_i1; Type: INDEX; Schema: public; Owner: comanage_midpoint_loader
--

CREATE INDEX sp_email_addresses_i1 ON public.sp_email_addresses USING btree (co_person_id);


--
-- Name: sp_identifiers_i1; Type: INDEX; Schema: public; Owner: comanage_midpoint_loader
--

CREATE INDEX sp_identifiers_i1 ON public.sp_identifiers USING btree (co_person_id);


--
-- Name: sp_names_i1; Type: INDEX; Schema: public; Owner: comanage_midpoint_loader
--

CREATE INDEX sp_names_i1 ON public.sp_names USING btree (co_person_id);


--
-- Name: sp_telephone_numbers_i1; Type: INDEX; Schema: public; Owner: comanage_midpoint_loader
--

CREATE INDEX sp_telephone_numbers_i1 ON public.sp_telephone_numbers USING btree (co_person_role_id);


--
-- Name: sp_urls_i1; Type: INDEX; Schema: public; Owner: comanage_midpoint_loader
--

CREATE INDEX sp_urls_i1 ON public.sp_urls USING btree (co_person_id);


--
-- Name: sp_ad_hoc_attributes sp_ad_hoc_attributes_co_person_role_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: comanage_midpoint_loader
--

ALTER TABLE ONLY public.sp_ad_hoc_attributes
    ADD CONSTRAINT sp_ad_hoc_attributes_co_person_role_id_fkey FOREIGN KEY (co_person_role_id) REFERENCES public.sp_co_person_roles(id);


--
-- Name: sp_ad_hoc_attributes sp_ad_hoc_attributes_org_identity_source_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: comanage_midpoint_loader
--

ALTER TABLE ONLY public.sp_ad_hoc_attributes
    ADD CONSTRAINT sp_ad_hoc_attributes_org_identity_source_id_fkey FOREIGN KEY (org_identity_source_id) REFERENCES public.sp_org_identity_sources(id);


--
-- Name: sp_addresses sp_addresses_co_person_role_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: comanage_midpoint_loader
--

ALTER TABLE ONLY public.sp_addresses
    ADD CONSTRAINT sp_addresses_co_person_role_id_fkey FOREIGN KEY (co_person_role_id) REFERENCES public.sp_co_person_roles(id);


--
-- Name: sp_addresses sp_addresses_org_identity_source_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: comanage_midpoint_loader
--

ALTER TABLE ONLY public.sp_addresses
    ADD CONSTRAINT sp_addresses_org_identity_source_id_fkey FOREIGN KEY (org_identity_source_id) REFERENCES public.sp_org_identity_sources(id);


--
-- Name: sp_co_group_members sp_co_group_members_co_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: comanage_midpoint_loader
--

ALTER TABLE ONLY public.sp_co_group_members
    ADD CONSTRAINT sp_co_group_members_co_group_id_fkey FOREIGN KEY (co_group_id) REFERENCES public.sp_co_groups(id);


--
-- Name: sp_co_group_members sp_co_group_members_co_person_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: comanage_midpoint_loader
--

ALTER TABLE ONLY public.sp_co_group_members
    ADD CONSTRAINT sp_co_group_members_co_person_id_fkey FOREIGN KEY (co_person_id) REFERENCES public.sp_co_people(id);


--
-- Name: sp_co_group_members sp_co_group_members_org_identity_source_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: comanage_midpoint_loader
--

ALTER TABLE ONLY public.sp_co_group_members
    ADD CONSTRAINT sp_co_group_members_org_identity_source_id_fkey FOREIGN KEY (org_identity_source_id) REFERENCES public.sp_org_identity_sources(id);


--
-- Name: sp_co_person_roles sp_co_person_roles_co_person_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: comanage_midpoint_loader
--

ALTER TABLE ONLY public.sp_co_person_roles
    ADD CONSTRAINT sp_co_person_roles_co_person_id_fkey FOREIGN KEY (co_person_id) REFERENCES public.sp_co_people(id);


--
-- Name: sp_co_person_roles sp_co_person_roles_org_identity_source_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: comanage_midpoint_loader
--

ALTER TABLE ONLY public.sp_co_person_roles
    ADD CONSTRAINT sp_co_person_roles_org_identity_source_id_fkey FOREIGN KEY (org_identity_source_id) REFERENCES public.sp_org_identity_sources(id);


--
-- Name: sp_co_t_and_c_agreements sp_co_t_and_c_agreements_co_person_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: comanage_midpoint_loader
--

ALTER TABLE ONLY public.sp_co_t_and_c_agreements
    ADD CONSTRAINT sp_co_t_and_c_agreements_co_person_id_fkey FOREIGN KEY (co_person_id) REFERENCES public.sp_co_people(id);


--
-- Name: sp_email_addresses sp_email_addresses_co_person_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: comanage_midpoint_loader
--

ALTER TABLE ONLY public.sp_email_addresses
    ADD CONSTRAINT sp_email_addresses_co_person_id_fkey FOREIGN KEY (co_person_id) REFERENCES public.sp_co_people(id);


--
-- Name: sp_email_addresses sp_email_addresses_org_identity_source_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: comanage_midpoint_loader
--

ALTER TABLE ONLY public.sp_email_addresses
    ADD CONSTRAINT sp_email_addresses_org_identity_source_id_fkey FOREIGN KEY (org_identity_source_id) REFERENCES public.sp_org_identity_sources(id);


--
-- Name: sp_identifiers sp_identifiers_co_person_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: comanage_midpoint_loader
--

ALTER TABLE ONLY public.sp_identifiers
    ADD CONSTRAINT sp_identifiers_co_person_id_fkey FOREIGN KEY (co_person_id) REFERENCES public.sp_co_people(id);


--
-- Name: sp_identifiers sp_identifiers_org_identity_source_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: comanage_midpoint_loader
--

ALTER TABLE ONLY public.sp_identifiers
    ADD CONSTRAINT sp_identifiers_org_identity_source_id_fkey FOREIGN KEY (org_identity_source_id) REFERENCES public.sp_org_identity_sources(id);


--
-- Name: sp_names sp_names_co_person_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: comanage_midpoint_loader
--

ALTER TABLE ONLY public.sp_names
    ADD CONSTRAINT sp_names_co_person_id_fkey FOREIGN KEY (co_person_id) REFERENCES public.sp_co_people(id);


--
-- Name: sp_names sp_names_org_identity_source_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: comanage_midpoint_loader
--

ALTER TABLE ONLY public.sp_names
    ADD CONSTRAINT sp_names_org_identity_source_id_fkey FOREIGN KEY (org_identity_source_id) REFERENCES public.sp_org_identity_sources(id);


--
-- Name: sp_telephone_numbers sp_telephone_numbers_co_person_role_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: comanage_midpoint_loader
--

ALTER TABLE ONLY public.sp_telephone_numbers
    ADD CONSTRAINT sp_telephone_numbers_co_person_role_id_fkey FOREIGN KEY (co_person_role_id) REFERENCES public.sp_co_person_roles(id);


--
-- Name: sp_telephone_numbers sp_telephone_numbers_org_identity_source_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: comanage_midpoint_loader
--

ALTER TABLE ONLY public.sp_telephone_numbers
    ADD CONSTRAINT sp_telephone_numbers_org_identity_source_id_fkey FOREIGN KEY (org_identity_source_id) REFERENCES public.sp_org_identity_sources(id);


--
-- Name: sp_urls sp_urls_co_person_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: comanage_midpoint_loader
--

ALTER TABLE ONLY public.sp_urls
    ADD CONSTRAINT sp_urls_co_person_id_fkey FOREIGN KEY (co_person_id) REFERENCES public.sp_co_people(id);


--
-- Name: sp_urls sp_urls_org_identity_source_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: comanage_midpoint_loader
--

ALTER TABLE ONLY public.sp_urls
    ADD CONSTRAINT sp_urls_org_identity_source_id_fkey FOREIGN KEY (org_identity_source_id) REFERENCES public.sp_org_identity_sources(id);


--
-- PostgreSQL database dump complete
--

