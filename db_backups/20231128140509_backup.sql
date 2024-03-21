--
-- PostgreSQL database dump
--

-- Dumped from database version 13.13 (Debian 13.13-1.pgdg120+1)
-- Dumped by pg_dump version 13.13 (Debian 13.13-0+deb11u1)

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
-- Name: active_storage_attachments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.active_storage_attachments (
    id bigint NOT NULL,
    name character varying NOT NULL,
    record_type character varying NOT NULL,
    record_id bigint NOT NULL,
    blob_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.active_storage_attachments OWNER TO postgres;

--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.active_storage_attachments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_storage_attachments_id_seq OWNER TO postgres;

--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.active_storage_attachments_id_seq OWNED BY public.active_storage_attachments.id;


--
-- Name: active_storage_blobs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.active_storage_blobs (
    id bigint NOT NULL,
    key character varying NOT NULL,
    filename character varying NOT NULL,
    content_type character varying,
    metadata text,
    service_name character varying NOT NULL,
    byte_size bigint NOT NULL,
    checksum character varying,
    created_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.active_storage_blobs OWNER TO postgres;

--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.active_storage_blobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_storage_blobs_id_seq OWNER TO postgres;

--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.active_storage_blobs_id_seq OWNED BY public.active_storage_blobs.id;


--
-- Name: active_storage_variant_records; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.active_storage_variant_records (
    id bigint NOT NULL,
    blob_id bigint NOT NULL,
    variation_digest character varying NOT NULL
);


ALTER TABLE public.active_storage_variant_records OWNER TO postgres;

--
-- Name: active_storage_variant_records_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.active_storage_variant_records_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_storage_variant_records_id_seq OWNER TO postgres;

--
-- Name: active_storage_variant_records_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.active_storage_variant_records_id_seq OWNED BY public.active_storage_variant_records.id;


--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO postgres;

--
-- Name: artists; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.artists (
    id bigint NOT NULL,
    first_name character varying,
    last_name character varying,
    birthday character varying,
    deathday character varying,
    category integer,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.artists OWNER TO postgres;

--
-- Name: artists_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.artists_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.artists_id_seq OWNER TO postgres;

--
-- Name: artists_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.artists_id_seq OWNED BY public.artists.id;


--
-- Name: bookmarks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bookmarks (
    id bigint NOT NULL,
    list_id bigint NOT NULL,
    item_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.bookmarks OWNER TO postgres;

--
-- Name: bookmarks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.bookmarks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.bookmarks_id_seq OWNER TO postgres;

--
-- Name: bookmarks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.bookmarks_id_seq OWNED BY public.bookmarks.id;


--
-- Name: comments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.comments (
    id bigint NOT NULL,
    text text,
    item_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.comments OWNER TO postgres;

--
-- Name: comments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.comments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comments_id_seq OWNER TO postgres;

--
-- Name: comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.comments_id_seq OWNED BY public.comments.id;


--
-- Name: items; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.items (
    id bigint NOT NULL,
    artist_id bigint,
    manufacturer_id bigint,
    incomplete boolean,
    titel character varying,
    size character varying,
    material character varying,
    made_at character varying,
    edition character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    category character varying
);


ALTER TABLE public.items OWNER TO postgres;

--
-- Name: items_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.items_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.items_id_seq OWNER TO postgres;

--
-- Name: items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.items_id_seq OWNED BY public.items.id;


--
-- Name: lists; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.lists (
    id bigint NOT NULL,
    name character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.lists OWNER TO postgres;

--
-- Name: lists_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.lists_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.lists_id_seq OWNER TO postgres;

--
-- Name: lists_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.lists_id_seq OWNED BY public.lists.id;


--
-- Name: manufacturers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.manufacturers (
    id bigint NOT NULL,
    name character varying,
    location character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.manufacturers OWNER TO postgres;

--
-- Name: manufacturers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.manufacturers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.manufacturers_id_seq OWNER TO postgres;

--
-- Name: manufacturers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.manufacturers_id_seq OWNED BY public.manufacturers.id;


--
-- Name: photos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.photos (
    id bigint NOT NULL,
    source character varying,
    item_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    image character varying
);


ALTER TABLE public.photos OWNER TO postgres;

--
-- Name: photos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.photos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.photos_id_seq OWNER TO postgres;

--
-- Name: photos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.photos_id_seq OWNED BY public.photos.id;


--
-- Name: provenances; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.provenances (
    id bigint NOT NULL,
    text character varying,
    source character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    item_id bigint NOT NULL
);


ALTER TABLE public.provenances OWNER TO postgres;

--
-- Name: provenances_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.provenances_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.provenances_id_seq OWNER TO postgres;

--
-- Name: provenances_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.provenances_id_seq OWNED BY public.provenances.id;


--
-- Name: references; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."references" (
    id bigint NOT NULL,
    text character varying,
    item_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public."references" OWNER TO postgres;

--
-- Name: references_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.references_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.references_id_seq OWNER TO postgres;

--
-- Name: references_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.references_id_seq OWNED BY public."references".id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO postgres;

--
-- Name: tasks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tasks (
    id bigint NOT NULL,
    titel character varying,
    content text,
    done boolean DEFAULT false,
    item_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.tasks OWNER TO postgres;

--
-- Name: tasks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tasks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tasks_id_seq OWNER TO postgres;

--
-- Name: tasks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tasks_id_seq OWNED BY public.tasks.id;


--
-- Name: active_storage_attachments id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_storage_attachments ALTER COLUMN id SET DEFAULT nextval('public.active_storage_attachments_id_seq'::regclass);


--
-- Name: active_storage_blobs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_storage_blobs ALTER COLUMN id SET DEFAULT nextval('public.active_storage_blobs_id_seq'::regclass);


--
-- Name: active_storage_variant_records id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_storage_variant_records ALTER COLUMN id SET DEFAULT nextval('public.active_storage_variant_records_id_seq'::regclass);


--
-- Name: artists id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.artists ALTER COLUMN id SET DEFAULT nextval('public.artists_id_seq'::regclass);


--
-- Name: bookmarks id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bookmarks ALTER COLUMN id SET DEFAULT nextval('public.bookmarks_id_seq'::regclass);


--
-- Name: comments id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comments ALTER COLUMN id SET DEFAULT nextval('public.comments_id_seq'::regclass);


--
-- Name: items id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.items ALTER COLUMN id SET DEFAULT nextval('public.items_id_seq'::regclass);


--
-- Name: lists id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lists ALTER COLUMN id SET DEFAULT nextval('public.lists_id_seq'::regclass);


--
-- Name: manufacturers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.manufacturers ALTER COLUMN id SET DEFAULT nextval('public.manufacturers_id_seq'::regclass);


--
-- Name: photos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.photos ALTER COLUMN id SET DEFAULT nextval('public.photos_id_seq'::regclass);


--
-- Name: provenances id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.provenances ALTER COLUMN id SET DEFAULT nextval('public.provenances_id_seq'::regclass);


--
-- Name: references id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."references" ALTER COLUMN id SET DEFAULT nextval('public.references_id_seq'::regclass);


--
-- Name: tasks id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tasks ALTER COLUMN id SET DEFAULT nextval('public.tasks_id_seq'::regclass);


--
-- Data for Name: active_storage_attachments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.active_storage_attachments (id, name, record_type, record_id, blob_id, created_at) FROM stdin;
1	photos	Item	4	1	2023-11-28 14:04:43.173783
2	photos	Item	5	2	2023-11-28 14:04:43.213901
3	photos	Item	6	3	2023-11-28 14:04:43.408872
4	photos	Item	7	4	2023-11-28 14:04:43.479829
5	photos	Item	9	5	2023-11-28 14:04:43.550182
6	photos	Item	10	6	2023-11-28 14:04:43.605298
7	photos	Item	11	7	2023-11-28 14:04:43.654974
8	photos	Item	12	8	2023-11-28 14:04:43.711352
9	photos	Item	13	9	2023-11-28 14:04:43.776892
10	photos	Item	14	10	2023-11-28 14:04:43.859125
11	photos	Item	15	11	2023-11-28 14:04:43.915282
12	photos	Item	16	12	2023-11-28 14:04:43.994193
13	photos	Item	17	13	2023-11-28 14:04:44.050151
14	photos	Item	18	14	2023-11-28 14:04:44.116314
15	photos	Item	19	15	2023-11-28 14:04:44.192679
16	photos	Item	20	16	2023-11-28 14:04:44.243851
17	photos	Item	21	17	2023-11-28 14:04:44.289008
18	photos	Item	22	18	2023-11-28 14:04:44.339865
19	photos	Item	23	19	2023-11-28 14:04:44.397345
20	photos	Item	24	20	2023-11-28 14:04:44.445287
21	photos	Item	25	21	2023-11-28 14:04:44.491849
22	photos	Item	26	22	2023-11-28 14:04:44.534447
23	photos	Item	27	23	2023-11-28 14:04:44.577424
24	photos	Item	28	24	2023-11-28 14:04:44.620615
25	photos	Item	29	25	2023-11-28 14:04:44.673347
26	photos	Item	30	26	2023-11-28 14:04:44.722919
27	photos	Item	31	27	2023-11-28 14:04:44.770311
28	photos	Item	32	28	2023-11-28 14:04:44.813788
29	photos	Item	33	29	2023-11-28 14:04:44.861549
30	photos	Item	34	30	2023-11-28 14:04:44.903816
31	photos	Item	35	31	2023-11-28 14:04:44.948414
32	photos	Item	36	32	2023-11-28 14:04:44.990764
33	photos	Item	37	33	2023-11-28 14:04:45.037075
34	photos	Item	38	34	2023-11-28 14:04:45.078569
35	photos	Item	39	35	2023-11-28 14:04:45.118011
36	photos	Item	40	36	2023-11-28 14:04:45.158138
37	photos	Item	41	37	2023-11-28 14:04:45.196667
38	photos	Item	42	38	2023-11-28 14:04:45.237827
39	photos	Item	43	39	2023-11-28 14:04:45.2787
40	photos	Item	44	40	2023-11-28 14:04:45.325922
41	photos	Item	45	41	2023-11-28 14:04:45.375147
42	photos	Item	46	42	2023-11-28 14:04:45.426405
43	photos	Item	47	43	2023-11-28 14:04:45.469864
44	photos	Item	49	44	2023-11-28 14:04:45.539125
45	photos	Item	50	45	2023-11-28 14:04:45.584955
46	photos	Item	51	46	2023-11-28 14:04:45.62876
47	photos	Item	52	47	2023-11-28 14:04:45.673728
48	photos	Item	53	48	2023-11-28 14:04:45.718728
49	photos	Item	54	49	2023-11-28 14:04:45.762894
50	photos	Item	55	50	2023-11-28 14:04:45.817315
51	photos	Item	58	51	2023-11-28 14:04:45.913143
52	photos	Item	59	52	2023-11-28 14:04:45.956517
53	photos	Item	60	53	2023-11-28 14:04:46.002293
54	photos	Item	61	54	2023-11-28 14:04:46.043232
55	photos	Item	64	55	2023-11-28 14:04:46.123217
56	photos	Item	65	56	2023-11-28 14:04:46.170355
57	photos	Item	66	57	2023-11-28 14:04:46.212199
58	photos	Item	67	58	2023-11-28 14:04:46.2601
59	photos	Item	71	59	2023-11-28 14:04:46.371041
60	photos	Item	72	60	2023-11-28 14:04:46.413595
61	photos	Item	74	61	2023-11-28 14:04:46.49432
62	photos	Item	76	62	2023-11-28 14:04:46.56559
63	photos	Item	77	63	2023-11-28 14:04:46.607236
64	photos	Item	78	64	2023-11-28 14:04:46.653793
65	photos	Item	79	65	2023-11-28 14:04:46.693537
66	photos	Item	80	66	2023-11-28 14:04:46.733574
67	photos	Item	81	67	2023-11-28 14:04:46.77679
68	photos	Item	82	68	2023-11-28 14:04:46.816441
69	photos	Item	83	69	2023-11-28 14:04:46.863242
70	photos	Item	84	70	2023-11-28 14:04:46.907571
71	photos	Item	85	71	2023-11-28 14:04:46.963665
72	photos	Item	87	72	2023-11-28 14:04:47.05094
73	photos	Item	88	73	2023-11-28 14:04:47.100006
74	photos	Item	89	74	2023-11-28 14:04:47.1421
75	photos	Item	90	75	2023-11-28 14:04:47.192444
76	photos	Item	91	76	2023-11-28 14:04:47.236496
77	photos	Item	92	77	2023-11-28 14:04:47.275312
78	photos	Item	93	78	2023-11-28 14:04:47.315543
79	photos	Item	94	79	2023-11-28 14:04:47.359728
80	photos	Item	95	80	2023-11-28 14:04:47.414568
81	photos	Item	96	81	2023-11-28 14:04:47.487505
82	photos	Item	97	82	2023-11-28 14:04:47.553281
83	photos	Item	98	83	2023-11-28 14:04:47.613683
84	photos	Item	99	84	2023-11-28 14:04:47.660116
85	photos	Item	100	85	2023-11-28 14:04:47.699672
86	photos	Item	101	86	2023-11-28 14:04:47.744369
87	photos	Item	102	87	2023-11-28 14:04:47.783622
88	photos	Item	103	88	2023-11-28 14:04:47.825719
89	photos	Item	105	89	2023-11-28 14:04:47.894785
90	photos	Item	106	90	2023-11-28 14:04:47.944784
91	photos	Item	110	91	2023-11-28 14:04:48.059707
92	photos	Item	111	92	2023-11-28 14:04:48.114764
93	photos	Item	112	93	2023-11-28 14:04:48.165397
94	photos	Item	113	94	2023-11-28 14:04:48.214229
95	photos	Item	114	95	2023-11-28 14:04:48.255855
96	photos	Item	115	96	2023-11-28 14:04:48.313
97	photos	Item	116	97	2023-11-28 14:04:48.373911
98	photos	Item	117	98	2023-11-28 14:04:48.415893
99	photos	Item	118	99	2023-11-28 14:04:48.478337
100	photos	Item	119	100	2023-11-28 14:04:48.54136
101	photos	Item	120	101	2023-11-28 14:04:48.587748
102	photos	Item	121	102	2023-11-28 14:04:48.638464
103	photos	Item	122	103	2023-11-28 14:04:48.679
104	photos	Item	123	104	2023-11-28 14:04:48.724029
105	photos	Item	124	105	2023-11-28 14:04:48.763118
106	photos	Item	125	106	2023-11-28 14:04:48.808059
107	photos	Item	126	107	2023-11-28 14:04:48.847579
108	photos	Item	131	108	2023-11-28 14:04:48.972247
109	photos	Item	132	109	2023-11-28 14:04:49.019092
110	photos	Item	133	110	2023-11-28 14:04:49.076173
111	photos	Item	134	111	2023-11-28 14:04:49.141661
112	photos	Item	135	112	2023-11-28 14:04:49.195288
113	photos	Item	136	113	2023-11-28 14:04:49.256023
114	photos	Item	137	114	2023-11-28 14:04:49.331118
115	photos	Item	140	115	2023-11-28 14:04:49.439555
116	photos	Item	141	116	2023-11-28 14:04:49.497268
117	photos	Item	142	117	2023-11-28 14:04:49.546916
118	photos	Item	143	118	2023-11-28 14:04:49.599832
119	photos	Item	144	119	2023-11-28 14:04:49.65268
120	photos	Item	145	120	2023-11-28 14:04:49.710928
121	photos	Item	146	121	2023-11-28 14:04:49.760693
122	photos	Item	147	122	2023-11-28 14:04:49.808331
123	photos	Item	148	123	2023-11-28 14:04:49.857516
124	photos	Item	149	124	2023-11-28 14:04:49.907554
125	photos	Item	150	125	2023-11-28 14:04:49.952566
126	photos	Item	151	126	2023-11-28 14:04:49.992702
127	photos	Item	152	127	2023-11-28 14:04:50.037511
128	photos	Item	154	128	2023-11-28 14:04:50.106759
129	photos	Item	155	129	2023-11-28 14:04:50.157014
130	photos	Item	156	130	2023-11-28 14:04:50.206069
131	photos	Item	157	131	2023-11-28 14:04:50.260504
132	photos	Item	158	132	2023-11-28 14:04:50.311196
133	photos	Item	159	133	2023-11-28 14:04:50.355549
134	photos	Item	162	134	2023-11-28 14:04:50.437753
135	photos	Item	163	135	2023-11-28 14:04:50.482713
136	photos	Item	164	136	2023-11-28 14:04:50.536744
137	photos	Item	165	137	2023-11-28 14:04:50.595296
138	photos	Item	166	138	2023-11-28 14:04:50.6462
139	photos	Item	167	139	2023-11-28 14:04:50.726971
140	photos	Item	169	140	2023-11-28 14:04:50.835685
141	photos	Item	174	141	2023-11-28 14:04:50.975385
142	photos	Item	175	142	2023-11-28 14:04:51.016225
143	photos	Item	176	143	2023-11-28 14:04:51.057267
144	photos	Item	177	144	2023-11-28 14:04:51.104498
145	photos	Item	178	145	2023-11-28 14:04:51.155601
146	photos	Item	179	146	2023-11-28 14:04:51.207653
147	photos	Item	180	147	2023-11-28 14:04:51.248615
148	photos	Item	181	148	2023-11-28 14:04:51.300342
149	photos	Item	187	149	2023-11-28 14:04:51.469251
150	photos	Item	188	150	2023-11-28 14:04:51.513553
151	photos	Item	189	151	2023-11-28 14:04:51.559108
152	photos	Item	190	152	2023-11-28 14:04:51.602741
153	photos	Item	191	153	2023-11-28 14:04:51.643205
154	photos	Item	192	154	2023-11-28 14:04:51.68783
155	photos	Item	193	155	2023-11-28 14:04:51.7315
156	photos	Item	194	156	2023-11-28 14:04:51.777059
157	photos	Item	195	157	2023-11-28 14:04:51.821222
158	photos	Item	196	158	2023-11-28 14:04:51.8624
159	photos	Item	197	159	2023-11-28 14:04:51.902303
160	photos	Item	198	160	2023-11-28 14:04:51.948747
161	photos	Item	199	161	2023-11-28 14:04:52.004179
162	photos	Item	200	162	2023-11-28 14:04:52.053573
163	photos	Item	201	163	2023-11-28 14:04:52.095582
164	photos	Item	202	164	2023-11-28 14:04:52.136067
165	photos	Item	203	165	2023-11-28 14:04:52.182015
166	photos	Item	204	166	2023-11-28 14:04:52.216777
167	photos	Item	205	167	2023-11-28 14:04:52.257375
168	photos	Item	206	168	2023-11-28 14:04:52.29332
169	photos	Item	207	169	2023-11-28 14:04:52.340182
170	photos	Item	208	170	2023-11-28 14:04:52.395679
171	photos	Item	209	171	2023-11-28 14:04:52.446574
172	photos	Item	210	172	2023-11-28 14:04:52.496401
173	photos	Item	211	173	2023-11-28 14:04:52.54856
174	photos	Item	212	174	2023-11-28 14:04:52.601635
175	photos	Item	213	175	2023-11-28 14:04:52.649433
176	photos	Item	218	176	2023-11-28 14:04:52.760073
177	photos	Item	219	177	2023-11-28 14:04:52.812047
178	photos	Item	220	178	2023-11-28 14:04:52.864077
179	photos	Item	221	179	2023-11-28 14:04:52.904337
180	photos	Item	222	180	2023-11-28 14:04:52.949516
181	photos	Item	223	181	2023-11-28 14:04:52.99814
182	photos	Item	224	182	2023-11-28 14:04:53.046915
183	photos	Item	225	183	2023-11-28 14:04:53.095156
184	photos	Item	226	184	2023-11-28 14:04:53.150331
185	photos	Item	227	185	2023-11-28 14:04:53.19743
186	photos	Item	228	186	2023-11-28 14:04:53.239763
187	photos	Item	229	187	2023-11-28 14:04:53.287049
188	photos	Item	230	188	2023-11-28 14:04:53.34722
189	photos	Item	231	189	2023-11-28 14:04:53.410245
190	photos	Item	232	190	2023-11-28 14:04:53.474736
191	photos	Item	233	191	2023-11-28 14:04:53.540518
192	photos	Item	234	192	2023-11-28 14:04:53.606761
193	photos	Item	235	193	2023-11-28 14:04:53.649818
194	photos	Item	236	194	2023-11-28 14:04:53.689786
195	photos	Item	237	195	2023-11-28 14:04:53.743778
196	photos	Item	238	196	2023-11-28 14:04:53.799499
197	photos	Item	239	197	2023-11-28 14:04:53.844576
198	photos	Item	240	198	2023-11-28 14:04:53.902664
199	photos	Item	241	199	2023-11-28 14:04:53.966131
200	photos	Item	242	200	2023-11-28 14:04:54.007909
201	photos	Item	243	201	2023-11-28 14:04:54.053409
202	photos	Item	244	202	2023-11-28 14:04:54.099829
203	photos	Item	245	203	2023-11-28 14:04:54.163396
204	photos	Item	246	204	2023-11-28 14:04:54.221839
205	photos	Item	247	205	2023-11-28 14:04:54.272179
206	photos	Item	249	206	2023-11-28 14:04:54.335108
207	photos	Item	250	207	2023-11-28 14:04:54.380202
208	photos	Item	251	208	2023-11-28 14:04:54.423073
209	photos	Item	253	209	2023-11-28 14:04:54.479744
210	photos	Item	254	210	2023-11-28 14:04:54.517691
211	photos	Item	255	211	2023-11-28 14:04:54.558612
212	photos	Item	256	212	2023-11-28 14:04:54.600231
213	photos	Item	257	213	2023-11-28 14:04:54.646587
214	photos	Item	258	214	2023-11-28 14:04:54.692285
215	photos	Item	259	215	2023-11-28 14:04:54.731878
216	photos	Item	260	216	2023-11-28 14:04:54.77318
217	photos	Item	261	217	2023-11-28 14:04:54.811841
218	photos	Item	262	218	2023-11-28 14:04:54.8508
219	photos	Item	263	219	2023-11-28 14:04:54.890898
220	photos	Item	264	220	2023-11-28 14:04:54.940165
221	photos	Item	265	221	2023-11-28 14:04:54.988563
222	photos	Item	266	222	2023-11-28 14:04:55.049289
223	photos	Item	267	223	2023-11-28 14:04:55.107427
224	photos	Item	268	224	2023-11-28 14:04:55.148227
225	photos	Item	269	225	2023-11-28 14:04:55.193955
226	photos	Item	270	226	2023-11-28 14:04:55.254734
227	photos	Item	271	227	2023-11-28 14:04:55.310256
228	photos	Item	272	228	2023-11-28 14:04:55.364982
229	photos	Item	273	229	2023-11-28 14:04:55.425496
230	photos	Item	274	230	2023-11-28 14:04:55.481461
231	photos	Item	275	231	2023-11-28 14:04:55.541491
232	photos	Item	276	232	2023-11-28 14:04:55.604086
233	photos	Item	277	233	2023-11-28 14:04:55.664431
234	photos	Item	278	234	2023-11-28 14:04:55.720564
235	photos	Item	286	235	2023-11-28 14:04:55.916111
236	photos	Item	290	236	2023-11-28 14:04:56.029768
237	photos	Item	291	237	2023-11-28 14:04:56.071276
238	photos	Item	292	238	2023-11-28 14:04:56.107828
239	photos	Item	293	239	2023-11-28 14:04:56.153854
240	photos	Item	294	240	2023-11-28 14:04:56.20069
241	photos	Item	295	241	2023-11-28 14:04:56.245355
242	photos	Item	296	242	2023-11-28 14:04:56.284299
243	photos	Item	297	243	2023-11-28 14:04:56.324585
244	photos	Item	298	244	2023-11-28 14:04:56.37108
245	photos	Item	299	245	2023-11-28 14:04:56.411145
246	photos	Item	300	246	2023-11-28 14:04:56.462236
247	photos	Item	301	247	2023-11-28 14:04:56.523885
248	photos	Item	302	248	2023-11-28 14:04:56.578789
\.


--
-- Data for Name: active_storage_blobs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.active_storage_blobs (id, key, filename, content_type, metadata, service_name, byte_size, checksum, created_at) FROM stdin;
1	ebi8skn2q0a512hi2l24mmdhldgy	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	28004	9a/A6CZhrWzTxzC8HWPmfg==	2023-11-28 14:04:43.170125
2	zbbvcjhgc5ixj0no2r9wpjrb57an	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	8620	JfcdVV5DIkEteRxyEkqg3Q==	2023-11-28 14:04:43.211417
3	aroimppepq9j334l3xa7m241d3q5	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	9442	8qSwx8kg8qr7kESgK+REAw==	2023-11-28 14:04:43.40537
4	qg8e9t4penvqpwdx6vky6wif66jw	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	8391	ri6P+Y9hOHF00AU8Mqe96A==	2023-11-28 14:04:43.476993
5	4k4v65hx8ty77cwxrjjp0co8lr9p	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	10710	UO0xAiuqnaRBVD46dDNFWw==	2023-11-28 14:04:43.547801
6	lf148q1hqtlcffi85xa0j9upabbk	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	154163	llLQbpeghcUkAsxA4WQT0A==	2023-11-28 14:04:43.602167
7	qkdaz0mvfa7viyczsp62yag4rlcy	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	12290	EYlbNOFefIIUP0Fn3soc2g==	2023-11-28 14:04:43.651752
8	oabjppwamwhyq309rzczpnayjfkq	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	21354	ab920yqOVPep2sbiM+HKag==	2023-11-28 14:04:43.70892
9	28we53cjb7x7jk0r7utel9in3iw9	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	1634030	/Ar1Ow9ETS8G4qSHk0rM+w==	2023-11-28 14:04:43.773747
10	yvqxwpjzxg913yl8xjaehqvdz7cx	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	15712	f5cQ23mBbRsWbu5teFca3A==	2023-11-28 14:04:43.856091
11	ph73eqxeph0iizp7ebo60dmfyepm	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	46279	1Ro/BczVGv+FzQPgYvOTvw==	2023-11-28 14:04:43.912736
12	cvd3rlwx3ss6109dh891iqm37fjt	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	289905	stCFrZiSbRS5s+0jv/yTQQ==	2023-11-28 14:04:43.991268
13	hey34052tb28gk88sjzumw90f0eb	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	77039	ZQz2FDxqGOBx1Go5zW2CZg==	2023-11-28 14:04:44.047844
14	nc4nvkx17771dq2qopshtobpksnm	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	2122293	mVBlqoB63PYnRe0T9S219w==	2023-11-28 14:04:44.114031
15	jqqe4g7w5h8slc788kq9lhvh4hm3	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	1711096	wtkL5ijx+67cqCYRxfg1Tw==	2023-11-28 14:04:44.190036
16	stzozjramms9uwmzdgiq1rkvwyv0	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	60323	GG7zOr8j9v1+cf6uH92wpQ==	2023-11-28 14:04:44.241189
17	lrkboj8xfr0kj04gt22a9c1kdc0g	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	37106	L7tSzqxRtL4wVksETPynIg==	2023-11-28 14:04:44.286437
18	212ho0bohj66575xa3p0o1ug92vv	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	55966	NApMroYX0HjO+nqAO07VAQ==	2023-11-28 14:04:44.337306
19	y48bvp20yrz1i95pwy87j590kkou	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	93146	72TJN2BwgdHSm6l/lSAdDg==	2023-11-28 14:04:44.394833
20	697njganebiwstlbarpkn2qu0qh9	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	52670	1wzIa+TXpguCfbSxutndAA==	2023-11-28 14:04:44.442691
21	r55w1ic8nq7v4f8wnzcjn1k0i902	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	36359	dzWtPs/8zNqEI088qykLnA==	2023-11-28 14:04:44.489059
22	1tx9ipqba9mx2qeu616x3wrn6q1g	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	63297	PJpHhuqsZgO1r1rwt23SwA==	2023-11-28 14:04:44.53209
23	grlm3lk2nwho16mz5vmd2k8p7v42	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	57935	RWtyggqU7nXDbGBEHKUFrg==	2023-11-28 14:04:44.574499
24	fk2agukka3jmsdd384kc9w745zeh	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	77327	AmEkv9pHucA8Ll7blSlJGw==	2023-11-28 14:04:44.617643
25	cziuy8r4w02sr3zoj69yd13691i8	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	150863	F7AgSi5eB81W+LhBHmNCYg==	2023-11-28 14:04:44.670914
26	zqaim8xjr7spkxoghp5o4g0bw596	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	5662	wZU13D8FiuKchDpP4xMNBg==	2023-11-28 14:04:44.720376
27	j8oqy9p12webdrrbb6uu5mdkphgc	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	20646	mb5aTO3KB/KZ16uCmvIPIg==	2023-11-28 14:04:44.767528
28	htw6p6jo4blwt23ca3s9sjh8zjao	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	19856	6indjQHlNkDGbe/CjQgeAA==	2023-11-28 14:04:44.811266
29	tnlp02q9608tint9ijgc3y0vn0ld	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	273261	GOUhwZfAGvka+7v+8o+ObA==	2023-11-28 14:04:44.858976
30	xtdxhfokqhls3ek2tw88g8a0a5xe	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	22386	Uja2wU0EljH6kYm8Sd6TRg==	2023-11-28 14:04:44.901014
31	7xrpk9o9aomajb1py2jfj7g24msl	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	13191	dK0XkOVvt6AwdvFuH5MHaQ==	2023-11-28 14:04:44.946029
32	ociklb8vhwyodwkxwfcy081ygpdk	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	15612	JSRjjvBmbGZXo4/saij94Q==	2023-11-28 14:04:44.988463
33	whglwh140puo2v30m75zm5ycxd3t	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	29317	U7yi5nowkdO1vsf1ej1Vrg==	2023-11-28 14:04:45.034427
34	xmwzknemawt7n8s1wcxtn41f9cd0	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	16500	WdX/uoZuiMlasqzYdVsxJg==	2023-11-28 14:04:45.075859
35	ejbi16qoizr3nspxdbv8akekgkue	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	5997	yVAgD1E+NMSFjdfyONv5oA==	2023-11-28 14:04:45.115787
36	3jgxrd2lc06fzlluzf1rzhl83ph2	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	13671	g8G0nyaFJtq2UrPgwa28gw==	2023-11-28 14:04:45.155705
37	516s2j613ka2xacmmm1mb66zlhfp	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	6584	sGudWXfRsRUVub4Y7Q+Odg==	2023-11-28 14:04:45.194348
38	u1jzvd5nk2afqxvzc7013t1v36j2	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	16369	KPEXOpaVrt9e4P+TI1V2+w==	2023-11-28 14:04:45.23479
39	8tqs1gga4uuar7oxgaea4xnslcng	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	17937	DARZDm15fBfTn5m4oMzyDg==	2023-11-28 14:04:45.276111
40	hoia6i5t92gib020tc1epbvhra3a	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	272323	Z7uWRhItNFB4ToXaI7WIDA==	2023-11-28 14:04:45.323455
41	19xppbjgjearin8x8i58txvj99fi	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	271261	m6h8jj+zRtTVBGgbf7bg5A==	2023-11-28 14:04:45.372627
42	7y6pd2ox4xsmd1oha5o5tse43zff	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	180157	llXw6GY2tq1LumCRT4OJCg==	2023-11-28 14:04:45.423376
43	zmv8nzuehd4uhzgbqncu3rsehhxl	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	45665	SkpDRmPgX6k3r9Y9rKB6Yw==	2023-11-28 14:04:45.46697
44	ihgr7jtjrg6fuhl0zq95om0o3e4u	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	62906	IG9LI8EQW5IF+ut5gLZkJw==	2023-11-28 14:04:45.536275
45	agi1xo3n79xzh39yi8shm3u416nj	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	71642	Obtr+NJ2xZQ6hO/njTogrg==	2023-11-28 14:04:45.582637
46	0h5qv508hwhxdami308flvbgcjcz	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	21032	6idsxqBall2K5mP/1MOwlQ==	2023-11-28 14:04:45.626267
47	0cfjoj35neypprwkgo0etbdy12sb	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	20846	4jercixxEMjWFZ14O+Sd0Q==	2023-11-28 14:04:45.671331
48	sgi3ifo9skl7h8r6vscz514zmm9j	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	20846	4jercixxEMjWFZ14O+Sd0Q==	2023-11-28 14:04:45.716301
49	49vpobwt2d10ysu1rx5m1tpeysm5	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	24520	CTzBzVSki4GS2t4gBIQIDg==	2023-11-28 14:04:45.760422
50	omcqb31xj7jhh7plvnty3zavetm3	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	12348	v8M17hMkddBoDJZOWgbn+g==	2023-11-28 14:04:45.814179
51	7cps3jvbandsfnq8h6vr4s3uo587	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	17400	602u/Kq6M1XScVpZatX+zQ==	2023-11-28 14:04:45.91008
52	shij0ify3mwgzxidkhx3tuqh6o1p	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	13978	7fzvCfsyL4YmVfjD9Nui4g==	2023-11-28 14:04:45.954265
53	64sehlu2trhrs0acw6atpm5msod9	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	16031	3IaUsy28hhLBHOd9OSsBKw==	2023-11-28 14:04:45.999576
54	dhw8b55qvcwc190e0lvphp17c3pk	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	18246	kDsbYLfg8DrohP+UDvYmjg==	2023-11-28 14:04:46.040495
55	uhrc3mr3cvt2hr7et67fwnyg9zf2	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	10223	df4bRFqQT7OsVp0BlzC8DA==	2023-11-28 14:04:46.120899
56	69cxesulgjcm6eok5m0qpzr0w2c8	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	10876	aa7hErkvswZRi4zX8Nql7g==	2023-11-28 14:04:46.167617
57	20t50oyzxxgh8e4z6yueohs9rd02	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	16054	CXEX6O6sqVCvIlIrGFbcoQ==	2023-11-28 14:04:46.209557
58	c5dnd54ntyc1cluinmh6aezsn848	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	265713	OVjxYTBY3wrIYLwQMeOTWw==	2023-11-28 14:04:46.257844
59	qkxks7n5zleecbfz4pwtxrsixcr5	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	11052	XviccqcFusNkNapMnT0HJg==	2023-11-28 14:04:46.368468
60	wlgz09eyaneb7blqbrvu6caiyl98	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	10465	ywnN+iaUUxYsxzxTqY5jwQ==	2023-11-28 14:04:46.409808
61	oks9jtfw0k7ud0i2e48zlrudje2n	photo.jpg	image/gif	{"identified":true,"analyzed":true}	local	271141	e8ocP1KtYL29xNxLO0Ky9g==	2023-11-28 14:04:46.492105
62	i4s5oqlaw7bt6yifgqjnxm8kp1wo	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	14993	WkYZnaHSVc+V3bLkuZVp4w==	2023-11-28 14:04:46.563001
63	y68eambzo1ng9754z3x6yvezvw0u	photo.jpg	image/png	{"identified":true,"analyzed":true}	local	29274	obSM6Ll89OWoIHtGiXdDAQ==	2023-11-28 14:04:46.604763
64	7dwkwlj39drkaawnad79h30uud2g	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	16055	+HZ6z6X+NvubGS2Kfnitxw==	2023-11-28 14:04:46.651068
65	jv1y4yqxyouyjaz96phddd9cuby9	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	21385	RLKbxzodL487QK9xhDWLeA==	2023-11-28 14:04:46.691227
66	m9hklt6ia1zel0flg35ogg3o1s92	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	11466	8uR1X2aOoW8/v3waXHtzOg==	2023-11-28 14:04:46.730443
67	utreibtdkwqv879f89gpnjyg53ck	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	19499	y8mRKvq5GruGsF9iTwRsBQ==	2023-11-28 14:04:46.774464
68	bydzixhyjjpm67wwhejsn2b59o2c	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	16580	ux5YkmBitn7POm4ZS5hFaw==	2023-11-28 14:04:46.814125
69	m2cn002sdd4x933aou5i41titl00	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	22548	wNEe0IPP7qa1PZvcJllvCw==	2023-11-28 14:04:46.860636
70	2aiuxc0y7es2b36qutcxdyvx44pc	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	18514	lp2HDZ65JDcJgXGTrXsGBA==	2023-11-28 14:04:46.904953
71	k3zn6a0ll9l4j93p2qhenam06y9p	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	890103	htTLQMpuOv9GHeCV4VLrbQ==	2023-11-28 14:04:46.961069
72	7kvynxp8g39hxuzv3ot9lwthg6ws	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	88675	tmQfrXtNeri0EJ2eqJ9ZNg==	2023-11-28 14:04:47.048504
73	sss8wb74zo7rq1g2aa2uvf6miw7s	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	24022	/55RVes0x/jUa+ToCrPYLA==	2023-11-28 14:04:47.097661
74	y69p7np6fkantr8eqdloger3mqfo	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	17357	Li5mndK8Lcu66xQATChgWA==	2023-11-28 14:04:47.139909
75	vdh9s804eqxxxt7mdq5y1zg7pdjr	photo.jpg	image/gif	{"identified":true,"analyzed":true}	local	506013	kL+ADCO57au/JM5vcQTiIw==	2023-11-28 14:04:47.190247
76	t36ut6ce6e5mutf2kfeg7tagsuh0	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	11611	GAHw4sYS/g2AF6EzntHEwg==	2023-11-28 14:04:47.234041
77	f2jg894sdxl0dh69kv0u0bzvn15z	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	23879	ShvHyhZUiTGzlB4UAjWZ0w==	2023-11-28 14:04:47.273095
78	hap5j558k3an4rlo93nlzqhpegxk	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	17925	sL8mMkvgZKSRhF9dKUrKtw==	2023-11-28 14:04:47.312984
79	zlqz4eesavhd5z4pzi85nx3m13oh	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	13649	qLPG4+pjXZ05FBXSZecbnQ==	2023-11-28 14:04:47.357334
80	jxzk0fti5y3cs93aqyh2uu0276um	photo.jpg	image/gif	{"identified":true,"analyzed":true}	local	1365013	w6IBPIyWL6i1+v565GPUSQ==	2023-11-28 14:04:47.411662
81	65k4mjtz97ci2p3zb9ko6ak1fbzw	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	1298535	efpwstlU9daeICmZBu7eVw==	2023-11-28 14:04:47.485029
82	8ilrg9v0wgmhh68wqfi24r71walv	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	1503405	GeBQeLm3MD5TpJKgztlgVQ==	2023-11-28 14:04:47.55069
83	xwt9fl1qpoi7x43kuzm3clm7p84a	photo.jpg	image/gif	{"identified":true,"analyzed":true}	local	210457	7RvyL1yCa3xAw5nV5wdCZQ==	2023-11-28 14:04:47.611266
84	2d4kqx7uxgi59rq3rirkc2gj4llt	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	18128	c/Dak62Sydy9kdXLAP8nKw==	2023-11-28 14:04:47.657734
85	tbf8je81btwy7mjosju4wumkk2ts	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	11895	Tz8Z3ubLGq4RVqLOZF9pBg==	2023-11-28 14:04:47.697163
86	lc9g8ixswhh5ctxjqn675jk1gk3d	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	8975	ef9ZJiyizAOzwAaMtPccpg==	2023-11-28 14:04:47.74177
87	u9imbqbpuj5200g7depy53qtrzgy	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	12680	3MPX+FsIi6tRf5F1F6ZWlQ==	2023-11-28 14:04:47.780484
88	d48qbtgs48gg9ckg6lgdn3nlmabd	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	8961	3vB6XUHk1qcOwC+L+SBD5Q==	2023-11-28 14:04:47.823269
89	8abf1oa4zhs3elxmzi7d93b0hxzo	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	14737	fJnzG+pNoAQQ8wqkn/Jv/w==	2023-11-28 14:04:47.892286
90	m3d494m44wrtlop9dkzhwoibj5dp	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	17435	d0hTc/vJt8QJ9xnpHn37mA==	2023-11-28 14:04:47.94204
91	mgwi0djbdfy6rig9g95fj7f7teb7	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	23907	A19Bel5kUTosBJ2H9QULBg==	2023-11-28 14:04:48.056972
92	cdckxqtkb38p93h9wcvigi7pl7fw	photo.jpg	image/gif	{"identified":true,"analyzed":true}	local	1205022	TE+r0NqLXmVRgX0aCDbREQ==	2023-11-28 14:04:48.112311
93	axl494kxbeig5adxq69xtl516cd6	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	15249	7cpjLUlSXlj82K90ewTfhQ==	2023-11-28 14:04:48.16272
94	byead0mlwsjk14zuoh3806lx7wmh	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	22409	19eU4EEdeVHeW3/OLYZifQ==	2023-11-28 14:04:48.211338
95	f3jtbj0zjpo2cjrbzkrdsk25mysq	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	17715	Clo8bCMStUZvBAvC4rM1tw==	2023-11-28 14:04:48.253196
96	x9vba1vgg9hvn1z3td8ztj8yqin7	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	1739306	r+7X09I9METQjbT/WsTNCg==	2023-11-28 14:04:48.310404
97	1cxmjen55crrihsbce7qhvjtktna	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	75495	MZ2etkoYbcxHZmmkyY0m3Q==	2023-11-28 14:04:48.371565
98	obb844cc1gahh90gsat4q5g7um6u	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	75321	65yI7k473DlitUFk+CSdcg==	2023-11-28 14:04:48.412978
99	8iu994q3xx8iizd3ul9nhpzr54gf	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	1741742	x8O2pPCg0k2JB+oKVUGNiA==	2023-11-28 14:04:48.475264
100	b32umnmdoezx5a1geujpiil7p9y2	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	51936	1bjw7bkX7kWED9s5DWBWxA==	2023-11-28 14:04:48.538581
101	nc4nh86hxn69tcjqn481hhh0mpkw	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	46436	m/NdhKaBFoXfe8WiUlSlPw==	2023-11-28 14:04:48.584702
102	2oygzt1dvejrnz0txcm9lc1xkqoe	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	71576	dHp7O8MR96KHQWUBXGiGXw==	2023-11-28 14:04:48.636069
103	jdlw3yisefyngr1qhi7gg3vpj0yz	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	44967	CwvsQnQvEozmOrjETKL1pA==	2023-11-28 14:04:48.676068
104	4eus13ri3bbqedthp793heqngp6n	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	23087	L07MhDa3WO0KJVLV4OtaYQ==	2023-11-28 14:04:48.721638
105	c2upwlvi9ogdwldafuwnbpj9gl7v	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	137715	YDZ5LliuHhYwrc/cZi6dXw==	2023-11-28 14:04:48.760833
106	schhqoasshzvlp3rarp976o2lkne	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	77787	aO8ws5cevk9+97ciKBrrDQ==	2023-11-28 14:04:48.805775
107	lvv29xqsw2613v8642fh4c7hfu7i	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	45967	puae+4jQRTMRShN7oU/a5g==	2023-11-28 14:04:48.845206
108	75nag1wbu7om82ta3svpblx1g89t	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	26393	rjV7WP2N0t/sqyMawBFZfQ==	2023-11-28 14:04:48.96988
109	1laebkyx6s3e4123rapt7j31plmx	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	30704	9ITwn7+DvU2xOqDQ8fhLqg==	2023-11-28 14:04:49.016317
110	alj506fh88o49i1ok5gxtigcw7f2	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	87580	ack49vLcDSiGFzw4smRVHA==	2023-11-28 14:04:49.072971
111	dqcbaurrg8nu2pwwvrmzk9vc3ng7	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	1179678	+L9PV8r3aaopeuz5FN6TCw==	2023-11-28 14:04:49.139407
112	ialj79vxv3k9rcqd68ya9n281w0t	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	61346	lSGfcUZx5DNbOICAkj41lQ==	2023-11-28 14:04:49.192959
113	pj2k29afdjlke441lr7x89w7vt38	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	2112225	UwfAGwbvDEn/XZ6zQJspXg==	2023-11-28 14:04:49.253456
114	xcrzxhbu2569wbdalth3tjumz2yu	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	1664713	awBaaa1MRnCNkPUrlqm8iw==	2023-11-28 14:04:49.328752
115	1oi9vd732ejen3yl4v3jh115zdbh	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	7717	10BXLAJOjNRcPq3CWTO/sA==	2023-11-28 14:04:49.436963
116	a0o3ddgl7ipj6z2y3t6l3gecmj9v	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	341894	XabCfH9AetXhYIywZ9WUhg==	2023-11-28 14:04:49.494927
117	cc5c3b2d7qqe91tlnae5kjz1crqb	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	81629	FTsQJcQhavGJF4jLew0EBw==	2023-11-28 14:04:49.544565
118	xkif8osglh5py075nl5mpfrawd5m	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	51601	HBi2f4Ogs93q58ShcpQecw==	2023-11-28 14:04:49.597187
119	6c4lo6dph9x57plxghiyl9dlli47	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	945905	UIBj0Z5ZaX+PHX6k0Qb+Rw==	2023-11-28 14:04:49.649883
120	374uovqc5qfm1bdevmeeo7j4oey4	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	50695	qpUsOSxfx6ckwZFn0vwofA==	2023-11-28 14:04:49.708837
121	z6kondjadnmu9s2x554rt3wpkqtb	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	20047	/Wom0nb2FheXk1wWRkAt6Q==	2023-11-28 14:04:49.75795
122	1vjx7spgcddvda1mwusqrdygz2zu	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	174752	uh48bA+n6sLhzqfPllMjrA==	2023-11-28 14:04:49.806086
123	2xi4wknxlndpxfp0l7e0ian4hy65	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	357893	XBQERqCWflt7iBIUk3e8HQ==	2023-11-28 14:04:49.854705
124	2d8wc24pvwg6ebj5is1wfxbhitnx	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	164452	UV5dcPDNXsw46+yVk4SoQw==	2023-11-28 14:04:49.905279
125	yuoe4l98egvz9q12qfamv6w6e89w	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	20465	Yy5umeLRbzIG45XGN0oc3w==	2023-11-28 14:04:49.949696
126	ppbmroqwxlh7npazsm0z20io0fcl	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	12401	0vOgUTAKiUF1ESBFB57xRg==	2023-11-28 14:04:49.990608
127	lapf3ugugl6nzj1bznqk2n1o3ys3	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	31639	QCSPgY7HfKUBJqRx6L0aHA==	2023-11-28 14:04:50.034538
128	rgzykoguookc7oeomucowflc8dls	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	20376	UVBrxFnDkFfVlr3SGiKK2A==	2023-11-28 14:04:50.104393
129	ct3d822k93sh705rtxgoep4cqdcu	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	27419	+oD4p01A7qeNJSEn7qNcrA==	2023-11-28 14:04:50.15473
130	nl1sjkfzjd0wm5yzkn60ilnm8q0w	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	79252	KnSuOCK9X1M/+b+ueTIPCA==	2023-11-28 14:04:50.202551
131	n1z8d5zu8sguc9des7e7wuhxhszc	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	30262	Ri3d5HAFSYQ44GS54zoBxg==	2023-11-28 14:04:50.257951
132	ptqenrxb39u4oqlia530dzohix6v	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	15498	GKvill+Ij4NkHkAKTW42KA==	2023-11-28 14:04:50.308518
133	uw4a5nbn553rz1y3nu6v8pzwparh	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	18497	lzPnHLCyKdHip3COZfOk9A==	2023-11-28 14:04:50.352256
134	8lthip019t2o49o0q6zmr9yer9nh	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	17172	NIbSTmodIuwuBosXHwkQbw==	2023-11-28 14:04:50.434489
135	scdwmvqhbwirxkpjdnism96tx2rb	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	18846	znl4LVQZ8zqZuv7gRFxJUw==	2023-11-28 14:04:50.480359
136	x9s030ta3p065kpyxd0luu4fosiu	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	538926	3HVJWOR1tMAPDADHtXkzNQ==	2023-11-28 14:04:50.533776
137	vib4n72g2h2wfhaq1cty616te9vt	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	547183	k9kn6Gu5sBCDv3RgGcXfFw==	2023-11-28 14:04:50.593099
138	4y042kah480uxxjx0pnv5po9kg8d	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	962039	W+Ln/rILR5dDMurc8+4hNg==	2023-11-28 14:04:50.643813
139	yfhks5ubt3j7uqiy2buq0mj1wbg1	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	3927043	09wFYwF8Kay5dMqo14LWKQ==	2023-11-28 14:04:50.724569
140	oq9cct6ws1hfeefle9yo7pfxb2z3	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	1170861	hIMkJIcdBxzBu+beVOSf4w==	2023-11-28 14:04:50.832847
141	rkr05x6zfbeizf6eexpmm0f4vib9	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	6988	urktqV733AGRkY1x1C34mg==	2023-11-28 14:04:50.972968
142	hz1vhdwg4vhkf74gbspgyxe749yv	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	7445	8X/rxpwTl0iAcAPgDxuAgA==	2023-11-28 14:04:51.014093
143	np14xajvxprs0kab51ld0zssmqvh	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	8774	Gc4Js0ZVy4eO/C4iYG8RCQ==	2023-11-28 14:04:51.054678
144	epwirbzh1s2rogbcmyp75n6e1yk5	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	8571	7w+GdPhHu3moe5XYSz+KJQ==	2023-11-28 14:04:51.101258
145	cqzvr82ckwqdcdb04bpp132sr5zx	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	22129	2BRFzrA5hkmCnYoxWRLtLg==	2023-11-28 14:04:51.152576
146	2473zo0r8qz6mx0z93pja95dsc1f	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	13969	zPFfc7/XNWDgxCCR/JOWew==	2023-11-28 14:04:51.205115
147	csirmypckwltzqklo6bxjyecyj9x	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	16847	FHwNR76iJdNrsDYidWOv5g==	2023-11-28 14:04:51.246279
148	4gvyak5ofpj5qj54z63t4u72q534	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	18814	Smq+Q5mIZ9LfC8dCckm24A==	2023-11-28 14:04:51.297982
149	vslrrcqtr1x5h08amvmvk5l7sd0q	photo.jpg	image/png	{"identified":true,"analyzed":true}	local	239991	eom5X/UlBCUuN6/owNfqKg==	2023-11-28 14:04:51.466751
150	jptrfmv2kawc5cxo9oq30fbbvmkr	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	9713	3F8/7dab48SkfyoV+Gv/WA==	2023-11-28 14:04:51.511147
151	8xqok4j3hji6sa69rcbtu70ee5hm	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	20238	lj9O+g0RcF0pqT06xbqYDQ==	2023-11-28 14:04:51.55677
152	zv2881vp9p0a44v3tp07hu577sfh	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	18469	BPBiD3wGylLQAuvmDZAHlA==	2023-11-28 14:04:51.600283
153	lw4s2rem6x1vtuulsif87z4w3usb	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	12693	j7RCtvvSFPqq5gC3NMCUFw==	2023-11-28 14:04:51.640902
154	813x6nky8dzp7hp6n2na5133xm26	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	19074	rzROBoE9y05W9/sGF5y0TA==	2023-11-28 14:04:51.685378
155	33n3lqivk8ltun1ujcmb1u3uovlv	photo.jpg	image/png	{"identified":true,"analyzed":true}	local	98456	6dV13+QSPKco/lAyTISs0A==	2023-11-28 14:04:51.729135
156	0yii0ako3o16uo1cm9bkrbey1ymf	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	9199	jtZjIkKXh6QdcuM+T07hxA==	2023-11-28 14:04:51.774745
157	xr4hz1t6se2kz6jme1vomfjh9o12	photo.jpg	image/png	{"identified":true,"analyzed":true}	local	66495	ZPvEka2N48fxGd+dNDSmRg==	2023-11-28 14:04:51.81878
158	ha4xdkg3cnllbwxr01t42ago7xdc	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	19513	K0qIVH7FLek2mdJBLdi1gQ==	2023-11-28 14:04:51.860217
159	4wzm5w5t6dvcdaw8erac92kla8h4	photo.jpg	image/png	{"identified":true,"analyzed":true}	local	37843	AmnixFNWl1P0cKyQEOX1og==	2023-11-28 14:04:51.899667
160	9g2g7osr78cfltu0xd8u2yfy5hqz	photo.jpg	image/png	{"identified":true,"analyzed":true}	local	42721	7rRs/m0/oolG85115WBWIw==	2023-11-28 14:04:51.945552
161	ib643dltpc3dxv0bk3j0asi86aui	photo.jpg	image/png	{"identified":true,"analyzed":true}	local	75963	yZUL3erbTzz3xBd/P5HuIQ==	2023-11-28 14:04:52.000919
162	lgt40k1au3wxwn2sn8tsarqspygv	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	11611	mLbwdILJzMqIIj8n0X1ZWQ==	2023-11-28 14:04:52.050911
163	81m9pgmwgi8v6z8diiy5kaqwxbh9	photo.jpg	image/png	{"identified":true,"analyzed":true}	local	77035	hISmQ2EVRsbNtWIHqHOOOg==	2023-11-28 14:04:52.093378
164	uakvxoqh71o6hop8le9wimetlczc	photo.jpg	image/png	{"identified":true,"analyzed":true}	local	59650	ycJQAK2ToNMufw+DJLNYyA==	2023-11-28 14:04:52.133415
165	n0m75tod6jfdv202vy8ne220h74s	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	14272	3yyx70FY4PfLBICGNGWc+w==	2023-11-28 14:04:52.179781
166	dswivx204igqkdskx6oys9v94aoh	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	8112	YPyuLCtoZsJTwNglWvyPVg==	2023-11-28 14:04:52.214611
167	fdbl0npx6q2woq39ddpkj34ms553	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	14728	xxNu3wVlj973GWat6lNnRg==	2023-11-28 14:04:52.254837
168	xzraoo493gzz9vs2ya2bb34oiy0v	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	13525	ASpbbPSUYD+GdB/C/hcHpw==	2023-11-28 14:04:52.290707
169	2ikg94vhjybfa9ump3br0ww1my91	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	168135	g6IzgVNn4BG6Y2XIrWNHBQ==	2023-11-28 14:04:52.337162
170	0qithzwwi33c83gljvba585ev35h	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	292980	+uBiTnLaSHFXjHmx2MaV/Q==	2023-11-28 14:04:52.393517
171	rxhc608vh81lihf6hy043oaf2dmi	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	222406	wgJAjjTWM++/gqV3uoXv/g==	2023-11-28 14:04:52.44418
172	ixulqnggqwh5cna31xvb1wqh5rve	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	119647	JvpKGgUeNV4XiPP5QP+S+w==	2023-11-28 14:04:52.494196
173	kgmi2f3xdrom6n9v7kbkptgcjnfg	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	292889	FmfL9IVuLYnapl+2H8OQIw==	2023-11-28 14:04:52.545947
174	sglqsifm1xf4uvt5jbguxoptx9rs	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	329018	wjm++73bnultWaicyemL/A==	2023-11-28 14:04:52.598982
175	wq0n46lp9betn247i2gowgup4w0l	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	14553	NiaBAJRfeuDS75aDvCdmxQ==	2023-11-28 14:04:52.647136
176	bzbtvcuawvgumr7kj5op5u85t4m4	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	20531	He7AJwvtHKMtqIRnaxm+uA==	2023-11-28 14:04:52.757678
177	t7xdtu30yeys3cb1qtf5kj2qyacu	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	827961	sybGbEeEfQsjCb+jY4ciLg==	2023-11-28 14:04:52.809774
178	8h4xwi0k7yr77y6pczc6467rtfzq	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	20582	aGi+Fenc7z8fUxcGe2xfTA==	2023-11-28 14:04:52.86181
179	eql0a61cj5tasl53yhsfi2wzf76g	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	17990	oVqnJt7fBIRruKhNJ/nBNQ==	2023-11-28 14:04:52.901449
180	wuj1z5yj2qf16o6hpwzvpcrpeqd4	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	23781	wsgeeK25KwWnuwbp9kddug==	2023-11-28 14:04:52.947029
181	8w10j2gaq4112hjbdocadu1knl52	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	28938	EZZ38xOQL8RmmVrIV+Pyog==	2023-11-28 14:04:52.995402
182	uxbduc811uu0lcb6p978zz11gcfn	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	24309	r1QrgGen7qcuHYBJiBrLgQ==	2023-11-28 14:04:53.044564
183	hmt5yjf5g4yo7x3c4dlnn0s5fk6y	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	27696	aLFdUiS/AwpwNteg4qPVoQ==	2023-11-28 14:04:53.092993
184	f2xj5nyuq5q6ssyd4obp2lfj40s0	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	22433	gbfQygBOGdzEF/MMx1IbfQ==	2023-11-28 14:04:53.14816
185	ytiw9glg5695i3kze9xditow22za	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	22012	/3z514HqCntPdIjR3+e76Q==	2023-11-28 14:04:53.195104
186	1mumm44s47z6pdnmaghzoeg3qyvj	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	23571	7v1SVIasvo12GIGadlVZfw==	2023-11-28 14:04:53.237158
187	8e2bqnu1td72tgb4zxs82pzei570	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	14071	fWktF6iPE273MUbfCcWvVg==	2023-11-28 14:04:53.284441
188	hrouehorffbyjp1pxuu203jn35lb	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	885920	Da/L0UFZAi5PfkxcHyZ/VQ==	2023-11-28 14:04:53.344625
189	zxajpzzbymx56uzn1piaqjya7qf8	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	1484504	AWprQyrypVhtAxetzxqZIg==	2023-11-28 14:04:53.407651
190	1oy6adi1czbi1ikkltpbxoln8vvi	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	11941	NHTMyJb+nVOw9aCkhqwN0g==	2023-11-28 14:04:53.472319
191	w1mw5hfjztevkmloiz4550iquzhh	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	2897085	KO/J8Tp9VSYoNtHf7YaQ1w==	2023-11-28 14:04:53.538125
192	7ozif03v8wktqd4qmpswg5dofjnx	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	17958	bM2R1Z3h+DnMtkiROs0sKA==	2023-11-28 14:04:53.60446
193	nweed7bp829j4mk5aeprhnj3bmhy	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	10582	Xxdd0wdH09G9lbs1otbuXA==	2023-11-28 14:04:53.6472
194	v953l1gp3eukycwrzqdowvvd9cwt	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	8510	b2VkPJoBEpjMeorlg2VenA==	2023-11-28 14:04:53.687285
195	dz14ah3ppa3gid5dwnq29ur2j4tv	photo.jpg	image/png	{"identified":true,"analyzed":true}	local	89980	rE0L1XQdU7/ziLd1Y1ziPg==	2023-11-28 14:04:53.740824
196	hhxn6x5ro0s2fbfhbuspo12hthml	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	94174	tBapbhcP3ga4jkirxPd9+A==	2023-11-28 14:04:53.79716
197	ztdpvfy9c2rdpjop8y2j5h7tcvxy	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	33063	1esFHmrk1AO1c30J0Lr2nQ==	2023-11-28 14:04:53.842135
198	8ihkb5xhry7hszpmr0eeksjch7jw	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	1319219	3QxE+L1AdUGMvKm6KVTp3A==	2023-11-28 14:04:53.900056
199	11ynsfvs1vmyujtfm4n9w83oktr5	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	247603	m9No4oxXAnfGOF29e4WkPw==	2023-11-28 14:04:53.963937
200	51gmny2xkfpztj002nxz1onfor5a	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	19567	5Je3z/cjr8+6x62HbBWvYA==	2023-11-28 14:04:54.005433
201	y8pomng981d7a8yv3ufcdl2ezwe7	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	81629	FTsQJcQhavGJF4jLew0EBw==	2023-11-28 14:04:54.050861
202	qknvsef55mggz2re7vxpja44tif9	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	51601	HBi2f4Ogs93q58ShcpQecw==	2023-11-28 14:04:54.097348
203	ndfmvygexn8a3x04mjjfi04oe13a	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	945905	UIBj0Z5ZaX+PHX6k0Qb+Rw==	2023-11-28 14:04:54.160951
204	7x32dxl9ljq5u22w8eljfa3jz4iy	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	1417011	3LYEIRdTsCiPzMXpta7U4Q==	2023-11-28 14:04:54.219343
205	hzpyruglrd3kh6k8vqe7r60boux1	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	51499	m1ZIs4MLQ3GSUWuyY+BElg==	2023-11-28 14:04:54.270052
206	zj15gnkx7ioklllfe8cuggyor0gj	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	9515	Lv5W7nW1mH+VDVP7W+3j2w==	2023-11-28 14:04:54.332466
207	1qroj6j5lh06ni9m2sxw2421z7qa	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	12267	RzaTw8MXhh6WKOUi9A7ZPA==	2023-11-28 14:04:54.377776
208	0j2m65ktve2ezj82mr84e2blcs9h	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	12016	6Pu+AXWpcnKajhV4nGhwmQ==	2023-11-28 14:04:54.420914
209	kxigszxtlr9lkg2uepd3mqgni8l8	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	17410	O4E8aeqhCYcioplJT5MTBg==	2023-11-28 14:04:54.476585
210	apir019x695bvusok91r6qcp014w	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	18718	OThRaWFjUmi9YJJqgpgGXQ==	2023-11-28 14:04:54.515453
211	4dvax3ppa862q7knn6fip6dtpyzf	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	9635	/dRTQe1xBDyfXU3AbGAtqw==	2023-11-28 14:04:54.555838
212	d9arxzkbkchngwilzqdqh59to8x7	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	10389	VhqEHctl7yxthXt0DGp+yw==	2023-11-28 14:04:54.597678
213	05haczl1w5c82wdcxksz5rnjknnk	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	24059	wqh76CaEiesOOKnQa5UM5A==	2023-11-28 14:04:54.644107
214	fnwmeyctizvzhpcrthsm07ugdsqw	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	25891	DKWwLP2Z6AZ4wsf3zUMb+Q==	2023-11-28 14:04:54.689948
215	5iup466561s258r22nk861bitvtb	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	16440	sqJb350O9dDguR/kJzLOYQ==	2023-11-28 14:04:54.729533
216	5pcw6xyi0xhoh43nv0tpof8ua8kz	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	12417	Pa2RQvVUF9cJPmvZTKbKjQ==	2023-11-28 14:04:54.770388
217	tjytgzie2raac40iazdg9nrjb2mh	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	16214	CNhq5HY69ynkDncjuIZxBQ==	2023-11-28 14:04:54.809637
218	hatu5tw3xev932f2vrr8lujhz6ia	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	13453	D/9Im1yQnwA9yeI4By68Xg==	2023-11-28 14:04:54.848562
219	zlk5sjwv1ynsdw5pktopytrtd9jy	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	21915	FjVEdZ6iqdbLpLCB9dy5ew==	2023-11-28 14:04:54.888379
220	gtigxhzxtdzhzzvoemgjer6xv6s2	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	13686	IwQwIh2bMo810t7Y7U/j0A==	2023-11-28 14:04:54.937515
221	nysjexwh8r0ebj0zpn6iqak194bj	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	18506	zspJlmm8ZEiWsX7UG6WR0Q==	2023-11-28 14:04:54.986078
222	5hunc3yo1q9tyw0ul9v16f0pzuoz	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	998298	18NCNPOXiGuxOqTluuNfJw==	2023-11-28 14:04:55.046699
223	rmf8awvqzq17kzbpk3td3yj7hwic	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	26002	Sl5HK5rolgr8aOfSzqHj0Q==	2023-11-28 14:04:55.105098
224	oeh5xapye90f50fohwkgcvw6s0ga	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	14720	Xp8i/ZkDyW+WbABJkSRyaA==	2023-11-28 14:04:55.145708
225	9e5lfelf7mhxb7wt7gfh9dula7vn	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	17387	yiCHFy1AOrtlYbqnH0n3Tw==	2023-11-28 14:04:55.191656
226	zt7x1excyaou7mivugg4oxi2jgm4	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	407176	AWlFxGrapn1i8M2FZAPxIA==	2023-11-28 14:04:55.251775
227	wh7lmi03ts3ds2w6c1bsg3llxpur	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	208245	9tSH3mmjQdCKXQTRZxPkug==	2023-11-28 14:04:55.307864
228	kujflf9p3nscfw4htl2jyzix33d8	photo.jpg	image/gif	{"identified":true,"analyzed":true}	local	170494	Lyp555A6l8MpqkKKZ24i5w==	2023-11-28 14:04:55.362382
229	vxc849gur70nlyk8rz1ojr8je7kx	photo.jpg	image/gif	{"identified":true,"analyzed":true}	local	263585	3ObjDOJL3n071VqeQn2xIA==	2023-11-28 14:04:55.422952
230	mmdzoxbejdtdknlorhqeo4aprmp6	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	255642	DV9AREyummvoUTLpFUvTmQ==	2023-11-28 14:04:55.478214
231	9yah92udt539kin2w86qur5nwjb4	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	303235	F4ZyBYZJkpOMzF8tVbzBBQ==	2023-11-28 14:04:55.539298
232	36p7hxqs5rsampd6fkwmwjsbidfy	photo.jpg	image/gif	{"identified":true,"analyzed":true}	local	713394	+ySoO6siHdXN0rvEOGt7uQ==	2023-11-28 14:04:55.60157
233	zo8h0lvxib2kg590hps2r4pc9v3n	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	285228	9MXB4nd0IdMAfyA+ygQYXA==	2023-11-28 14:04:55.66153
234	kprylpk43t2q73kv3e1ldh0y6xcc	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	6686	vIRX6Oxbo+IDFJ2VBEhcuA==	2023-11-28 14:04:55.717467
235	dsv6121m9atytsma632ao7cb8zl2	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	1785029	h0sL27ce0TLFN7Tz2uzZ9Q==	2023-11-28 14:04:55.913382
236	p4k06hl8z845zir4igikza97nkwx	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	11195	oU+Zg1bwTTDEGEHneNqdrQ==	2023-11-28 14:04:56.026969
237	u82z42gqtabem8d9fqrm0h1w145r	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	8673	hdKHeWlDLWE7X19qkexPQQ==	2023-11-28 14:04:56.068499
238	s5rvzp89gfkpy898y76msrt3si1l	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	9352	tGRm0Xx7T2QC4EudLn3f1Q==	2023-11-28 14:04:56.105411
239	d85rt0zuhehutcyj5qa67fisz3pt	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	5085	pwudA9OvLn6Ydvk4BnGd0Q==	2023-11-28 14:04:56.151052
240	ehrtwq1yvib3f57gq7j4btyv8yc5	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	6156	t36IxK2rx8OVOaYJJcNywg==	2023-11-28 14:04:56.198151
241	l23kps3tic0a4etz651fppewukwz	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	6315	M1QMAA7Db7iL0xwPHzcIFA==	2023-11-28 14:04:56.24299
242	7ghar7cgoo02eo77iqgwa991ktfv	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	5909	zryfZ7ulnpUBR5mSrUERWQ==	2023-11-28 14:04:56.281929
243	a2mczoxyxuvx0kpfvymgqgiztgy0	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	4386	81iT+OGct1WrIz2L7SztBA==	2023-11-28 14:04:56.322293
244	q8it6o1ee35bxbi7tu6y4nbur180	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	8443	NtPY5s2DdJPH6UxNYXFoIA==	2023-11-28 14:04:56.368753
245	t84qx09ehmmd6pfnreu8glkmxit9	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	2940	ULM4rK4p1UFVNzb0SxA4qg==	2023-11-28 14:04:56.408742
246	bxyew6t48mcgh0yugt32lmvax5m7	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	1002349	2UPejQPkqVZD/TqX4XhKdw==	2023-11-28 14:04:56.459921
247	wrhkzqp8lzmgxsee5xcbo91a0mry	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	942281	93OO5pOwpbYdd10xSzDGVA==	2023-11-28 14:04:56.521527
248	j95gthy6a3pgvttdi80ihq3vp5sa	photo.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	990597	luTzX0x/PwoKoStca46+Cw==	2023-11-28 14:04:56.575871
\.


--
-- Data for Name: active_storage_variant_records; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.active_storage_variant_records (id, blob_id, variation_digest) FROM stdin;
\.


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	production	2023-11-28 14:04:20.578923	2023-11-28 14:04:20.578923
\.


--
-- Data for Name: artists; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.artists (id, first_name, last_name, birthday, deathday, category, created_at, updated_at) FROM stdin;
1	\N	KünstlerIn	\N	\N	\N	2023-11-28 14:04:42.977162	2023-11-28 14:04:42.977162
2	Hans Jean	Arp	1886	1966	\N	2023-11-28 14:04:43.06331	2023-11-28 14:04:43.06331
3	Afro	Basaldella	1912	1976	\N	2023-11-28 14:04:43.673582	2023-11-28 14:04:43.673582
4	Friedrich	Becker	1922	1997	\N	2023-11-28 14:04:43.803645	2023-11-28 14:04:43.803645
5	Nele	Bode	1932	\N	\N	2023-11-28 14:04:44.01292	2023-11-28 14:04:44.01292
6	Ervin	Bossanyi	1891	1975	\N	2023-11-28 14:04:44.14463	2023-11-28 14:04:44.14463
7	Louise	Bourgeois	1911	2010	\N	2023-11-28 14:04:44.635764	2023-11-28 14:04:44.635764
8	Georges	Braque	1882	1963	\N	2023-11-28 14:04:44.736964	2023-11-28 14:04:44.736964
9	Alexander	Calder	1898	1976	\N	2023-11-28 14:04:45.504256	2023-11-28 14:04:45.504256
10	Giorgio de	Chirico	1888	1978	\N	2023-11-28 14:04:46.076483	2023-11-28 14:04:46.076483
11	Jean	Cocteau	1889	1963	\N	2023-11-28 14:04:46.138721	2023-11-28 14:04:46.138721
12	Salvador	Dal	1904	1989	\N	2023-11-28 14:04:46.430123	2023-11-28 14:04:46.430123
13	Andr	Derain	1880	1954	\N	2023-11-28 14:04:46.621466	2023-11-28 14:04:46.621466
14	Jean	Dubuffet	1901	1985	\N	2023-11-28 14:04:46.831017	2023-11-28 14:04:46.831017
15	Hildegard	Domizlaff	1898	1987	\N	2023-11-28 14:04:46.92076	2023-11-28 14:04:46.92076
16	Max	Ernst	1891	1976	\N	2023-11-28 14:04:46.983124	2023-11-28 14:04:46.983124
17	Wilfried	Fiebig	1940	\N	\N	2023-11-28 14:04:47.438838	2023-11-28 14:04:47.438838
18	Lucio	Fontana	1899	1968	\N	2023-11-28 14:04:47.575845	2023-11-28 14:04:47.575845
19	Pablo	Gargallo	1881	1934	\N	2023-11-28 14:04:47.841024	2023-11-28 14:04:47.841024
20	Alberto	Giacometti	1901	1966	\N	2023-11-28 14:04:47.959275	2023-11-28 14:04:47.959275
21	Richard	Haizmann	1895	1963	\N	2023-11-28 14:04:48.268617	2023-11-28 14:04:48.268617
22	Erich	Heckel	1883	1970	\N	2023-11-28 14:04:48.605519	2023-11-28 14:04:48.605519
23	Georg	Hempel	1894	1969	\N	2023-11-28 14:04:49.031697	2023-11-28 14:04:49.031697
24	Manolo	Huguet	1872	1945	\N	2023-11-28 14:04:49.09457	2023-11-28 14:04:49.09457
25	Arthur	Illies	1870	1953	\N	2023-11-28 14:04:49.35869	2023-11-28 14:04:49.35869
26	Ernst Ludwig	Kirchner	1880	1938	\N	2023-11-28 14:04:49.382188	2023-11-28 14:04:49.382188
27	Yves	Klein	1928	1962	\N	2023-11-28 14:04:49.407303	2023-11-28 14:04:49.407303
28	Moissey	Kogan	1879	1943	\N	2023-11-28 14:04:49.454905	2023-11-28 14:04:49.454905
29	Gyula	Kosice	1924	2016	\N	2023-11-28 14:04:49.725236	2023-11-28 14:04:49.725236
30	Kurt	Kranz	1910	1997	\N	2023-11-28 14:04:49.775246	2023-11-28 14:04:49.775246
31	Claude	Lalanne	1925	2019	\N	2023-11-28 14:04:49.922694	2023-11-28 14:04:49.922694
32	Thodore	Lambert	1857	\N	\N	2023-11-28 14:04:50.005631	2023-11-28 14:04:50.005631
33	Henri	Laurens	1885	1954	\N	2023-11-28 14:04:50.049782	2023-11-28 14:04:50.049782
34	Fernand	L	1881	1955	\N	2023-11-28 14:04:50.126251	2023-11-28 14:04:50.126251
35	Arno	Lehmann	1905	1973	\N	2023-11-28 14:04:50.170952	2023-11-28 14:04:50.170952
36	Sol	LeWitt	1928	2007	\N	2023-11-28 14:04:50.226273	2023-11-28 14:04:50.226273
37	Roy	Lichtenstein	1923	1997	\N	2023-11-28 14:04:50.276861	2023-11-28 14:04:50.276861
38	Jacques	Lipchitz	1891	1973	\N	2023-11-28 14:04:50.368578	2023-11-28 14:04:50.368578
39	Jean	Lur	1892	1966	\N	2023-11-28 14:04:50.49567	2023-11-28 14:04:50.49567
40	Giacomo	Manz	1908	1991	\N	2023-11-28 14:04:51.11708	2023-11-28 14:04:51.11708
41	tienne	Martin	1913	1995	\N	2023-11-28 14:04:51.168663	2023-11-28 14:04:51.168663
42	Ewald	Matar	1887	1965	\N	2023-11-28 14:04:51.262294	2023-11-28 14:04:51.262294
43	Emil	Nolde	1867	1956	\N	2023-11-28 14:04:51.315666	2023-11-28 14:04:51.315666
44	Meret	Oppenheim	1913	1985	\N	2023-11-28 14:04:51.431918	2023-11-28 14:04:51.431918
45	Gyula	Pap	1899	1983	\N	2023-11-28 14:04:52.306339	2023-11-28 14:04:52.306339
46	Max	Pechstein	1881	1955	\N	2023-11-28 14:04:52.355525	2023-11-28 14:04:52.355525
47	Pablo	Picasso	1881	1973	\N	2023-11-28 14:04:52.722506	2023-11-28 14:04:52.722506
48	\N	Pomodoro	\N	\N	\N	2023-11-28 14:04:53.300863	2023-11-28 14:04:53.300863
49	Gi	Pomodoro	1930	2002	\N	2023-11-28 14:04:53.437906	2023-11-28 14:04:53.437906
50	George	Rickey	1907	2002	\N	2023-11-28 14:04:53.619677	2023-11-28 14:04:53.619677
51	HansMartin	Ruwoldt	1891	1969	\N	2023-11-28 14:04:53.705203	2023-11-28 14:04:53.705203
52	Karl	Schmidt	1884	1976	\N	2023-11-28 14:04:53.857398	2023-11-28 14:04:53.857398
53	bürgerlich Simonet Gabriel Sbastien	S	1909	1990	\N	2023-11-28 14:04:54.906366	2023-11-28 14:04:54.906366
54	Gino	Severini	1883	1966	\N	2023-11-28 14:04:54.957139	2023-11-28 14:04:54.957139
55	Heinrich	Stegemann	1888	1945	\N	2023-11-28 14:04:55.00298	2023-11-28 14:04:55.00298
56	Dorothea	Tanning	1910	2012	\N	2023-11-28 14:04:55.074844	2023-11-28 14:04:55.074844
57	Victor	Vasarely	1906	1997	\N	2023-11-28 14:04:55.160934	2023-11-28 14:04:55.160934
58	Jess Rafael	Soto	1923	2005	\N	2023-11-28 14:04:55.207852	2023-11-28 14:04:55.207852
59	Franco	Cannilla	1911	1985	\N	2023-11-28 14:04:55.37945	2023-11-28 14:04:55.37945
60	Arnaldo	Pomodoro	1926	\N	\N	2023-11-28 14:04:55.497145	2023-11-28 14:04:55.497145
61	\N	Bülow	\N	\N	\N	2023-11-28 14:04:55.625374	2023-11-28 14:04:55.625374
62	Richard Gustav	Bampi	1896	1965	\N	2023-11-28 14:04:55.681121	2023-11-28 14:04:55.681121
63	Sigmund Walter	Hampel	1867	1949	\N	2023-11-28 14:04:56.384082	2023-11-28 14:04:56.384082
64	\N	\N	\N	\N	\N	2023-11-28 14:04:56.604628	2023-11-28 14:04:56.604628
\.


--
-- Data for Name: bookmarks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bookmarks (id, list_id, item_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: comments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.comments (id, text, item_id, created_at, updated_at) FROM stdin;
1	Notiz / Kommentar	1	2023-11-28 14:04:43.001462	2023-11-28 14:04:43.001462
2	Ausstellung London: International exhibition of modern jewellery 1890-1961	2	2023-11-28 14:04:43.072622	2023-11-28 14:04:43.072622
3	Ausstellung London:  International exhibition of modern jewellery 1890-1961	3	2023-11-28 14:04:43.094222	2023-11-28 14:04:43.094222
4	Ausstellung London:  International exhibition of modern jewellery 1890-1961  Gleiche wie drei Positionen weiter unten?	4	2023-11-28 14:04:43.114928	2023-11-28 14:04:43.114928
5	posthum Meisterpunze P. Hugo	7	2023-11-28 14:04:43.450347	2023-11-28 14:04:43.450347
6	Ausstellung London: International exhibition of modern jewellery 1890-1961	8	2023-11-28 14:04:43.504768	2023-11-28 14:04:43.504768
7	Posthum?Signiert??	9	2023-11-28 14:04:43.528655	2023-11-28 14:04:43.528655
8	Jede Kette hat eine untersch. Kombi aus zwei versch. Halbedelsteinen Jean Arp (1886-1966) is an accomplished sculptor and poet and considered to be one of the founders of the Dada movement. The German-French artist began making jewelry only in his later years as an extension of his sculpture. He was fascinated with molding hard materials into shapes with gentle contours and fluid lines that voked malleability and softness. While abstract in form like much of his larger work, his miniature sculptures nevertheless evoke living forms like plants and the human body, a biomorphic style that translates fluidly into silverwork and jewelry. In an homage to the asymmetry of nature, each necklace he designed in this edition sports different stones, an unexpected surprise that makes each unique. His 1960s edition of this necklace, an edition of one hundred, had a charitable cause: the Ein Hod village art community in Israel, which his fellow Dadaist Marcel Janco was attempting to establish.	10	2023-11-28 14:04:43.575856	2023-11-28 14:04:43.575856
9	Kommission für Mrs. Washburn"Afro's last jewel"	13	2023-11-28 14:04:43.737016	2023-11-28 14:04:43.737016
10	Geschenk von Irmgard Mühlenberg, Düsseldorf	14	2023-11-28 14:04:43.822571	2023-11-28 14:04:43.822571
11	Geschenk von Irmgard Mühlenberg, Düsseldorf	15	2023-11-28 14:04:43.885108	2023-11-28 14:04:43.885108
12	vorher Vermächtnis Hilde Becker, Düsseldorf (2019)	16	2023-11-28 14:04:43.941037	2023-11-28 14:04:43.941037
13	Geschenk von Frau Blankenburg, Hamburg hinten eingeritztes "N" 	17	2023-11-28 14:04:44.025826	2023-11-28 14:04:44.025826
14	Nele E. R. Germany b. Berlin 1932 Sculptress, graphic artist and jeweller. 1950-55 studied in Berlin, Paris, London - at the L CC Central School of Arts and Crafts. Jewellery shown at the Stedelijk Museum, Amsterdam, 1956 Gold Medal Milan Triennale 1957. Prints and sculpture shown widely Lives Munich	18	2023-11-28 14:04:44.072675	2023-11-28 14:04:44.072675
15	Geschenk aus dem Nachlass des Künstlers durch seinen Sohn Jo Bossanyi, Oxford	19	2023-11-28 14:04:44.156957	2023-11-28 14:04:44.156957
16	Geschenk aus dem Nachlass des Künstlers durch seinen Sohn Jo Bossanyi, Oxford Vermutlich für den Eigenbedarf hergestellt. Ausstellung: Lübeck St. Annen Museum 13.11.1988-8.1.1989	20	2023-11-28 14:04:44.224439	2023-11-28 14:04:44.224439
17	Geschenk aus dem Nachlass des Künstlers durch seinen Sohn Jo Bossanyi, Oxford Kette verknotet, wie  1996.879 etc. 	21	2023-11-28 14:04:44.265139	2023-11-28 14:04:44.265139
18	Geschenk aus dem Nachlass des Künstlers durch seinen Sohn Jo Bossanyi, Oxford	22	2023-11-28 14:04:44.313374	2023-11-28 14:04:44.313374
19	Geschenk aus dem Nachlass des Künstlers durch seinen Sohn Jo Bossanyi, Oxford	23	2023-11-28 14:04:44.363763	2023-11-28 14:04:44.363763
20	Geschenk aus dem Nachlass des Künstlers durch seinen Sohn Jo Bossanyi, Oxford	24	2023-11-28 14:04:44.422764	2023-11-28 14:04:44.422764
21	Geschenk aus dem Nachlass des Künstlers durch seinen Sohn Jo Bossanyi, Oxford	25	2023-11-28 14:04:44.466886	2023-11-28 14:04:44.466886
22	Geschenk aus dem Nachlass des Künstlers durch seinen Sohn Jo Bossanyi, Oxford Gegensatz männliche u. weibliche Figur (christliche Ikonographie?). Vermutlich für den Eigenbedarf hergestellt. Ausstellung: Lübeck St. Annen Museum 13.11.1988-8.1.1989	26	2023-11-28 14:04:44.51436	2023-11-28 14:04:44.51436
23	Geschenk aus dem Nachlass des Künstlers durch seinen Sohn Jo Bossanyi, Oxford	27	2023-11-28 14:04:44.556773	2023-11-28 14:04:44.556773
24	Geschenk aus dem Nachlass des Künstlers durch seinen Sohn Jo Bossanyi, Oxford	28	2023-11-28 14:04:44.599035	2023-11-28 14:04:44.599035
25	Signiert LB und nummeriert Louise Bourgeois’ Choker necklace is shocking; its resemblance to a shackle summons a severe image. Bourgeois designed the piece in 1948 and can be seen wearing it to dinner with her father, Louis, at Leon & Eddie’s nightclub in New York during his visit to the city. This example was fabricated between 1999 and 2003 in a limited edition of 39 by the Spanish artistic jeweler, Chus Burés. For 10 examples in the edition, Burés also designed a string of 14 clear crystals that hangs from the middle hole in the lower part of the necklace. Bourgeois’s “universe is particularly introspective… betraying her reflections on the unconscious, femininity, the family, sexuality, and the relationship to the human body.” (Diane Venet, From Picasso to Jeff Koons: The Artist as Jeweler, Milan: Skira, 2011, p. 124.) The fashion designer Helmut Lang, who was friends with Bourgeois, presented the necklace along with his 2003 Spring/Summer collection in Paris.	29	2023-11-28 14:04:44.648033	2023-11-28 14:04:44.648033
26	Entwurf von LB um 1948??	30	2023-11-28 14:04:44.69742	2023-11-28 14:04:44.69742
27	stamped G. Braque, Heger de Lowenfeld, H.C., stamped N°56, Mars 64 Autorisé par G Braque ©, with  maker’s mark French assay mark for 18k gold The Térée brooch by Georges Braque is lovingly textured and studded with tiny rubies and emeralds like feathers spread across the body. Tereus, the son of the god of war Ares in Greek mythology, has a violent story full of anger and retribution. In the end, he is changed by the gods into a bird. Perhaps Braque’s rubies are placed like drops of blood; perhaps he immortalized the king in bird form to prevent him from doing further damage. In the increasingly  modern 1960s, Braque’s use of gold and simple, minimalist bird forms was truly avant-garde. His practice of mixing sand into his paintings and his aversion to shiny gold led his goldsmith de Loewenfeld to invent the gritty, dull finish that can be seen here which so beautifully contrasts with the gems.	33	2023-11-28 14:04:44.83497	2023-11-28 14:04:44.83497
28	stamped and signed N°54, PHAETON, Heger de Lowenfeld, Mars 64 Autorisé par G Braque © with maker’s mark and French assay mark for 18k goldArtist Georges Braque was highly inspired by Greek mythology. This Phaeton brooch — one of his signature jeweled bird-forms — refers to the story of the chargers of Helios carrying the boy Phaëthon away on a mad journey he cannot control. Phaëthon, known sometimes as Jupiter, was the son of Helios the sun god and his tale is one of misplaced pride and arrogance. But there is none of that in this jewel, which in its subtle texturing is a simple and elegant example of the works of Braque.	44	2023-11-28 14:04:45.299425	2023-11-28 14:04:45.299425
83	Geschenk des Künstlers und seiner Frau zur Eröffnung der Modernen Abteilung	126	2023-11-28 14:04:48.828298	2023-11-28 14:04:48.828298
84	Ausstellung London:  International exhibition of modern jewellery 1890-1961	127	2023-11-28 14:04:48.867206	2023-11-28 14:04:48.867206
85	Ausstellung London:  International exhibition of modern jewellery 1890-1961	128	2023-11-28 14:04:48.888144	2023-11-28 14:04:48.888144
86	Ausstellung London:  International exhibition of modern jewellery 1890-1961	129	2023-11-28 14:04:48.908114	2023-11-28 14:04:48.908114
87	Ausstellung London:  International exhibition of modern jewellery 1890-1961	130	2023-11-28 14:04:48.928336	2023-11-28 14:04:48.928336
29	Artist Georges Braque’s sand-finish Tithonos brooch, part of his Bijoux de Braque collection with Baron Heger de Loewenfeld. Tithonus’ mythology is the story of a youth kidnapped by Eos, goddess of the dawn, for his beauty and love. She pleads for Zeus to grant him immortality but forgets to ask for his beauty to be maintained and he is turned into an old, shriveled man. The eternally spread wings of this bird in flight may be a poetic call for unchanging immortality -- but no bird can fly forever, and as Braque’s own aged hands became unable to bring his ideas to life, he was forced to land on the ground and depend on de Loewenfeld for these creations.	45	2023-11-28 14:04:45.3489	2023-11-28 14:04:45.3489
30	Gestempelt mit B de B Georges Braque’s diamond-paved Zéphyr ring depicts a bird wheeling around in the sky, forever in flight, with one eye of ruby. In collaboration with the lapidarist Baron Heger de Loewenfeld, he translated drawings and gouaches based on Greek mythology into wearable art and jewelry. The Greek god Zephyrus is a gentle soul, a herald of spring and the lord of the west winds. Braque may have seen a happy message in his story of bleak winter being eventually tempered by the warmth and new growth of spring.	46	2023-11-28 14:04:45.398369	2023-11-28 14:04:45.398369
31	Hecate wurde in Paris, Frankreich, gegründet und bietet eine Sammlung von Schmuck und dekorativer Kunst in Museumsqualität, mit einer Spezialisierung auf Kunstwerke von Georges Braque. Zunächst war Hecate für den Schutz und die Förderung der 1960 begonnenen Zusammenarbeit zwischen Georges Braque und Heger de Loewenfeld, den Mitverfassern der "Bijoux de Braque", die von März bis Mai 1963 im Palais du Louvre (Paris) ausgestellt wurden, verantwortlich. Loewenfeld, Lapidarist und Schmuckgestalter, hinterließ sein Archiv und die Leitung seiner Werkstatt Hecate, die zur einzigen offiziellen Stelle wurde, die die Arbeiten von Braque's Jewelry authentifizierte.	48	2023-11-28 14:04:45.49158	2023-11-28 14:04:45.49158
32	Blech bis zu 22m Dicke, geschnitten, Broschierung selbst gemacht…  Vorbesitzer: Hentzen, Nachlass Alfred und Anne, Hamburg	49	2023-11-28 14:04:45.513813	2023-11-28 14:04:45.513813
33	Monogramms AH für Anne Hentzen zwei geschnittene, gehämmerte Bleche, vernietet, Broschierung selbst ausgedacht Vorbesitzer: Hentzen, Nachlass Alfred und Anne, Hamburg	50	2023-11-28 14:04:45.559854	2023-11-28 14:04:45.559854
34	Ausstellung London:  International exhibition of modern jewellery 1890-1961	52	2023-11-28 14:04:45.64995	2023-11-28 14:04:45.64995
35	Ausstellung London:  International exhibition of modern jewellery 1890-1961	53	2023-11-28 14:04:45.694685	2023-11-28 14:04:45.694685
36	Ausstellung London:  International exhibition of modern jewellery 1890-1961	54	2023-11-28 14:04:45.739703	2023-11-28 14:04:45.739703
37	Ausstellung London:  International exhibition of modern jewellery 1890-1961	55	2023-11-28 14:04:45.784727	2023-11-28 14:04:45.784727
38	Ausstellung London:  International exhibition of modern jewellery 1890-1961	56	2023-11-28 14:04:45.843249	2023-11-28 14:04:45.843249
39	Ausstellung London:  International exhibition of modern jewellery 1890-1961 monogrammiert „MP“	57	2023-11-28 14:04:45.870113	2023-11-28 14:04:45.870113
40	Dutzend weitere Objekte in Lit. s. re.	62	2023-11-28 14:04:46.06476	2023-11-28 14:04:46.06476
41	Ausstellung London:  International exhibition of modern jewellery 1890-1961 Wohl angefertigt für seine Frau Isabella Pakszwer Far	63	2023-11-28 14:04:46.08539	2023-11-28 14:04:46.08539
42	signiert rückseitig	67	2023-11-28 14:04:46.234719	2023-11-28 14:04:46.234719
43	Ausstellung London:  International exhibition of modern jewellery 1890-1961 	68	2023-11-28 14:04:46.283368	2023-11-28 14:04:46.283368
44	Ausstellung London:  International exhibition of modern jewellery 1890-1961  	69	2023-11-28 14:04:46.306785	2023-11-28 14:04:46.306785
45	Ausstellung London:  International exhibition of modern jewellery 1890-1961 	70	2023-11-28 14:04:46.327687	2023-11-28 14:04:46.327687
46	Posthum Nach einer Zeichnung von 1930	71	2023-11-28 14:04:46.347963	2023-11-28 14:04:46.347963
47	Ausstellung London:  International exhibition of modern jewellery 1890-1961	73	2023-11-28 14:04:46.44574	2023-11-28 14:04:46.44574
48	Die ersten Schmuckobjekte wurden durch einen finnischen Schiffsbesitzer in Auftrag gegeben. Einige davon wurden auf der Mailänder Triennale 1954 ausgestellt und fanden in die Sammlung der Owen Cheatham Foundation, die wiederum eine Ausstellung 1960 in London organisierte (?)	74	2023-11-28 14:04:46.467248	2023-11-28 14:04:46.467248
49	"These Persistence of Sound earrings, featuring a pair of melting telephone receivers, are intriguing pieces of art in the same way. Are they meant to evoke the ear-melting effects of being on the telephone (in 1949, a device present in only 60% of American homes -- a jump of twenty percent from the previous decade) and listening to a chatty relative for too long? Perhaps the pains of a call from one’s erstwhile lover? The literal melting of hot plastic on a steamy day? Dalí has depicted these mechanical devices out of 18k gold and crowned a miracle of modern efficiency and communication with diamonds, emeralds, and rubies to elevate it to another dimension entirely: that of the unreal.  Dalí thought often on the question of ‘si le bijou a été fait pour la peinture ou si la peinture a été faite pour le bijou,’ (if the jewelry was made for the painting or if the painting was made for the jewelry) and determined that ‘ils ont été faits l'un pour l'autre, c’est un mariage d'amour’ (they were made for each other, it is a marriage of love). (Diane Venet, Bijoux d'Artistes, de Calder à Koons, la collection idéale de Diane Venet, Flammarion, Paris, 2018, p. 66)  He reproduced Persistence of Memory’s melted pocket watches into a gold-and-diamond brooch, and the theme of melting objects comes through strongly in these Persistence of Sound earrings. His heavy use of gold and precious gems was financed by shipping magnate Eric Ertman, allowing Dalí to utilize the materials that spoke to him most strongly regardless of cost. Charles Valliant of the New York goldsmithing firm Valliant and Devere took over the actual creation of the jewels that Dalí designed.  For the artist, born in 1904, telephones themselves may have always carried a surreal novelty, reminding him of ‘the hope and danger of instantaneous exchange of thought.’ (Lida Livingston, Dalí, A Study of his Art-in-Jewels, New York Graphic Society, New York, 1959, p. 34) And in these earrings, he moves the receivers away from the literal and into a figurative dimension that asks the wearer to spin their own tale around the piece. Unintentionally he has also created a call to the past, as though we have all used phones like those depicted in this piece for decades, even landline phones now look very different. The Persistence of Sound has taken on new dimensions as a work of nostalgia when it was once a marvel of modern technology and — if we may make a tasteful pun — a call to the future."	75	2023-11-28 14:04:46.518899	2023-11-28 14:04:46.518899
50	Wohl Herstellung durch Françoise Hugo 	81	2023-11-28 14:04:46.753729	2023-11-28 14:04:46.753729
51	Verweis auf Ausstellungskatalog „Antagonisme 2 – l’objet“ mit drei Abbildungen und drei Werkangaben. Im Musée des Arts décoratifs laut Onlinekatalog nicht vorhanden	84	2023-11-28 14:04:46.883702	2023-11-28 14:04:46.883702
52	Vorderseite mit Kranich-Kamee. Rückseite mit Nest mit Eiern, also doppelseitignicht signiert	85	2023-11-28 14:04:46.934147	2023-11-28 14:04:46.934147
53	Ausstellung London:  International exhibition of modern jewellery 1890-1961	86	2023-11-28 14:04:47.002939	2023-11-28 14:04:47.002939
54	VERSCHOLLEN  Stiftung der Hamburger Sparkasse von 1827	87	2023-11-28 14:04:47.025097	2023-11-28 14:04:47.025097
55	Signiert	88	2023-11-28 14:04:47.076205	2023-11-28 14:04:47.076205
88	Zuerst Entwurf für Briefkopf für Johanna Schiefler, 1918. Dann Weiternutzung: „Das Motiv fand auch Verwendung für ein geplantes Abzeichen des Mensendieckbundes, das Heckel 1918 ebenfalls im Auftrag von Johanna Schiefler angefertigt hatte. Da dieses jedoch als zu modern abgelehnt worden war, nutzte Johanna Schiefler die Silbertreibarbeit, die exakt so groß wie der Holzstock ist, als Brosche. (vgl. Kat. Halle 2003, Abb. S. 35 und S. 53; siehe auch die Bemerkung zu 733 H).“	131	2023-11-28 14:04:48.947964	2023-11-28 14:04:48.947964
56	 conceived 1959, this example cast after 1979*, signed Max Ernst and stamped with Atelier Hugo reference number 2249 / 1452, edition 2/2, exemplaire d'artiste (artist's proof); stamped with François Hugo goldsmith's mark twice and assay mark on reverse  23k gold pendant in wooden box labeled by hand: Or 23 carats. 923 millièmes, Poids 182gs. Exemplaire No. E.A. 2/2; Poinçon 1es titre du Bureau de la Garantie de Marseille Pièce No. 2249/1452 portant la signature de Max Ernst, et le Poinçon de Maître de François Hugo. Fait dans ses atelier d'Aix en Provence en 1979. Lot sold together with (Book) Stiftung Max Ernst, Brühl, KulturSttiftung der Länder, and Sotheby's Important Tribal Art, New York, November 15 & 16, 1985. Max Ernst’s Tête à cornes (horned head) gold pendant is one of the most recognizable objects of his work and part of his collaboration with renowned goldsmith François Hugo in the late 1950s. He loved ‘the rough, chiaroscuro material nature of gilded metal…the perfect balance between intent and technique, a coming full circle of different disciplines.’ (Paola Stroppiana, Scultura Aurea, Gioielli d'Artista per un nuovo Rinascimento, Gli Ori, Pistoia, 2019, p. 90.) This primitive mask design with prominent horns - an unusual use of a fine material like gold, cast solidly into a large form - is a recurring theme in his art, of Surreal abstraction mixed with reality.  Ernst’s love of masks and carvings, among many of his collecting passions, were addressed in the first series of masks created with Hugo between 1959 and 1961 and then a second around 1970, both transposed into jewels by Pierre Hugo.	90	2023-11-28 14:04:47.163141	2023-11-28 14:04:47.163141
57	Signiert 	94	2023-11-28 14:04:47.33569	2023-11-28 14:04:47.33569
58	igned, stamped with Atelier Hugo reference number 2254 / 1460, edition 2/2, exemplaire d'artiste (artist's proof); stamped with François Hugo goldsmith's mark and assay mark on reverse at bottom This arresting little pendant, named by Ernst Soleil (Sun), can be interpreted as loosely as the name suggests. Ernst, who created the techniques of frottage (rubbing) and grattage (scratching) for his Plastiline works to add abstract texture, designed this piece with deep ridges like the raysmof the sun, though they could easily be interpreted as hair. His primitive-seeming goldwork aligns with the Abstract Expressionist movement that he helped to head, but also the avant-garde artworks being created by his peers that looked to differently-developed cultures for inspiration.	95	2023-11-28 14:04:47.381054	2023-11-28 14:04:47.381054
59	Autodidakt, Naive K	96	2023-11-28 14:04:47.451218	2023-11-28 14:04:47.451218
60	Autodidakt, Naive K	97	2023-11-28 14:04:47.518082	2023-11-28 14:04:47.518082
61	signed Lucio Fontana 67 on underside, edition 3/150, stamped with GEM Montebello & Fontana hallmarks sterling silver cuff bracelet with white lacquered oval with pierced holes positioned atop the wrist, exemplar n. 3/150 belonging to the second edition GEM MONTEBELLO, Milan, realized from June 1969 to April 1978, interrupted at no. 7, in original GEM red velvet case Lucio Fontana was constantly slashing, puncturing, and learning how to manipulate space in new ways. His Ellisse con fori concetto spaziale bracelet is a result of testing the limits of a monochromatic flat oval by puncturing it and allowing light to penetrate from behind. Fontana‘s collaboration with GianCarlo Montebello (GEM) for this piece involved the use of industrial lacquers to cover his thick silver bracelet with a single color of enamel - in this case white - referencing the Manifesto Blanco he wrote in 1947 which laid the groundwork for his ‘spatial concepts’ (concetti spaziali), a term he used throughout his career that was extremely important for his work. Here, spatial art is taken to a new level both figuratively and literally as this bracelet links the activity of Fontana's canvases to personal adornment. It allows the wearer to actually become part of the art, transporting and transposing the spatial concept of the work into their life and Fontana’s vision of the future.	98	2023-11-28 14:04:47.589131	2023-11-28 14:04:47.589131
62	Signiert   2018er Katalog Datierung auf 1950??	99	2023-11-28 14:04:47.635689	2023-11-28 14:04:47.635689
63	Ausgeführt durch Gem Montebello	101	2023-11-28 14:04:47.718901	2023-11-28 14:04:47.718901
64	Ausstellung London:  International exhibition of modern jewellery 1890-1961	104	2023-11-28 14:04:47.852128	2023-11-28 14:04:47.852128
65	Ausstellung London:  International exhibition of modern jewellery 1890-1961	105	2023-11-28 14:04:47.871828	2023-11-28 14:04:47.871828
66	Weiteres Exemplar?Pequeña star, 1990Nach einem Original von 1925BroscheSilber7 x 8 x 3cmÉdition Atelier, 7 Ex.	106	2023-11-28 14:04:47.917091	2023-11-28 14:04:47.917091
67	Ausstellung London:  International exhibition of modern jewellery 1890-1961 Vogeldarstellung	107	2023-11-28 14:04:47.9734	2023-11-28 14:04:47.9734
68	Ausstellung London:  International exhibition of modern jewellery 1890-1961	108	2023-11-28 14:04:47.993527	2023-11-28 14:04:47.993527
69	Ausstellung London:  International exhibition of modern jewellery 1890-1961 „Inspiriert von einer Engelsfigur“	109	2023-11-28 14:04:48.019106	2023-11-28 14:04:48.019106
70	unsigniert registered by the Fondation Alberto et Annette Giacometti in the online Alberto Giacometti Database (AGD) under the number 3563. This Untitled Medallion (Man with Raised Arms) comes from Giacometti’s series involving repeated motifs including people with raised arms, birds, and sphinxes that he designed as buttons for Elsa Schiaparelli. Schiap collaborated with artists and friends to infuse her fashion with artist’ work, and asked Giacometti in 1936 to design brooches and buttons. Giacometti, like Ernst, appreciated archaic, primitive forms and consistently returned to them in his work. This unevenly rounded button cast can be interpreted from multiple viewpoints, and some consider the figure to be a hunter, furthering the primitive feel of the work.	111	2023-11-28 14:04:48.081633	2023-11-28 14:04:48.081633
71	Ausstellung London:  International exhibition of modern jewellery 1890-1961	113	2023-11-28 14:04:48.185295	2023-11-28 14:04:48.185295
72	Rückseitig mit RH gekennzeichnet Vorbesitzer: Commeter, Galerie, Hamburg	115	2023-11-28 14:04:48.281555	2023-11-28 14:04:48.281555
73	Stempel auf der Rückseite: R H (graviert), 800 Geschenk von Laurence und Barlach Heuer, Paris oder Vorbesitzer: Commeter, Galerie, Hamburg ??	116	2023-11-28 14:04:48.348447	2023-11-28 14:04:48.348447
74	Geschenk von Frau Agnes Holthusen, Hamburg	117	2023-11-28 14:04:48.395877	2023-11-28 14:04:48.395877
75	Geschenk von Laurence und Barlach Heuer, Paris	118	2023-11-28 14:04:48.438496	2023-11-28 14:04:48.438496
76	Technik in Art der Laubsägearbeiten. Die Scheibe ist glatt poliert. In der Mitte Durchbruch; auf der Innenfläche oben ganzförmiger (verdeckter) Aufhänger. Vorbesitzer: Commeter, Galerie, Hamburg - Lgb. J.B.G. 766	119	2023-11-28 14:04:48.51922	2023-11-28 14:04:48.51922
77	Erworben mit Mitteln der Campe'schen Historischen Kunststiftung Von Alfred Heuer um 1930 vom Künstler selbst erworben. Ergänzung	120	2023-11-28 14:04:48.565457	2023-11-28 14:04:48.565457
78	Geschenk des Künstlers und seiner Frau zur Eröffnung der Modernen Abteilung	121	2023-11-28 14:04:48.619257	2023-11-28 14:04:48.619257
79	Geschenk des Künstlers und seiner Frau zur Eröffnung der Modernen Abteilung	122	2023-11-28 14:04:48.659804	2023-11-28 14:04:48.659804
80	Geschenk von Frau Sidi Heckel, Hemmenhofen Ausstellung London:  International exhibition of modern jewellery 1890-1961	123	2023-11-28 14:04:48.699129	2023-11-28 14:04:48.699129
81	Geschenk von Frau Sidi Heckel, Hemmenhofen	124	2023-11-28 14:04:48.743832	2023-11-28 14:04:48.743832
82	Vom Künstler für seine Frau angefertigt. Geschenk von Frau Sidi Heckel, Hemmenhofen	125	2023-11-28 14:04:48.783884	2023-11-28 14:04:48.783884
89	Broschierung durch Juwelier angelötet Für Johanna Schiefler gefertigt	132	2023-11-28 14:04:48.993839	2023-11-28 14:04:48.993839
90	In Form (?) gedrückt/ gepresst, von hinten verkittet und dann versilbert (?)  Geschenk von Frau Angelika Spielmann, Hamburg	134	2023-11-28 14:04:49.108823	2023-11-28 14:04:49.108823
91	Geschenk von Frau Angelika Spielmann, Hamburg	135	2023-11-28 14:04:49.174272	2023-11-28 14:04:49.174272
92	"Items shown were intended to be cast in series, but this was never done."	136	2023-11-28 14:04:49.216344	2023-11-28 14:04:49.216344
93	"Items shown were intended to be cast in series, but this was never done."	137	2023-11-28 14:04:49.295905	2023-11-28 14:04:49.295905
94	VERSCHOLLENSignatur auf der Vorderseite u.l.: A.Illies; auf der Rückseite: Hamburger Münze, sowie 0,800Geschenk von Herrn Dir. Dr. Justus Brinckmann, Hamburg	138	2023-11-28 14:04:49.371535	2023-11-28 14:04:49.371535
95	Ausstellung London:  International exhibition of modern jewellery 1890-1961 Ausgestellt auf der Retrospektive Kirchner im Museum of Art, North Carolina, Raleigh NC, USA	139	2023-11-28 14:04:49.391751	2023-11-28 14:04:49.391751
96	posthum? In Hertogenbusch  angegebene Ausführung: Jean-Paul Ledeur für T.A.T. Arts & Stéphane Klein B „Venus bleue“, o.J., 54 x 25,5cm, blauer Torso aus Polyester  (Im WVZ sonst kein vergleichbares Objekt)	140	2023-11-28 14:04:49.415986	2023-11-28 14:04:49.415986
97	Lagenstein nicht voll ausgereizt, Tiefe der Schnitte sowie Motiv --- Fassung sehr modern, erinnert fast an 70er Vorbesitzer: Brockstedt, Galerie, Hamburg Ankauf - 2.4.1926 (Stein) & 10.6.1926 (Fassung),-Vorbesitzer: Kogan, Moissey, Paris & Stüber, Otto, Hamburg  	141	2023-11-28 14:04:49.466908	2023-11-28 14:04:49.466908
98	Ankauf - 2.4.1926 (Stein) & 6.5.1926 (Fassung),-Vorbesitzer: Kogan, Moissey, Paris & Schmidt-Rottluff, Karl, Berlin	142	2023-11-28 14:04:49.522562	2023-11-28 14:04:49.522562
99	Ankauf - 2.4.1926 (Stein) & 6.5.1926 (Fassung),-Vorbesitzer: Kogan, Moissey, Paris & Schmidt-Rottluff, Karl, BerlinDer Stein (vgl. 1926.70) ist von Schmidt-Rottluff im Auftrage des Museums 1926 gefaßt.	143	2023-11-28 14:04:49.570369	2023-11-28 14:04:49.570369
100	doppelt verbödet, Krappen angedeutet als Entourage. Hinten Signaturstempel, eigenartig verborgen unter der Nadel  2.4.1926 (Stein) & 10.6.1926 (Ring),-Vorbesitzer: Kogan, Moissey, Paris & Stüber, Otto, Hamburg	144	2023-11-28 14:04:49.62178	2023-11-28 14:04:49.62178
101	2.4.1926 (Stein) & 10.6.1926 (Ring),-Vorbesitzer: Kogan, Moissey, Paris & Stüber, Otto, Hamburg	145	2023-11-28 14:04:49.68482	2023-11-28 14:04:49.68482
102	Stempel auf dem Verschluss: 800 (-> Silber, vergoldet?)Mit Mitteln der Justus Brinckmann Gesellschaft e.V. erworbenVorbesitzer: Kranz, Charlotte und Dr. Peter, Pretzfeld	147	2023-11-28 14:04:49.789097	2023-11-28 14:04:49.789097
103	Mit Mitteln der Justus Brinckmann Gesellschaft e.V. erworben Vorbesitzer: Kranz, Charlotte und Dr. Peter, Pretzfeld	148	2023-11-28 14:04:49.83084	2023-11-28 14:04:49.83084
104	Geschenk von Herrn Dr. Peter Kranz, Pretzfeld dopellte Broschierung mit Schubhakenvershclüssen, etwas klemmig. Die einzelnen Stifte sind hohl gearbeitet, ttrotzdem sicher 20-25g	149	2023-11-28 14:04:49.880986	2023-11-28 14:04:49.880986
105	Stiftung von Frau Margarete Mohrmann, Hamburg	152	2023-11-28 14:04:50.018384	2023-11-28 14:04:50.018384
106	Ausstellung London:  International exhibition of modern jewellery 1890-1961	153	2023-11-28 14:04:50.062936	2023-11-28 14:04:50.062936
107	Ausstellung London: International exhibition of modern jewellery 1890-1961	154	2023-11-28 14:04:50.08231	2023-11-28 14:04:50.08231
108	zugeschrieben, ohne Monogramm 	156	2023-11-28 14:04:50.183094	2023-11-28 14:04:50.183094
109	Ausstellung London:  International exhibition of modern jewellery 1890-1961	161	2023-11-28 14:04:50.396353	2023-11-28 14:04:50.396353
110	„Édition limitée produite par le Fonds de soutien juif américain” in Jerusalem gefertigt	163	2023-11-28 14:04:50.458424	2023-11-28 14:04:50.458424
111	stamped PPC, 24, 750 'Valiant and watchful, the cockerel is traditionally seen as the king of the farmyard and the herald of a new day, and was associated with the sun and the sun god Apollo in antiquity. From the Romanesque period onwards, it was placed on church towers to greet the dawn and call worshipers to morning prayers. Owing to its Latin name Gallus, it also became the emblem of the land of Gaul, and later of the king of France and subsequently France itself, a roll it still holds today. This is the proud and noble bird that Jean Lurçat's simmering design alludes to.' – Patrick Mauriès and Évelyne Possémé, Fauna: The Art of Jewelry, Thames & Hudson, London, 2017, pp. 92-93.	164	2023-11-28 14:04:50.509383	2023-11-28 14:04:50.509383
112	signed, stamped PPCo., 1 Jean Lurçat, (1892-1966) Lurçat was born in Vosges, France, and became a noted tapestry, graphics, and ceramics designer. His tapestries and designs were filled with mythological creatures – including his famous mermaids – and foliage. In 1959 his first experiments in jewelry were collaborations with Francois Hugo. By 1960 the company, Patek Philippe approached him to collaborate on designs with their chief jeweler, and fellow artist Gilbert Albert.  The pieces they executed together for the firm Patek Philippe were featured in Graham Hughes’ 1961 The International Exhibition of Modern Jewellery, 1890 – 1961 under the direction of The Worshipful Company of Goldsmiths and the Victoria and Albert Museum, which firmly wrote his name in the annals of modern European jewelry designers.	165	2023-11-28 14:04:50.562805	2023-11-28 14:04:50.562805
113	hochwertige, massive Ausführung, allerdings kein Tragekomfort durch Verbödung o.ä., massiver Schubhakenverschluss Ankauf 19.08.1969, Vorbesitzer: Pauli, Galerie, Lausanne	166	2023-11-28 14:04:50.620794	2023-11-28 14:04:50.620794
114	Face, pearl and coloured gold	167	2023-11-28 14:04:50.676258	2023-11-28 14:04:50.676258
115	Face, pierced gold	168	2023-11-28 14:04:50.780543	2023-11-28 14:04:50.780543
116	Leaves, coloured gold	169	2023-11-28 14:04:50.80358	2023-11-28 14:04:50.80358
117	Leaves, wood and coloured gold	170	2023-11-28 14:04:50.869648	2023-11-28 14:04:50.869648
118	Figure and coloured gold	171	2023-11-28 14:04:50.892499	2023-11-28 14:04:50.892499
119	Bird, coloured gold	172	2023-11-28 14:04:50.914144	2023-11-28 14:04:50.914144
120	Lurçat, Jean France b. Bruyères (Vosges) 1892 Painter, tapestry designer, graphic artist Studied Paris (Academie Colarossi). First exhibition 1920 Zurich, Geneva, Berne and Paris. 1927 first major tapestries designed. From 1933 tapestries regularly designed for Aubusson and Gobelin, which have had widest international showing. 1959 first experiments in jewellery design (in collaboration with Francois Hugo) and approaches by Patek Philippe for design of models now exhibited for the first time and released in a limited edition. Said of his collaboration with Gilbert Albert 'Nous avons joué à quatre mains. See Patek Philippe Dort (Patek Philippe)  sind unter der Nr. 618–628 Objekte von Gilbert Albert angegeben (Schweizer Juwelier) sowie weitere "Designed exclusively for Patek Philippe by Jean Lurçat 1960-61 and now exhibited for the first time. Lent by Patek Philippe	173	2023-11-28 14:04:50.94084	2023-11-28 14:04:50.94084
121	Wohl für die Ehefrau gefertigt	177	2023-11-28 14:04:51.078516	2023-11-28 14:04:51.078516
122	Signiert	178	2023-11-28 14:04:51.13103	2023-11-28 14:04:51.13103
123	Ausstellung London:  International exhibition of modern jewellery 1890-1961 "Reiter mit Pferd nach links. Stahlmatritze der Jahresgabe in Goldblech eingeschlagen. Zweifache Ausführung als private Arbeit des Künstlers	181	2023-11-28 14:04:51.276703	2023-11-28 14:04:51.276703
124	Ausstellung London:  International exhibition of modern jewellery 1890-1961	182	2023-11-28 14:04:51.328144	2023-11-28 14:04:51.328144
125	Ausstellung London:  International exhibition of modern jewellery 1890-1961	183	2023-11-28 14:04:51.346763	2023-11-28 14:04:51.346763
126	Ausstellung London:  International exhibition of modern jewellery 1890-1961	184	2023-11-28 14:04:51.366205	2023-11-28 14:04:51.366205
127	Ausstellung London:  International exhibition of modern jewellery 1890-1961	185	2023-11-28 14:04:51.389103	2023-11-28 14:04:51.389103
128	Insg. Min. 13 Objekte, siehe ->	186	2023-11-28 14:04:51.412813	2023-11-28 14:04:51.412813
129	Der Pelzring wurde laut DB in zwei Versionen hergestellt: mit kurzem und mit langem Pelzbesatz Der Ring sollte auf der Einladungskarte für die Ausstellung „Oh! A show. Meret Oppenheim“ in der Eugenia Cucalón Gallery in NY, 15.4.-17.5.1979 an die Stelle des Auges montiert werden, wurde aber nicht durchgeführt 	187	2023-11-28 14:04:51.442822	2023-11-28 14:04:51.442822
130	„Nach zwei kleinen Objekten von 1940-45 von M.O. ausgeführt“ Maria und Bernhard Hahnloser, Sonnenbergstr. 9, 3013 Bern Tel. 031 322 34 54(haben auch D1c, G29a, K18, Y283)	189	2023-11-28 14:04:51.53452	2023-11-28 14:04:51.53452
131	Posthum	190	2023-11-28 14:04:51.579814	2023-11-28 14:04:51.579814
132	Posthum	192	2023-11-28 14:04:51.664565	2023-11-28 14:04:51.664565
133	Laut Website: Meret Oppenheim hat die Knochenkette mit Mund 1935-36 entworfen und in Auftrag gegeben (nicht im WV)	193	2023-11-28 14:04:51.708214	2023-11-28 14:04:51.708214
134	Nur Idee von MO; Skizze nicht von ihr	194	2023-11-28 14:04:51.752849	2023-11-28 14:04:51.752849
135	Vogelnest mit emailliertem Ei	195	2023-11-28 14:04:51.797096	2023-11-28 14:04:51.797096
136	Annotation: Band transparent Kunstharz, Metallkette	196	2023-11-28 14:04:51.843466	2023-11-28 14:04:51.843466
137	Montebello hat angefragt, um Kette zu fertigen und MO hat diese dazu ermächtigt. Brief dazu bei Erbin von Montebello (Kopie im Archiv Bürgi)„Entwurf“ eigentlich Gemälde, im WV Curiger/Bürgi, S. 141, Nr. A11	197	2023-11-28 14:04:51.882429	2023-11-28 14:04:51.882429
138	Website sagt: Motiv geht auf Titelblatt einer Mappe mit sechs Lithografien "Parapapillonneries" (1975) (WV Curiger/Bürgi S.215, Y299) zurück. Im Jahr 1979 wurde es auch als silberfarbenes Objekt mit einem roten Steinauge hergestellt. (nicht im WV!)	198	2023-11-28 14:04:51.92291	2023-11-28 14:04:51.92291
139	Angeblich zwei Entwurfskizzen aus den 1930er Jahren (nicht im WV)	199	2023-11-28 14:04:51.978663	2023-11-28 14:04:51.978663
140	Zu darüber gehörig?	200	2023-11-28 14:04:52.033286	2023-11-28 14:04:52.033286
141	Posthum ausgeführt	201	2023-11-28 14:04:52.076596	2023-11-28 14:04:52.076596
142	Annotation: „Es war für einen Wettbewerb. Weil ich fürchtete, meine Zeichnungen seien nicht „schön“ genug, liess ich sie von einem Grafiker zeichnen!“	202	2023-11-28 14:04:52.116206	2023-11-28 14:04:52.116206
143	Frauengestalt 	203	2023-11-28 14:04:52.162797	2023-11-28 14:04:52.162797
144	Annotation: „Habe es ausgeführt. Der „Fisch“ ist die Zange eines Hirschkäfers“	205	2023-11-28 14:04:52.2371	2023-11-28 14:04:52.2371
145	Ungarischer Künstler, Bauhausnah, wird im MKG als Designer geführt Gestiftet anläßlich der Ausstellung "Naum Slutzky" im Museum für Kunst und Gewerbe Hamburg vom 11.5. - 2.7. 1995. Schenkung von Herrn Walter Schnepel, Bremen	207	2023-11-28 14:04:52.319911	2023-11-28 14:04:52.319911
146	entstanden in der Werkstatt Berlin, Kurfürstenstr. 126 zwei Stücke baugleich, einer glatt, einer gedreht  Provenienz:Ehepaar Dr. Georg und Hilde Denzer (Augenarzt in Berlin, befreundet mit HMP), lt. Schreiben von Hilde Denzer vom 25.09.1982 entstanden aus dem Gold einer Uhrkette  von der Großmutter väterlichseits, 1995 Geschenk an Julia Pechstein	208	2023-11-28 14:04:52.369555	2023-11-28 14:04:52.369555
147	entstanden in der Werkstatt Berlin, Kurfürstenstr. 126 Provenienz:  Ulla Märksch (erste Frau von Frank Pechstein), Erbe an Dunja Pechstein (Tochter von Alexander Pechstein, erster Sohn von Frank Pechstein), Boston	209	2023-11-28 14:04:52.419147	2023-11-28 14:04:52.419147
148	entstanden in der Werkstatt Berlin, Kurfürstenstr. 126 Provenienz:Ehepaar Dr. Georg und Hilde Denzer (Augenarzt in Berlin, befreundet mit HMP), 1995 Geschenk an Julia Pechstein	210	2023-11-28 14:04:52.471238	2023-11-28 14:04:52.471238
149	Provenienz:Gina (Ingeborg) Gräfin Luckner (Ehefrau von Heinrich Graf Luckner)Rückkauf durch Frank Pechstein 	211	2023-11-28 14:04:52.520609	2023-11-28 14:04:52.520609
150	Provenienz: Nachlass Mica Plietzsch (Ehefrau von Eduard Plietzsch)Frank Pechstein (Mica Plitzsch ist Patentante), via Erbschaft 	212	2023-11-28 14:04:52.573815	2023-11-28 14:04:52.573815
151	Kette nicht von Max Pechstein und nicht mehr vorhanden; Fassung nicht mehr vorhanden	213	2023-11-28 14:04:52.625869	2023-11-28 14:04:52.625869
152	Info dazu „Sylvester 1939 aus einer alten Uhr und Armband nach einer Zeichnung von Graf Luckner geschmiedet von Max Pechstein“, Privatbesitz Berlin	217	2023-11-28 14:04:52.711727	2023-11-28 14:04:52.711727
153	Ausstellung London:  International exhibition of modern jewellery 1890-1961	218	2023-11-28 14:04:52.731571	2023-11-28 14:04:52.731571
154	Prägestempel der Firma Madoura hinten (Foto) Vorbesitzer: Georges und Suzanne Ramié, Vallauris  	219	2023-11-28 14:04:52.781179	2023-11-28 14:04:52.781179
155	Ausführung um 1967	220	2023-11-28 14:04:52.839669	2023-11-28 14:04:52.839669
156	Signiert	223	2023-11-28 14:04:52.971677	2023-11-28 14:04:52.971677
157	Signiert	224	2023-11-28 14:04:53.021099	2023-11-28 14:04:53.021099
158	Signiert	225	2023-11-28 14:04:53.069553	2023-11-28 14:04:53.069553
159	Hergestellt durch François Hugo	226	2023-11-28 14:04:53.123056	2023-11-28 14:04:53.123056
160	Signiert	227	2023-11-28 14:04:53.172864	2023-11-28 14:04:53.172864
161	Signiert	229	2023-11-28 14:04:53.262045	2023-11-28 14:04:53.262045
162	Pomodoro Brothers Italy: Arnaldo b. Marciano 1926; Giorgio b. Orciano 1930 Arnaldo studied architecture as well as sculpture and stage design. Giorgio painter and graphic artist as well as sculptor. First exhibitions as sculptors both 1954 For 12 years worked in jewellery, mainly in gold, both designing and executing, as a sideline to sculpture. Using skilled assistants, work has been widely exhibited. Encouraged some leading painters, sculptors and architects to design occasional pieces. Organised amongst others an exhibition of jewellery 1960 at Neiman Marcus, in Dallas, Texas	230	2023-11-28 14:04:53.315733	2023-11-28 14:04:53.315733
163	Pomodoro Brothers Italy: Arnaldo b. Marciano 1926; Giorgio b. Orciano 1930 Arnaldo studied architecture as well as sculpture and stage design. Giorgio painter and graphic artist as well as sculptor. First exhibitions as sculptors both 1954 For 12 years worked in jewellery, mainly in gold, both designing and executing, as a sideline to sculpture. Using skilled assistants, work has been widely exhibited. Encouraged some leading painters, sculptors and architects to design occasional pieces. Organised amongst others an exhibition of jewellery 1960 at Neiman Marcus, in Dallas, Texas	231	2023-11-28 14:04:53.375967	2023-11-28 14:04:53.375967
164	Édition Giuseppe Fusari 	232	2023-11-28 14:04:53.450989	2023-11-28 14:04:53.450989
165	Künstlersignatur, 61 graviert	233	2023-11-28 14:04:53.497146	2023-11-28 14:04:53.497146
166	Nach einer Zeichnung des Künstlers ausgeführt von Karberg, Hamburg ( dem Vater des Grapikers Bruno Karberg). Geschenk des Künstlers und seiner Frau in Form gedrückt / Geprägt?! Auflage? Stempelung rückseitig, R im Kreis	237	2023-11-28 14:04:53.717913	2023-11-28 14:04:53.717913
167	Nach einer Zeichnung des Künstlers ausgeführt von Karberg, Hamburg ( dem Vater des Grapikers Bruno Karberg). Geschenk des Künstlers und seiner Frau	238	2023-11-28 14:04:53.767968	2023-11-28 14:04:53.767968
168	Vom Künstler für seine Frau geschnitzt. Es existieren einige Messing-Güsse nach Holz-Original. Mit weißer Textil-Kordel. Geschenk des Künstlers und seiner Frau	239	2023-11-28 14:04:53.820657	2023-11-28 14:04:53.820657
169	Einfache Verstiftung, bewegt sich auch nicht flüssig Für Louise Schiefler, hinten auch mit "LS" beritzt sowie "12" und "16" + Prägestempel Schmidt-Rottluff Geschenk des Künstlers	240	2023-11-28 14:04:53.870801	2023-11-28 14:04:53.870801
170	Vorbesitzerin Katharina Hennek, Berlin. Wohl Anfang / Mitte 50er entstanden	241	2023-11-28 14:04:53.935549	2023-11-28 14:04:53.935549
171	"…der Schmuck aus dem Nachlass wurde testamentarisch explizit der sogenannten Pflegetochter vererbt, und befindet sich deshalb noch in Privatbesitz." Christiane Remm, Mail 1.6.22 sowie E-Mail am 15.6.	242	2023-11-28 14:04:53.988534	2023-11-28 14:04:53.988534
172	Ankauf - 2.4.1926 (Stein) & 6.5.1926 (Fassung),-Vorbesitzer: Kogan, Moissey, Paris & Schmidt-Rottluff, Karl, Berlin	243	2023-11-28 14:04:54.029428	2023-11-28 14:04:54.029428
173	Ankauf - 2.4.1926 (Stein) & 6.5.1926 (Fassung),-Vorbesitzer: Kogan, Moissey, Paris & Schmidt-Rottluff, Karl, BerlinDer Stein (vgl. 1926.70) ist von Schmidt-Rottluff im Auftrage des Museums 1926 gefaßt.	244	2023-11-28 14:04:54.074882	2023-11-28 14:04:54.074882
174	doppelt verbödet, Krappen angedeutet als Entourage. Hinten Signaturstempel, eigenartig verborgen unter der Nadel  2.4.1926 (Stein) & 10.6.1926 (Ring),-Vorbesitzer: Kogan, Moissey, Paris & Stüber, Otto, Hamburg	245	2023-11-28 14:04:54.127081	2023-11-28 14:04:54.127081
175	grobe Schnitzerei mit hinten angebrachter Aushöhlung, wohl damit er nicht zu schwer wird? Ankauf - 03.01.1961,-Vorbesitzer: Schmidt-Rottluff, Karl, Berlin	246	2023-11-28 14:04:54.192111	2023-11-28 14:04:54.192111
176	Monogramm "ESR" (Emy Schmidt-Rottluff)	247	2023-11-28 14:04:54.253865	2023-11-28 14:04:54.253865
177	Oftmals Geschenke für bestimmte Personen Vgl. S. 61 Monograf. Ausstellung HH Kunstgewerbe-M., 1925, mit Obj.	248	2023-11-28 14:04:54.29221	2023-11-28 14:04:54.29221
178	Signaturstempel	249	2023-11-28 14:04:54.312504	2023-11-28 14:04:54.312504
179	Unsigniert?	250	2023-11-28 14:04:54.356234	2023-11-28 14:04:54.356234
180	Signaturstempel  Wohl auch in Ausst.? Brücke-Museum, Nr. 167	252	2023-11-28 14:04:54.445371	2023-11-28 14:04:54.445371
181	In Dangast gefertigt, Signaturstempel	253	2023-11-28 14:04:54.460364	2023-11-28 14:04:54.460364
182	In Dangast gefertigt, Signaturstempel	254	2023-11-28 14:04:54.498996	2023-11-28 14:04:54.498996
183	Unsigniert	255	2023-11-28 14:04:54.538324	2023-11-28 14:04:54.538324
184	In Dangast gefertigt, Signaturstempel	256	2023-11-28 14:04:54.581165	2023-11-28 14:04:54.581165
185	Signaturstempel	257	2023-11-28 14:04:54.621768	2023-11-28 14:04:54.621768
186	Signaturstempel	258	2023-11-28 14:04:54.667969	2023-11-28 14:04:54.667969
187	Signaturstempel	259	2023-11-28 14:04:54.712794	2023-11-28 14:04:54.712794
188	unsigniert, wohl zum Eigengebrauch!	260	2023-11-28 14:04:54.754141	2023-11-28 14:04:54.754141
189	Signaturstempel	261	2023-11-28 14:04:54.792974	2023-11-28 14:04:54.792974
190	Signaturstempel	262	2023-11-28 14:04:54.832108	2023-11-28 14:04:54.832108
191	Für sich selbst gefertigt (wie auch Wietek, 2001, 407 und 486) – daher keine Signatur?	263	2023-11-28 14:04:54.871861	2023-11-28 14:04:54.871861
192	3 Objekte, 6a Schlange, die anderen beiden weibliche Aktdarst.  Brief von Frau Stegemann vom 12.72 vom Künstler zu Weihnachten 1920 seiner Frau geschenkt.Geschenk von Frau Ingeborg Stegemann	266	2023-11-28 14:04:55.022666	2023-11-28 14:04:55.022666
193	Signiert mit GEM, 800 und Makers Mark "a pair of large kinetic earrings in silver with silver-gilt bi-colored moving rods; executed by GEM Montebello for an edition of unknown size; omega clip-ons with supportive back-of-ear hooks" und"Jesús Rafael Soto designed these 'Penetrable' earrings concurrently as he was creating large-scale works enabling people to physically enter the piece and observe how the object and body interact. A blend of geometric abstraction, Minimalist sculpture, and playground, his simple grids of colorful PVC tubing were usually suspended from free-standing frames and often placed outside. Soto always considered them ephemeral, and only a handful have survived the inevitable wear and tear. These 'Penetrable' earrings executed by GEM are a good example of how GEM Montebello created unconventional designs by well-known artists at reasonable prices."	270	2023-11-28 14:04:55.22227	2023-11-28 14:04:55.22227
194	Signiert und mit Herstellerstempel und "750" versehen "This Afro for Masenza-Roma Collar was designed by Afro Basaldella and executed by the house of Mario Masenza. Masenza, born into a family of jewelers who had supplied the Italian Royal family since 1924, thought post-war art in Italy was exciting. As an art collector himself, Masenza recruited his favorite artists to design jewelry. Because all the jewelry was made in the workshop of Masenza, it developed a certain recognizable look and the bright yellow-gold color and hand of his craftsmen became a style unto itself."	271	2023-11-28 14:04:55.278429	2023-11-28 14:04:55.278429
195	Gestempelt mit Masenza-Roma  und mit "750", aber nicht signiert. Vermutlich nur Anhänger durch Afro designed. "Of a similar Afro/Masenza necklace, the Cincinati Art Museum writes: ‘At the time this necklace was designed, Afro’s paintings were largely abstract and he was highly influenced by Swiss painter Paul Klee and by Armenian American Arshile Gorky. This necklace expresses Afro’s interest in the primitive figural form. Designed by Afro, but made by Masenza’s workshop, deep-set cabochon stones and the dull gold textural finish are contrasted with diamond chips that form the eyes of the creature-like pendants.’ — Cynthia Amnéus, Cameron Silver, and Adam MacPhàrlain, Simply Brilliant: Artist-Jewelers of the 1960s and 1970s, D. Giles, Lewes, UK, 2020, p. 81"	272	2023-11-28 14:04:55.334423	2023-11-28 14:04:55.334423
196	Signiert, mit Herstellerstempel	273	2023-11-28 14:04:55.39294	2023-11-28 14:04:55.39294
197	Signiert, mit Herstellerstempel consisting of six free-form repoussé decorated links of raised lines and abstract shapes	274	2023-11-28 14:04:55.451666	2023-11-28 14:04:55.451666
198	signed and dated Arnaldo Pomodoro ‘60, G341 from the Archivio Arnaldo Pomodoro Spille' (Play) Brooch is an early sculptural brooch by Italian artist  Arnaldo Pomodoro. The hand-crafted pin with smooth finished  white gold ‘beam’ supporting playful yellow and white gold  rods is stationary but evokes kinetic energy. Pomodoro said:  ‘The sculpture must be projected into space to remove, as  far as possible, the weight from the material and the work’s  fixed base. I have always tried to express movement as an  intensification of a condition of imbalance to create a striking  contrast to any stasis or any reached or predictable order.’ (Ada  Masoero, Arnaldo Pomodoro, Skira editore, Milan, 2017, p. 199)	275	2023-11-28 14:04:55.510244	2023-11-28 14:04:55.510244
199	Signed Arnaldo Pomodoro ‘62, this work is recorded in the Archivio Arnaldo Pomodoro, Milan, under no. G/62/20 Pomodoro’s eclectic sense of texture and contrast produced this abstracted cuttlefish-bone-cast brooch in 1962. He explained that the method, traditionally used by goldsmiths to obtain rough forms, allowed him to exploit the linearity of natural bone formation and infuse his own creativity with original markings and molten forms. This pendant came originally from the collection of renowned Belgian collector and gallerist Maurice d’Arquian and has been exhibited and published as a major example of Pomodoro’s most refined work.	276	2023-11-28 14:04:55.566731	2023-11-28 14:04:55.566731
200	In 1948, Torun began making what she called 'anti-status’ jewelry out of twisted copper wire with embedded crystals and stones. This Unique Wood Necklace demonstrates her radical approach: rather than precious stones, she preferred basic or rough materials such as rattan, wood, beach pebbles, granite, rock crystal, and moonstone, uniting them to create original and subversive designs. A similar wooden example is in the collection of the NationalMuseum Sweden (NMK 44/2012).	277	2023-11-28 14:04:55.638767	2023-11-28 14:04:55.638767
201	1 Exemplar für Julius Bissier 	278	2023-11-28 14:04:55.694955	2023-11-28 14:04:55.694955
202	Aktfigürchen zwischen Turmalinen an Kettchen Photo in Bampis Album; Bampis "Silber- und Goldarbeiten"-Liste Nr. 2 (Nachlass)	279	2023-11-28 14:04:55.741569	2023-11-28 14:04:55.741569
203	Kniender Akt in sphärischem Viereck, getrieben und durchbrochen, Karneolblättchen und -tropfen in Tütenfassung Photo in Bampis Album; Bampis "Silber- und Goldarbeiten"-Liste Nr. 5 (Nachlass)	280	2023-11-28 14:04:55.76276	2023-11-28 14:04:55.76276
204	Brillant, von Blättern umkränzt Photo in Bampis Album; Bampis "Silber- und Goldarbeiten"-Liste Nr. 6 (Nachlass)	281	2023-11-28 14:04:55.782173	2023-11-28 14:04:55.782173
205	Dreieck an Längsrechteck mit Karabinerhaken Photo in Bampis Album; Bampis "Silber- und Goldarbeiten"-Liste Nr. 28 oder 35 	282	2023-11-28 14:04:55.801379	2023-11-28 14:04:55.801379
206	Dreieckig, Sitzender Akt zwischen Pflanzen Photo in Bampis Album	283	2023-11-28 14:04:55.821852	2023-11-28 14:04:55.821852
207	Mandelform an Aufhängerschlaufe Photo in Bampis Album; Bampis "Silber- und Goldarbeiten"-Liste Nr. 9 oder 48 	284	2023-11-28 14:04:55.841573	2023-11-28 14:04:55.841573
208	Mandelform mit tanzendem Akt Photo in Bampis Album; Bampis "Silber- und Goldarbeiten"-Liste Nr. 49 	285	2023-11-28 14:04:55.861062	2023-11-28 14:04:55.861062
209	Bandring mit tanzenden Aktfiguren Photo in Bampis Album; Bampis "Silber- und Goldarbeiten"-Liste Nr. 55.	286	2023-11-28 14:04:55.880901	2023-11-28 14:04:55.880901
210	wohl wie anderer Friesring von 1923 Photo in Bampis Album; Bampis "Silber- und Goldarbeiten"-Liste Nr. 56.	287	2023-11-28 14:04:55.95206	2023-11-28 14:04:55.95206
211	Dreipaßform mit Reh im Dickicht Photo in Bampis Album; Bampis "Silber- und Goldarbeiten"-Liste Nr. 47	288	2023-11-28 14:04:55.967537	2023-11-28 14:04:55.967537
212	Florale Motive Photo in Bampis Album; Bampis "Silber- und Goldarbeiten"-Liste Nr. 65	289	2023-11-28 14:04:55.986401	2023-11-28 14:04:55.986401
213	Die ungefähre Zeitangabe 1928-32 stammt aus der Datenbank Köln, im Bestandskatalog von 1985 ist der Ring als von 1924 angegeben.  Bampis "Silber- und Goldarbeiten"-Liste Nr. 74.	290	2023-11-28 14:04:56.006331	2023-11-28 14:04:56.006331
214	Zusammenarbeit zwischen Tochter und Vater. Sonja Mataré war ausgebildete Goldschmiedin Gürzenich = Festhalle in Köln	293	2023-11-28 14:04:56.128362	2023-11-28 14:04:56.128362
215	"Aus Achtkantstab geschnittene, gehämmerte und durchbohrte Glieder. Schraubverschluss"Unbezeichnet Im WVZ zusammen mit Kette aufgeführt	294	2023-11-28 14:04:56.175318	2023-11-28 14:04:56.175318
216	"Aus Achtkantstab geschnittene, gehämmerte und durchbohrte Glieder. Schraubverschluss"Unbezeichnet Im WVZ zusammen mit Armband aufgeführt	295	2023-11-28 14:04:56.22162	2023-11-28 14:04:56.22162
217	Im Werkverzeichnis wird Sonja Mataré als Herstellerin nicht benannt. Der Armreif ist auf 1944 datiert. Eine Herstellung durch Sonja Mataré erscheint für mich nicht stimmig, da diese zum Zeitpunkt erst 15 bzw. 18 Jahre alt war. Die Initialen "hM" sollen für Hanna Mataré, also für die Frau des Künstlers stehen.  Unbezeichnet	298	2023-11-28 14:04:56.345685	2023-11-28 14:04:56.345685
218	"Querovale Brosche mit graviertem Pferd und zwei Steinen in Cabochon-Schliff"Unbezeichnet	300	2023-11-28 14:04:56.433015	2023-11-28 14:04:56.433015
219	"Geschwungen-eckige Form mit einem liegenden Pferd in einem querovalen Medaillon"Unbezeichnet	301	2023-11-28 14:04:56.493138	2023-11-28 14:04:56.493138
\.


--
-- Data for Name: items; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.items (id, artist_id, manufacturer_id, incomplete, titel, size, material, made_at, edition, created_at, updated_at, category) FROM stdin;
1	1	\N	\N	Titel	Größe	Material	Jahr	Auflage	2023-11-28 14:04:42.981838	2023-11-28 14:04:42.981838	Bezeichnung
2	2	\N	\N	 	 	Silber	1952	 	2023-11-28 14:04:43.066419	2023-11-28 14:04:43.066419	Brosche
3	2	\N	\N	 	 	Bronze, vergoldet	1961	 	2023-11-28 14:04:43.087794	2023-11-28 14:04:43.087794	Brosche
4	2	\N	\N	 	 	Silber, Kieselsteinbesatz	1960	 	2023-11-28 14:04:43.109335	2023-11-28 14:04:43.17665	Brosche
5	2	\N	\N	 	 	Gold	1965	6	2023-11-28 14:04:43.187847	2023-11-28 14:04:43.215948	Anhänger
6	2	\N	\N	 	 	Silber, mit Steinbesatz (Kiesel?) 	1960 (circa)	100	2023-11-28 14:04:43.227357	2023-11-28 14:04:43.411288	Brosche
7	2	\N	\N	Herz (Cœur)	6,5 x 4,5cm	Gold (23kt)	1967	2	2023-11-28 14:04:43.426013	2023-11-28 14:04:43.481655	Anhänger/ Brosche
8	2	\N	\N	 	 	Silber	1936	 	2023-11-28 14:04:43.491988	2023-11-28 14:04:43.491988	Ring 
9	2	\N	\N	Pik (Pique)	7,2 x 4,8cm	Gold (23kt)	1967 1965 D.K.	2	2023-11-28 14:04:43.522158	2023-11-28 14:04:43.55255	Anhänger/ Brosche
10	2	\N	\N	Tête de Bouteille et Moustache Necklace	Anhänger 5,5x7,7cm, Kettenlänge 49cm	Silber (925er)	1960, circa	19/100	2023-11-28 14:04:43.562314	2023-11-28 14:04:43.60763	Kette
11	2	\N	\N	Tête de bouteille et moustache	42cm	Silber 	1960	100	2023-11-28 14:04:43.61882	2023-11-28 14:04:43.657068	Kette
12	3	\N	\N	 	5,5 x 4cm	Gold, Rubine, Diamanten und Smaragde	1950	E	2023-11-28 14:04:43.680642	2023-11-28 14:04:43.713668	Ohrringe
13	3	\N	\N	 	 	Gold	1958	 	2023-11-28 14:04:43.724081	2023-11-28 14:04:43.779103	Armreif
14	4	\N	\N	 	3 x 2,1cm	Weißgold, Chrysopasbesatz, Hämatitbesatz	1960	 	2023-11-28 14:04:43.813638	2023-11-28 14:04:43.861281	Ring
15	4	\N	\N	 	36,2cm	Gold	1958	 	2023-11-28 14:04:43.871634	2023-11-28 14:04:43.917994	Kette
16	4	\N	\N	 	Durchmesser der Kugeln? 2cm	Edelstahl, Kugeln aus Saphir- und Rubinsynthesen	1954	 	2023-11-28 14:04:43.928001	2023-11-28 14:04:43.996315	Halsreif
17	5	\N	\N	 	5 x 10,5cm	Silber, fossile Schnecken als Hörner	1960er	 	2023-11-28 14:04:44.018075	2023-11-28 14:04:44.05211	Gürtelschließe
18	5	\N	\N	 	4,3cm Höhe	Gold, Draht	1957	 	2023-11-28 14:04:44.061551	2023-11-28 14:04:44.117892	Halsreif
19	6	\N	\N	 	5,1 x 4,6 cm	Silber, Porzellan	1920er Jahre	 	2023-11-28 14:04:44.149931	2023-11-28 14:04:44.194374	Anhänger (mit Kette)
20	6	\N	\N	 	59cm L, 4,3cm D	Silber, Porzellan	1920er	 	2023-11-28 14:04:44.212991	2023-11-28 14:04:44.245572	Anhänger (mit Kette)
21	6	\N	\N	 	46cm L, 6,6 x 1,7cm Anhänger	Silber	1920er	 	2023-11-28 14:04:44.253887	2023-11-28 14:04:44.290952	Anhänger (mit Kette)
22	6	\N	\N	 	8 x 5,5cm	Kupfer	1920er	 	2023-11-28 14:04:44.300148	2023-11-28 14:04:44.342395	Gürtelschließe
23	6	\N	\N	 	5,5cm D	Elfenbein	1920er	 	2023-11-28 14:04:44.351687	2023-11-28 14:04:44.399411	Ring (als Anhänger?)
24	6	\N	\N	 	50cm L, 6,6 x 5,4cm	Messing, Kupfer(blech)	1920er	 	2023-11-28 14:04:44.4091	2023-11-28 14:04:44.447124	Anhänger (mit Kette)
25	6	\N	\N	 	70cm L, 6,5 x 2,5cm	Silber, Holz	1920er	 	2023-11-28 14:04:44.456385	2023-11-28 14:04:44.493957	Anhänger (mit Kette)
26	6	\N	\N	 	6 x 11cm	Silber 	1950er (oder früher)	 	2023-11-28 14:04:44.501947	2023-11-28 14:04:44.536602	Kette (Fragment)
27	6	\N	\N	 	60cm L, 5x3cm	Silber	1920er	 	2023-11-28 14:04:44.546029	2023-11-28 14:04:44.579241	Anhänger (mit Kette)
28	6	\N	\N	 	6,8 x 4,2cm	Silber	1920er	 	2023-11-28 14:04:44.588377	2023-11-28 14:04:44.622417	Anhänger (mit Kette)
29	7	\N	\N	Choker	17,2 x 18,5 cm	Silber	1948 (Entwurf), 2001 (Fertigung)	29/39	2023-11-28 14:04:44.641339	2023-11-28 14:04:44.675466	Kette (Halsreif)
30	7	\N	\N	 	 	Silber	1948 ?	39	2023-11-28 14:04:44.685559	2023-11-28 14:04:44.724661	Kette (Halsreif)
31	8	\N	\N	 	4,5x4,8cm	Gold, Jaspis und darauf montiertem Weißgold mit Diamantenbesatz	1962, um	unbekannt	2023-11-28 14:04:44.743465	2023-11-28 14:04:44.772113	Brosche
32	8	\N	\N	Oiseau térée	5 x 5cm	Gold (18kt) mit Rubinbesatz	1963	 	2023-11-28 14:04:44.781109	2023-11-28 14:04:44.815571	Brosche
33	8	\N	\N	Térée	 6,5x5,3 cm	Gold (18kt) mit Rubin- und Smaragdbesatz	1964	 	2023-11-28 14:04:44.823676	2023-11-28 14:04:44.863217	Brosche
34	8	\N	\N	Circée	5,5 x 5,2cm	Gold (18kt), Rubinbesatz	1962	8	2023-11-28 14:04:44.872948	2023-11-28 14:04:44.905676	Brosche
35	8	\N	\N	Astéria	8,7 x 7,2cm	Gold (18kt) mit unterschiedlichem Besatz (Opal, Smaragd, Diamant)	1963 (1960/62?)	 	2023-11-28 14:04:44.913967	2023-11-28 14:04:44.950213	Brosche
36	8	\N	\N	Héméra	4,1x5,2cm	Gold mit Diamanten und einem Feueropal	1962	 	2023-11-28 14:04:44.95911	2023-11-28 14:04:44.992821	Brosche
37	8	\N	\N	Hadès	4,3 x 6cm	Gold mit Rubin- und Diamantbesatz	1962	E	2023-11-28 14:04:45.001178	2023-11-28 14:04:45.038926	Brosche (Ansteckclip)
38	8	\N	\N	Héra	4,3x6cm	Gold und Platin mit Saphirbesatz	1962	 	2023-11-28 14:04:45.047357	2023-11-28 14:04:45.080284	Brosche
39	8	\N	\N	Alcyoné	29cm L	Gold mit Diamantbesatz	1962	 	2023-11-28 14:04:45.08841	2023-11-28 14:04:45.120027	Kette
40	8	\N	\N	Séléné	4,5x5,8cm	Gold mit Diamant- und Rubinbesatz	1962	 	2023-11-28 14:04:45.128815	2023-11-28 14:04:45.160157	Brosche
41	8	\N	\N	Peristera	2,5x3x2cm	Gold mit Diamantbesatz, Ringschiene aus Platin	1960-62	 	2023-11-28 14:04:45.167618	2023-11-28 14:04:45.198383	Ring 
42	8	\N	\N	Hécate II	4cm Durchm.	Gold mit Diamant- und Türkisbesatz	1962	 	2023-11-28 14:04:45.206607	2023-11-28 14:04:45.2396	Brosche
43	8	\N	\N	Hécate XIII	 	Gold mit Achatbesatz	1960-62	E	2023-11-28 14:04:45.2481	2023-11-28 14:04:45.280437	Ring 
44	8	\N	\N	Phaeton	9,6 x 6cm	Gold (18kt)	1964	 	2023-11-28 14:04:45.289045	2023-11-28 14:04:45.32833	Brosche
45	8	\N	\N	Tithonos	3,9 x 6,9cm	Silber, grünes Emaille und Rubine	1962	1 von 75	2023-11-28 14:04:45.338222	2023-11-28 14:04:45.377113	Brosche
46	8	\N	\N	Zéphyr	Kopf 3,2x2,5cm	Weßgold (18Kt) mit Diamanten und Rubinen in Pavéfassung	1963	8	2023-11-28 14:04:45.387424	2023-11-28 14:04:45.428572	Ring
47	8	\N	\N	Hera	3,2 x 4,8cm	Gold mit Saphir- und Diamantbesatz	1960	8	2023-11-28 14:04:45.438834	2023-11-28 14:04:45.47193	Brosche
48	8	\N	\N	 	 	 	 	 	2023-11-28 14:04:45.479924	2023-11-28 14:04:45.479924	 
49	9	\N	\N	 	7,5cm D	Silber	1960-1965, um	 	2023-11-28 14:04:45.5076	2023-11-28 14:04:45.540845	Brosche
50	9	\N	\N	 	9 x 11,3 x 7,5 cm	Silber	1960-1965, um	 	2023-11-28 14:04:45.549113	2023-11-28 14:04:45.587052	Brosche
51	9	\N	\N	 	56cm L	Bronze, vergoldet	1939	E	2023-11-28 14:04:45.595929	2023-11-28 14:04:45.630371	Kette
52	9	\N	\N	 	 	Kupfer, in Spiralenform (?)	1938	 	2023-11-28 14:04:45.639054	2023-11-28 14:04:45.675386	Kette
53	9	\N	\N	 	 	Kupfer	1938	 	2023-11-28 14:04:45.683369	2023-11-28 14:04:45.720879	Kette
54	9	\N	\N	Mobilé	 	Silber, geschmiedet	1938	 	2023-11-28 14:04:45.729362	2023-11-28 14:04:45.764731	Ohrringe
55	9	\N	\N	 	 	Silber, geschmiedet	1938	 	2023-11-28 14:04:45.773701	2023-11-28 14:04:45.819709	Armreif
56	9	\N	\N	 	 	Kupferdraht, Blume	1938	 	2023-11-28 14:04:45.830689	2023-11-28 14:04:45.830689	Brosche
57	9	\N	\N	 	 	Silber, geschmiedet	1938	 	2023-11-28 14:04:45.862971	2023-11-28 14:04:45.862971	Brosche
58	9	\N	\N	 	 	Silber	 	E	2023-11-28 14:04:45.887214	2023-11-28 14:04:45.915346	Armreif
59	9	\N	\N	 	 	Silber	 	E	2023-11-28 14:04:45.924306	2023-11-28 14:04:45.958166	Brosche
60	9	\N	\N	 	 	Silber	 	E	2023-11-28 14:04:45.966606	2023-11-28 14:04:46.004168	Brosche
61	9	\N	\N	Feuilles	56cm L	Messing, vergoldet	 	E	2023-11-28 14:04:46.012514	2023-11-28 14:04:46.04518	Kette
62	9	\N	\N	 	 	 	 	 	2023-11-28 14:04:46.053866	2023-11-28 14:04:46.053866	 
63	10	\N	\N	 	 	6 Stücke, 1953–61	 	 	2023-11-28 14:04:46.080039	2023-11-28 14:04:46.080039	 
64	10	\N	\N	Gli archeologi	 	Silber	1972	150	2023-11-28 14:04:46.099671	2023-11-28 14:04:46.125126	Anhänger
65	11	\N	\N	Madame	 	Gold mit Saphirbesatz	1960 (circa)	50	2023-11-28 14:04:46.144079	2023-11-28 14:04:46.172049	Anhänger
66	11	\N	\N	Têtes	 	Terrakotta	 	2	2023-11-28 14:04:46.180383	2023-11-28 14:04:46.214158	Brosche
67	11	\N	\N	'Florentine Profil' Pendant	5,8 x 4,2cm	Terrakotta	1958	unbekannte Höhe einer Auflage	2023-11-28 14:04:46.222538	2023-11-28 14:04:46.262081	Anhänger
68	11	\N	\N	 	 	 	1960	 	2023-11-28 14:04:46.272151	2023-11-28 14:04:46.272151	Anhänger
69	11	\N	\N	 	 	 	1960	 	2023-11-28 14:04:46.300946	2023-11-28 14:04:46.300946	Medaille (?) rund
70	11	\N	\N	 	 	 	1960	 	2023-11-28 14:04:46.322113	2023-11-28 14:04:46.322113	Anhänger
71	11	\N	\N	Narcisse	5,5 x 3,8cm	Gold, oder vergoldetes Silber / Bronze	1989	350	2023-11-28 14:04:46.341925	2023-11-28 14:04:46.372736	Anhänger/ Brosche
72	11	\N	\N	Madame	8,8 x 5,6cm	Gold mit Rubinbesatz	1960	50	2023-11-28 14:04:46.381089	2023-11-28 14:04:46.41581	Anhänger
73	12	\N	\N	 	 	Gold 	 	 	2023-11-28 14:04:46.436882	2023-11-28 14:04:46.436882	Uhr
74	12	\N	\N	 	 	Weitere Infos	 	 	2023-11-28 14:04:46.461291	2023-11-28 14:04:46.496292	 
75	12	\N	\N	Persistence of Sound	5,7 x 1,6cm	Gold (18kt), Rubine, Smaradge, Diamanten	1949	E?	2023-11-28 14:04:46.506836	2023-11-28 14:04:46.506836	Ohrringe
76	12	\N	\N	La Persistance du son	4,5 x 1,9cm	Gold mit Rubin, Smaragd und Diamanten	1949	E?	2023-11-28 14:04:46.540389	2023-11-28 14:04:46.56727	Ohrringe
77	12	\N	\N	Montre petite cuillère (dt. Kleine Löffel-Uhr)	11,2 x 2,5cm	Gold mit nachtblauem Emaille	1957	6	2023-11-28 14:04:46.576349	2023-11-28 14:04:46.609017	Haarschmuck
78	13	\N	\N	Faune	9,5cm D(?)	Gold (23kt)	1950	6	2023-11-28 14:04:46.627427	2023-11-28 14:04:46.655529	Anhänger
79	13	\N	\N	Femme aux boucles d‘oreilles	9,5 x 9,2cm 	Gold (23kt)	1948–1967	6	2023-11-28 14:04:46.663766	2023-11-28 14:04:46.695248	Brosche
80	13	\N	\N	Crétoise	10 x 4,9cm	Gold (22kt)	1948–1966	6	2023-11-28 14:04:46.703253	2023-11-28 14:04:46.735353	Brosche
81	13	\N	\N	Grande tête ronde	10 x 9 cm	Gold (23kt)	1952	6	2023-11-28 14:04:46.743649	2023-11-28 14:04:46.778421	Brosche
82	13	\N	\N	Grande tête ronde	6cm D	Gold 	1952	8	2023-11-28 14:04:46.786654	2023-11-28 14:04:46.818149	Anhänger
83	14	\N	\N	Tête	5 x 4cm	Bimsstein, gefasst?	1961	 	2023-11-28 14:04:46.836954	2023-11-28 14:04:46.865185	Brosche
84	14	\N	\N	 	 	 	1954–1961	 	2023-11-28 14:04:46.872792	2023-11-28 14:04:46.909172	Ringe, Kette
85	15	\N	\N	 	35 x 50mm, Kette L. 76cm	Gelbgold, Elfenbein	1970, vor	E	2023-11-28 14:04:46.926978	2023-11-28 14:04:46.965558	Anhänger (mit Kette)
86	16	\N	\N	 	 	Gold	1961	 	2023-11-28 14:04:46.993526	2023-11-28 14:04:46.993526	Maske
87	16	\N	\N	 	 	Gold	1959	 	2023-11-28 14:04:47.019039	2023-11-28 14:04:47.052973	Brosche?
88	16	\N	\N	Poisson	17 x 12,5cm	Gold	1959-71	6	2023-11-28 14:04:47.063626	2023-11-28 14:04:47.101977	Brosche
89	16	\N	\N	Masque	 	Gold	1959	8	2023-11-28 14:04:47.110519	2023-11-28 14:04:47.143746	Anhänger
90	16	\N	\N	Tete à Cornes —1452	19 x 13cm	Gold (23Kt)	Entwurf 1959, Hertellung posthum	2 von 2 (EA)	2023-11-28 14:04:47.151599	2023-11-28 14:04:47.194056	Anhänger
91	16	\N	\N	Tête à cornes	ca. 15cm Höhe!!	Gold	 	 	2023-11-28 14:04:47.205875	2023-11-28 14:04:47.238403	Brosche
92	16	\N	\N	Deux têtes	5,9 x 6,7cm (6 x 8cm)	Gold	1959-60	8	2023-11-28 14:04:47.245862	2023-11-28 14:04:47.277021	Brosche
93	16	\N	\N	Tête triangle	7,2 x 6,9cm (5,9 x 6,7cm)	Gold	1959	8	2023-11-28 14:04:47.285237	2023-11-28 14:04:47.317437	Brosche
94	16	\N	\N	Oiseau à la tête penchée	11 x 7cm	Gold	1973	8	2023-11-28 14:04:47.325176	2023-11-28 14:04:47.361667	Anhänger
95	16	\N	\N	Soleil (Sun) — 1460	10,7 x 11,2cm	Gold (23kt)	Entwurf 1959, Herstellung nach 1988 (posthum)	2 von 2 (EA)	2023-11-28 14:04:47.369735	2023-11-28 14:04:47.416828	Anhänger
96	17	\N	\N	 	8cm DM	Silber, geschmiedet	1966-67	 	2023-11-28 14:04:47.444825	2023-11-28 14:04:47.489172	Armreif
97	17	\N	\N	In einer Spirale	11cm DM 	Silber (900er), sulfiert, schwarzer Stein	1960er	 	2023-11-28 14:04:47.507488	2023-11-28 14:04:47.554956	Armschmuck
98	18	\N	\N	Ellisse con Fori ‘Concetto Spaziale’ (LF/3) (Ellipse with Holes ‘Spatial Concept’) 	15,3 x 6,2 x 7 cm.	Silber "lackiert"?	1967	3 von 150 aus zweiter Edition, von der letztlich nur 7 produziert wurden?	2023-11-28 14:04:47.580926	2023-11-28 14:04:47.615493	Armreif
99	18	\N	\N	Concetto spaziale	4 x 3,2cm	Gold	1962	E	2023-11-28 14:04:47.624243	2023-11-28 14:04:47.662143	Brosche
100	18	\N	\N	Ellisse Concetto spaziale	16 x 6 x 17cm	Silber und weißes Emaille	1967	150	2023-11-28 14:04:47.670618	2023-11-28 14:04:47.701256	Armreif
101	18	\N	\N	Concetto Spaziale	 	Gold	1967	30	2023-11-28 14:04:47.7087	2023-11-28 14:04:47.746055	Armreif
102	18	\N	\N	Concetto spaziale	 	Gold	1950	E	2023-11-28 14:04:47.753768	2023-11-28 14:04:47.785264	Brosche
103	18	\N	\N	Ellisse Concetto spaziale	16 x 6 x 17cm	Silber und rotes Emaille	1967	150	2023-11-28 14:04:47.793586	2023-11-28 14:04:47.827437	Armreif
104	19	\N	\N	 	 	 	1916	 	2023-11-28 14:04:47.845809	2023-11-28 14:04:47.845809	Krawattennadel und 2 Ringe
105	19	\N	\N	Kopf	 	Silber	1922	 	2023-11-28 14:04:47.866434	2023-11-28 14:04:47.896403	 
106	19	\N	\N	Masque	 	Silber	 	 	2023-11-28 14:04:47.904752	2023-11-28 14:04:47.946661	Brosche
107	20	\N	\N	 	 	Vergoldete Bronze	1936	 	2023-11-28 14:04:47.966262	2023-11-28 14:04:47.966262	Brosche
108	20	\N	\N	 	 	Bronze, vergoldet	1936	 	2023-11-28 14:04:47.988	2023-11-28 14:04:47.988	Armreif
109	20	\N	\N	 	 	Bronze, vergoldet	1936	 	2023-11-28 14:04:48.013082	2023-11-28 14:04:48.013082	Brosche
110	20	\N	\N	 	4,7 D	Bronze, patiniert	1935	 	2023-11-28 14:04:48.034588	2023-11-28 14:04:48.061379	Brosche
111	20	\N	\N	Untitled Medallion (Man with Raised Arms)	4,3 x 4,3cm	Bronze, Patiniert in Goldfassung (?)	1935-39	3 von 5	2023-11-28 14:04:48.070736	2023-11-28 14:04:48.116941	Brosche
112	20	\N	\N	Sphinge	6,4 x 	B	1935–39	 	2023-11-28 14:04:48.13417	2023-11-28 14:04:48.167365	Brosche
113	20	\N	\N	Visage du Chimère ou Naïade	8cm D	Bronze, vergoldet	1935	unbekannt	2023-11-28 14:04:48.17506	2023-11-28 14:04:48.216763	Armreif
114	20	\N	\N	La Sirène	4,7cm D	Bronze, patiniert	1935	 	2023-11-28 14:04:48.225524	2023-11-28 14:04:48.257416	Brosche
115	21	\N	\N	 	7,6 x 5,5cm	Silber, Kupfer	1931	 	2023-11-28 14:04:48.275007	2023-11-28 14:04:48.314927	Anhänger
116	21	\N	\N	 	4 x 12,5cm	Silber, Besatz Amazonit	1930, um	 	2023-11-28 14:04:48.33789	2023-11-28 14:04:48.375552	Anhänger
117	21	\N	\N	Brosche mit Vogel	 	Silber	1931	 	2023-11-28 14:04:48.384304	2023-11-28 14:04:48.417911	Brosche
118	21	\N	\N	 	4 x 12,5cm	Silber (gepunzt)	1925-35	 	2023-11-28 14:04:48.426806	2023-11-28 14:04:48.480509	Brosche
119	21	\N	\N	 	5,9cm D	Elfenbein	1931	 	2023-11-28 14:04:48.50642	2023-11-28 14:04:48.543363	Anhänger
120	21	\N	\N	 	5,7 x 6 x 2cm	Kupfer, patiniert	1932	 	2023-11-28 14:04:48.55266	2023-11-28 14:04:48.589984	Brosche
121	22	\N	\N	 	4,1 x 4,4cm	Silber, Lapislazuli	1907-1917 (um 1912)	 	2023-11-28 14:04:48.611072	2023-11-28 14:04:48.640143	Brosche
122	22	\N	\N	 	6,8 x 2cm	Silber	1912, um	 	2023-11-28 14:04:48.648282	2023-11-28 14:04:48.680802	Armband
123	22	\N	\N	Drei Badende	 	Silber	1912 (HH) 1920 (London)	E	2023-11-28 14:04:48.689055	2023-11-28 14:04:48.725712	Anhänger
124	22	\N	\N	 	6,8 x 2cm	Silber	1912	 	2023-11-28 14:04:48.733643	2023-11-28 14:04:48.764795	Armreif
125	22	\N	\N	Brosche mit drei Badenden	5,4 x 8,7cm	Silber, getrieben	1913 HH: um 1912	 	2023-11-28 14:04:48.774121	2023-11-28 14:04:48.8097	Brosche
126	22	\N	\N	 	8,5cm L	Silber, getrieben	1920, nach	 	2023-11-28 14:04:48.818247	2023-11-28 14:04:48.849225	Anhänger
127	22	\N	\N	 	 	Silber	1912	 	2023-11-28 14:04:48.857274	2023-11-28 14:04:48.857274	Armband
128	22	\N	\N	 	 	Silber	1912	 	2023-11-28 14:04:48.882129	2023-11-28 14:04:48.882129	Armband
129	22	\N	\N	 	 	Silber mit Lapislazuli	1912-13	 	2023-11-28 14:04:48.90222	2023-11-28 14:04:48.90222	Armband
130	22	\N	\N	 	 	Silber	1932	 	2023-11-28 14:04:48.922416	2023-11-28 14:04:48.922416	Anhänger
131	22	\N	\N	 	 	Silber, getrieben	1918	 	2023-11-28 14:04:48.942377	2023-11-28 14:04:48.974291	Brosche
132	22	\N	\N	 	 	Silber, getrieben und ziseliert	1911	 	2023-11-28 14:04:48.982722	2023-11-28 14:04:49.020914	Brosche
133	23	\N	\N	 	 	Silber, 800er	 	 	2023-11-28 14:04:49.037943	2023-11-28 14:04:49.078506	Ring
134	24	\N	\N	 	4,2 x 5,9cm	Silber	1930	 	2023-11-28 14:04:49.10126	2023-11-28 14:04:49.14332	Brosche 
135	24	\N	\N	 	2,9 x 6,4cm	Silber	1930	 	2023-11-28 14:04:49.162293	2023-11-28 14:04:49.196841	Brosche
136	24	\N	\N	 	 	Silber	1915	 	2023-11-28 14:04:49.205902	2023-11-28 14:04:49.257726	Ring
137	24	\N	\N	 	 	Silber	1921	 	2023-11-28 14:04:49.283823	2023-11-28 14:04:49.332738	Broschen, 3
138	25	\N	\N	Abzeichen der 73. Versammlung deutscher Naturforscher und Ärzte 	 	Silber	1901	 	2023-11-28 14:04:49.364045	2023-11-28 14:04:49.364045	Abzeichen
139	26	\N	\N	 	 	Silber	1912	 	2023-11-28 14:04:49.385794	2023-11-28 14:04:49.385794	Zwei Broschen
140	27	\N	\N	Petite Vénus bleue	6 x 2,4cm	Bronze	 	500	2023-11-28 14:04:49.410455	2023-11-28 14:04:49.441389	Brosche
141	28	\N	\N	 	1,8cm D	Gold (750), Lagenstein	1910-11	 	2023-11-28 14:04:49.460194	2023-11-28 14:04:49.498992	Ring
142	28	\N	\N	 	2,2cm D	Silber, Halbedelstein	1910-11	 	2023-11-28 14:04:49.510602	2023-11-28 14:04:49.548621	Ring
143	28	\N	\N	 	2cm	Silber, Mondstein	1910-11	 	2023-11-28 14:04:49.5598	2023-11-28 14:04:49.602067	Ring
144	28	\N	\N	 	6,9 cm L	Silber, Carneol (rot, geschnitten)	1910-11	 	2023-11-28 14:04:49.610946	2023-11-28 14:04:49.654741	Krawattennadel
145	28	\N	\N	 	1,8cm D	Gold, Karneol	1910-11	 	2023-11-28 14:04:49.673046	2023-11-28 14:04:49.71277	Ring
146	29	\N	\N	Goutte d’eau mobile	3,5 x 2,5 x 2,5cm	Plexiglas in transparent und blau; Wasser	1960	E	2023-11-28 14:04:49.731643	2023-11-28 14:04:49.762553	Ring
147	30	\N	\N	 	13,5 x 9,5 cm, 22cm D	Gold	1960er	 	2023-11-28 14:04:49.781758	2023-11-28 14:04:49.810049	Kette
148	30	\N	\N	 	5,8 x 19 cm	Gold	1960	 	2023-11-28 14:04:49.820125	2023-11-28 14:04:49.859324	Armband
149	30	\N	\N	 	7,5 x 7,5 x 1,5cm	Gold (750)	1960	 	2023-11-28 14:04:49.870924	2023-11-28 14:04:49.909113	Brosche
150	31	\N	\N	Chapeau papillons	 	 	 	 	2023-11-28 14:04:49.927952	2023-11-28 14:04:49.954731	Haarschmuck
151	31	\N	\N	Bouche	13cm D	Messing	 	 	2023-11-28 14:04:49.962389	2023-11-28 14:04:49.994161	Kette (Halsreif)
152	32	\N	\N	 	4 x 3cm	Gold, Opalbesatz	1901	 	2023-11-28 14:04:50.011801	2023-11-28 14:04:50.039203	Brosche
153	33	\N	\N	 	 	Gold	1951	 	2023-11-28 14:04:50.056502	2023-11-28 14:04:50.056502	4 Broschen
154	33	\N	\N	 	 	Gold	1951	 	2023-11-28 14:04:50.076839	2023-11-28 14:04:50.108314	Anhänger
155	34	\N	\N	 	4 x 5,5cm	Metall, emailliert	1950	1000	2023-11-28 14:04:50.131624	2023-11-28 14:04:50.158623	Brosche
156	35	\N	\N	 	35cm	Steinzeug, glasiert	 	 	2023-11-28 14:04:50.176338	2023-11-28 14:04:50.208562	Kette
157	36	\N	\N	Lines in Four Directions	 	Gold, 18kt Feinsilber	 	E	2023-11-28 14:04:50.232664	2023-11-28 14:04:50.262371	Ring (2St.)
158	37	\N	\N	Modern Head	7,8 x 5,8cm	Emaille	1968	 	2023-11-28 14:04:50.282203	2023-11-28 14:04:50.313283	Brosche
159	37	\N	\N	Modern Head	7,8 x 5,8cm	Emaille	1968	 	2023-11-28 14:04:50.32316	2023-11-28 14:04:50.35723	Brosche
160	38	\N	\N	 	 	Silber mit Korallenbesatz	1940 (um)	E	2023-11-28 14:04:50.374181	2023-11-28 14:04:50.374181	Armreif
161	38	\N	\N	 	 	Silber, vergoldet, mit Türkisbesatz	1946	 	2023-11-28 14:04:50.390759	2023-11-28 14:04:50.390759	Anhänger
162	38	\N	\N	 	12,3 x 11,3cm	Gold, Silber und Kupfer, im Ausschmelzverfahren gegossen	1965	3	2023-11-28 14:04:50.410347	2023-11-28 14:04:50.43959	Anhänger/ Brosche
163	38	\N	\N	 	7 x 5,7cm	Bronze, vergoldet	1970	 	2023-11-28 14:04:50.447136	2023-11-28 14:04:50.484335	Brosche
164	39	\N	\N	Le Cockerel	5,9 x 7,9cm	Gold (750)	1960-66	 	2023-11-28 14:04:50.501491	2023-11-28 14:04:50.538753	Brosche
165	39	\N	\N	'La Siréne' Brooch for Maison Patek Philippe	9,6 x 8cm	Gold (750)	1960er, circa	 	2023-11-28 14:04:50.551415	2023-11-28 14:04:50.596922	Brosche
166	39	\N	\N	 	7,1cm L	Gold (750), getrieben/ gesägt/ poliert	1964/65, um 	 	2023-11-28 14:04:50.609643	2023-11-28 14:04:50.648166	Brosche 
167	39	\N	\N	 	 	 	 	 	2023-11-28 14:04:50.665061	2023-11-28 14:04:50.728759	Broschen, 2
168	39	\N	\N	 	 	 	 	 	2023-11-28 14:04:50.769012	2023-11-28 14:04:50.769012	Brosche
169	39	\N	\N	 	 	 	 	 	2023-11-28 14:04:50.797136	2023-11-28 14:04:50.838106	Brosche
170	39	\N	\N	 	 	 	 	 	2023-11-28 14:04:50.856922	2023-11-28 14:04:50.856922	Brosche
171	39	\N	\N	 	 	 	 	 	2023-11-28 14:04:50.886188	2023-11-28 14:04:50.886188	Brosche
172	39	\N	\N	 	 	 	 	 	2023-11-28 14:04:50.907934	2023-11-28 14:04:50.907934	Anhänger (mit Kette)
173	39	\N	\N	 	 	 	 	 	2023-11-28 14:04:50.934081	2023-11-28 14:04:50.934081	 
174	39	\N	\N	Collier à cinq médaillons	17,5cm Länge(?)	Gold (24kt), gehämmert	1959/69	 	2023-11-28 14:04:50.950227	2023-11-28 14:04:50.977113	Kette
175	39	\N	\N	Soleil Lune	13x11,5cm	Gold (24kt), gehämmert	1959/69	 	2023-11-28 14:04:50.985127	2023-11-28 14:04:51.017788	Anhänger
176	39	\N	\N	Lune Visage	9,5x6,5cm	Gold (24kt), gehämmert	1959/69	 	2023-11-28 14:04:51.026225	2023-11-28 14:04:51.058941	Anhänger
177	39	\N	\N	Feuille Soleil	11x7cm	Gold (24kt), gehämmert	1959	 	2023-11-28 14:04:51.066568	2023-11-28 14:04:51.106629	Brosche
178	40	\N	\N	Deux Colombes	6,5 x 4cm	Bronze, vergoldet	 	6	2023-11-28 14:04:51.124566	2023-11-28 14:04:51.157508	Brosche
179	41	\N	\N	 	7,5 x 10cm	Bronze, Aluminium und Schleifenband	 	E	2023-11-28 14:04:51.175502	2023-11-28 14:04:51.209305	Anhänger
180	41	\N	\N	Son pommeau d’épée d‘académicien (dt. Der Knauf seines Akademikerschwertes)	20x13x3cm	Bronze	 	2	2023-11-28 14:04:51.217368	2023-11-28 14:04:51.250403	 
181	42	\N	\N	 	6,4 x 7 cm	Gold 	1960 (Kat London) 1952 (WVZ)	2 Ex. 	2023-11-28 14:04:51.269029	2023-11-28 14:04:51.302283	Anhänger
182	43	\N	\N	 	 	Mit Anhängern aus Stein	1905	 	2023-11-28 14:04:51.32184	2023-11-28 14:04:51.32184	Kette
183	43	\N	\N	 	 	Mit Steinbesatz	1907	 	2023-11-28 14:04:51.341717	2023-11-28 14:04:51.341717	Brosche
184	43	\N	\N	 	 	Gold (ohne Besatz)	1907	 	2023-11-28 14:04:51.361146	2023-11-28 14:04:51.361146	Brosche
185	43	\N	\N	 	 	20 Mark Stück, in Form einer Blume	1910	 	2023-11-28 14:04:51.382119	2023-11-28 14:04:51.382119	Brosche
186	43	\N	\N	 	 	 	 	 	2023-11-28 14:04:51.407012	2023-11-28 14:04:51.407012	 
187	44	\N	\N	Pelzring	25x25mm bzw. Modell mit langen Haaren: Durchm 2cm, mit Haaren 3,5cm	Messingrohr, Pelzbezug (original)	1935 Entwurfskizze 1936 Entwurf  / Prototyp in Auflage, dann auch Armreif 1978	 	2023-11-28 14:04:51.435683	2023-11-28 14:04:51.471741	Ring später Armreif
188	44	\N	\N	Tête de poète	10x12,8cm	Gold, emailliert	1967	9	2023-11-28 14:04:51.481465	2023-11-28 14:04:51.515211	Kette
189	44	\N	\N	 	7,5 x 3,2 und 5,5 x 2,9cm	Veilchenholz mit Steinbesatz (Citrin, Topas und Diamant oder 2 Diamanten und ein Turmalin), weißgoldene Zargenfassungen 	1975	 	2023-11-28 14:04:51.523637	2023-11-28 14:04:51.560744	Brosche (2 St.)
190	44	\N	\N	 	 	Entwürfe für Accessoires, 1936-37	1936-37 (Entwurfskizze) Ausführung 2003 (HH)	12	2023-11-28 14:04:51.568701	2023-11-28 14:04:51.60497	Ring
191	44	\N	\N	 	3,5cm D Ringkopf	Gold, Onyx	1984-1986	10	2023-11-28 14:04:51.612933	2023-11-28 14:04:51.644829	Ring
192	44	\N	\N	 	 	Clip tournant, 2003	1937 (Zeichnung)	12	2023-11-28 14:04:51.65303	2023-11-28 14:04:51.690078	Brosche
193	44	\N	\N	 	21 × 22.5 cm, L 44cm	Gold (18kt)	 	 	2023-11-28 14:04:51.697268	2023-11-28 14:04:51.733219	Kette
194	44	\N	\N	 	 	 	1934-36	 	2023-11-28 14:04:51.742437	2023-11-28 14:04:51.778658	Entwurf (Kette)
195	44	\N	\N	 	 	 	1942 Laut Bürgi datiert auf 1936-37	 	2023-11-28 14:04:51.786113	2023-11-28 14:04:51.823631	Entwurf (Ohrschmuck)
196	44	\N	\N	 	 	 	o.D.	 	2023-11-28 14:04:51.832665	2023-11-28 14:04:51.863966	Entwurf (Kette)
197	44	\N	\N	 	 	Halskette «Husch–Husch» wurde 1934 von Meret Oppenheim entworfen und 1985 von Cleto Munari angefertigt. 	 	 	2023-11-28 14:04:51.87227	2023-11-28 14:04:51.904188	 
198	44	\N	\N	 	65x26mm	Weißgold (18kt) mit Rubincabochons	 	 	2023-11-28 14:04:51.912353	2023-11-28 14:04:51.951117	Ohrringe, Brosche
199	44	\N	\N	 	130 × 80 × 17 mm	Seide, 18kt Gold	 	 	2023-11-28 14:04:51.962719	2023-11-28 14:04:52.007404	 
200	44	\N	\N	 	 	 	1934-36	 	2023-11-28 14:04:52.019164	2023-11-28 14:04:52.055868	Entwurf für Kette (Kropfkette)
201	44	\N	\N	 	 	 	1935 (Entwurfskizze)	 	2023-11-28 14:04:52.064526	2023-11-28 14:04:52.097114	Ring
202	44	\N	\N	 	78 × 44 × 12 mm	Gold (18kt)	1936 (Entwurfskizze)	 	2023-11-28 14:04:52.105717	2023-11-28 14:04:52.13802	Ohrschmuck
203	44	\N	\N	 	5 x 5,5cm	Elfenbein, geschnitzt	1959	 	2023-11-28 14:04:52.146453	2023-11-28 14:04:52.183589	Armreif
204	44	\N	\N	 	 	Besteck mit Goldfaden gestickt	1942-45	 	2023-11-28 14:04:52.192406	2023-11-28 14:04:52.218363	Entwurf für Knöpfe
205	44	\N	\N	 	 	aus transparentem Material, mit Bambuszweig und „Fisch“	1937	 	2023-11-28 14:04:52.227135	2023-11-28 14:04:52.259205	Entwurf für Anhänger
206	44	\N	\N	 	 	 	 	 	2023-11-28 14:04:52.267531	2023-11-28 14:04:52.294981	Entwurf für eine Brosche
207	45	\N	\N	Sonnenbrosche	6,6cm D	Silber, teilvergoldet	1922 (Entwurf)	unbekannt	2023-11-28 14:04:52.313036	2023-11-28 14:04:52.342211	Brosche
208	46	\N	\N	 	6,5cm	Gold (14Kt)	1940, um 	 	2023-11-28 14:04:52.362375	2023-11-28 14:04:52.397375	Armreif
209	46	\N	\N	 	2,3 x 2,7cm	Silber (800er), Onyxbesatz	1940, um 	 	2023-11-28 14:04:52.407872	2023-11-28 14:04:52.44821	Ring
210	46	\N	\N	 	D 2,4cm	Silber (800er)	1940, um 	 	2023-11-28 14:04:52.459066	2023-11-28 14:04:52.497992	Ring
211	46	\N	\N	 	2 x 1,7cm	Gold (gegossen)	1939, vor	 	2023-11-28 14:04:52.507722	2023-11-28 14:04:52.550637	Ring
212	46	\N	\N	Exotische Figur	7,2 x 4,3cm	Messingblech	1919/20, um	 	2023-11-28 14:04:52.561832	2023-11-28 14:04:52.603997	Anhänger
213	46	\N	\N	 	 	Bernstein	1920, um 	 	2023-11-28 14:04:52.614734	2023-11-28 14:04:52.651134	Anhänger
214	46	\N	\N	Siegelring	 	Gold	1940, um 	 	2023-11-28 14:04:52.659662	2023-11-28 14:04:52.659662	Ring
215	46	\N	\N	 	 	Gold, gedreht	1940, um 	 	2023-11-28 14:04:52.680459	2023-11-28 14:04:52.680459	Armreif
216	46	\N	\N	 	 	Gold	1940, um 	 	2023-11-28 14:04:52.691015	2023-11-28 14:04:52.691015	Armkette
217	46	\N	\N	 	 	 	 	 	2023-11-28 14:04:52.706133	2023-11-28 14:04:52.706133	Ohrringe
218	47	\N	\N	 	 	Gold	1948	 	2023-11-28 14:04:52.725888	2023-11-28 14:04:52.761733	Anhänger
219	47	\N	\N	 	4cm Durchm.	Keramik (Terrakotta)	1952, um 1949 laut WVZ	60 Ex.	2023-11-28 14:04:52.769466	2023-11-28 14:04:52.813694	Anhänger
220	47	\N	\N	Profil de Jacqueline	 	Gold	1956 (Entwurf)	20	2023-11-28 14:04:52.829209	2023-11-28 14:04:52.865706	Anhänger
221	47	\N	\N	Tête	3,5cm D	Silber	1950	E	2023-11-28 14:04:52.873682	2023-11-28 14:04:52.906394	Anhänger
222	47	\N	\N	Trois médaillons montés en collier li: Taureau attaquantmi: Visage de Femmere: Oiseauu de Profil	5cm Durchmesser pro Medaillon	Keramik (Terrakotta)	1949	60 Ex., mittiges Medaillon 150Ex.	2023-11-28 14:04:52.91402	2023-11-28 14:04:52.95129	Kette
223	47	\N	\N	Poisson	4,4 x 5cm	Gold	 	20	2023-11-28 14:04:52.960187	2023-11-28 14:04:53.000193	Brosche
224	47	\N	\N	Trèfle	4,4 x 5,4cm	Gold	 	20	2023-11-28 14:04:53.010127	2023-11-28 14:04:53.048547	Brosche
225	47	\N	\N	Médaillon ovale	3,5 x 5,3cm	Gold	 	20	2023-11-28 14:04:53.057249	2023-11-28 14:04:53.096759	Brosche
226	47	\N	\N	Visage rond	 	Gold	1972	20	2023-11-28 14:04:53.105217	2023-11-28 14:04:53.152596	Brosche
227	47	\N	\N	La Petit Faune	4 x 6 cm	Gold	 	20	2023-11-28 14:04:53.161645	2023-11-28 14:04:53.199092	Anhänger
228	47	\N	\N	Le Grand Faune	8,5 x 12cm	Gold (23kt)	1973	20	2023-11-28 14:04:53.208522	2023-11-28 14:04:53.241853	Brosche
229	47	\N	\N	Visage aux taches	5cm D	Gold	 	20	2023-11-28 14:04:53.250989	2023-11-28 14:04:53.289006	Brosche
230	48	\N	\N	 	 	 	1960	 	2023-11-28 14:04:53.307619	2023-11-28 14:04:53.348864	Armband
231	48	\N	\N	 	 	 	1961	 	2023-11-28 14:04:53.36517	2023-11-28 14:04:53.412055	Armband, Halsketten, Broschen
232	49	\N	\N	 	 	Gold mit Smaragdbesatz	1964	E	2023-11-28 14:04:53.444055	2023-11-28 14:04:53.476574	Kette
233	49	\N	\N	 	D 8cm	Gelb- und Weißgold, Diamanten, Rubine, Smaragde	1961	E	2023-11-28 14:04:53.485416	2023-11-28 14:04:53.542175	Anhänger/ Brosche
234	49	\N	\N	 	33cm Länge	Marmor (belgisch)	1967	E	2023-11-28 14:04:53.576837	2023-11-28 14:04:53.608338	Kette
235	50	\N	\N	 	5,1 x 2,5cm	Gold	 	 	2023-11-28 14:04:53.625664	2023-11-28 14:04:53.651499	Ohrringe
236	50	\N	\N	Two Lines Up	19,1 x 7,6cm	Silber	1967	 	2023-11-28 14:04:53.659225	2023-11-28 14:04:53.691774	Ohrringe
237	51	\N	\N	 	7,1 x 54,cm	Kupfer	1928, um	 	2023-11-28 14:04:53.711374	2023-11-28 14:04:53.746254	Brosche
238	51	\N	\N	 	7,4 x 6,4cm	Kupfer	1928, um	 	2023-11-28 14:04:53.75608	2023-11-28 14:04:53.801064	Brosche
239	51	\N	\N	(?) Eingekerbt auf der Rückseite: Puma	8,3 x 2,8cm	Pockholz	1928, um	 	2023-11-28 14:04:53.80995	2023-11-28 14:04:53.846318	Anhänger
240	52	\N	\N	 	3 x 21cm 	Messing, getrieben und vergoldet	1912	 	2023-11-28 14:04:53.863829	2023-11-28 14:04:53.904539	Armband
241	52	\N	\N	 	Kopf 25 x 13mm circa; Ringgr. 59/60	Messing oder Gold, Türkismatrix	 	E	2023-11-28 14:04:53.923998	2023-11-28 14:04:53.967656	Ring
242	52	\N	\N	 	7 x 5,3cm	Messing, aus einem Stück geschnitten und getrieben	1909, um	E	2023-11-28 14:04:53.97828	2023-11-28 14:04:54.009779	Armreif / Serviettenring?
243	52	\N	\N	 	2,2cm D	Silber, Halbedelstein	1926	 	2023-11-28 14:04:54.017941	2023-11-28 14:04:54.055109	Ring
244	52	\N	\N	 	2cm	Silber, Mondstein	1926	 	2023-11-28 14:04:54.063706	2023-11-28 14:04:54.101588	Ring
245	52	\N	\N	 	6,9 cm L	Silber, Carneol (rot, geschnitten)	1926 (Fassung des Steines)	 	2023-11-28 14:04:54.109811	2023-11-28 14:04:54.165047	Krawattennadel
246	52	\N	\N	 	7,2 x 5,1cm 	Alabaster	1920, um 	 	2023-11-28 14:04:54.181616	2023-11-28 14:04:54.223501	Anhänger
247	52	\N	\N	 	5,2 x 4,8cm	Elfenbein	1934, um	 	2023-11-28 14:04:54.243374	2023-11-28 14:04:54.273635	Anhänger
248	52	\N	\N	 	 	 	 	 	2023-11-28 14:04:54.281755	2023-11-28 14:04:54.281755	 
249	52	\N	\N	 	4,6 x 3,1 x 0,8cm	Gold, beritzt, mit Lapislazulibesatz	1920–1930	 	2023-11-28 14:04:54.306395	2023-11-28 14:04:54.336978	Anhänger
250	52	\N	\N	 	5,3 x 3,5 x 0,8cm	Perlmutt, Silbermontur	1930–1940	 	2023-11-28 14:04:54.34531	2023-11-28 14:04:54.381682	Anhänger
251	52	\N	\N	 	 	Messing mit ungeschliffenem Smaragd, getrieben und ziseliert, vergoldet	1910-11	 	2023-11-28 14:04:54.390215	2023-11-28 14:04:54.424522	Brosche
252	52	\N	\N	 	Durchmesser 7cm, Glieder je 16x35mm	Gold, Rechteckige Glieder mit 8er Ösen verbunden	1920–1930	 	2023-11-28 14:04:54.432659	2023-11-28 14:04:54.432659	Armband
253	52	\N	\N	 	Durchmesser 2cm, Kopf 2,6 x 2cm	Silber mit Türkisbesatz	1911-12	 	2023-11-28 14:04:54.455401	2023-11-28 14:04:54.481279	Ring
254	52	\N	\N	 	Durchmesser 1,8cm, Kopf 2,9 x 2cm	Silber mit Türkis-Matrix-Besatz	1911-12	 	2023-11-28 14:04:54.488714	2023-11-28 14:04:54.519685	Ring
255	52	\N	\N	 	L 170cm	Glas, runde, blaue Perlen	1912 (circa)	wohl mehrere Ex.?	2023-11-28 14:04:54.527686	2023-11-28 14:04:54.560856	Kette
256	52	\N	\N	 	L 178cm	Silber, Plättchen und Ösen	1912 (circa)	 	2023-11-28 14:04:54.570742	2023-11-28 14:04:54.602225	Kette
257	52	\N	\N	 	D 6cm, je Glied 2 x 1,5cm	Silber, acht rechteckige Glieder	1920–1930	 	2023-11-28 14:04:54.610268	2023-11-28 14:04:54.6484	Armband
258	52	\N	\N	 	D 6,5cm	Silber	1920–1930	 	2023-11-28 14:04:54.657117	2023-11-28 14:04:54.69397	Armreif
259	52	\N	\N	 	4 x 6,8 x 5,7cm	Silber (?) mit Mondsteinbesatz	1920–1930	 	2023-11-28 14:04:54.701985	2023-11-28 14:04:54.733689	Armreif
260	52	\N	\N	 	H 2,3cm, T 3,6cm, D 2,6cm	Silberring mit ovalem graugelbem Stein (Kiesel), 1920er Jahre	1920–1930	 	2023-11-28 14:04:54.742211	2023-11-28 14:04:54.774884	Ring
261	52	\N	\N	 	4cm Durchm.	Runder Silberanhänger mit Perlmuttrelief eines Mädchenportraits, Ende 1920er Jahre	 	 	2023-11-28 14:04:54.782529	2023-11-28 14:04:54.813403	 
262	52	\N	\N	 	6 x 5 x 1cm	Silber mit Beinbesatz (als Gemme geschnitten, Mädchenportrait)	1930-32	 	2023-11-28 14:04:54.821751	2023-11-28 14:04:54.852958	Anhänger
263	52	\N	\N	 	Außendurchmesser 2,8cm, Innen 2cm, Höhe 1,2cm	Bein	1945 (circa)	 	2023-11-28 14:04:54.860733	2023-11-28 14:04:54.892918	Ring
264	53	\N	\N	Croix	 	Terrakotta, emailliert	1950	E	2023-11-28 14:04:54.912419	2023-11-28 14:04:54.942049	Anhänger
265	54	\N	\N	 	Durchm. 7,3cm; Höhe 4,1cm	Gold, Silber	1940	E	2023-11-28 14:04:54.962323	2023-11-28 14:04:54.990223	Armreif
266	55	\N	\N	 	4,2cm	Kiefer, braun gebeizt (vor Schnitzerei)	1920	 	2023-11-28 14:04:55.009185	2023-11-28 14:04:55.051053	Knopf
267	56	\N	\N	Nuage 	2,2 x 6,3cm	Gold	 	17	2023-11-28 14:04:55.082303	2023-11-28 14:04:55.109081	Brosche 
268	56	\N	\N	Mademoiselle Pieuvre	5,9 x 5,6cm	Gold, 23 kt	 	17	2023-11-28 14:04:55.118253	2023-11-28 14:04:55.149894	Brosche 
269	57	\N	\N	 	4 x 4cm	Gold (18kt) mit Einlagesteinen: Lapislazuli, Koralle, Onyx	 	unbekannt	2023-11-28 14:04:55.167583	2023-11-28 14:04:55.19582	Anhänger
270	58	\N	\N	Penetrable (Dt. Durchdringbar)	9 x 6,8cm	Silber (800er) mit Teilvergoldung	1968	unbekannt	2023-11-28 14:04:55.215108	2023-11-28 14:04:55.256408	Ohrringe
271	3	\N	\N	 	1,2cm x Umfang 36,3cm	Gold (750), Diamanten	1960er, circa	E	2023-11-28 14:04:55.267561	2023-11-28 14:04:55.312227	Halsreif
272	3	\N	\N	 	D 13cm, Anhänger ca. 4cm	Gold (750), Diamanten, Smaragde	1955, circa	 	2023-11-28 14:04:55.323362	2023-11-28 14:04:55.367045	Halsreif
273	59	\N	\N	Gold and Ruby Horse-Head Brooch	3,5 x 5cm	Gold (18 Kt), Rubine und Diamanten	1960er, circa	E	2023-11-28 14:04:55.386133	2023-11-28 14:04:55.427215	Brosche
274	59	\N	\N	Gold Link Bracelet for Masenza-Roma	3,1 x 23cm	Gold (18 Kt) 	1965, circa	E	2023-11-28 14:04:55.439722	2023-11-28 14:04:55.483401	Armkette
275	60	\N	\N	'Spille' (Play) Brooch	4,3 x 3,9cm	Gold (18kt), Weiß- und Gelbgold	1960	E	2023-11-28 14:04:55.503267	2023-11-28 14:04:55.543055	Brosche
276	60	\N	\N	o.T.	D 5,4cm	Gold (18kt), Weiß- und Gelbgold	1962	signed and dated Arnaldo Pomodoro ‘60, G341 from the Archivio Arnaldo Pomodoro Spille' (Play) Brooch is an early sculptural brooch by It+M261alian artist  Arnaldo Pomodoro. The hand-crafted pin with smooth finished  white gold ‘beam’ supporting playful yellow and white gold  rods is stationary but evokes kinetic energy. Pomodoro said:  ‘The sculpture must be projected into space to remove, as  far as possible, the weight from the material and the work’s  fixed base. I have always tried to express movement as an  intensification of a condition of imbalance to create a striking  contrast to any stasis or any reached or predictable order.’ (Ada  Masoero, Arnaldo Pomodoro, Skira editore, Milan, 2017, p. 199)	2023-11-28 14:04:55.555315	2023-11-28 14:04:55.605862	Anhänger/ Brosche
277	61	\N	\N	Unique Wood Necklace	L 49,5cm	Holz (geschnitzt, vermutlich Jacaranda), Kupfer und Leder	1948	E	2023-11-28 14:04:55.631422	2023-11-28 14:04:55.666351	Kette
278	62	\N	\N	 	2,5 x 2,3cm, Platte 2,5 x 1,9cm	Gold, Silber, Brillant	1940 (Herstellung)	3	2023-11-28 14:04:55.688626	2023-11-28 14:04:55.722355	Ring
279	62	\N	\N	Ohrgehänge mit Turmalin	 	Gold (18Kt), geschliffene Turmaline	1922	 	2023-11-28 14:04:55.730217	2023-11-28 14:04:55.730217	Ohrringe
280	62	\N	\N	Anhänger mit Karneol	 	Gold (18Kt), Karneole	1922	 	2023-11-28 14:04:55.757275	2023-11-28 14:04:55.757275	Anhänger
281	62	\N	\N	Ring mit Brillant	 	Gold (18Kt), Brillant	1922	 	2023-11-28 14:04:55.776759	2023-11-28 14:04:55.776759	Ring
282	62	\N	\N	Uhranhänger	 	Silber (900er) 	1923	 	2023-11-28 14:04:55.795408	2023-11-28 14:04:55.795408	Uhr
283	62	\N	\N	 	 	Silber	1922/23	 	2023-11-28 14:04:55.815827	2023-11-28 14:04:55.815827	Anhänger
284	62	\N	\N	Tänzerin	 	Silber	1922/23	 	2023-11-28 14:04:55.835858	2023-11-28 14:04:55.835858	Anhänger
285	62	\N	\N	Ring mit Ebenholz	 	Silber (900), Ebenholz	1923	 	2023-11-28 14:04:55.856004	2023-11-28 14:04:55.856004	Ring
286	62	\N	\N	Ring mit Fries	H 1,9cm, D 1,7cm	Silber (900)	1923	 	2023-11-28 14:04:55.875432	2023-11-28 14:04:55.917864	Ring
287	62	\N	\N	Ring mit Maskenfries	 	Silber (900)	1923	 	2023-11-28 14:04:55.941731	2023-11-28 14:04:55.941731	Ring
288	62	\N	\N	Anhänger Reh	 	Silber (900)	1923	 	2023-11-28 14:04:55.961811	2023-11-28 14:04:55.961811	Anhänger
289	62	\N	\N	Runder Anhänger	 	Silber (900)	1923	 	2023-11-28 14:04:55.98059	2023-11-28 14:04:55.98059	Anhänger
290	62	\N	\N	Ägyptischer Ring	2,9 x 2,5cm	Silber	1928 - 1932	 	2023-11-28 14:04:56.000392	2023-11-28 14:04:56.031817	Ring
291	5	\N	\N	 	 	 	1969	 	2023-11-28 14:04:56.039879	2023-11-28 14:04:56.073063	Kette und Ring
292	5	\N	\N	Parure	 	 	1990er	 	2023-11-28 14:04:56.08104	2023-11-28 14:04:56.109555	Garnitur aus Halsschmuck mit Anhänger und Paar Ohrringe
293	42	\N	\N	Ring für den Intendanten des Gürzenich	 	 	1964	 	2023-11-28 14:04:56.117733	2023-11-28 14:04:56.155623	Ring
294	42	\N	\N	 	18cm L	Silber	1948	 	2023-11-28 14:04:56.163391	2023-11-28 14:04:56.202549	Armband
295	42	\N	\N	 	42cm L	Silber	1948	 	2023-11-28 14:04:56.210403	2023-11-28 14:04:56.247065	Kette
296	42	\N	\N	 	 	 	1926–1950, circa	 	2023-11-28 14:04:56.255173	2023-11-28 14:04:56.286204	Armreif
297	42	\N	\N	 	 	 	1926–1950, circa	 	2023-11-28 14:04:56.294044	2023-11-28 14:04:56.32615	Ring
298	42	\N	\N	Armreif mit HM-Monogramm	2,4cm B	Silber, geschmiedet	1944 (Entwurf); 1947 (Herstellung)	 	2023-11-28 14:04:56.333742	2023-11-28 14:04:56.372743	Armreif
299	63	\N	\N	Krawattennadel mit Porträtausschnitt	 	 	1922, vor	 	2023-11-28 14:04:56.390709	2023-11-28 14:04:56.412915	Krawattennadel
300	42	\N	\N	 	4 x 5cm	Silber, zwei Halbedelsteine facettiert	1945	 	2023-11-28 14:04:56.422221	2023-11-28 14:04:56.464403	Brosche
301	42	\N	\N	 	5,2 x 7,7cm	Silber, getrieben	1946	 	2023-11-28 14:04:56.481712	2023-11-28 14:04:56.525538	Brosche
302	42	\N	\N	Freundschaftskette	50cm L 	Silber, 12 Achate 	1958	 	2023-11-28 14:04:56.540833	2023-11-28 14:04:56.580606	Kette
303	64	\N	\N	 	 	 	 	 	2023-11-28 14:04:56.609807	2023-11-28 14:04:56.609807	 
304	64	\N	\N	 	 	 	 	 	2023-11-28 14:04:56.616704	2023-11-28 14:04:56.616704	 
\.


--
-- Data for Name: lists; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.lists (id, name, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: manufacturers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.manufacturers (id, name, location, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: photos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.photos (id, source, item_id, created_at, updated_at, image) FROM stdin;
\.


--
-- Data for Name: provenances; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.provenances (id, text, source, created_at, updated_at, item_id) FROM stdin;
1	Sammlung	\N	2023-11-28 14:04:43.055715	2023-11-28 14:04:43.055715	1
2	Arp, Marguerite	\N	2023-11-28 14:04:43.083017	2023-11-28 14:04:43.083017	2
3	Arp, Marguerite	\N	2023-11-28 14:04:43.104361	2023-11-28 14:04:43.104361	3
4	Arp, Marguerite (aber nur in der Bildunterschrift so benannt)	\N	2023-11-28 14:04:43.126086	2023-11-28 14:04:43.126086	4
5	Hertogenbosch, Stedelijk Museum	\N	2023-11-28 14:04:43.199442	2023-11-28 14:04:43.199442	5
6	Hertogenbosch, Stedelijk Museum	\N	2023-11-28 14:04:43.369225	2023-11-28 14:04:43.369225	6
7	Küppers, Diana	\N	2023-11-28 14:04:43.463385	2023-11-28 14:04:43.463385	7
8	Muller-Widman, Anna	\N	2023-11-28 14:04:43.516952	2023-11-28 14:04:43.516952	8
9	United States, Privatsammlung	\N	2023-11-28 14:04:43.588074	2023-11-28 14:04:43.588074	10
10	Venet, Diane	\N	2023-11-28 14:04:43.639384	2023-11-28 14:04:43.639384	11
11	Venet, Diane	\N	2023-11-28 14:04:43.695161	2023-11-28 14:04:43.695161	12
12	Washburn, Mrs. Gordon B.	\N	2023-11-28 14:04:43.749443	2023-11-28 14:04:43.749443	13
13	Hamburg, Museum für Kunst und Gewerbe Inv.Nr. 2019.205	\N	2023-11-28 14:04:43.842437	2023-11-28 14:04:43.842437	14
14	Hamburg, Museum für Kunst und Gewerbe Inv.Nr. 2019.210	\N	2023-11-28 14:04:43.898872	2023-11-28 14:04:43.898872	15
15	Frankfurt, Museum für angewandte Kunst Inv. Nr. 18780  	\N	2023-11-28 14:04:43.959277	2023-11-28 14:04:43.959277	16
16	Hamburg, Museum für Kunst und Gewerbe Inv.Nr. 2014.425	\N	2023-11-28 14:04:44.03609	2023-11-28 14:04:44.03609	17
17	London, Victoria& Albert Museum Inv. Nr. CIRC.475-1960 https://collections.vam.ac.uk/item/O73764/collar-nele-e-r/ Goldmedaille der Triennale in Mailand in  1957.	\N	2023-11-28 14:04:44.088381	2023-11-28 14:04:44.088381	18
18	Hamburg, Museum für Kunst und Gewerbe Inv.Nr. 1996.878	\N	2023-11-28 14:04:44.166794	2023-11-28 14:04:44.166794	19
19	Hamburg, Museum für Kunst und Gewerbe Inv.Nr. 1996.879	\N	2023-11-28 14:04:44.229818	2023-11-28 14:04:44.229818	20
20	Hamburg, Museum für Kunst und Gewerbe Inv.Nr. 1996.880	\N	2023-11-28 14:04:44.275702	2023-11-28 14:04:44.275702	21
21	Hamburg, Museum für Kunst und Gewerbe Inv.Nr. 1996.881	\N	2023-11-28 14:04:44.325569	2023-11-28 14:04:44.325569	22
22	Hamburg, Museum für Kunst und Gewerbe Inv.Nr. 1996.882	\N	2023-11-28 14:04:44.38227	2023-11-28 14:04:44.38227	23
23	Hamburg, Museum für Kunst und Gewerbe Inv.Nr. 1996.883	\N	2023-11-28 14:04:44.429356	2023-11-28 14:04:44.429356	24
24	Hamburg, Museum für Kunst und Gewerbe Inv.Nr. 1996.884	\N	2023-11-28 14:04:44.478196	2023-11-28 14:04:44.478196	25
25	Hamburg, Museum für Kunst und Gewerbe Inv.Nr. 1996.885	\N	2023-11-28 14:04:44.520271	2023-11-28 14:04:44.520271	26
26	Hamburg, Museum für Kunst und Gewerbe Inv.Nr. 1996.887	\N	2023-11-28 14:04:44.562956	2023-11-28 14:04:44.562956	27
27	Hamburg, Museum für Kunst und Gewerbe Inv.Nr. 1996.888	\N	2023-11-28 14:04:44.605365	2023-11-28 14:04:44.605365	28
28	Christie’s New York, Barry Friedman: The Eclectic Eye,  Evening Sale and Day Sale, March 25, 2014, lot 56  Acquired from the above by the present owner	\N	2023-11-28 14:04:44.65875	2023-11-28 14:04:44.65875	29
29	Hertogenbosch, Stedelijk Museum	\N	2023-11-28 14:04:44.709125	2023-11-28 14:04:44.709125	30
30	Hertogenbosch, Stedelijk Museum Paris, Musée des Arts décoratifs, Inv.Nr. Fnac 1162	\N	2023-11-28 14:04:44.756356	2023-11-28 14:04:44.756356	31
31	Küppers, Diana	\N	2023-11-28 14:04:44.798793	2023-11-28 14:04:44.798793	32
32	unbekannt	\N	2023-11-28 14:04:44.846207	2023-11-28 14:04:44.846207	33
33	Küppers, Diana (mit Auge als Diamant) Venet, Diane	\N	2023-11-28 14:04:44.890235	2023-11-28 14:04:44.890235	34
34	Küppers, Diana (Auge Opal) Venet, Diane Paris, Musée des Arts décoratifs, Inv.Nr. Fnac 1164	\N	2023-11-28 14:04:44.932085	2023-11-28 14:04:44.932085	35
35	Paris, Musée des Arts décoratifs, Inv.Nr. Fnac 1158	\N	2023-11-28 14:04:44.97756	2023-11-28 14:04:44.97756	36
36	Paris, Musée des Arts décoratifs, Inv.Nr. Fnac 1159	\N	2023-11-28 14:04:45.023716	2023-11-28 14:04:45.023716	37
37	Paris, Musée des Arts décoratifs, Inv.Nr. Fnac 1160	\N	2023-11-28 14:04:45.064643	2023-11-28 14:04:45.064643	38
38	Paris, Musée des Arts décoratifs, Inv.Nr. Fnac 1161	\N	2023-11-28 14:04:45.105015	2023-11-28 14:04:45.105015	39
39	Paris, Musée des Arts décoratifs, Inv.Nr. FNAC 1163	\N	2023-11-28 14:04:45.145322	2023-11-28 14:04:45.145322	40
40	Paris, Musée des Arts décoratifs, Inv.Nr. Fnac 1166	\N	2023-11-28 14:04:45.183633	2023-11-28 14:04:45.183633	41
41	Paris, Musée des Arts décoratifs, Inv.Nr. Fnac 1167	\N	2023-11-28 14:04:45.22344	2023-11-28 14:04:45.22344	42
42	Paris, Musée des Arts décoratifs, Inv.Nr. Fnac 1168	\N	2023-11-28 14:04:45.265067	2023-11-28 14:04:45.265067	43
43	unbekannt	\N	2023-11-28 14:04:45.310544	2023-11-28 14:04:45.310544	44
44	Provenienz: Pierre Bergé & Associates, Paris: Bijoux - Collection P.M., June 12, 2018 [lot 345] Acquired from the above by the present owner	\N	2023-11-28 14:04:45.360269	2023-11-28 14:04:45.360269	45
45	unbekannt	\N	2023-11-28 14:04:45.409094	2023-11-28 14:04:45.409094	46
46	Venet, Diane	\N	2023-11-28 14:04:45.455751	2023-11-28 14:04:45.455751	47
47	Hamburg, Museum für Kunst und Gewerbe Inv.Nr. 2001.372	\N	2023-11-28 14:04:45.52474	2023-11-28 14:04:45.52474	49
48	Hamburg, Museum für Kunst und Gewerbe Inv.Nr. 2001.373	\N	2023-11-28 14:04:45.571437	2023-11-28 14:04:45.571437	50
49	Guinness, Louisa	\N	2023-11-28 14:04:45.613682	2023-11-28 14:04:45.613682	51
50	Mayor, F. H.	\N	2023-11-28 14:04:45.660548	2023-11-28 14:04:45.660548	52
51	Mayor, F. H.	\N	2023-11-28 14:04:45.705707	2023-11-28 14:04:45.705707	53
52	Mesens, Sybil	\N	2023-11-28 14:04:45.749738	2023-11-28 14:04:45.749738	54
53	Mesens, Sybil	\N	2023-11-28 14:04:45.798551	2023-11-28 14:04:45.798551	55
54	Mesens, Sybil	\N	2023-11-28 14:04:45.857504	2023-11-28 14:04:45.857504	56
55	Piper, Myfanwy	\N	2023-11-28 14:04:45.881586	2023-11-28 14:04:45.881586	57
56	Seroussi, Natalie	\N	2023-11-28 14:04:45.898008	2023-11-28 14:04:45.898008	58
57	Seroussi, Natalie	\N	2023-11-28 14:04:45.943278	2023-11-28 14:04:45.943278	59
58	Seroussi, Natalie	\N	2023-11-28 14:04:45.983936	2023-11-28 14:04:45.983936	60
59	Seroussi, Natalie	\N	2023-11-28 14:04:46.030014	2023-11-28 14:04:46.030014	61
60	Chirico, Giorgio de (Nachlass??)	\N	2023-11-28 14:04:46.095701	2023-11-28 14:04:46.095701	63
61	Venet, Diane	\N	2023-11-28 14:04:46.110087	2023-11-28 14:04:46.110087	64
62	Hertogenbosch,  Stedelijk Museum Ex. Diana Küppers???	\N	2023-11-28 14:04:46.156881	2023-11-28 14:04:46.156881	65
63	Küppers, Diana (nicht gesehen, noch vorhanden?)	\N	2023-11-28 14:04:46.198853	2023-11-28 14:04:46.198853	66
64	Provenienz: Pierre Bergé & Associés, Paris, June 7, 2010, lot 232  Acquired from the above by the present owner	\N	2023-11-28 14:04:46.245562	2023-11-28 14:04:46.245562	67
65	Paris, Au Pont des Arts Galerie Lucie Weill (Leihgabe für Ausstellung)	\N	2023-11-28 14:04:46.296246	2023-11-28 14:04:46.296246	68
66	Paris, Au Pont des Arts Galerie Lucie Weill (Leihgabe für Ausstellung)	\N	2023-11-28 14:04:46.317371	2023-11-28 14:04:46.317371	69
67	Paris, Au Pont des Arts Galerie Lucie Weill (Leihgabe für Ausstellung)	\N	2023-11-28 14:04:46.337929	2023-11-28 14:04:46.337929	70
68	Paris, Galerie Pierre–Alain Challier	\N	2023-11-28 14:04:46.357808	2023-11-28 14:04:46.357808	71
69	Venet, Diane	\N	2023-11-28 14:04:46.397951	2023-11-28 14:04:46.397951	72
70	Cheatham, Owen	\N	2023-11-28 14:04:46.457227	2023-11-28 14:04:46.457227	73
71	Cheatham, Owen	\N	2023-11-28 14:04:46.479106	2023-11-28 14:04:46.479106	74
72	Provenienz: Alemany & Ertman Inc., New York Private collection, Europe (acquired from above) Sotheby’s London: Fine Jewels, December 17, 2008 [Lot 249] Acquired from above by current owner	\N	2023-11-28 14:04:46.535293	2023-11-28 14:04:46.535293	75
73	Haspeslagh, Martine & Didier	\N	2023-11-28 14:04:46.551112	2023-11-28 14:04:46.551112	76
74	Venet, Diane	\N	2023-11-28 14:04:46.593673	2023-11-28 14:04:46.593673	77
75	Didier Antiques/ Didier Ltd.??	\N	2023-11-28 14:04:46.639954	2023-11-28 14:04:46.639954	78
76	Haspelagh, Martine & Didier	\N	2023-11-28 14:04:46.680546	2023-11-28 14:04:46.680546	79
77	Haspelagh, Martine & Didier Hertogenbosch, Stedelijk Museum (hier auf 1950 datiert)	\N	2023-11-28 14:04:46.719745	2023-11-28 14:04:46.719745	80
78	Küppers, Diana ???	\N	2023-11-28 14:04:46.764012	2023-11-28 14:04:46.764012	81
79	Venet, Diane	\N	2023-11-28 14:04:46.803604	2023-11-28 14:04:46.803604	82
80	Fleiss, Clo  (Courtesy Galerie Rodica Sibleyras)	\N	2023-11-28 14:04:46.849284	2023-11-28 14:04:46.849284	83
81	Paris,  Musée des Arts décoratifs	\N	2023-11-28 14:04:46.894073	2023-11-28 14:04:46.894073	84
82	unbekannt (Auktion)	\N	2023-11-28 14:04:46.944223	2023-11-28 14:04:46.944223	85
83	Ernst, Max (Nachlass??)	\N	2023-11-28 14:04:47.014307	2023-11-28 14:04:47.014307	86
84	Hamburg, Museum für Kunst und Gewerbe Inv.Nr. 1968.103	\N	2023-11-28 14:04:47.03609	2023-11-28 14:04:47.03609	87
85	Haspelagh, Martine & Didier	\N	2023-11-28 14:04:47.08758	2023-11-28 14:04:47.08758	88
86	Hertogenbosch, Stedelijk Museum	\N	2023-11-28 14:04:47.128056	2023-11-28 14:04:47.128056	89
87	unbekannt	\N	2023-11-28 14:04:47.174961	2023-11-28 14:04:47.174961	90
88	Küppers, Diana	\N	2023-11-28 14:04:47.223055	2023-11-28 14:04:47.223055	91
89	Küppers, Diana	\N	2023-11-28 14:04:47.261855	2023-11-28 14:04:47.261855	92
90	Küppers, Diana Venet, Diane	\N	2023-11-28 14:04:47.301539	2023-11-28 14:04:47.301539	93
91	Venet, Diane	\N	2023-11-28 14:04:47.346049	2023-11-28 14:04:47.346049	94
92	Unbekannt	\N	2023-11-28 14:04:47.391358	2023-11-28 14:04:47.391358	95
93	Frankfurt, Museum für angewandte Kunst Inv. Nr. 15704  	\N	2023-11-28 14:04:47.465608	2023-11-28 14:04:47.465608	96
94	Frankfurt, Museum für angewandte Kunst Inv. Nr. 19090  	\N	2023-11-28 14:04:47.529053	2023-11-28 14:04:47.529053	97
95	Provenienz:Private collection, Germany  Louisa Guinness Gallery, London  Acquired from the above by the present owner	\N	2023-11-28 14:04:47.599275	2023-11-28 14:04:47.599275	98
96	Guinness, Louisa	\N	2023-11-28 14:04:47.646658	2023-11-28 14:04:47.646658	99
97	Guinness, Louisa	\N	2023-11-28 14:04:47.686694	2023-11-28 14:04:47.686694	100
98	Hertogenbosch,  Stedelijk Museum	\N	2023-11-28 14:04:47.730948	2023-11-28 14:04:47.730948	101
99	Venet, Diane	\N	2023-11-28 14:04:47.770092	2023-11-28 14:04:47.770092	102
100	Venet, Diane	\N	2023-11-28 14:04:47.811068	2023-11-28 14:04:47.811068	103
101	Anguera (Frau)	\N	2023-11-28 14:04:47.861934	2023-11-28 14:04:47.861934	104
102	Mercader, Jaime	\N	2023-11-28 14:04:47.881755	2023-11-28 14:04:47.881755	105
103	Seroussi, Natalie Gargallo, Pierrete	\N	2023-11-28 14:04:47.929308	2023-11-28 14:04:47.929308	106
104	Bomsel, M.	\N	2023-11-28 14:04:47.983657	2023-11-28 14:04:47.983657	107
105	Bomsel, M.	\N	2023-11-28 14:04:48.008971	2023-11-28 14:04:48.008971	108
106	Danischewsky, Brenda	\N	2023-11-28 14:04:48.029692	2023-11-28 14:04:48.029692	109
107	Haspeslagh, Martine & Didier	\N	2023-11-28 14:04:48.045563	2023-11-28 14:04:48.045563	110
108	Provenienz: Private collection, Paris Louisa Guinness Gallery, London Acquired from the above by the present owner	\N	2023-11-28 14:04:48.092801	2023-11-28 14:04:48.092801	111
109	Haspeslagh, Martine & Didier	\N	2023-11-28 14:04:48.151802	2023-11-28 14:04:48.151802	112
110	Paris, Musée des Arts décoratifs Brausen, Erica	\N	2023-11-28 14:04:48.197156	2023-11-28 14:04:48.197156	113
111	Venet, Diane	\N	2023-11-28 14:04:48.242646	2023-11-28 14:04:48.242646	114
112	Hamburg, Museum für Kunst und Gewerbe Inv.Nr. 1931.309	\N	2023-11-28 14:04:48.287403	2023-11-28 14:04:48.287403	115
113	Hamburg, Museum für Kunst und Gewerbe Inv.Nr. 1931.310	\N	2023-11-28 14:04:48.359979	2023-11-28 14:04:48.359979	116
114	Hamburg, Museum für Kunst und Gewerbe Inv.Nr. 1968.144	\N	2023-11-28 14:04:48.401713	2023-11-28 14:04:48.401713	117
115	Hamburg, Museum für Kunst und Gewerbe Inv.Nr. 1995.310	\N	2023-11-28 14:04:48.450079	2023-11-28 14:04:48.450079	118
116	Hamburg, Museum für Kunst und Gewerbe Inv.Nr. 1995.311	\N	2023-11-28 14:04:48.525332	2023-11-28 14:04:48.525332	119
117	Hamburg, Museum für Kunst und Gewerbe Inv.Nr. 1998.153	\N	2023-11-28 14:04:48.572746	2023-11-28 14:04:48.572746	120
118	Hamburg, Museum für Kunst und Gewerbe Inv.Nr. 1970.016 	\N	2023-11-28 14:04:48.624373	2023-11-28 14:04:48.624373	121
119	Hamburg, Museum für Kunst und Gewerbe  Inv. Nr. 1970.015	\N	2023-11-28 14:04:48.665676	2023-11-28 14:04:48.665676	122
120	Hamburg, Museum für Kunst und Gewerbe Inv.Nr. 1966.121	\N	2023-11-28 14:04:48.71071	2023-11-28 14:04:48.71071	123
121	Hamburg, Museum für Kunst und Gewerbe  Inv. Nr. 1966.120	\N	2023-11-28 14:04:48.74937	2023-11-28 14:04:48.74937	124
122	Hamburg, Museum für Kunst und Gewerbe  Inv. Nr. 1966.122	\N	2023-11-28 14:04:48.794719	2023-11-28 14:04:48.794719	125
123	Hamburg, Museum für Kunst und Gewerbe  Inv. Nr. 1970.017	\N	2023-11-28 14:04:48.834443	2023-11-28 14:04:48.834443	126
124	Heckel, Erich (Nachlass??)	\N	2023-11-28 14:04:48.877998	2023-11-28 14:04:48.877998	127
125	Heckel, Erich (Nachlass??)	\N	2023-11-28 14:04:48.897839	2023-11-28 14:04:48.897839	128
126	Heckel, Erich (Nachlass??)	\N	2023-11-28 14:04:48.917849	2023-11-28 14:04:48.917849	129
127	Heckel, Erich (Nachlass??)	\N	2023-11-28 14:04:48.938306	2023-11-28 14:04:48.938306	130
128	Woesthoff, Indina	\N	2023-11-28 14:04:48.958769	2023-11-28 14:04:48.958769	131
129	Woesthoff, Indina	\N	2023-11-28 14:04:49.005558	2023-11-28 14:04:49.005558	132
130	Hamburg, Museum für Kunst und Gewerbe Inv.Nr. noch nicht vergeben	\N	2023-11-28 14:04:49.056642	2023-11-28 14:04:49.056642	133
131	Hamburg, Museum für Kunst und Gewerbe Inv.Nr. 1980.005	\N	2023-11-28 14:04:49.119513	2023-11-28 14:04:49.119513	134
132	Hamburg, Museum für Kunst und Gewerbe Inv.Nr. 1980.006	\N	2023-11-28 14:04:49.181009	2023-11-28 14:04:49.181009	135
133	Sunyer, Ramon	\N	2023-11-28 14:04:49.227785	2023-11-28 14:04:49.227785	136
134	Mercader, Jaime	\N	2023-11-28 14:04:49.307228	2023-11-28 14:04:49.307228	137
135	Hamburg, Museum für Kunst und Gewerbe Inv.Nr. 1901.441	\N	2023-11-28 14:04:49.376313	2023-11-28 14:04:49.376313	138
136	Fischer, Ernst	\N	2023-11-28 14:04:49.40124	2023-11-28 14:04:49.40124	139
137	Küppers, Diana Hertogenbosch, Stedelijk Museum	\N	2023-11-28 14:04:49.426131	2023-11-28 14:04:49.426131	140
138	Hamburg, Museum für Kunst und Gewerbe Inv.Nr. 1926.069	\N	2023-11-28 14:04:49.48185	2023-11-28 14:04:49.48185	141
139	Hamburg, Museum für Kunst und Gewerbe Inv.Nr. 1926.070	\N	2023-11-28 14:04:49.532886	2023-11-28 14:04:49.532886	142
140	Hamburg, Museum für Kunst und Gewerbe Inv.Nr. 1926.071	\N	2023-11-28 14:04:49.586339	2023-11-28 14:04:49.586339	143
141	Hamburg, Museum für Kunst und Gewerbe Inv.Nr. 1926.072	\N	2023-11-28 14:04:49.632742	2023-11-28 14:04:49.632742	144
142	Hamburg, Museum für Kunst und Gewerbe Inv.Nr. 1926.073	\N	2023-11-28 14:04:49.696153	2023-11-28 14:04:49.696153	145
143	Venet, Diane	\N	2023-11-28 14:04:49.744896	2023-11-28 14:04:49.744896	146
144	Hamburg, Museum für Kunst und Gewerbe Inv.Nr. 2005.080	\N	2023-11-28 14:04:49.794145	2023-11-28 14:04:49.794145	147
145	Hamburg, Museum für Kunst und Gewerbe Inv.Nr. 2006.054	\N	2023-11-28 14:04:49.841653	2023-11-28 14:04:49.841653	148
146	Hamburg, Museum für Kunst und Gewerbe Inv.Nr. 2006.055	\N	2023-11-28 14:04:49.892876	2023-11-28 14:04:49.892876	149
147	Guinness, Louisa	\N	2023-11-28 14:04:49.939711	2023-11-28 14:04:49.939711	150
148	Küppers, Diana	\N	2023-11-28 14:04:49.979455	2023-11-28 14:04:49.979455	151
149	Hamburg, Museum für Kunst und Gewerbe Inv.Nr. 2003.205	\N	2023-11-28 14:04:50.02419	2023-11-28 14:04:50.02419	152
150	Laurens, Claude	\N	2023-11-28 14:04:50.072934	2023-11-28 14:04:50.072934	153
151	Laurens, Claude (nur bei Abb. So benannt)	\N	2023-11-28 14:04:50.092771	2023-11-28 14:04:50.092771	154
152	Venet, Diane (Ex. 165)	\N	2023-11-28 14:04:50.143585	2023-11-28 14:04:50.143585	155
153	LeWitt, Sofia	\N	2023-11-28 14:04:50.245938	2023-11-28 14:04:50.245938	157
154	Haspeslagh, Martine & Didier	\N	2023-11-28 14:04:50.296697	2023-11-28 14:04:50.296697	158
155	Venet, Diane	\N	2023-11-28 14:04:50.341341	2023-11-28 14:04:50.341341	159
156	?	\N	2023-11-28 14:04:50.386423	2023-11-28 14:04:50.386423	160
157	Cunliffe, Mitzi	\N	2023-11-28 14:04:50.406286	2023-11-28 14:04:50.406286	161
158	Haspeslagh, Martine & Didier	\N	2023-11-28 14:04:50.423114	2023-11-28 14:04:50.423114	162
159	Venet, Diane	\N	2023-11-28 14:04:50.469088	2023-11-28 14:04:50.469088	163
160	Provenienz:Acquired by bequest from artist to his wife Simone Andrée Marie-Louise Lurçat in 1966 L'École des Arts Joailliers, Paris (acquired as a gift from the above, 2003) Acquired from the above by the present owner	\N	2023-11-28 14:04:50.519362	2023-11-28 14:04:50.519362	164
161	United States, Privatsammlung	\N	2023-11-28 14:04:50.578784	2023-11-28 14:04:50.578784	165
162	Hamburg, Museum für Kunst und Gewerbe Inv.Nr. 1969.146	\N	2023-11-28 14:04:50.626728	2023-11-28 14:04:50.626728	166
163	Patek Philippe	\N	2023-11-28 14:04:50.687724	2023-11-28 14:04:50.687724	167
164	Patek Philippe	\N	2023-11-28 14:04:50.79225	2023-11-28 14:04:50.79225	168
165	Patek Philippe	\N	2023-11-28 14:04:50.814658	2023-11-28 14:04:50.814658	169
166	Patek Philippe	\N	2023-11-28 14:04:50.881915	2023-11-28 14:04:50.881915	170
167	Patek Philippe	\N	2023-11-28 14:04:50.902628	2023-11-28 14:04:50.902628	171
168	Patek Philippe	\N	2023-11-28 14:04:50.929566	2023-11-28 14:04:50.929566	172
169	Paris, Musée des Arts décoratifs, Inv.Nr. 2003.125.1	\N	2023-11-28 14:04:50.961695	2023-11-28 14:04:50.961695	174
170	Paris, Musée des Arts décoratifs, Inv.Nr. 2003.125.2	\N	2023-11-28 14:04:51.002933	2023-11-28 14:04:51.002933	175
171	Paris, Musée des Arts décoratifs, Inv.Nr. 2003.125.3	\N	2023-11-28 14:04:51.04365	2023-11-28 14:04:51.04365	176
172	Paris, Musée des Arts décoratifs, Inv.Nr. 2003.125.4	\N	2023-11-28 14:04:51.090933	2023-11-28 14:04:51.090933	177
173	Seroussi, Natalie	\N	2023-11-28 14:04:51.142003	2023-11-28 14:04:51.142003	178
174	Audouard, Soizic	\N	2023-11-28 14:04:51.188619	2023-11-28 14:04:51.188619	179
175	Audouard, Soizic	\N	2023-11-28 14:04:51.234695	2023-11-28 14:04:51.234695	180
176	Mataré (Angabe im Ausst.Kat. London) Privatbesitz (WVZ)	\N	2023-11-28 14:04:51.286738	2023-11-28 14:04:51.286738	181
177	Seebüll, Stiftung Ada und Emil Nolde	\N	2023-11-28 14:04:51.337651	2023-11-28 14:04:51.337651	182
178	Seebüll, Stiftung Ada und Emil Nolde	\N	2023-11-28 14:04:51.35728	2023-11-28 14:04:51.35728	183
179	Seebüll, Stiftung Ada und Emil Nolde	\N	2023-11-28 14:04:51.37685	2023-11-28 14:04:51.37685	184
180	Seebüll, Stiftung Ada und Emil Nolde	\N	2023-11-28 14:04:51.400443	2023-11-28 14:04:51.400443	185
181	Seebüll, Stiftung Ada und Emil Nolde	\N	2023-11-28 14:04:51.425618	2023-11-28 14:04:51.425618	186
182	Breton, Aube Elléoüet (Armreif) Visser, Tilly (Armreif) Bürgi, Dominique (Ring mit kurzem Pelzbesatz) Fleiss, Clo Hamburg, Museum für Kunst und GewerbeInv.Nr. 2004.014Hier aus Ebenholz und weißem Pelz,  durch Ortrun Heinrich 2003 gefertigt. Ankauf - 2003 (Dez.) - Vorbesitzer: Levy, Thomas, Hamburg – Einzelstück   Wenger/Bühler (Nachlass Oppenheim)	\N	2023-11-28 14:04:51.453653	2023-11-28 14:04:51.453653	187
183	Bürgi, Dominique (Prototyp aus gefasstem Holz) Venet, Diane	\N	2023-11-28 14:04:51.500062	2023-11-28 14:04:51.500062	188
184	Hahnloser, Maria (Tochter v. Margrit Hahnloser?) – Auftrag Bürgi, Dominique (Prototyp mit Strasssteinen und einfachen Klemmen anstelle einer Nadel)	\N	2023-11-28 14:04:51.5456	2023-11-28 14:04:51.5456	189
185	Hertogenbosch, Stedelijk Museum Hamburg, Museum für Kunst und GewerbeInv.Nr. 2004.013Vorbesitzer: Levy, Thomas, Hamburg, Ankauf für 1200€, Auflage 12 Ex.	\N	2023-11-28 14:04:51.590715	2023-11-28 14:04:51.590715	190
186	Venet, Diane	\N	2023-11-28 14:04:51.629391	2023-11-28 14:04:51.629391	191
187	Venet, Diane	\N	2023-11-28 14:04:51.675269	2023-11-28 14:04:51.675269	192
188	Wenger/Bühler (Nachlass Oppenheim) (Prototyp aus Messing, 19 x 6,5cm)	\N	2023-11-28 14:04:51.717807	2023-11-28 14:04:51.717807	193
189	Wenger/Bühler (Oppenheim Nachlass)	\N	2023-11-28 14:04:51.763502	2023-11-28 14:04:51.763502	194
190	Wenger/Bühler (Oppenheim Nachlass)	\N	2023-11-28 14:04:51.808256	2023-11-28 14:04:51.808256	195
191	Hamburg, Museum für Kunst und Gewerbe Inv.Nr. 1995.266	\N	2023-11-28 14:04:52.325565	2023-11-28 14:04:52.325565	207
192	Berlin, Familienbesitz/ Nachlass Pechstein	\N	2023-11-28 14:04:52.379449	2023-11-28 14:04:52.379449	208
193	Boston, Familienbesitz/ Nachlass Pechstein	\N	2023-11-28 14:04:52.431271	2023-11-28 14:04:52.431271	209
194	Berlin, Familienbesitz/ Nachlass Pechstein	\N	2023-11-28 14:04:52.482573	2023-11-28 14:04:52.482573	210
195	Berlin, Familienbesitz/ Nachlass Pechstein	\N	2023-11-28 14:04:52.532664	2023-11-28 14:04:52.532664	211
196	Berlin, Familienbesitz/ Nachlass Pechstein	\N	2023-11-28 14:04:52.585949	2023-11-28 14:04:52.585949	212
197	Frankreich, Privatbesitz	\N	2023-11-28 14:04:52.636809	2023-11-28 14:04:52.636809	213
198	Berlin, Privatbesitz (Moers)	\N	2023-11-28 14:04:52.676224	2023-11-28 14:04:52.676224	214
199	Privatbesitz Moers (Moers)	\N	2023-11-28 14:04:52.686414	2023-11-28 14:04:52.686414	215
200	unbekannt	\N	2023-11-28 14:04:52.70153	2023-11-28 14:04:52.70153	216
201	unbekannt	\N	2023-11-28 14:04:52.716278	2023-11-28 14:04:52.716278	217
202	Cowles Meyer, Fleur	\N	2023-11-28 14:04:52.746854	2023-11-28 14:04:52.746854	218
203	Hamburg, Museum für Kunst und Gewerbe Inv.Nr. 1953.120	\N	2023-11-28 14:04:52.793272	2023-11-28 14:04:52.793272	219
204	Hertogenbosch, Stedelijk Museum	\N	2023-11-28 14:04:52.850758	2023-11-28 14:04:52.850758	220
205	Monbrison, Naïla de	\N	2023-11-28 14:04:52.890686	2023-11-28 14:04:52.890686	221
206	Paris, Musée des Arts décoratifs	\N	2023-11-28 14:04:52.935858	2023-11-28 14:04:52.935858	222
207	Roubaix, La Piscine-Musée d'Art et d'Industrie André Diligent	\N	2023-11-28 14:04:52.981964	2023-11-28 14:04:52.981964	223
208	Roubaix, La Piscine-Musée d'Art et d'Industrie André Diligent	\N	2023-11-28 14:04:53.032952	2023-11-28 14:04:53.032952	224
209	Roubaix, La Piscine-Musée d'Art et d'Industrie André Diligent	\N	2023-11-28 14:04:53.081467	2023-11-28 14:04:53.081467	225
210	Roubaix, La Piscine-Musée d'Art et d'Industrie André Diligent Venet, Diane (Ex. 16/20)	\N	2023-11-28 14:04:53.135014	2023-11-28 14:04:53.135014	226
211	Venet, Diane	\N	2023-11-28 14:04:53.183458	2023-11-28 14:04:53.183458	227
212	Venet, Diane	\N	2023-11-28 14:04:53.225314	2023-11-28 14:04:53.225314	228
213	Venet, Diane	\N	2023-11-28 14:04:53.273817	2023-11-28 14:04:53.273817	229
214	Astor, Mrs. David	\N	2023-11-28 14:04:53.326687	2023-11-28 14:04:53.326687	230
215	D'Arquian, M. Maurice	\N	2023-11-28 14:04:53.387078	2023-11-28 14:04:53.387078	231
216	Haspeslagh, Martine & Didier	\N	2023-11-28 14:04:53.461401	2023-11-28 14:04:53.461401	232
217	München (Hermann Jünger) ehemals, dann versteigert! (Info nicht gesichert, da aus Kat. Nicht erkennbar)	\N	2023-11-28 14:04:53.507868	2023-11-28 14:04:53.507868	233
218	Venet, Diane	\N	2023-11-28 14:04:53.593972	2023-11-28 14:04:53.593972	234
219	Rickey, George Nachlass	\N	2023-11-28 14:04:53.636515	2023-11-28 14:04:53.636515	235
220	Rickey, George Nachlass	\N	2023-11-28 14:04:53.676458	2023-11-28 14:04:53.676458	236
221	Hamburg, Museum für Kunst und Gewerbe Inv.Nr. 1969.059	\N	2023-11-28 14:04:53.728357	2023-11-28 14:04:53.728357	237
222	Hamburg, Museum für Kunst und Gewerbe Inv.Nr.1969.060	\N	2023-11-28 14:04:53.785165	2023-11-28 14:04:53.785165	238
223	Hamburg, Museum für Kunst und Gewerbe Inv.Nr.1969.064	\N	2023-11-28 14:04:53.83168	2023-11-28 14:04:53.83168	239
224	Hamburg, Museum für Kunst und Gewerbe Inv.Nr. 1920.037 Geschenk des Künstlers	\N	2023-11-28 14:04:53.880829	2023-11-28 14:04:53.880829	240
225	Ariane Sattler, Berlin	\N	2023-11-28 14:04:53.950796	2023-11-28 14:04:53.950796	241
226	Berlin, Brücke-Museum, Inv. Nr. E 34 (Karl und Emy Schmidt-Rottluff Stiftung, Nachlass des Künstlers)	\N	2023-11-28 14:04:53.994398	2023-11-28 14:04:53.994398	242
227	Hamburg, Museum für Kunst und Gewerbe Inv.Nr. 1926.070	\N	2023-11-28 14:04:54.039591	2023-11-28 14:04:54.039591	243
228	Hamburg, Museum für Kunst und Gewerbe Inv.Nr. 1926.071	\N	2023-11-28 14:04:54.085796	2023-11-28 14:04:54.085796	244
229	Hamburg, Museum für Kunst und Gewerbe Inv.Nr. 1926.072	\N	2023-11-28 14:04:54.143456	2023-11-28 14:04:54.143456	245
230	Hamburg, Museum für Kunst und Gewerbe Inv.Nr. 1961.017	\N	2023-11-28 14:04:54.198737	2023-11-28 14:04:54.198737	246
231	Hamburg, Museum für Kunst und Gewerbe Inv.Nr. 1961.091	\N	2023-11-28 14:04:54.259285	2023-11-28 14:04:54.259285	247
232	in Citavi!	\N	2023-11-28 14:04:54.301995	2023-11-28 14:04:54.301995	248
233	Nachlass ursprünglich, danach Privatbesitz	\N	2023-11-28 14:04:54.321289	2023-11-28 14:04:54.321289	249
234	Peters, Roswita (Geschenk)	\N	2023-11-28 14:04:54.366345	2023-11-28 14:04:54.366345	250
235	Woesthoff, Indina	\N	2023-11-28 14:04:54.408552	2023-11-28 14:04:54.408552	251
236	Privatbesitz, davor NL	\N	2023-11-28 14:04:54.633242	2023-11-28 14:04:54.633242	257
237	Privatbesitz, davor NL	\N	2023-11-28 14:04:54.679213	2023-11-28 14:04:54.679213	258
238	Roubaix, La Piscine-Musée d'Art et d'Industrie André Diligent	\N	2023-11-28 14:04:54.925319	2023-11-28 14:04:54.925319	264
239	Venet, Diane	\N	2023-11-28 14:04:54.974833	2023-11-28 14:04:54.974833	265
240	Hamburg, Museum für Kunst und Gewerbe Inv.Nr. 1972.006.a-c	\N	2023-11-28 14:04:55.027966	2023-11-28 14:04:55.027966	266
241	Küppers, Diana	\N	2023-11-28 14:04:55.09394	2023-11-28 14:04:55.09394	267
242	Küppers, Diana	\N	2023-11-28 14:04:55.134899	2023-11-28 14:04:55.134899	268
243	Lembark, Connie	\N	2023-11-28 14:04:55.180286	2023-11-28 14:04:55.180286	269
244	England, Privatsammlung	\N	2023-11-28 14:04:55.238458	2023-11-28 14:04:55.238458	270
245	United States, Privatsammlung	\N	2023-11-28 14:04:55.295282	2023-11-28 14:04:55.295282	271
246	United States, Privatsammlung	\N	2023-11-28 14:04:55.3506	2023-11-28 14:04:55.3506	272
247	United States, Privatsammlung	\N	2023-11-28 14:04:55.409227	2023-11-28 14:04:55.409227	273
248	Provenienz:Private Collection, Europe Acquired from the above by the present owner	\N	2023-11-28 14:04:55.46679	2023-11-28 14:04:55.46679	274
249	United States, Privatsammlung	\N	2023-11-28 14:04:55.526431	2023-11-28 14:04:55.526431	275
250	Provenienz:Collection of Maurice d’Arquian, Brussels Sotheby’s London: May 19, 1988 [Lot 424] Artcurial: Contemporary Art 2, December 7, 2010 [Lot 139] Acquired from the above by the present owner	\N	2023-11-28 14:04:55.585879	2023-11-28 14:04:55.585879	276
251	Belgien, Privatsammlung	\N	2023-11-28 14:04:55.648798	2023-11-28 14:04:55.648798	277
252	Köln, MAKK  Inv.-Nr. G00438 Zugangsnr. 1967.0063	\N	2023-11-28 14:04:55.706465	2023-11-28 14:04:55.706465	278
253	?	\N	2023-11-28 14:04:55.752906	2023-11-28 14:04:55.752906	279
254	?	\N	2023-11-28 14:04:55.773082	2023-11-28 14:04:55.773082	280
255	?	\N	2023-11-28 14:04:55.791575	2023-11-28 14:04:55.791575	281
256	?	\N	2023-11-28 14:04:55.811306	2023-11-28 14:04:55.811306	282
257	?	\N	2023-11-28 14:04:55.83157	2023-11-28 14:04:55.83157	283
258	?	\N	2023-11-28 14:04:55.851613	2023-11-28 14:04:55.851613	284
259	?	\N	2023-11-28 14:04:55.871259	2023-11-28 14:04:55.871259	285
260	Abeler, erworben 1967 auf Auktion (Nachlass-Auktion)	\N	2023-11-28 14:04:55.890938	2023-11-28 14:04:55.890938	286
261	?	\N	2023-11-28 14:04:55.976902	2023-11-28 14:04:55.976902	288
262	?	\N	2023-11-28 14:04:55.995941	2023-11-28 14:04:55.995941	289
263	Köln, MAKK  Inv.-Nr. G01344 Zugangsnr. 1984.0049	\N	2023-11-28 14:04:56.016013	2023-11-28 14:04:56.016013	290
264	Köln, MAKK  Inv.-Nr. MAKK 2018/0052 1-2 Zugangsnr. 2018.0077/1-2	\N	2023-11-28 14:04:56.051295	2023-11-28 14:04:56.051295	291
265	Köln, MAKK  Inv.-Nr. MAKK 2018/0053 01-04 Zugangsnr. 2018.0078/1-4	\N	2023-11-28 14:04:56.092753	2023-11-28 14:04:56.092753	292
266	Köln, MAKK  Inv.-Nr. MAKK 2020/0004 Zugangsnr. 2020.0004 (Schenkung Sonja Mataré)	\N	2023-11-28 14:04:56.140009	2023-11-28 14:04:56.140009	293
267	Köln, MAKK  Inv.-Nr. MAKK  2020/0009 Zugangsnr. 2020.0004 (Schenkung Sonja Mataré)	\N	2023-11-28 14:04:56.186743	2023-11-28 14:04:56.186743	294
268	Köln, MAKK  Inv.-Nr. MAKK 2020/0011 Zugangsnr. 004_2020 (Schenkung Sonja Mataré)	\N	2023-11-28 14:04:56.232183	2023-11-28 14:04:56.232183	295
269	Köln, MAKK  Inv.-Nr. MAKK 2020/0012 Zugangsnr. 2020.0004 (Schenkung Sonja Mataré)	\N	2023-11-28 14:04:56.271645	2023-11-28 14:04:56.271645	296
270	Köln, MAKK  Inv.-Nr. MAKK 2020/0013 Zugangsnr. 2020.0004 (Schenkung Sonja Mataré)	\N	2023-11-28 14:04:56.310579	2023-11-28 14:04:56.310579	297
271	Köln, MAKK  Inv.-Nr. MAKK 2020/0017 Zugangsnr. 2020.04 (Schenkung Sonja Mataré)	\N	2023-11-28 14:04:56.357825	2023-11-28 14:04:56.357825	298
272	Köln, MAKK  Inv.-Nr. OV00340 Zugangsnr. DL0046/019	\N	2023-11-28 14:04:56.397574	2023-11-28 14:04:56.397574	299
273	Privatbesitz	\N	2023-11-28 14:04:56.442996	2023-11-28 14:04:56.442996	300
274	Privatbesitz	\N	2023-11-28 14:04:56.50438	2023-11-28 14:04:56.50438	301
275	Auftragsarbeit für Ernst Petersen und seinen Freundeskreis, der sich auf dem Lilienhof in Ihringen/Baden traf Privatbesitz	\N	2023-11-28 14:04:56.558324	2023-11-28 14:04:56.558324	302
\.


--
-- Data for Name: references; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."references" (id, text, item_id, created_at, updated_at) FROM stdin;
1	Literatur	1	2023-11-28 14:04:43.018217	2023-11-28 14:04:43.018217
2	Worshipful Company of Goldsmiths (Hg.) und Victoria and Albert Museum (Hg.): International exhibition of modern jewellery 1890-1961. The Worshipful Company of Goldsmiths u.a., London, 1961. S. Kat.-Nr. 19	2	2023-11-28 14:04:43.0781	2023-11-28 14:04:43.0781
3	Worshipful Company of Goldsmiths (Hg.) und Victoria and Albert Museum (Hg.): International exhibition of modern jewellery 1890-1961. The Worshipful Company of Goldsmiths u.a., London, 1961. S. Kat.-Nr. 21	3	2023-11-28 14:04:43.099079	2023-11-28 14:04:43.099079
4	Worshipful Company of Goldsmiths (Hg.) und Victoria and Albert Museum (Hg.): International exhibition of modern jewellery 1890-1961. The Worshipful Company of Goldsmiths u.a., London, 1961. S. Kat.-Nr. 20 u. Abb. 82.	4	2023-11-28 14:04:43.12013	2023-11-28 14:04:43.12013
5	Abb. aus: Elisabeth Dühr für das Stadtmuseum Simeonstift Trier (Hg): Zierrat. Künstlerservice und Künstlerschmuck von Pablo Picasso bis Cindy Sherman aus dem Stedelijk Museum’s–Hertogenbosch. 25. März–12. August 2012. Trier, 2012. S. 27.	5	2023-11-28 14:04:43.194389	2023-11-28 14:04:43.194389
6	Abb. aus: Elisabeth Dühr für das Stadtmuseum Simeonstift Trier (Hg): Zierrat. Künstlerservice und Künstlerschmuck von Pablo Picasso bis Cindy Sherman aus dem Stedelijk Museum’s–Hertogenbosch. 25. März–12. August 2012. Trier, 2012. S. 27.	6	2023-11-28 14:04:43.283167	2023-11-28 14:04:43.283167
7	Abb. Aus: Diane Venet (Hg.): Bijoux sculptures. L'art vous va si bien. Paris, 2008. S. 36. http://www.diana-kueppers-artinjewel.de/arp.html	7	2023-11-28 14:04:43.458445	2023-11-28 14:04:43.458445
8	Worshipful Company of Goldsmiths (Hg.) und Victoria and Albert Museum (Hg.): International exhibition of modern jewellery 1890-1961. The Worshipful Company of Goldsmiths u.a., London, 1961. S. Kat.-Nr. 18	8	2023-11-28 14:04:43.511438	2023-11-28 14:04:43.511438
9	Abb. Aus: Diane Venet (Hg.): Bijoux sculptures. L'art vous va si bien. Paris, 2008. S. 36. http://www.diana-kueppers-artinjewel.de/arp.html	9	2023-11-28 14:04:43.534215	2023-11-28 14:04:43.534215
10	Auktionskatalog:Sotheby's: Art as Jewelery as Art. Onlineauktion 23.09.–4.10.22 Nr. 72.	10	2023-11-28 14:04:43.582301	2023-11-28 14:04:43.582301
11	Abb. Aus: Bijoux d'artistes, de Calder à Koons : la collection idéale de Diane Venet : / préface d'Olivier Gabet Paris, 2018. S. 25.	11	2023-11-28 14:04:43.632274	2023-11-28 14:04:43.632274
12	Abb. Aus: Bijoux d'artistes, de Calder à Koons : la collection idéale de Diane Venet : / préface d'Olivier Gabet Paris, 2018. S. 20.	12	2023-11-28 14:04:43.688747	2023-11-28 14:04:43.688747
13	Worshipful Company of Goldsmiths (Hg.) und Victoria and Albert Museum (Hg.): International exhibition of modern jewellery 1890-1961. The Worshipful Company of Goldsmiths u.a., London, 1961. S. Kat.-Nr. 6, Abb. Plate 74	13	2023-11-28 14:04:43.744354	2023-11-28 14:04:43.744354
14	Worshipful Company of Goldsmiths (Hg.) und Victoria and Albert Museum (Hg.): International exhibition of modern jewellery 1890-1961. The Worshipful Company of Goldsmiths u.a., London, 1961. S. Kat.-Nr. 51, Abb. Plate 59 (sowie weitere Katnr. 47–52 , ohne Abb.)	14	2023-11-28 14:04:43.82913	2023-11-28 14:04:43.82913
15	Abb. Aus: Runde, Sabine (Hrsg.) u. Wahner, Matthias (Hrsg.): Kunsthandwerk ist Kaktus : die Sammlung seit 1945. Museum Angewandte Kunst. Stuttgart, 2022. S. 70.	16	2023-11-28 14:04:43.947544	2023-11-28 14:04:43.947544
16	Worshipful Company of Goldsmiths (Hg.) und Victoria and Albert Museum (Hg.): International exhibition of modern jewellery 1890-1961. The Worshipful Company of Goldsmiths u.a., London, 1961. S. Kat.-Nr. 596, Abb. Plate 79 (sowie weitere Katnr. 595–597 , ohne Abb.)	18	2023-11-28 14:04:44.078386	2023-11-28 14:04:44.078386
17	Howoldt, Jenns E.: Ervin Bossanyi (1891 - 1975) – Vision und Gestaltung. Die Lübecker Jahre eines Malers. Lübeck, 1988. S. 24, Nr. 61.	21	2023-11-28 14:04:44.270722	2023-11-28 14:04:44.270722
18	Howoldt, Jenns E.: Ervin Bossanyi (1891 - 1975) – Vision und Gestaltung. Die Lübecker Jahre eines Malers. Lübeck, 1988. S. 24, Nr. 60. (?)	22	2023-11-28 14:04:44.320228	2023-11-28 14:04:44.320228
19	Howoldt, Jenns E.: Ervin Bossanyi (1891 - 1975) – Vision und Gestaltung. Die Lübecker Jahre eines Malers. Lübeck, 1988. S. 24, Nr. 69.	23	2023-11-28 14:04:44.370557	2023-11-28 14:04:44.370557
20	Howoldt, Jenns E.: Ervin Bossanyi (1891 - 1975) – Vision und Gestaltung. Die Lübecker Jahre eines Malers. Lübeck, 1988. S. 24, Nr. 64. (?)	25	2023-11-28 14:04:44.472976	2023-11-28 14:04:44.472976
21	Auktionskatalog:Sotheby's: Art as Jewelery as Art. Onlineauktion 23.09.–4.10.22 Nr. 70.	29	2023-11-28 14:04:44.653268	2023-11-28 14:04:44.653268
22	Abb. aus: Elisabeth Dühr für das Stadtmuseum Simeonstift Trier (Hg): Zierrat. Künstlerservice und Künstlerschmuck von Pablo Picasso bis Cindy Sherman aus dem Stedelijk Museum’s–Hertogenbosch. 25. März–12. August 2012. Trier, 2012. S. 37.	30	2023-11-28 14:04:44.704004	2023-11-28 14:04:44.704004
23	Abb. aus: Elisabeth Dühr für das Stadtmuseum Simeonstift Trier (Hg): Zierrat. Künstlerservice und Künstlerschmuck von Pablo Picasso bis Cindy Sherman aus dem Stedelijk Museum’s–Hertogenbosch. 25. März–12. August 2012. Trier, 2012. S. 41.	31	2023-11-28 14:04:44.750456	2023-11-28 14:04:44.750456
24	Abb. Aus: Diane Venet (Hg.): Bijoux sculptures. L'art vous va si bien. Paris, 2008. S. 40.	32	2023-11-28 14:04:44.792319	2023-11-28 14:04:44.792319
25	Auktionskatalog:Sotheby's: Art as Jewelery as Art. Onlineauktion 23.09.–4.10.22 Nr. 94.	33	2023-11-28 14:04:44.841024	2023-11-28 14:04:44.841024
26	Abb. Aus: Diane Venet (Hg.): Bijoux sculptures. L'art vous va si bien. Paris, 2008. S. 40.	34	2023-11-28 14:04:44.883985	2023-11-28 14:04:44.883985
27	Abb. Aus: Diane Venet (Hg.): Bijoux sculptures. L'art vous va si bien. Paris, 2008. S. 40. http://collections.madparis.fr/clip-asteria	35	2023-11-28 14:04:44.925147	2023-11-28 14:04:44.925147
28	http://collections.madparis.fr/clip-hemera	36	2023-11-28 14:04:44.970793	2023-11-28 14:04:44.970793
29	Abb. Aus: Bijoux d'artistes, de Calder à Koons : la collection idéale de Diane Venet : / préface d'Olivier Gabet Paris, 2018. S. 41. http://collections.madparis.fr/clip-hades	37	2023-11-28 14:04:45.017814	2023-11-28 14:04:45.017814
30	http://collections.madparis.fr/clip-hera	38	2023-11-28 14:04:45.058173	2023-11-28 14:04:45.058173
31	http://collections.madparis.fr/collier-alcyone	39	2023-11-28 14:04:45.098986	2023-11-28 14:04:45.098986
32	http://collections.madparis.fr/clip-selene 	40	2023-11-28 14:04:45.139038	2023-11-28 14:04:45.139038
33	http://collections.madparis.fr/bague-peristera	41	2023-11-28 14:04:45.178084	2023-11-28 14:04:45.178084
34	http://collections.madparis.fr/clip-hecate-ii	42	2023-11-28 14:04:45.217285	2023-11-28 14:04:45.217285
35	Abb. Aus: Bijoux d'artistes, de Calder à Koons : la collection idéale de Diane Venet : / préface d'Olivier Gabet Paris, 2018. S. 41. http://collections.madparis.fr/bague-hecate-xiii	43	2023-11-28 14:04:45.259311	2023-11-28 14:04:45.259311
36	Auktionskatalog:Sotheby's: Art as Jewelery as Art. Onlineauktion 23.09.–4.10.22 Nr. 93.	44	2023-11-28 14:04:45.305393	2023-11-28 14:04:45.305393
37	Auktionskatalog:Sotheby's: Art as Jewelery as Art. Onlineauktion 23.09.–4.10.22 Nr. 95.	45	2023-11-28 14:04:45.354986	2023-11-28 14:04:45.354986
38	Auktionskatalog:Sotheby's: Art as Jewelery as Art. Onlineauktion 23.09.–4.10.22 Nr. 96.	46	2023-11-28 14:04:45.404164	2023-11-28 14:04:45.404164
39	Abb. Aus: Bijoux d'artistes, de Calder à Koons : la collection idéale de Diane Venet : / préface d'Olivier Gabet Paris, 2018. S. 41	47	2023-11-28 14:04:45.449505	2023-11-28 14:04:45.449505
40	https://www.hecateparis.com/	48	2023-11-28 14:04:45.497879	2023-11-28 14:04:45.497879
41	WVZ?	49	2023-11-28 14:04:45.518913	2023-11-28 14:04:45.518913
42	WVZ?	50	2023-11-28 14:04:45.566365	2023-11-28 14:04:45.566365
43	Abb. Aus: Diane Venet (Hg.): Bijoux sculptures. L'art vous va si bien. Paris, 2008. S. 45.	51	2023-11-28 14:04:45.606688	2023-11-28 14:04:45.606688
44	Worshipful Company of Goldsmiths (Hg.) und Victoria and Albert Museum (Hg.): International exhibition of modern jewellery 1890-1961. The Worshipful Company of Goldsmiths u.a., London, 1961. S. Kat.-Nr. 99 u. Abb. 37.	52	2023-11-28 14:04:45.655683	2023-11-28 14:04:45.655683
45	Worshipful Company of Goldsmiths (Hg.) und Victoria and Albert Museum (Hg.): International exhibition of modern jewellery 1890-1961. The Worshipful Company of Goldsmiths u.a., London, 1961. S. Kat.-Nr. 100 u. Abb. 37.	53	2023-11-28 14:04:45.700248	2023-11-28 14:04:45.700248
46	Worshipful Company of Goldsmiths (Hg.) und Victoria and Albert Museum (Hg.): International exhibition of modern jewellery 1890-1961. The Worshipful Company of Goldsmiths u.a., London, 1961. S. Kat.-Nr. 101 u. Abb. 38.	54	2023-11-28 14:04:45.745167	2023-11-28 14:04:45.745167
47	Worshipful Company of Goldsmiths (Hg.) und Victoria and Albert Museum (Hg.): International exhibition of modern jewellery 1890-1961. The Worshipful Company of Goldsmiths u.a., London, 1961. S. Kat.-Nr. 102 u. Ab. 39.	55	2023-11-28 14:04:45.791903	2023-11-28 14:04:45.791903
48	Worshipful Company of Goldsmiths (Hg.) und Victoria and Albert Museum (Hg.): International exhibition of modern jewellery 1890-1961. The Worshipful Company of Goldsmiths u.a., London, 1961. S. Kat.-Nr. 103.	56	2023-11-28 14:04:45.851018	2023-11-28 14:04:45.851018
49	Worshipful Company of Goldsmiths (Hg.) und Victoria and Albert Museum (Hg.): International exhibition of modern jewellery 1890-1961. The Worshipful Company of Goldsmiths u.a., London, 1961. S. Kat.-Nr. 104.	57	2023-11-28 14:04:45.875606	2023-11-28 14:04:45.875606
50	Abb. Aus: Diane Venet (Hg.): Bijoux sculptures. L'art vous va si bien. Paris, 2008. S. 42.	58	2023-11-28 14:04:45.892505	2023-11-28 14:04:45.892505
51	Abb. Aus: Diane Venet (Hg.): Bijoux sculptures. L'art vous va si bien. Paris, 2008. S. 43.	59	2023-11-28 14:04:45.936379	2023-11-28 14:04:45.936379
52	Abb. Aus: Diane Venet (Hg.): Bijoux sculptures. L'art vous va si bien. Paris, 2008. S. 43.	60	2023-11-28 14:04:45.978033	2023-11-28 14:04:45.978033
53	Abb. Aus: Diane Venet (Hg.): Bijoux sculptures. L'art vous va si bien. Paris, 2008. S. 44.	61	2023-11-28 14:04:46.023601	2023-11-28 14:04:46.023601
54	Calder intime : expositions au Musée des Arts Décoratifs de Paris du 14 Février au 21 Mai 1989 / Daniel Marchesseau. Paris, 1989.	62	2023-11-28 14:04:46.070813	2023-11-28 14:04:46.070813
55	Worshipful Company of Goldsmiths (Hg.) und Victoria and Albert Museum (Hg.): International exhibition of modern jewellery 1890-1961. The Worshipful Company of Goldsmiths u.a., London, 1961. S. Kat.-Nr. 158.	63	2023-11-28 14:04:46.090415	2023-11-28 14:04:46.090415
56	Abb. Aus: Bijoux d'artistes, de Calder à Koons : la collection idéale de Diane Venet : / préface d'Olivier Gabet Paris, 2018. S. 68.	64	2023-11-28 14:04:46.105415	2023-11-28 14:04:46.105415
57	Abb. aus: Elisabeth Dühr für das Stadtmuseum Simeonstift Trier (Hg): Zierrat. Künstlerservice und Künstlerschmuck von Pablo Picasso bis Cindy Sherman aus dem Stedelijk Museum’s–Hertogenbosch. 25. März–12. August 2012. Trier, 2012. S. 49.	65	2023-11-28 14:04:46.151447	2023-11-28 14:04:46.151447
58	Abb. Aus: Diane Venet (Hg.): Bijoux sculptures. L'art vous va si bien. Paris, 2008. S. 50.	66	2023-11-28 14:04:46.192735	2023-11-28 14:04:46.192735
59	Auktionskatalog:Sotheby's: Art as Jewelery as Art. Onlineauktion 23.09.–4.10.22 Nr. 92.	67	2023-11-28 14:04:46.240361	2023-11-28 14:04:46.240361
60	Worshipful Company of Goldsmiths (Hg.) und Victoria and Albert Museum (Hg.): International exhibition of modern jewellery 1890-1961. The Worshipful Company of Goldsmiths u.a., London, 1961. S. Kat.-Nr. 168.	68	2023-11-28 14:04:46.290306	2023-11-28 14:04:46.290306
61	Worshipful Company of Goldsmiths (Hg.) und Victoria and Albert Museum (Hg.): International exhibition of modern jewellery 1890-1961. The Worshipful Company of Goldsmiths u.a., London, 1961. S. Kat.-Nr. 169.	69	2023-11-28 14:04:46.31206	2023-11-28 14:04:46.31206
62	Worshipful Company of Goldsmiths (Hg.) und Victoria and Albert Museum (Hg.): International exhibition of modern jewellery 1890-1961. The Worshipful Company of Goldsmiths u.a., London, 1961. S. Kat.-Nr. 170.	70	2023-11-28 14:04:46.332445	2023-11-28 14:04:46.332445
63	Abb. Aus: Bijoux d'artistes, de Calder à Koons : la collection idéale de Diane Venet : / préface d'Olivier Gabet Paris, 2018. S. 58.	71	2023-11-28 14:04:46.352723	2023-11-28 14:04:46.352723
64	Abb. Aus: Bijoux d'artistes, de Calder à Koons : la collection idéale de Diane Venet : / préface d'Olivier Gabet Paris, 2018. S. 58.	72	2023-11-28 14:04:46.391191	2023-11-28 14:04:46.391191
65	Worshipful Company of Goldsmiths (Hg.) und Victoria and Albert Museum (Hg.): International exhibition of modern jewellery 1890-1961. The Worshipful Company of Goldsmiths u.a., London, 1961. S. Kat.-Nr. 194.	73	2023-11-28 14:04:46.452278	2023-11-28 14:04:46.452278
66	Worshipful Company of Goldsmiths (Hg.) und Victoria and Albert Museum (Hg.): International exhibition of modern jewellery 1890-1961. The Worshipful Company of Goldsmiths u.a., London, 1961. S. Kat.-Nr. 194.	74	2023-11-28 14:04:46.473637	2023-11-28 14:04:46.473637
67	Auktionskatalog:Sotheby's: Art as Jewelery as Art. Onlineauktion 23.09.–4.10.22 Nr. 49.	75	2023-11-28 14:04:46.52494	2023-11-28 14:04:46.52494
68	Abb. Aus: Bijoux d'artistes, de Calder à Koons : la collection idéale de Diane Venet : / préface d'Olivier Gabet Paris, 2018. S. 66.	76	2023-11-28 14:04:46.545902	2023-11-28 14:04:46.545902
69	Abb. Aus: Bijoux d'artistes, de Calder à Koons : la collection idéale de Diane Venet : / préface d'Olivier Gabet Paris, 2018. S. 66.	77	2023-11-28 14:04:46.588222	2023-11-28 14:04:46.588222
70	Abb. Aus: Bijoux d'artistes, de Calder à Koons : la collection idéale de Diane Venet : / préface d'Olivier Gabet Paris, 2018. S. 75.	78	2023-11-28 14:04:46.634727	2023-11-28 14:04:46.634727
71	Abb. Aus: Bijoux d'artistes, de Calder à Koons : la collection idéale de Diane Venet : / préface d'Olivier Gabet Paris, 2018. S. 75.	79	2023-11-28 14:04:46.674402	2023-11-28 14:04:46.674402
72	Abb. Aus: Bijoux d'artistes, de Calder à Koons : la collection idéale de Diane Venet : / préface d'Olivier Gabet Paris, 2018. S. 75.	80	2023-11-28 14:04:46.713137	2023-11-28 14:04:46.713137
73	Abb. Aus: Diane Venet (Hg.): Bijoux sculptures. L'art vous va si bien. Paris, 2008. S. 52.	81	2023-11-28 14:04:46.759409	2023-11-28 14:04:46.759409
74	Abb. Aus: Bijoux d'artistes, de Calder à Koons : la collection idéale de Diane Venet : / préface d'Olivier Gabet Paris, 2018. S. 74.	82	2023-11-28 14:04:46.797708	2023-11-28 14:04:46.797708
75	Abb. Aus: Bijoux d'artistes, de Calder à Koons : la collection idéale de Diane Venet : / préface d'Olivier Gabet Paris, 2018. S. 77.	83	2023-11-28 14:04:46.844171	2023-11-28 14:04:46.844171
76	Abb. Aus: Bijoux d'artistes, de Calder à Koons : la collection idéale de Diane Venet : / préface d'Olivier Gabet Paris, 2018. S. 14.	84	2023-11-28 14:04:46.889305	2023-11-28 14:04:46.889305
77	Abb. Aus Auktionskatalog: Autorenschmuck, Auktion 154 B, 9. Dezember 2020, Quittenbaum Kunstauktionen. München, 2020, S. 6. Nr. 212.	85	2023-11-28 14:04:46.939222	2023-11-28 14:04:46.939222
78	Worshipful Company of Goldsmiths (Hg.) und Victoria and Albert Museum (Hg.): International exhibition of modern jewellery 1890-1961. The Worshipful Company of Goldsmiths u.a., London, 1961. S. Kat.-Nr. 562.	86	2023-11-28 14:04:47.008813	2023-11-28 14:04:47.008813
79	Jb 14/15, 1970, S.416 Abb. 90	87	2023-11-28 14:04:47.030658	2023-11-28 14:04:47.030658
80	Abb. Aus: Bijoux d'artistes, de Calder à Koons : la collection idéale de Diane Venet : / préface d'Olivier Gabet Paris, 2018. S. 79.	88	2023-11-28 14:04:47.082735	2023-11-28 14:04:47.082735
81	Abb. aus: Elisabeth Dühr für das Stadtmuseum Simeonstift Trier (Hg): Zierrat. Künstlerservice und Künstlerschmuck von Pablo Picasso bis Cindy Sherman aus dem Stedelijk Museum’s–Hertogenbosch. 25. März–12. August 2012. Trier, 2012. S. 59.	89	2023-11-28 14:04:47.122283	2023-11-28 14:04:47.122283
82	Auktionskatalog:Sotheby's: Art as Jewelery as Art. Onlineauktion 23.09.–4.10.22 Nr. 97.	90	2023-11-28 14:04:47.169526	2023-11-28 14:04:47.169526
83	Abb. Aus: Diane Venet (Hg.): Bijoux sculptures. L'art vous va si bien. Paris, 2008. S. 52.	91	2023-11-28 14:04:47.216806	2023-11-28 14:04:47.216806
84	Abb. Aus: Diane Venet (Hg.): Bijoux sculptures. L'art vous va si bien. Paris, 2008. S. 53.	92	2023-11-28 14:04:47.256567	2023-11-28 14:04:47.256567
85	Abb. Aus: Diane Venet (Hg.): Bijoux sculptures. L'art vous va si bien. Paris, 2008. S. 52.	93	2023-11-28 14:04:47.295647	2023-11-28 14:04:47.295647
86	Abb. Aus: Bijoux d'artistes, de Calder à Koons : la collection idéale de Diane Venet : / préface d'Olivier Gabet Paris, 2018. S. 79.	94	2023-11-28 14:04:47.341038	2023-11-28 14:04:47.341038
87	Auktionskatalog:Sotheby's: Art as Jewelery as Art. Onlineauktion 23.09.–4.10.22 Nr. 98.	95	2023-11-28 14:04:47.386771	2023-11-28 14:04:47.386771
88	Abb. Aus: Runde, Sabine (Hrsg.) u. Wahner, Matthias (Hrsg.): Kunsthandwerk ist Kaktus : die Sammlung seit 1945. Museum Angewandte Kunst. Stuttgart, 2022. S. 153.	96	2023-11-28 14:04:47.456079	2023-11-28 14:04:47.456079
89	Abb. Aus: Runde, Sabine (Hrsg.) u. Wahner, Matthias (Hrsg.): Kunsthandwerk ist Kaktus : die Sammlung seit 1945. Museum Angewandte Kunst. Stuttgart, 2022. S. 153.	97	2023-11-28 14:04:47.524072	2023-11-28 14:04:47.524072
90	Auktionskatalog:Sotheby's: Art as Jewelery as Art. Onlineauktion 23.09.–4.10.22 Nr. 119.	98	2023-11-28 14:04:47.594279	2023-11-28 14:04:47.594279
91	Abb. Aus: Diane Venet (Hg.): Bijoux sculptures. L'art vous va si bien. Paris, 2008. S. 56. Bijoux d'artistes, de Calder à Koons : la collection idéale de Diane Venet : / préface d'Olivier Gabet Paris, 2018. S. 84.	99	2023-11-28 14:04:47.641759	2023-11-28 14:04:47.641759
92	Abb. Aus: Diane Venet (Hg.): Bijoux sculptures. L'art vous va si bien. Paris, 2008. S. 57.	100	2023-11-28 14:04:47.680496	2023-11-28 14:04:47.680496
93	Abb. aus: Elisabeth Dühr für das Stadtmuseum Simeonstift Trier (Hg): Zierrat. Künstlerservice und Künstlerschmuck von Pablo Picasso bis Cindy Sherman aus dem Stedelijk Museum’s–Hertogenbosch. 25. März–12. August 2012. Trier, 2012. S. 63.	101	2023-11-28 14:04:47.725409	2023-11-28 14:04:47.725409
94	Abb. Aus: Diane Venet (Hg.): Bijoux sculptures. L'art vous va si bien. Paris, 2008. S. 56.	102	2023-11-28 14:04:47.764567	2023-11-28 14:04:47.764567
95	Abb. Aus: Diane Venet (Hg.): Bijoux sculptures. L'art vous va si bien. Paris, 2008. S. 57.	103	2023-11-28 14:04:47.805533	2023-11-28 14:04:47.805533
96	Worshipful Company of Goldsmiths (Hg.) und Victoria and Albert Museum (Hg.): International exhibition of modern jewellery 1890-1961. The Worshipful Company of Goldsmiths u.a., London, 1961. S. Kat.-Nr. 321.	104	2023-11-28 14:04:47.857063	2023-11-28 14:04:47.857063
97	Worshipful Company of Goldsmiths (Hg.) und Victoria and Albert Museum (Hg.): International exhibition of modern jewellery 1890-1961. The Worshipful Company of Goldsmiths u.a., London, 1961. S. Kat.-Nr. 322 u. Abb. 31.	105	2023-11-28 14:04:47.876301	2023-11-28 14:04:47.876301
98	Abb. Aus: Diane Venet (Hg.): Bijoux sculptures. L'art vous va si bien. Paris, 2008. S. 58. Bijoux d'artistes, de Calder à Koons : la collection idéale de Diane Venet : / préface d'Olivier Gabet Paris, 2018. S. 87.	106	2023-11-28 14:04:47.923954	2023-11-28 14:04:47.923954
99	Worshipful Company of Goldsmiths (Hg.) und Victoria and Albert Museum (Hg.): International exhibition of modern jewellery 1890-1961. The Worshipful Company of Goldsmiths u.a., London, 1961. S. Kat.-Nr. 334.	107	2023-11-28 14:04:47.978108	2023-11-28 14:04:47.978108
100	Worshipful Company of Goldsmiths (Hg.) und Victoria and Albert Museum (Hg.): International exhibition of modern jewellery 1890-1961. The Worshipful Company of Goldsmiths u.a., London, 1961. S. Kat.-Nr. 336. 	108	2023-11-28 14:04:47.998465	2023-11-28 14:04:47.998465
101	Worshipful Company of Goldsmiths (Hg.) und Victoria and Albert Museum (Hg.): International exhibition of modern jewellery 1890-1961. The Worshipful Company of Goldsmiths u.a., London, 1961. S. Kat.-Nr. 333.	109	2023-11-28 14:04:48.024201	2023-11-28 14:04:48.024201
102	Bijoux d'artistes, de Calder à Koons : la collection idéale de Diane Venet : / préface d'Olivier Gabet Paris, 2018. S. 89.	110	2023-11-28 14:04:48.040526	2023-11-28 14:04:48.040526
103	Auktionskatalog:Sotheby's: Art as Jewelery as Art. Onlineauktion 23.09.–4.10.22 Nr. 99.	111	2023-11-28 14:04:48.087827	2023-11-28 14:04:48.087827
104	Bijoux d'artistes, de Calder à Koons : la collection idéale de Diane Venet : / préface d'Olivier Gabet Paris, 2018. S. 89.	112	2023-11-28 14:04:48.145585	2023-11-28 14:04:48.145585
105	Abb. Aus: Bijoux d'artistes, de Calder à Koons : la collection idéale de Diane Venet : / préface d'Olivier Gabet Paris, 2018. S. 15. Worshipful Company of Goldsmiths (Hg.) und Victoria and Albert Museum (Hg.): International exhibition of modern jewellery 1890-1961. The Worshipful Company of Goldsmiths u.a., London, 1961. S. Kat.-Nr. 335 u. Abb. 75.	113	2023-11-28 14:04:48.191225	2023-11-28 14:04:48.191225
106	Bijoux d'artistes, de Calder à Koons : la collection idéale de Diane Venet : / préface d'Olivier Gabet Paris, 2018. S. 88.	114	2023-11-28 14:04:48.237163	2023-11-28 14:04:48.237163
107	Worshipful Company of Goldsmiths (Hg.) und Victoria and Albert Museum (Hg.): International exhibition of modern jewellery 1890-1961. The Worshipful Company of Goldsmiths u.a., London, 1961. S. Kat.-Nr. 386 u. Abb. 36. HH: - Jb 12, 1967, S. 241 m.Abb.- Hentzen, Alfred: Kunsthandwerksarbeiten der deutschen Expressionisten und ihrer Nachfolger, in: Festschrift für Erich Meyer zum 70. Geburtstag am 29. Oktober 1957, Hamburg, 1957, S. 311 ff. (Abb. S. 320)- Plastik und Kunsthandwerk von Malern des deutschen Expressionismus, Ausstellungskatalog des Museum für Kunst und Gewerbe Hamburg 1960, Nr. 23, S. 20 (Abb.)	123	2023-11-28 14:04:48.705339	2023-11-28 14:04:48.705339
108	Gerhard Wietek: Karl Schmidt-Rottluff. Plastik und Kunsthandwerk. Werkverzeichnis. Hrsg. v. d. Karl und Emy Schmidt-Rottluff-Stiftung. München, 2001. S. 63/Abb. 49.	125	2023-11-28 14:04:48.789765	2023-11-28 14:04:48.789765
109	Worshipful Company of Goldsmiths (Hg.) und Victoria and Albert Museum (Hg.): International exhibition of modern jewellery 1890-1961. The Worshipful Company of Goldsmiths u.a., London, 1961. S. Kat.-Nr. 383.	127	2023-11-28 14:04:48.87312	2023-11-28 14:04:48.87312
110	Worshipful Company of Goldsmiths (Hg.) und Victoria and Albert Museum (Hg.): International exhibition of modern jewellery 1890-1961. The Worshipful Company of Goldsmiths u.a., London, 1961. S. Kat.-Nr. 384.	128	2023-11-28 14:04:48.892945	2023-11-28 14:04:48.892945
111	Worshipful Company of Goldsmiths (Hg.) und Victoria and Albert Museum (Hg.): International exhibition of modern jewellery 1890-1961. The Worshipful Company of Goldsmiths u.a., London, 1961. S. Kat.-Nr. 385.	129	2023-11-28 14:04:48.912832	2023-11-28 14:04:48.912832
112	Worshipful Company of Goldsmiths (Hg.) und Victoria and Albert Museum (Hg.): International exhibition of modern jewellery 1890-1961. The Worshipful Company of Goldsmiths u.a., London, 1961. S. Kat.-Nr. 387.	130	2023-11-28 14:04:48.933117	2023-11-28 14:04:48.933117
113	Mail vom 28. Oktober 2021 Bzw. Vgl. WVZ Heckel / Gabelmann (unpubl.?) Katja Schneider: Nur für ihre Frauen. Schmuck von Karl Schmidt-Rottluff, Emil Nolde, Erich Heckel und Ernst Ludwig Kirchner. Halle, 2004. S. 35 u. 53.	131	2023-11-28 14:04:48.953513	2023-11-28 14:04:48.953513
114	Mail vom 28. Oktober 2021 Katja Schneider: Nur für ihre Frauen. Schmuck von Karl Schmidt-Rottluff, Emil Nolde, Erich Heckel und Ernst Ludwig Kirchner. Halle, 2004. S. 35 sowie Kat.-Nr. 61, S. 96.	132	2023-11-28 14:04:48.999879	2023-11-28 14:04:48.999879
115	Infos zum Künstler: https://www.steenkamper.de/index.php/georg-hempel/ Mail Erika Pinner 27.4.22 Auskunft…	133	2023-11-28 14:04:49.049939	2023-11-28 14:04:49.049939
116	Katalanischer Bildhauer: https://www.edwardquinn.com/photos/details/?photo_id=36756, von Picasso in den 50ern porträtiert	134	2023-11-28 14:04:49.113429	2023-11-28 14:04:49.113429
117	Worshipful Company of Goldsmiths (Hg.) und Victoria and Albert Museum (Hg.): International exhibition of modern jewellery 1890-1961. The Worshipful Company of Goldsmiths u.a., London, 1961. S. Kat.-Nr. 547, Abb. Plate 29	136	2023-11-28 14:04:49.222909	2023-11-28 14:04:49.222909
118	Worshipful Company of Goldsmiths (Hg.) und Victoria and Albert Museum (Hg.): International exhibition of modern jewellery 1890-1961. The Worshipful Company of Goldsmiths u.a., London, 1961. S. Kat.-Nr. 548, Abb. Plate 32	137	2023-11-28 14:04:49.301564	2023-11-28 14:04:49.301564
119	Worshipful Company of Goldsmiths (Hg.) und Victoria and Albert Museum (Hg.): International exhibition of modern jewellery 1890-1961. The Worshipful Company of Goldsmiths u.a., London, 1961. S. Kat.-Nr. 450.	139	2023-11-28 14:04:49.396466	2023-11-28 14:04:49.396466
120	Aus: Diane Venet (Hg.): Bijoux sculptures. L'art vous va si bien. Paris, 2008. S. 65. s/w-Abb. aus Werkverzeichnis:Paul Wember: Yves Klein / Paul Wember. Werkverzeichnis, Biographie, Bibliographie, Ausstellungsverzeichnis bearb.von Gisela Fiedler. Köln, 1969. WVZ-Nr. S12. Objekt aus Abbildung A mit Bezeichnung von B abgebildet in WVZ:  Ledeur, Jean-Paul u. Restany, Pierre: Yves Klein – catalogue of editions and sculptures. Paris, Guy Pieters, 2000. S. 296.	140	2023-11-28 14:04:49.421245	2023-11-28 14:04:49.421245
121	Gerhart Söhn: Moissey Kogan – Bausteine zu einer Monographie. Düsseldorf, 1980. S. 59.	141	2023-11-28 14:04:49.472425	2023-11-28 14:04:49.472425
122	Henkel, Werkverzeichnis 2002, Nr. 40 Sauerlandt 1927, S.94-94, Abb. S.93  	142	2023-11-28 14:04:49.528043	2023-11-28 14:04:49.528043
123	Henkel, Werkverzeichnis 2002, Nr. 39 Sauerlandt 1927, S.94-94, Abb. S.97 	143	2023-11-28 14:04:49.576398	2023-11-28 14:04:49.576398
124	Henkel, Werkverzeichnis 2002, Nr. 38 Gerhart Söhn: Moissey Kogan – Bausteine zu einer Monographie. Düsseldorf, 1980. S. 59.	145	2023-11-28 14:04:49.69152	2023-11-28 14:04:49.69152
125	Abb. Aus: Bijoux d'artistes, de Calder à Koons : la collection idéale de Diane Venet : / préface d'Olivier Gabet Paris, 2018. S. 106.	146	2023-11-28 14:04:49.739659	2023-11-28 14:04:49.739659
126	Abb. Aus: Diane Venet (Hg.): Bijoux sculptures. L'art vous va si bien. Paris, 2008. S. 66.	150	2023-11-28 14:04:49.934286	2023-11-28 14:04:49.934286
127	Abb. Aus: Diane Venet (Hg.): Bijoux sculptures. L'art vous va si bien. Paris, 2008. S. 66.	151	2023-11-28 14:04:49.973597	2023-11-28 14:04:49.973597
128	Worshipful Company of Goldsmiths (Hg.) und Victoria and Albert Museum (Hg.): International exhibition of modern jewellery 1890-1961. The Worshipful Company of Goldsmiths u.a., London, 1961. S. Kat.-Nr. 528.	153	2023-11-28 14:04:50.067829	2023-11-28 14:04:50.067829
129	Worshipful Company of Goldsmiths (Hg.) und Victoria and Albert Museum (Hg.): International exhibition of modern jewellery 1890-1961. The Worshipful Company of Goldsmiths u.a., London, 1961. S. Kat.-Nr. 527 u. Abb. 49.	154	2023-11-28 14:04:50.088097	2023-11-28 14:04:50.088097
130	Abb. Aus: Bijoux d'artistes, de Calder à Koons : la collection idéale de Diane Venet : / préface d'Olivier Gabet Paris, 2018. S. 112.	155	2023-11-28 14:04:50.138613	2023-11-28 14:04:50.138613
131	https://www.auktion-dannenberg.de/de/l/661191/lehmann_arno_1905_berlin_-_salzburg_1973_att?aid=296307&Lstatus=0&oldpagesize=96&_=1646661649896&currentpos=341	156	2023-11-28 14:04:50.18835	2023-11-28 14:04:50.18835
132	Abb. Aus: Diane Venet (Hg.): Bijoux sculptures. L'art vous va si bien. Paris, 2008. S. 67.	157	2023-11-28 14:04:50.241296	2023-11-28 14:04:50.241296
133	Abb. Aus: Bijoux d'artistes, de Calder à Koons : la collection idéale de Diane Venet : / préface d'Olivier Gabet Paris, 2018. S. 117.	158	2023-11-28 14:04:50.290911	2023-11-28 14:04:50.290911
134	Abb. Aus: Diane Venet (Hg.): Bijoux sculptures. L'art vous va si bien. Paris, 2008. S. 67. Bijoux d'artistes, de Calder à Koons : la collection idéale de Diane Venet : / préface d'Olivier Gabet Paris, 2018. S. 117.	159	2023-11-28 14:04:50.334753	2023-11-28 14:04:50.334753
135	Bijoux d'artistes, de Calder à Koons : la collection idéale de Diane Venet : / préface d'Olivier Gabet Paris, 2018. S. 118.	160	2023-11-28 14:04:50.380935	2023-11-28 14:04:50.380935
136	Worshipful Company of Goldsmiths (Hg.) und Victoria and Albert Museum (Hg.): International exhibition of modern jewellery 1890-1961. The Worshipful Company of Goldsmiths u.a., London, 1961. S. Kat.-Nr. 538.	161	2023-11-28 14:04:50.400624	2023-11-28 14:04:50.400624
137	Abb. Aus: Bijoux d'artistes, de Calder à Koons : la collection idéale de Diane Venet : / préface d'Olivier Gabet Paris, 2018. S. 118.	162	2023-11-28 14:04:50.417171	2023-11-28 14:04:50.417171
138	Abb. Aus: Bijoux d'artistes, de Calder à Koons : la collection idéale de Diane Venet : / préface d'Olivier Gabet Paris, 2018. S. 118.	163	2023-11-28 14:04:50.463995	2023-11-28 14:04:50.463995
139	Auktionskatalog:Sotheby's: Art as Jewelery as Art. Onlineauktion 23.09.–4.10.22 Nr. 147.	164	2023-11-28 14:04:50.514278	2023-11-28 14:04:50.514278
140	Auktionskatalog:Sotheby's: Art as Jewelery as Art. Onlineauktion 23.09.–4.10.22 Nr. 146.	165	2023-11-28 14:04:50.568355	2023-11-28 14:04:50.568355
141	Worshipful Company of Goldsmiths (Hg.) und Victoria and Albert Museum (Hg.): International exhibition of modern jewellery 1890-1961. The Worshipful Company of Goldsmiths u.a., London, 1961. Kat.-Nr. 629, Abb. Plate 77	167	2023-11-28 14:04:50.681953	2023-11-28 14:04:50.681953
142	Worshipful Company of Goldsmiths (Hg.) und Victoria and Albert Museum (Hg.): International exhibition of modern jewellery 1890-1961. The Worshipful Company of Goldsmiths u.a., London, 1961. Kat.-Nr. 630	168	2023-11-28 14:04:50.786785	2023-11-28 14:04:50.786785
143	Worshipful Company of Goldsmiths (Hg.) und Victoria and Albert Museum (Hg.): International exhibition of modern jewellery 1890-1961. The Worshipful Company of Goldsmiths u.a., London, 1961. Kat.-Nr. 631. Abb. Plate 76	169	2023-11-28 14:04:50.809767	2023-11-28 14:04:50.809767
144	Worshipful Company of Goldsmiths (Hg.) und Victoria and Albert Museum (Hg.): International exhibition of modern jewellery 1890-1961. The Worshipful Company of Goldsmiths u.a., London, 1961. Kat.-Nr. 632.	170	2023-11-28 14:04:50.876385	2023-11-28 14:04:50.876385
145	Worshipful Company of Goldsmiths (Hg.) und Victoria and Albert Museum (Hg.): International exhibition of modern jewellery 1890-1961. The Worshipful Company of Goldsmiths u.a., London, 1961. Kat.-Nr. 633.	171	2023-11-28 14:04:50.897786	2023-11-28 14:04:50.897786
146	Worshipful Company of Goldsmiths (Hg.) und Victoria and Albert Museum (Hg.): International exhibition of modern jewellery 1890-1961. The Worshipful Company of Goldsmiths u.a., London, 1961. Kat.-Nr. 634.	172	2023-11-28 14:04:50.919529	2023-11-28 14:04:50.919529
181	Abb. Aus: Max Pechstein. Ein Expressionist aus Leidenschaft. Retrospektive. Hrsg. von Peter Thumann. München, 2012. S. 13.	208	2023-11-28 14:04:52.374744	2023-11-28 14:04:52.374744
147	Worshipful Company of Goldsmiths (Hg.) und Victoria and Albert Museum (Hg.): International exhibition of modern jewellery 1890-1961. The Worshipful Company of Goldsmiths u.a., London, 1961. ohne Seite und Kat. Nr., zwischen 540 und 541.	173	2023-11-28 14:04:50.945838	2023-11-28 14:04:50.945838
148	http://collections.madparis.fr/collier-a-cinq-medaillons	174	2023-11-28 14:04:50.957104	2023-11-28 14:04:50.957104
149	http://collections.madparis.fr/pendentif-soleil-lune	175	2023-11-28 14:04:50.997147	2023-11-28 14:04:50.997147
150	http://collections.madparis.fr/pendentif-lune-visage	176	2023-11-28 14:04:51.037975	2023-11-28 14:04:51.037975
151	http://collections.madparis.fr/broche-feuille-soleil	177	2023-11-28 14:04:51.084603	2023-11-28 14:04:51.084603
152	Abb. Aus: Diane Venet (Hg.): Bijoux sculptures. L'art vous va si bien. Paris, 2008. S. 69.	178	2023-11-28 14:04:51.136333	2023-11-28 14:04:51.136333
153	Abb. Aus: Diane Venet (Hg.): Bijoux sculptures. L'art vous va si bien. Paris, 2008. S. 71.	179	2023-11-28 14:04:51.183011	2023-11-28 14:04:51.183011
154	Abb. Aus: Diane Venet (Hg.): Bijoux sculptures. L'art vous va si bien. Paris, 2008. S. 71.	180	2023-11-28 14:04:51.228938	2023-11-28 14:04:51.228938
155	Worshipful Company of Goldsmiths (Hg.) und Victoria and Albert Museum (Hg.): International exhibition of modern jewellery 1890-1961. The Worshipful Company of Goldsmiths u.a., London, 1961. S. Kat.-Nr. 554 u. Abb. 52.  Sabine Maja Schilling: Ewald Mataré. Das Plastische Werk. Werkverzeichnis. Köln, 1987. S. 233, WVZ-Nr. 372  	181	2023-11-28 14:04:51.281685	2023-11-28 14:04:51.281685
156	Worshipful Company of Goldsmiths (Hg.) und Victoria and Albert Museum (Hg.): International exhibition of modern jewellery 1890-1961. The Worshipful Company of Goldsmiths u.a., London, 1961. S. Kat.-Nr. 599.	182	2023-11-28 14:04:51.332509	2023-11-28 14:04:51.332509
157	Worshipful Company of Goldsmiths (Hg.) und Victoria and Albert Museum (Hg.): International exhibition of modern jewellery 1890-1961. The Worshipful Company of Goldsmiths u.a., London, 1961. S. Kat.-Nr. 600.	183	2023-11-28 14:04:51.351441	2023-11-28 14:04:51.351441
158	Worshipful Company of Goldsmiths (Hg.) und Victoria and Albert Museum (Hg.): International exhibition of modern jewellery 1890-1961. The Worshipful Company of Goldsmiths u.a., London, 1961. S. Kat.-Nr. 600.	184	2023-11-28 14:04:51.371512	2023-11-28 14:04:51.371512
159	Worshipful Company of Goldsmiths (Hg.) und Victoria and Albert Museum (Hg.): International exhibition of modern jewellery 1890-1961. The Worshipful Company of Goldsmiths u.a., London, 1961. S. Kat.-Nr. 600.	185	2023-11-28 14:04:51.39511	2023-11-28 14:04:51.39511
160	Katja Schneider: Nur für ihre Frauen. Schmuck von Karl Schmidt-Rottluff, Emil Nolde, Erich Heckel und Ernst Ludwig Kirchner. Halle, 2004. S. 35 sowie Kat.-Nr. 61, S. 88ff.	186	2023-11-28 14:04:51.418359	2023-11-28 14:04:51.418359
161	Meyer-Thoss, 2013, S. 78-79: “Einzig die exzentrische Modeschöpferin Elsa Schiaparelli kauft der Künstlerin einen pelzbesetzten Armreif und Fingerring – das von Meret Oppenheim so genannte Vorläuferensemble der „Pelztasse“ – für eine lächerlich geringe Summe ab. „Ja, ich habe die Pelzringe verkauft, allerdings als Armbänder (Nicht dass die Priserinnen so dünne Aermchen hätten, sondern ich habe die Ringe vergrössert.) Aber leider nicht >en stok< (sic) wie die letzten, sondern vorläufig zwei, u. wenn sie verkauft werden, muss ich erst neue machen. Ich verkaufe sie für 75frs, also etwa 45frs Reingewinn. Das ist natürlich viel, aber >avec ça je n’ai pas mangé<, u. deshalb muss ich so schnell wie möglich etwas neues finden.“ FN: Brief von Meret Oppenheim an Eva Oppenheim-Wenger (24.9.1935)Christiane Meyer-Thoss (Hg.): Meret Oppenheim. “Warum ich meine Schuhe liebe”. Mode – Zeichnungen und Gedichte. Berlin, 2013. S. 15.  Gems and Ladders Website, gegründet 2014 :Thomas W. Bechtler und Alexandre Pertot 	187	2023-11-28 14:04:51.448196	2023-11-28 14:04:51.448196
162	Abb. Aus: Bijoux d'artistes, de Calder à Koons : la collection idéale de Diane Venet : / préface d'Olivier Gabet Paris, 2018. S. 144-145.	188	2023-11-28 14:04:51.493464	2023-11-28 14:04:51.493464
163	Archiv Dominique Bürgi	189	2023-11-28 14:04:51.541238	2023-11-28 14:04:51.541238
164	Abb. Aus: Christiane Meyer-Thoss (Hg.): Meret Oppenheim. “Warum ich meine Schuhe liebe”. Mode – Zeichnungen und Gedichte. Berlin, 2013. S. 49. Abb. aus: Elisabeth Dühr für das Stadtmuseum Simeonstift Trier (Hg): Zierrat. Künstlerservice und Künstlerschmuck von Pablo Picasso bis Cindy Sherman aus dem Stedelijk Museum’s–Hertogenbosch. 25. März–12. August 2012. Trier, 2012. S. 101.	190	2023-11-28 14:04:51.585633	2023-11-28 14:04:51.585633
165	Abb. Aus: Bijoux d'artistes, de Calder à Koons : la collection idéale de Diane Venet : / préface d'Olivier Gabet Paris, 2018. S. 144-145.	191	2023-11-28 14:04:51.623953	2023-11-28 14:04:51.623953
166	Abb. Aus: Bijoux d'artistes, de Calder à Koons : la collection idéale de Diane Venet : / préface d'Olivier Gabet Paris, 2018. S. 144-145.	192	2023-11-28 14:04:51.670273	2023-11-28 14:04:51.670273
167	Gemsandledders Website    Entwurf-Skizze in kolorierter Kopie im Archiv Bürgi vorhanden, 21x27cm mit Herstellungsangaben	193	2023-11-28 14:04:51.713754	2023-11-28 14:04:51.713754
168	Abb. Aus: Christiane Meyer-Thoss (Hg.): Meret Oppenheim. “Warum ich meine Schuhe liebe”. Mode – Zeichnungen und Gedichte. Berlin, 2013. S. 7.	194	2023-11-28 14:04:51.759052	2023-11-28 14:04:51.759052
169	Abb. Aus: Christiane Meyer-Thoss (Hg.): Meret Oppenheim. “Warum ich meine Schuhe liebe”. Mode – Zeichnungen und Gedichte. Berlin, 2013. S. 31.	195	2023-11-28 14:04:51.802748	2023-11-28 14:04:51.802748
170	Abbildung aus:  Christiane Meyer-Thoss (Hg.): Meret Oppenheim. Buch der Ideen. Frühe Zeichnungen, Skizzen und Entwürfe für Mode, Schmuck und Design. Bern, 1996. S. 81.	196	2023-11-28 14:04:51.848941	2023-11-28 14:04:51.848941
171	Quelle:  https://bellevue.nzz.ch/reisen-entdecken/landesmuseum-zuerich-sonntagsausflug-ld.1304870 (Stand 19.8.2021)	197	2023-11-28 14:04:51.88929	2023-11-28 14:04:51.88929
172	Abbildung: https://www.gemsandladders.com/collection/parapapillon_broochhttps://www.gemsandladders.com/collection/parapapillon_earrings	198	2023-11-28 14:04:51.928391	2023-11-28 14:04:51.928391
173	https://www.gemsandladders.com/collection/wristband_gold	199	2023-11-28 14:04:51.988001	2023-11-28 14:04:51.988001
174	Abb. Aus: Christiane Meyer-Thoss (Hg.): Meret Oppenheim. “Warum ich meine Schuhe liebe”. Mode – Zeichnungen und Gedichte. Berlin, 2013. S. 30.	200	2023-11-28 14:04:52.039614	2023-11-28 14:04:52.039614
175	Abb. Aus: Christiane Meyer-Thoss (Hg.): Meret Oppenheim. “Warum ich meine Schuhe liebe”. Mode – Zeichnungen und Gedichte. Berlin, 2013. S. 15.	201	2023-11-28 14:04:52.081618	2023-11-28 14:04:52.081618
176	Abbildung aus:  Christiane Meyer-Thoss (Hg.): Meret Oppenheim. Buch der Ideen. Frühe Zeichnungen, Skizzen und Entwürfe für Mode, Schmuck und Design. Bern, 1996. S. 36.	202	2023-11-28 14:04:52.122545	2023-11-28 14:04:52.122545
177	WV Curiger/Bürgi, S. 167, Nr. H50	203	2023-11-28 14:04:52.168304	2023-11-28 14:04:52.168304
178	Abb. Aus: Christiane Meyer-Thoss (Hg.): Meret Oppenheim. “Warum ich meine Schuhe liebe”. Mode – Zeichnungen und Gedichte. Berlin, 2013. S. 39 + 41 + 42.	204	2023-11-28 14:04:52.203076	2023-11-28 14:04:52.203076
179	Abb. Aus: Christiane Meyer-Thoss (Hg.): Meret Oppenheim. “Warum ich meine Schuhe liebe”. Mode – Zeichnungen und Gedichte. Berlin, 2013. S. 46.	205	2023-11-28 14:04:52.243501	2023-11-28 14:04:52.243501
180	Abb. Aus: Christiane Meyer-Thoss (Hg.): Meret Oppenheim. “Warum ich meine Schuhe liebe”. Mode – Zeichnungen und Gedichte. Berlin, 2013. S. 47.	206	2023-11-28 14:04:52.279103	2023-11-28 14:04:52.279103
182	Abb. Aus: Max Pechstein. Ein Expressionist aus Leidenschaft. Retrospektive. Hrsg. von Peter Thumann. München, 2012. S. 13.	209	2023-11-28 14:04:52.426159	2023-11-28 14:04:52.426159
183	Abb. Aus: Max Pechstein. Ein Expressionist aus Leidenschaft. Retrospektive. Hrsg. von Peter Thumann. München, 2012. S. 13.	210	2023-11-28 14:04:52.477764	2023-11-28 14:04:52.477764
184	Abb. Aus: Max Pechstein. Ein Expressionist aus Leidenschaft. Retrospektive. Hrsg. von Peter Thumann. München, 2012. S. 13.	211	2023-11-28 14:04:52.527587	2023-11-28 14:04:52.527587
185	Abb. Aus: Max Pechstein. Ein Expressionist aus Leidenschaft. Retrospektive. Hrsg. von Peter Thumann. München, 2012. S. 14.	212	2023-11-28 14:04:52.580397	2023-11-28 14:04:52.580397
186	Auskunft Julia Pechstein (Mail 26.7.22; 23.8.22)	213	2023-11-28 14:04:52.631397	2023-11-28 14:04:52.631397
187	Auskunft Julia Pechstein (Mail 26.7.22)	214	2023-11-28 14:04:52.669666	2023-11-28 14:04:52.669666
188	Abb. im Katalog der Ausstellung „Plastik und Kunsthandwerk von Malern des Deutschen Expressionismus“, Schleswig-Holsteinisches Landesmuseum, Schloss Gottorf, Aug./ Okt. 1960, Kat. 242, s. 31 mit Abb., danach Okt./ Nov. im Museum für Kunst- und Gewerbe Hamburg	216	2023-11-28 14:04:52.696506	2023-11-28 14:04:52.696506
189	Worshipful Company of Goldsmiths (Hg.) und Victoria and Albert Museum (Hg.): International exhibition of modern jewellery 1890-1961. The Worshipful Company of Goldsmiths u.a., London, 1961. S. Kat.-Nr. 644 u. Abb. 51. 	218	2023-11-28 14:04:52.736378	2023-11-28 14:04:52.736378
190	Georges Bloch: Picasso. Volume III. Catalogue of the printed ceramics 1949–1971. Bern, 1972. S. 22, WV-Nr. 7. 	219	2023-11-28 14:04:52.78831	2023-11-28 14:04:52.78831
191	Abb. aus: Elisabeth Dühr für das Stadtmuseum Simeonstift Trier (Hg): Zierrat. Künstlerservice und Künstlerschmuck von Pablo Picasso bis Cindy Sherman aus dem Stedelijk Museum’s–Hertogenbosch. 25. März–12. August 2012. Trier, 2012. S. 103.	220	2023-11-28 14:04:52.845951	2023-11-28 14:04:52.845951
192	Abb. Aus: Diane Venet (Hg.): Bijoux sculptures. L'art vous va si bien. Paris, 2008. S. 84.	221	2023-11-28 14:04:52.8845	2023-11-28 14:04:52.8845
193	Abb. Aus: Bijoux d'artistes, de Calder à Koons : la collection idéale de Diane Venet : / préface d'Olivier Gabet Paris, 2018. S. 156–157. Georges Bloch: Picasso. Volume III. Catalogue of the printed ceramics 1949–1971. Bern, 1972. S. 22, WV-Nr. 7, 5, 4 (li nach re).	222	2023-11-28 14:04:52.924963	2023-11-28 14:04:52.924963
194	Abb. Aus: Diane Venet (Hg.): Bijoux sculptures. L'art vous va si bien. Paris, 2008. S. 84.	223	2023-11-28 14:04:52.977062	2023-11-28 14:04:52.977062
195	Abb. Aus: Diane Venet (Hg.): Bijoux sculptures. L'art vous va si bien. Paris, 2008. S. 84.	224	2023-11-28 14:04:53.027743	2023-11-28 14:04:53.027743
196	Abb. Aus: Diane Venet (Hg.): Bijoux sculptures. L'art vous va si bien. Paris, 2008. S. 84.	225	2023-11-28 14:04:53.076552	2023-11-28 14:04:53.076552
197	Abb. Aus: Diane Venet (Hg.): Bijoux sculptures. L'art vous va si bien. Paris, 2008. S. 84. Bijoux d'artistes, de Calder à Koons : la collection idéale de Diane Venet : / préface d'Olivier Gabet Paris, 2018. S. 156–157.	226	2023-11-28 14:04:53.129998	2023-11-28 14:04:53.129998
198	Abb. Aus: Diane Venet (Hg.): Bijoux sculptures. L'art vous va si bien. Paris, 2008. S. 85.	227	2023-11-28 14:04:53.178837	2023-11-28 14:04:53.178837
199	Abb. Aus: Bijoux d'artistes, de Calder à Koons : la collection idéale de Diane Venet : / préface d'Olivier Gabet Paris, 2018. S. 156–157.	228	2023-11-28 14:04:53.219196	2023-11-28 14:04:53.219196
200	Abb. Aus: Diane Venet (Hg.): Bijoux sculptures. L'art vous va si bien. Paris, 2008. S. 85.	229	2023-11-28 14:04:53.2682	2023-11-28 14:04:53.2682
201	Worshipful Company of Goldsmiths (Hg.) und Victoria and Albert Museum (Hg.): International exhibition of modern jewellery 1890-1961. The Worshipful Company of Goldsmiths u.a., London, 1961. S. Kat.-Nr. 649, Abb. Plate 73	230	2023-11-28 14:04:53.321124	2023-11-28 14:04:53.321124
202	Worshipful Company of Goldsmiths (Hg.) und Victoria and Albert Museum (Hg.): International exhibition of modern jewellery 1890-1961. The Worshipful Company of Goldsmiths u.a., London, 1961. S. Kat.-Nr. 650, Abb. Plate 72	231	2023-11-28 14:04:53.382176	2023-11-28 14:04:53.382176
203	Abb. Aus: Bijoux d'artistes, de Calder à Koons : la collection idéale de Diane Venet : / préface d'Olivier Gabet Paris, 2018. S. 162-163.	232	2023-11-28 14:04:53.456143	2023-11-28 14:04:53.456143
204	Abb. Aus: Auktionskatalog Autorenschmuck. Mit ausgewählten Werken aus der Sammlung Hermann Jünger. Auktion 157 D, 1. Juli 2021. Quittenbaum Kunstauktionen GmbH. München, 2021. S. 38. Nr 1001.	233	2023-11-28 14:04:53.503029	2023-11-28 14:04:53.503029
205	Abb. Aus: Bijoux d'artistes, de Calder à Koons : la collection idéale de Diane Venet : / préface d'Olivier Gabet Paris, 2018. S. 162-163.	234	2023-11-28 14:04:53.588864	2023-11-28 14:04:53.588864
206	Abb. Aus: Diane Venet (Hg.): Bijoux sculptures. L'art vous va si bien. Paris, 2008. S. 91.	235	2023-11-28 14:04:53.631917	2023-11-28 14:04:53.631917
207	Abb. Aus: Diane Venet (Hg.): Bijoux sculptures. L'art vous va si bien. Paris, 2008. S. 91.	236	2023-11-28 14:04:53.670512	2023-11-28 14:04:53.670512
208	Katalog "Hans Martin Ruwoldt (H. Spielmann) Hamburg 1969, Nr. 32	237	2023-11-28 14:04:53.723146	2023-11-28 14:04:53.723146
209	Katalog "Hans Martin Ruwoldt (H. Spielmann) Hamburg 1969, Nr. 33	238	2023-11-28 14:04:53.774669	2023-11-28 14:04:53.774669
210	Katalog "Hans Martin Ruwoldt (H. Spielmann) Hamburg 1969, Nr. 34	239	2023-11-28 14:04:53.826763	2023-11-28 14:04:53.826763
211	Wietek Nr. 432	240	2023-11-28 14:04:53.875706	2023-11-28 14:04:53.875706
212	Nicht bei Wietek!	241	2023-11-28 14:04:53.941029	2023-11-28 14:04:53.941029
213	Wietek Nr. 490  Henkel, Werkverzeichnis 2002, Nr. 40 Sauerlandt 1927, S.94-94, Abb. S.93	243	2023-11-28 14:04:54.034599	2023-11-28 14:04:54.034599
214	Wietek Nr. 490 Henkel, Werkverzeichnis 2002, Nr. 39 Sauerlandt 1927, S.94-94, Abb. S.97 	244	2023-11-28 14:04:54.080905	2023-11-28 14:04:54.080905
215	Henkel, Werkverzeichnis 2002, Nr. 36 Wietek Nr. 379	245	2023-11-28 14:04:54.132985	2023-11-28 14:04:54.132985
216	Gerhard Wietek: Karl Schmidt-Rottluff. Plastik und Kunsthandwerk. Werkverzeichnis. Hrsg. v. d. Karl und Emy Schmidt-Rottluff-Stiftung. München, 2001.  Größerer Bestand im Schloss Gottorf, SchleswigHolsteinische Landesmuseen (Liste gespeichert)	248	2023-11-28 14:04:54.297442	2023-11-28 14:04:54.297442
217	Abbildung aus: Ingrid Mössinger (Hg.) und Katharina Metz (Hg.): Kunsthandwerk und Schmuck von Karl Schmidt-Rottluff aus der ehemaligen Sammlung Dr. Victor und Hedda Peters, Leipzig. Chemnitz/ Leipzig, 2015. S. 44 Werkverzeichnis Wietek, 2001, 400	249	2023-11-28 14:04:54.316892	2023-11-28 14:04:54.316892
218	Abbildung aus: Ingrid Mössinger (Hg.) und Katharina Metz (Hg.): Kunsthandwerk und Schmuck von Karl Schmidt-Rottluff aus der ehemaligen Sammlung Dr. Victor und Hedda Peters, Leipzig. Chemnitz/ Leipzig, 2015. S. 46 Nicht bei Wietek	250	2023-11-28 14:04:54.361948	2023-11-28 14:04:54.361948
219	Wietek Nr. 360 Katja Schneider: Nur für ihre Frauen. Schmuck von Karl Schmidt-Rottluff, Emil Nolde, Erich Heckel und Ernst Ludwig Kirchner. Halle, 2004. S. 31 und 65. (Abb.: Ernst Ludwig Kirchner: Schieflerpaar, 1923, Öl auf Leinwand, 120 x 120cm, Stiftung Gunzenhauser München)	251	2023-11-28 14:04:54.402088	2023-11-28 14:04:54.402088
220	Abbildung aus: Ingrid Mössinger (Hg.) und Katharina Metz (Hg.): Kunsthandwerk und Schmuck von Karl Schmidt-Rottluff aus der ehemaligen Sammlung Dr. Victor und Hedda Peters, Leipzig. Chemnitz/ Leipzig, 2015. S. 41 Werkverzeichnis Wietek, 2001, 446	252	2023-11-28 14:04:54.450995	2023-11-28 14:04:54.450995
221	Abbildung aus: Ingrid Mössinger (Hg.) und Katharina Metz (Hg.): Kunsthandwerk und Schmuck von Karl Schmidt-Rottluff aus der ehemaligen Sammlung Dr. Victor und Hedda Peters, Leipzig. Chemnitz/ Leipzig, 2015. S. 38 Werkverzeichnis Wietek, 2001, 466	253	2023-11-28 14:04:54.465404	2023-11-28 14:04:54.465404
222	Abbildung aus: Ingrid Mössinger (Hg.) und Katharina Metz (Hg.): Kunsthandwerk und Schmuck von Karl Schmidt-Rottluff aus der ehemaligen Sammlung Dr. Victor und Hedda Peters, Leipzig. Chemnitz/ Leipzig, 2015. S. 38 Werkverzeichnis Wietek, 2001,467	254	2023-11-28 14:04:54.505052	2023-11-28 14:04:54.505052
223	Abbildung aus: Ingrid Mössinger (Hg.) und Katharina Metz (Hg.): Kunsthandwerk und Schmuck von Karl Schmidt-Rottluff aus der ehemaligen Sammlung Dr. Victor und Hedda Peters, Leipzig. Chemnitz/ Leipzig, 2015. S. 39 Werkverzeichnis Wietek, 2001,421	255	2023-11-28 14:04:54.544348	2023-11-28 14:04:54.544348
224	Abbildung aus: Ingrid Mössinger (Hg.) und Katharina Metz (Hg.): Kunsthandwerk und Schmuck von Karl Schmidt-Rottluff aus der ehemaligen Sammlung Dr. Victor und Hedda Peters, Leipzig. Chemnitz/ Leipzig, 2015. S.  Werkverzeichnis Wietek, 2001,423	256	2023-11-28 14:04:54.587184	2023-11-28 14:04:54.587184
225	Wietek Nr. 435 Abbildung aus: Ingrid Mössinger (Hg.) und Katharina Metz (Hg.): Kunsthandwerk und Schmuck von Karl Schmidt-Rottluff aus der ehemaligen Sammlung Dr. Victor und Hedda Peters, Leipzig. Chemnitz/ Leipzig, 2015. S. 42 Werkverzeichnis Wietek, 2001,435	257	2023-11-28 14:04:54.627742	2023-11-28 14:04:54.627742
226	Wietek Nr. 436  Abbildung aus: Ingrid Mössinger (Hg.) und Katharina Metz (Hg.): Kunsthandwerk und Schmuck von Karl Schmidt-Rottluff aus der ehemaligen Sammlung Dr. Victor und Hedda Peters, Leipzig. Chemnitz/ Leipzig, 2015. S. 42 Werkverzeichnis Wietek, 2001, 436	258	2023-11-28 14:04:54.674222	2023-11-28 14:04:54.674222
227	Abbildung aus: Ingrid Mössinger (Hg.) und Katharina Metz (Hg.): Kunsthandwerk und Schmuck von Karl Schmidt-Rottluff aus der ehemaligen Sammlung Dr. Victor und Hedda Peters, Leipzig. Chemnitz/ Leipzig, 2015. S. 43 Werkverzeichnis Wietek, 2001, 445	259	2023-11-28 14:04:54.718644	2023-11-28 14:04:54.718644
228	Abbildung aus: Ingrid Mössinger (Hg.) und Katharina Metz (Hg.): Kunsthandwerk und Schmuck von Karl Schmidt-Rottluff aus der ehemaligen Sammlung Dr. Victor und Hedda Peters, Leipzig. Chemnitz/ Leipzig, 2015. S. 45 Werkverzeichnis Wietek, 2001, 486	260	2023-11-28 14:04:54.759683	2023-11-28 14:04:54.759683
229	Abbildung aus: Ingrid Mössinger (Hg.) und Katharina Metz (Hg.): Kunsthandwerk und Schmuck von Karl Schmidt-Rottluff aus der ehemaligen Sammlung Dr. Victor und Hedda Peters, Leipzig. Chemnitz/ Leipzig, 2015. S. 45 Werkverzeichnis Wietek, 2001, 417	261	2023-11-28 14:04:54.799166	2023-11-28 14:04:54.799166
230	Abbildung aus: Ingrid Mössinger (Hg.) und Katharina Metz (Hg.): Kunsthandwerk und Schmuck von Karl Schmidt-Rottluff aus der ehemaligen Sammlung Dr. Victor und Hedda Peters, Leipzig. Chemnitz/ Leipzig, 2015. S. 46 Werkverzeichnis Wietek, 2001, 418	262	2023-11-28 14:04:54.838313	2023-11-28 14:04:54.838313
231	Abbildung aus: Ingrid Mössinger (Hg.) und Katharina Metz (Hg.): Kunsthandwerk und Schmuck von Karl Schmidt-Rottluff aus der ehemaligen Sammlung Dr. Victor und Hedda Peters, Leipzig. Chemnitz/ Leipzig, 2015. S. 46 Werkverzeichnis Wietek, 2001, 494	263	2023-11-28 14:04:54.87731	2023-11-28 14:04:54.87731
232	Abb. Aus: Diane Venet (Hg.): Bijoux sculptures. L'art vous va si bien. Paris, 2008. S. 96.	264	2023-11-28 14:04:54.920737	2023-11-28 14:04:54.920737
233	Abb. Aus: Bijoux d'artistes, de Calder à Koons : la collection idéale de Diane Venet : / préface d'Olivier Gabet Paris, 2018. S. 176.	265	2023-11-28 14:04:54.969763	2023-11-28 14:04:54.969763
234	Abb. Aus: Diane Venet (Hg.): Bijoux sculptures. L'art vous va si bien. Paris, 2008. S. 100.	267	2023-11-28 14:04:55.089142	2023-11-28 14:04:55.089142
235	Abb. Aus: Diane Venet (Hg.): Bijoux sculptures. L'art vous va si bien. Paris, 2008. S. 100.	268	2023-11-28 14:04:55.129239	2023-11-28 14:04:55.129239
236	Abb. Aus: Diane Venet (Hg.): Bijoux sculptures. L'art vous va si bien. Paris, 2008. S. 103.	269	2023-11-28 14:04:55.175067	2023-11-28 14:04:55.175067
237	Auktionskatalog:Sotheby's: Art as Jewelery as Art. Onlineauktion 23.09.–4.10.22 Nr. 16.	270	2023-11-28 14:04:55.227352	2023-11-28 14:04:55.227352
238	Auktionskatalog:Sotheby's: Art as Jewelery as Art. Onlineauktion 23.09.–4.10.22 Nr. 23.	271	2023-11-28 14:04:55.284867	2023-11-28 14:04:55.284867
239	Auktionskatalog:Sotheby's: Art as Jewelery as Art. Onlineauktion 23.09.–4.10.22 Nr. 24.	272	2023-11-28 14:04:55.340493	2023-11-28 14:04:55.340493
240	Auktionskatalog:Sotheby's: Art as Jewelery as Art. Onlineauktion 23.09.–4.10.22 Nr. 25.	273	2023-11-28 14:04:55.398455	2023-11-28 14:04:55.398455
241	Auktionskatalog:Sotheby's: Art as Jewelery as Art. Onlineauktion 23.09.–4.10.22 Nr. 26.	274	2023-11-28 14:04:55.457421	2023-11-28 14:04:55.457421
242	Auktionskatalog:Sotheby's: Art as Jewelery as Art. Onlineauktion 23.09.–4.10.22 Nr. 43.	275	2023-11-28 14:04:55.516121	2023-11-28 14:04:55.516121
243	Auktionskatalog:Sotheby's: Art as Jewelery as Art. Onlineauktion 23.09.–4.10.22 Nr. 45.	276	2023-11-28 14:04:55.573589	2023-11-28 14:04:55.573589
244	Auktionskatalog:Sotheby's: Art as Jewelery as Art. Onlineauktion 23.09.–4.10.22 Nr. 100.	277	2023-11-28 14:04:55.643565	2023-11-28 14:04:55.643565
245	Anna Beatriz Chadour, Rüdiger Joppien: Kunstgewerbemuseum der Stadt Köln. Schmuck II. Fingerringe. Köln, 1985. S. 200-201, Nr. 318. Maria Schüly: Richard Bampi. Keramiker der Moderne. Stuttgart, 1993. S. 66-67.	278	2023-11-28 14:04:55.700622	2023-11-28 14:04:55.700622
246	Maria Schüly: Richard Bampi. Keramiker der Moderne. Stuttgart, 1993. S. 213, WVZ-Nr. 33.	279	2023-11-28 14:04:55.747516	2023-11-28 14:04:55.747516
247	Maria Schüly: Richard Bampi. Keramiker der Moderne. Stuttgart, 1993. S. 213, WVZ-Nr. 34.	280	2023-11-28 14:04:55.768293	2023-11-28 14:04:55.768293
248	Maria Schüly: Richard Bampi. Keramiker der Moderne. Stuttgart, 1993. S. 213, WVZ-Nr. 35.	281	2023-11-28 14:04:55.78708	2023-11-28 14:04:55.78708
249	Maria Schüly: Richard Bampi. Keramiker der Moderne. Stuttgart, 1993. S. 214, WVZ-Nr. 40.	282	2023-11-28 14:04:55.806813	2023-11-28 14:04:55.806813
250	Maria Schüly: Richard Bampi. Keramiker der Moderne. Stuttgart, 1993. S. 215, WVZ-Nr. 48.	283	2023-11-28 14:04:55.826702	2023-11-28 14:04:55.826702
251	Maria Schüly: Richard Bampi. Keramiker der Moderne. Stuttgart, 1993. S. 215, WVZ-Nr. 49.	284	2023-11-28 14:04:55.846079	2023-11-28 14:04:55.846079
252	Maria Schüly: Richard Bampi. Keramiker der Moderne. Stuttgart, 1993. S. 215, WVZ-Nr. 50.	285	2023-11-28 14:04:55.865908	2023-11-28 14:04:55.865908
253	Maria Schüly: Richard Bampi. Keramiker der Moderne. Stuttgart, 1993. S. 215, WVZ-Nr. 51.	286	2023-11-28 14:04:55.886115	2023-11-28 14:04:55.886115
254	Maria Schüly: Richard Bampi. Keramiker der Moderne. Stuttgart, 1993. S. 215, WVZ-Nr. 52.	287	2023-11-28 14:04:55.957934	2023-11-28 14:04:55.957934
255	Maria Schüly: Richard Bampi. Keramiker der Moderne. Stuttgart, 1993. S. 216, WVZ-Nr. 55.	288	2023-11-28 14:04:55.972825	2023-11-28 14:04:55.972825
256	Maria Schüly: Richard Bampi. Keramiker der Moderne. Stuttgart, 1993. S. 216, WVZ-Nr. 54.	289	2023-11-28 14:04:55.991182	2023-11-28 14:04:55.991182
257	Anna Beatriz Chadour, Rüdiger Joppien: Kunstgewerbemuseum der Stadt Köln. Schmuck II. Fingerringe. Köln, 1985. S. 205, Nr. 324. Maria Schüly: Richard Bampi. Keramiker der Moderne. Stuttgart, 1993. S. 215, WVZ-Nr. 52a.	290	2023-11-28 14:04:56.010934	2023-11-28 14:04:56.010934
258	Sonja Mataré: Erinnerungen, aufgezeichnet v. Irmgard Faber-Asselborn. Wienand, Köln, 2015. Ab. S. 88 über Zusammenarbeit mit Vater… nicht im WVZ	293	2023-11-28 14:04:56.134643	2023-11-28 14:04:56.134643
259	Schilling, Sabine Maja: Ewald Mataré, das plastische Werk : Werkverzeichnis. Köln 1987 Sabine Maja Schilling: Ewald Mataré. Das Plastische Werk. Werkverzeichnis. Köln, 1987. S. 222, WVZ-Nr. 316	294	2023-11-28 14:04:56.181073	2023-11-28 14:04:56.181073
260	Sabine Maja Schilling: Ewald Mataré. Das Plastische Werk. Werkverzeichnis. Köln, 1987. S. 222, WVZ-Nr. 316	295	2023-11-28 14:04:56.227194	2023-11-28 14:04:56.227194
261	nicht im WVZ	296	2023-11-28 14:04:56.265813	2023-11-28 14:04:56.265813
262	nicht im WVZ	297	2023-11-28 14:04:56.304922	2023-11-28 14:04:56.304922
263	Sonja Mataré: Erinnerungen, aufgezeichnet v. Irmgard Faber-Asselborn. Wienand, Köln, 2015. Ab. S. 88 über Zusammenarbeit mit Vater… Sabine Maja Schilling: Ewald Mataré. Das Plastische Werk. Werkverzeichnis. Köln, 1987. S. 209, WVZ-Nr. 261	298	2023-11-28 14:04:56.352502	2023-11-28 14:04:56.352502
264	Sabine Maja Schilling: Ewald Mataré. Das Plastische Werk. Werkverzeichnis. Köln, 1987. S. 212, WVZ-Nr. 277	300	2023-11-28 14:04:56.438916	2023-11-28 14:04:56.438916
265	Sabine Maja Schilling: Ewald Mataré. Das Plastische Werk. Werkverzeichnis. Köln, 1987. S. 218, WVZ-Nr. 300	301	2023-11-28 14:04:56.498978	2023-11-28 14:04:56.498978
266	Sabine Maja Schilling: Ewald Mataré. Das Plastische Werk. Werkverzeichnis. Köln, 1987. S. 258, WVZ-Nr. 474	302	2023-11-28 14:04:56.552608	2023-11-28 14:04:56.552608
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.schema_migrations (version) FROM stdin;
20230502142322
20230502142551
20230502150135
20230502151356
20230502151507
20230502151702
20230502152019
20230502152811
20230502152831
20230503100451
20230508111021
20230508181059
20230509100129
20230509131754
20230511065323
20230511065613
20230511070740
20230530134143
20230530134634
\.


--
-- Data for Name: tasks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tasks (id, titel, content, done, item_id, created_at, updated_at) FROM stdin;
1	Gedanken/ Fragestellungen	\N	f	1	2023-11-28 14:04:43.037295	2023-11-28 14:04:43.037295
2	Beispiel für Künstler mit Goldschmiedeausbildung, der später aber vorwiegend bildnerisch tätig war (?)	\N	f	14	2023-11-28 14:04:43.835956	2023-11-28 14:04:43.835956
3	Beispiel für Künstler mit Goldschmiedeausbildung, der später aber vorwiegend bildnerisch tätig war (?)	\N	f	15	2023-11-28 14:04:43.89259	2023-11-28 14:04:43.89259
4	7 weitere Objekte im MAK, alle nach 1970, aus unterschiedlichen Quellen	\N	f	16	2023-11-28 14:04:43.953171	2023-11-28 14:04:43.953171
5	Jürgen und Monika Blankenburg-Stiftung	\N	f	17	2023-11-28 14:04:44.030807	2023-11-28 14:04:44.030807
6	Wohl auch in: Graham Hughes, Modern Jewelry, 1963 erwähnt. ", dort ist der Hinweis zu lesen, dass er bereits 1957 auf der Mailänder Triennale ausgestellt wurde."	\N	f	18	2023-11-28 14:04:44.083218	2023-11-28 14:04:44.083218
7	oftmals bemaltes Porzellan. Fassung durch wen? Teilweise aber auch aus Silberblech gebogene Stücke	\N	f	19	2023-11-28 14:04:44.162157	2023-11-28 14:04:44.162157
8	Technik? Interessant Das Elfenbein ist mit einem Schnitzmesser bearbeitet und farbig (braun und schwarz) gestaltet 	\N	f	23	2023-11-28 14:04:44.377053	2023-11-28 14:04:44.377053
9	Gibt es die Ohrringe nur einmal oder mehrmals? Einträge zusammenschmelzen?	\N	f	75	2023-11-28 14:04:46.529933	2023-11-28 14:04:46.529933
10	34 weitere Arbeiten im MAK	\N	f	96	2023-11-28 14:04:47.46065	2023-11-28 14:04:47.46065
11	Doppelter Datensatz???	\N	f	116	2023-11-28 14:04:48.354947	2023-11-28 14:04:48.354947
12	Zusammenarbeit aus Silberschmied A. Kahlbrandt und Haizmann? Getriebene Initialien sehen ungeübt aus, Sägung ist unsicherer, aber Treibarbeiten, Broschierung  und Schweißarbeitsicher professionell	\N	f	118	2023-11-28 14:04:48.444619	2023-11-28 14:04:48.444619
13	Tiefenstein (Idar) (Ortsteil) Hamburg (Stüber, Otto)	\N	f	141	2023-11-28 14:04:49.477308	2023-11-28 14:04:49.477308
14	Tiefenstein (Idar) (Ortsteil)	\N	f	143	2023-11-28 14:04:49.580892	2023-11-28 14:04:49.580892
15	Zusammenarbeit Kogan/ Schmidt-Rottluff	\N	f	144	2023-11-28 14:04:49.627671	2023-11-28 14:04:49.627671
16	Bauhauskünstler / -schüler	\N	f	148	2023-11-28 14:04:49.836693	2023-11-28 14:04:49.836693
17	Bauhauskünstler / -schüler	\N	f	149	2023-11-28 14:04:49.887292	2023-11-28 14:04:49.887292
18	The pieces they executed together for the firm Patek Philippe were featured in Graham Hughes’ 1961 The International Exhibition of Modern Jewellery, 1890 – 1961	\N	f	165	2023-11-28 14:04:50.573791	2023-11-28 14:04:50.573791
19	Goldausschmelzverfahren durch Zahnarzt? Bei Brassai aufgezeichnet?Hinweis von OM... 	\N	f	218	2023-11-28 14:04:52.741964	2023-11-28 14:04:52.741964
20	Insg. 6 Plaketten mit einer Auflage von 40-150Ex., siehe WVZ. Die Titel der restlichen drei lauten: Homme barbu, Picador et Taureau und Centaure de Profil. Betitelt werden sie als "Medaillon", gemeint ist das Schmuckrelief, nicht der Behälterschmuck. Interessanter Begriff...	\N	f	222	2023-11-28 14:04:52.930818	2023-11-28 14:04:52.930818
21	nicht auffindbar	\N	f	238	2023-11-28 14:04:53.780377	2023-11-28 14:04:53.780377
22	Portrait von K. Hennek bei A. Sattler, gemalt von Henrik Paulsen mit unfertigen Händen, ggf. Ring-Abb.??	\N	f	241	2023-11-28 14:04:53.946206	2023-11-28 14:04:53.946206
23	Zusammenarbeit Kogan/ Schmidt-Rottluff Laut Wietek wollte Schmidt-Rottluff ursprünglich alle 5 Steine von Kogan auf einem Silberkästchen fassen, was sich nicht realisieren ließ. Daraufhin fasste er nur 3 der Steine. Vgl. WV S. 456 Traditionelle Trennung zwischen Gemmenschneider und Juwelier: wie beispielsweise bei Gemmenschneider Martin Seitz, Beispielobjekt im Museum für Angewandte Kunst in Köln, Inventarnr. B00330, 50er Jahre, weiteres Beispiel für Goldschmiedin, die versch. Gemmen fasste ist Elisabeth Treskow	\N	f	245	2023-11-28 14:04:54.138034	2023-11-28 14:04:54.138034
24	Ansprechpartnerin: Tiffany.Dubin@sothebys.com	\N	f	270	2023-11-28 14:04:55.23281	2023-11-28 14:04:55.23281
25	Ansprechpartnerin: Tiffany.Dubin@sothebys.com	\N	f	271	2023-11-28 14:04:55.289947	2023-11-28 14:04:55.289947
26	Ansprechpartnerin: Tiffany.Dubin@sothebys.com	\N	f	272	2023-11-28 14:04:55.34539	2023-11-28 14:04:55.34539
27	Ansprechpartnerin: Tiffany.Dubin@sothebys.com	\N	f	273	2023-11-28 14:04:55.404269	2023-11-28 14:04:55.404269
28	Ansprechpartnerin: Tiffany.Dubin@sothebys.com	\N	f	274	2023-11-28 14:04:55.461592	2023-11-28 14:04:55.461592
29	Ansprechpartnerin: Tiffany.Dubin@sothebys.com+M261	\N	f	275	2023-11-28 14:04:55.521441	2023-11-28 14:04:55.521441
30	Ansprechpartnerin: Tiffany.Dubin@sothebys.com	\N	f	276	2023-11-28 14:04:55.579795	2023-11-28 14:04:55.579795
\.


--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.active_storage_attachments_id_seq', 248, true);


--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.active_storage_blobs_id_seq', 248, true);


--
-- Name: active_storage_variant_records_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.active_storage_variant_records_id_seq', 1, false);


--
-- Name: artists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.artists_id_seq', 64, true);


--
-- Name: bookmarks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.bookmarks_id_seq', 1, false);


--
-- Name: comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.comments_id_seq', 219, true);


--
-- Name: items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.items_id_seq', 304, true);


--
-- Name: lists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.lists_id_seq', 1, false);


--
-- Name: manufacturers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.manufacturers_id_seq', 1, false);


--
-- Name: photos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.photos_id_seq', 1, false);


--
-- Name: provenances_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.provenances_id_seq', 275, true);


--
-- Name: references_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.references_id_seq', 266, true);


--
-- Name: tasks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tasks_id_seq', 30, true);


--
-- Name: active_storage_attachments active_storage_attachments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_storage_attachments
    ADD CONSTRAINT active_storage_attachments_pkey PRIMARY KEY (id);


--
-- Name: active_storage_blobs active_storage_blobs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_storage_blobs
    ADD CONSTRAINT active_storage_blobs_pkey PRIMARY KEY (id);


--
-- Name: active_storage_variant_records active_storage_variant_records_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_storage_variant_records
    ADD CONSTRAINT active_storage_variant_records_pkey PRIMARY KEY (id);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: artists artists_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.artists
    ADD CONSTRAINT artists_pkey PRIMARY KEY (id);


--
-- Name: bookmarks bookmarks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bookmarks
    ADD CONSTRAINT bookmarks_pkey PRIMARY KEY (id);


--
-- Name: comments comments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_pkey PRIMARY KEY (id);


--
-- Name: items items_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.items
    ADD CONSTRAINT items_pkey PRIMARY KEY (id);


--
-- Name: lists lists_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lists
    ADD CONSTRAINT lists_pkey PRIMARY KEY (id);


--
-- Name: manufacturers manufacturers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.manufacturers
    ADD CONSTRAINT manufacturers_pkey PRIMARY KEY (id);


--
-- Name: photos photos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.photos
    ADD CONSTRAINT photos_pkey PRIMARY KEY (id);


--
-- Name: provenances provenances_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.provenances
    ADD CONSTRAINT provenances_pkey PRIMARY KEY (id);


--
-- Name: references references_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."references"
    ADD CONSTRAINT references_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: tasks tasks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tasks
    ADD CONSTRAINT tasks_pkey PRIMARY KEY (id);


--
-- Name: index_active_storage_attachments_on_blob_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_active_storage_attachments_on_blob_id ON public.active_storage_attachments USING btree (blob_id);


--
-- Name: index_active_storage_attachments_uniqueness; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_active_storage_attachments_uniqueness ON public.active_storage_attachments USING btree (record_type, record_id, name, blob_id);


--
-- Name: index_active_storage_blobs_on_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_active_storage_blobs_on_key ON public.active_storage_blobs USING btree (key);


--
-- Name: index_active_storage_variant_records_uniqueness; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_active_storage_variant_records_uniqueness ON public.active_storage_variant_records USING btree (blob_id, variation_digest);


--
-- Name: index_bookmarks_on_item_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_bookmarks_on_item_id ON public.bookmarks USING btree (item_id);


--
-- Name: index_bookmarks_on_list_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_bookmarks_on_list_id ON public.bookmarks USING btree (list_id);


--
-- Name: index_comments_on_item_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_comments_on_item_id ON public.comments USING btree (item_id);


--
-- Name: index_items_on_artist_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_items_on_artist_id ON public.items USING btree (artist_id);


--
-- Name: index_items_on_manufacturer_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_items_on_manufacturer_id ON public.items USING btree (manufacturer_id);


--
-- Name: index_photos_on_item_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_photos_on_item_id ON public.photos USING btree (item_id);


--
-- Name: index_provenances_on_item_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_provenances_on_item_id ON public.provenances USING btree (item_id);


--
-- Name: index_references_on_item_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_references_on_item_id ON public."references" USING btree (item_id);


--
-- Name: index_tasks_on_item_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_tasks_on_item_id ON public.tasks USING btree (item_id);


--
-- Name: items fk_rails_2190cda116; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.items
    ADD CONSTRAINT fk_rails_2190cda116 FOREIGN KEY (artist_id) REFERENCES public.artists(id);


--
-- Name: bookmarks fk_rails_29c05dc16c; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bookmarks
    ADD CONSTRAINT fk_rails_29c05dc16c FOREIGN KEY (list_id) REFERENCES public.lists(id);


--
-- Name: provenances fk_rails_573f6776c5; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.provenances
    ADD CONSTRAINT fk_rails_573f6776c5 FOREIGN KEY (item_id) REFERENCES public.items(id);


--
-- Name: tasks fk_rails_5c6f351574; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tasks
    ADD CONSTRAINT fk_rails_5c6f351574 FOREIGN KEY (item_id) REFERENCES public.items(id);


--
-- Name: references fk_rails_7a5f54ddcf; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."references"
    ADD CONSTRAINT fk_rails_7a5f54ddcf FOREIGN KEY (item_id) REFERENCES public.items(id);


--
-- Name: comments fk_rails_7bdc86a126; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT fk_rails_7bdc86a126 FOREIGN KEY (item_id) REFERENCES public.items(id);


--
-- Name: photos fk_rails_874663793d; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.photos
    ADD CONSTRAINT fk_rails_874663793d FOREIGN KEY (item_id) REFERENCES public.items(id);


--
-- Name: active_storage_variant_records fk_rails_993965df05; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_storage_variant_records
    ADD CONSTRAINT fk_rails_993965df05 FOREIGN KEY (blob_id) REFERENCES public.active_storage_blobs(id);


--
-- Name: items fk_rails_b80275d69a; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.items
    ADD CONSTRAINT fk_rails_b80275d69a FOREIGN KEY (manufacturer_id) REFERENCES public.manufacturers(id);


--
-- Name: active_storage_attachments fk_rails_c3b3935057; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_storage_attachments
    ADD CONSTRAINT fk_rails_c3b3935057 FOREIGN KEY (blob_id) REFERENCES public.active_storage_blobs(id);


--
-- Name: bookmarks fk_rails_de10628d3a; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bookmarks
    ADD CONSTRAINT fk_rails_de10628d3a FOREIGN KEY (item_id) REFERENCES public.items(id);


--
-- PostgreSQL database dump complete
--

