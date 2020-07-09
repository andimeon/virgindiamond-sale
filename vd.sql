--
-- PostgreSQL database dump
--

-- Dumped from database version 12.3
-- Dumped by pg_dump version 12.3

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
-- Name: auth_group; Type: TABLE; Schema: public; Owner: andimeon
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO andimeon;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: andimeon
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO andimeon;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: andimeon
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: andimeon
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO andimeon;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: andimeon
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO andimeon;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: andimeon
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: andimeon
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO andimeon;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: andimeon
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO andimeon;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: andimeon
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: andimeon
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO andimeon;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: andimeon
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO andimeon;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: andimeon
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO andimeon;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: andimeon
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: andimeon
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO andimeon;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: andimeon
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: andimeon
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO andimeon;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: andimeon
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO andimeon;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: andimeon
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: andimeon
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO andimeon;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: andimeon
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO andimeon;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: andimeon
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: andimeon
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO andimeon;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: andimeon
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO andimeon;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: andimeon
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: andimeon
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO andimeon;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: andimeon
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO andimeon;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: andimeon
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: andimeon
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO andimeon;

--
-- Name: jewelry_product; Type: TABLE; Schema: public; Owner: andimeon
--

CREATE TABLE public.jewelry_product (
    id integer NOT NULL,
    product_num integer NOT NULL,
    description text NOT NULL,
    standart character varying(100),
    price integer NOT NULL,
    "price_IJT" integer NOT NULL,
    price_net integer NOT NULL,
    quantity integer NOT NULL,
    exist boolean NOT NULL,
    sold_at date,
    sold_by_id integer,
    type_id integer NOT NULL,
    image character varying(100) NOT NULL
);


ALTER TABLE public.jewelry_product OWNER TO andimeon;

--
-- Name: jewelry_product_id_seq; Type: SEQUENCE; Schema: public; Owner: andimeon
--

CREATE SEQUENCE public.jewelry_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.jewelry_product_id_seq OWNER TO andimeon;

--
-- Name: jewelry_product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: andimeon
--

ALTER SEQUENCE public.jewelry_product_id_seq OWNED BY public.jewelry_product.id;


--
-- Name: jewelry_type; Type: TABLE; Schema: public; Owner: andimeon
--

CREATE TABLE public.jewelry_type (
    id integer NOT NULL,
    title character varying(30) NOT NULL,
    slug character varying(50) NOT NULL,
    description character varying(100) NOT NULL,
    cover_url character varying(100),
    title_eng character varying(30) NOT NULL
);


ALTER TABLE public.jewelry_type OWNER TO andimeon;

--
-- Name: jewelry_type_id_seq; Type: SEQUENCE; Schema: public; Owner: andimeon
--

CREATE SEQUENCE public.jewelry_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.jewelry_type_id_seq OWNER TO andimeon;

--
-- Name: jewelry_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: andimeon
--

ALTER SEQUENCE public.jewelry_type_id_seq OWNED BY public.jewelry_type.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: andimeon
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: andimeon
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: andimeon
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: andimeon
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: andimeon
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: andimeon
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: andimeon
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: andimeon
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: andimeon
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: jewelry_product id; Type: DEFAULT; Schema: public; Owner: andimeon
--

ALTER TABLE ONLY public.jewelry_product ALTER COLUMN id SET DEFAULT nextval('public.jewelry_product_id_seq'::regclass);


--
-- Name: jewelry_type id; Type: DEFAULT; Schema: public; Owner: andimeon
--

ALTER TABLE ONLY public.jewelry_type ALTER COLUMN id SET DEFAULT nextval('public.jewelry_type_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: andimeon
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: andimeon
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: andimeon
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add type	7	add_type
26	Can change type	7	change_type
27	Can delete type	7	delete_type
28	Can view type	7	view_type
29	Can add product	8	add_product
30	Can change product	8	change_product
31	Can delete product	8	delete_product
32	Can view product	8	view_product
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: andimeon
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$180000$xyrRHtPb8X5a$vdQ6mctX1YUU8/hiIQVEVyoId+8IOa4Qh3BMyRNEiqM=	2020-06-24 11:16:00.726+09	t	andimeon			andimeon@gmail.com	t	t	2020-06-08 23:54:17.055+09
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: andimeon
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: andimeon
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: andimeon
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2020-06-08 23:55:48.044+09	1	Necklace	2	[{"changed": {"fields": ["Description"]}}]	7	1
2	2020-06-08 23:55:52.336+09	1	Necklace	2	[]	7	1
3	2020-06-26 22:25:51.815+09	1	Necklace	2	[{"changed": {"fields": ["Type cover"]}}]	7	1
4	2020-06-26 22:26:49.45+09	2	Wedding ring	2	[{"changed": {"fields": ["Description", "Type cover"]}}]	7	1
5	2020-06-26 23:01:14.266+09	1	Necklace	2	[{"changed": {"fields": ["Cover url"]}}]	7	1
6	2020-06-26 23:01:26.192+09	2	Wedding ring	2	[{"changed": {"fields": ["Cover url"]}}]	7	1
7	2020-06-26 23:40:52.202+09	3	Fashion jewelry	2	[{"changed": {"fields": ["Title", "Description", "Cover url"]}}]	7	1
8	2020-06-27 09:37:18.492+09	4	High jewelry	2	[{"changed": {"fields": ["Description", "Cover url"]}}]	7	1
9	2020-06-27 09:43:35.802+09	2	Wedding ring	2	[{"changed": {"fields": ["Cover url"]}}]	7	1
10	2020-06-27 09:49:51.706+09	1	Necklace	2	[{"changed": {"fields": ["Cover url"]}}]	7	1
11	2020-06-27 09:53:06.077+09	3	Fashion jewelry	2	[{"changed": {"fields": ["Cover url"]}}]	7	1
12	2020-06-28 00:50:23.528+09	1	Product object (1)	2	[{"changed": {"fields": ["Picture"]}}]	8	1
13	2020-06-28 00:58:43.363+09	1	Product object (1)	2	[{"changed": {"fields": ["Picture"]}}]	8	1
14	2020-06-28 09:10:49.172+09	1	Product object (1)	2	[{"changed": {"fields": ["Picture"]}}]	8	1
15	2020-06-28 11:14:16.917+09	251	Product object (251)	3		8	1
16	2020-06-28 11:17:28.506+09	1	Product object (1)	2	[{"changed": {"fields": ["Picture"]}}]	8	1
17	2020-06-28 16:27:59.428+09	4	High jewelry	2	[{"changed": {"fields": ["Description"]}}]	7	1
18	2020-06-28 16:28:23.921+09	3	Fashion jewelry	2	[{"changed": {"fields": ["Description"]}}]	7	1
19	2020-06-28 16:28:47.955+09	3	Fashion jewelry	2	[{"changed": {"fields": ["Description"]}}]	7	1
20	2020-06-28 16:28:57.346+09	2	Wedding ring	2	[{"changed": {"fields": ["Description"]}}]	7	1
21	2020-07-01 23:44:42.518+09	1	ネックレス	2	[{"changed": {"fields": ["Title"]}}]	7	1
22	2020-07-01 23:45:49.518+09	1	Necklace	2	[{"changed": {"fields": ["Title", "Slug"]}}]	7	1
23	2020-07-01 23:49:02.773+09	1	Necklace	2	[{"changed": {"fields": ["Title eng"]}}]	7	1
24	2020-07-01 23:49:08.418+09	2	Wedding ring	2	[{"changed": {"fields": ["Title eng"]}}]	7	1
25	2020-07-01 23:49:14.824+09	3	Fashion jewelry	2	[{"changed": {"fields": ["Title eng"]}}]	7	1
26	2020-07-01 23:49:20.78+09	4	High jewelry	2	[{"changed": {"fields": ["Title eng"]}}]	7	1
27	2020-07-01 23:50:16.143+09	1	ネックレス	2	[{"changed": {"fields": ["Title"]}}]	7	1
28	2020-07-01 23:50:28.73+09	2	エンゲージリング	2	[{"changed": {"fields": ["Title"]}}]	7	1
29	2020-07-01 23:50:45.63+09	3	その他のリング	2	[{"changed": {"fields": ["Title"]}}]	7	1
30	2020-07-01 23:51:04.002+09	4	ハイジュエリー系	2	[{"changed": {"fields": ["Title"]}}]	7	1
31	2020-07-03 21:17:42.602+09	180	Product object (180)	2	[{"changed": {"fields": ["Picture"]}}]	8	1
32	2020-07-03 21:19:07.686+09	180	Product object (180)	2	[{"changed": {"fields": ["Picture"]}}]	8	1
33	2020-07-03 21:22:34.701+09	241	Product object (241)	2	[{"changed": {"fields": ["Picture"]}}]	8	1
34	2020-07-05 18:23:48.687+09	179	Product object (179)	2	[{"changed": {"fields": ["Picture"]}}]	8	1
35	2020-07-05 18:46:01.279+09	32	Product object (32)	2	[{"changed": {"fields": ["Exist"]}}]	8	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: andimeon
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	jewelry	type
8	jewelry	product
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: andimeon
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2020-07-06 22:10:54.715767+09
2	auth	0001_initial	2020-07-06 22:10:54.797547+09
3	admin	0001_initial	2020-07-06 22:10:54.8634+09
4	admin	0002_logentry_remove_auto_add	2020-07-06 22:10:54.879418+09
5	admin	0003_logentry_add_action_flag_choices	2020-07-06 22:10:54.897897+09
6	contenttypes	0002_remove_content_type_name	2020-07-06 22:10:54.927729+09
7	auth	0002_alter_permission_name_max_length	2020-07-06 22:10:54.946138+09
8	auth	0003_alter_user_email_max_length	2020-07-06 22:10:54.968703+09
9	auth	0004_alter_user_username_opts	2020-07-06 22:10:54.97789+09
10	auth	0005_alter_user_last_login_null	2020-07-06 22:10:54.999545+09
11	auth	0006_require_contenttypes_0002	2020-07-06 22:10:55.001821+09
12	auth	0007_alter_validators_add_error_messages	2020-07-06 22:10:55.016221+09
13	auth	0008_alter_user_username_max_length	2020-07-06 22:10:55.04107+09
14	auth	0009_alter_user_last_name_max_length	2020-07-06 22:10:55.058763+09
15	auth	0010_alter_group_name_max_length	2020-07-06 22:10:55.07189+09
16	auth	0011_update_proxy_permissions	2020-07-06 22:10:55.099334+09
17	jewelry	0001_initial	2020-07-06 22:10:55.135072+09
18	jewelry	0002_auto_20200609_1617	2020-07-06 22:10:55.190342+09
19	jewelry	0003_auto_20200624_1603	2020-07-06 22:10:55.21759+09
20	jewelry	0004_auto_20200624_1606	2020-07-06 22:10:55.259977+09
21	jewelry	0007_type_type_image	2020-07-06 22:22:08.551434+09
22	jewelry	0008_remove_type_type_image	2020-07-06 22:22:08.568318+09
23	jewelry	0009_type_type_image	2020-07-06 22:22:08.58963+09
24	jewelry	0010_remove_type_type_image	2020-07-06 22:22:08.60513+09
25	jewelry	0011_type_cover_url	2020-07-06 22:22:08.612535+09
26	jewelry	0012_auto_20200628_0932	2020-07-06 22:22:08.648508+09
27	jewelry	0013_auto_20200628_0939	2020-07-06 22:22:08.684988+09
28	jewelry	0014_auto_20200628_0944	2020-07-06 22:22:08.725965+09
29	jewelry	0015_auto_20200628_0955	2020-07-06 22:22:08.790131+09
30	jewelry	0016_auto_20200628_0958	2020-07-06 22:22:08.833508+09
31	jewelry	0017_auto_20200628_1107	2020-07-06 22:22:08.896232+09
32	jewelry	0018_remove_product_picture	2020-07-06 22:22:08.906881+09
33	jewelry	0019_product_picture	2020-07-06 22:22:08.928859+09
34	jewelry	0020_auto_20200628_1115	2020-07-06 22:22:08.969719+09
35	jewelry	0021_remove_product_picture	2020-07-06 22:22:09.008007+09
36	jewelry	0022_product_picture	2020-07-06 22:22:09.061307+09
37	jewelry	0023_auto_20200628_1311	2020-07-06 22:22:09.075683+09
38	jewelry	0024_type_title_eng	2020-07-06 22:22:09.093806+09
39	jewelry	0025_auto_20200703_2138	2020-07-06 22:22:09.489236+09
40	jewelry	0026_auto_20200703_2315	2020-07-06 22:22:09.859604+09
41	jewelry	0027_auto_20200704_1355	2020-07-06 22:22:10.254629+09
42	jewelry	0028_auto_20200704_1425	2020-07-06 22:22:10.355853+09
43	jewelry	0029_auto_20200704_1428	2020-07-06 22:22:10.453963+09
44	jewelry	0030_auto_20200705_1824	2020-07-06 22:22:11.918651+09
45	jewelry	0031_auto_20200705_1846	2020-07-06 22:22:12.050572+09
46	jewelry	0032_auto_20200705_1947	2020-07-06 22:22:12.106092+09
47	sessions	0001_initial	2020-07-06 22:22:12.139068+09
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: andimeon
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
5ll2vvgq9qno9mod5i0ccyzho5zraglo	NmIzMGI2MWI5MmM5MGVhNmRlYjc3NDFiZjZmYjQ5MjljNjE4N2FhNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjNWU3MzI2NWIwMjlkZTk2ZWMwYjliZWZjZDFlMWFkMzk5ZDBkNTNjIn0=	2020-07-08 11:16:00.729+09
huwv8yrdxm9jibd57qboetc69pat8ch4	NmIzMGI2MWI5MmM5MGVhNmRlYjc3NDFiZjZmYjQ5MjljNjE4N2FhNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjNWU3MzI2NWIwMjlkZTk2ZWMwYjliZWZjZDFlMWFkMzk5ZDBkNTNjIn0=	2020-06-22 23:54:22.666+09
\.


--
-- Data for Name: jewelry_product; Type: TABLE DATA; Schema: public; Owner: andimeon
--

COPY public.jewelry_product (id, product_num, description, standart, price, "price_IJT", price_net, quantity, exist, sold_at, sold_by_id, type_id, image) FROM stdin;
1	50194711	K18YG ﾀﾞｲﾔ Nec	0.03	47000	19000	14080	4	t	\N	\N	1	Necklace/50194711_web.jpg
2	60942982	WG ﾀﾞｲﾔ Nec	0.44/0.52/0.54	460100	316000	106873	1	t	\N	\N	1	Necklace/60942982_web.jpg
3	60961778	PT ｷｬｯﾂｱｲ Nec	5.17	1723680	662000	230151	1	t	\N	\N	1	Necklace/60961778_web.jpg
4	60993564	K18WG ﾀﾞｲﾔ Nec	0.5	168500	52000	40260	1	t	\N	\N	1	Necklace/60993564_web.jpg
5	61008892	Pt900 ﾀﾞｲﾔ Nec	PS I1 H 0.319	343500	105000	81939	1	t	\N	\N	1	Necklace/61008892_web.jpg
6	61011427	Ptﾌﾞﾗｯｸｵﾊﾟ-ﾙNec	BO 5.820	4104000	1096000	855690	1	t	\N	\N	1	Necklace/61011427_web.jpg
7	61011731	K18WG ﾀﾞｲﾔ Nec	\N	16000	8000	5694	1	t	\N	\N	1	Necklace/61011731_web.jpg
8	61012660	K10YG ﾀﾞｲﾔ Nec	0.05	16000	8000	5720	1	t	\N	\N	1	Necklace/61012660_web.jpg
9	61012899	K18YG ﾀﾞｲﾔ Nec	0.15	44100	23000	17951	1	t	\N	\N	1	Necklace/61012899_web.jpg
10	61013452	K18WG ﾀﾞｲﾔ Nec	VVS2 L EX 0.551	343440	119000	92678	1	t	\N	\N	1	Necklace/61013452_web.jpg
11	61014800	K10YG ﾀﾞｲﾔ Nec	0.02	32000	14000	10872	1	t	\N	\N	1	Necklace/61014800_web.jpg
12	61014817	K10PG ﾀﾞｲﾔ Nec	0.02	26000	12000	8837	1	t	\N	\N	1	Necklace/61014817_web.jpg
13	61017993	K18WG ｲﾆｼｬﾙ Nec	E ﾙﾋﾞｰ ﾐﾙ	42000	20000	15400	1	t	\N	\N	1	Necklace/61017993_web.jpg
14	80024873	Pt900 ﾀﾞｲﾔ Ph	PS SI1 FBY	249000	157000	122124	1	t	\N	\N	1	Necklace/80024873_web.jpg
15	80025757	Pt/K18PG ﾀﾞｲﾔ Ph	\N	109500	58000	44582	1	t	\N	\N	1	Necklace/80025757_web.jpg
16	80025917	K18WG ﾀﾞｲﾔ Ph	\N	212000	97000	75384	1	t	\N	\N	1	Necklace/80025917_web.jpg
17	80025924	K18YG ﾀﾞｲﾔ Ph	ﾄｩｲﾝｸﾙ	50000	23000	17600	2	t	\N	\N	1	Necklace/80025924_web.jpg
18	80037286	K18WG ﾀﾞｲﾔ Ph	RD H&C	39000	18000	13750	3	t	\N	\N	1	Necklace/80037286_web.jpg
19	60991966	Pt950H ｴﾝｹﾞｰｼﾞ R	VS1 G VG  0.384	372000	141000	48982	1	t	\N	\N	2	Wedding ring/60991966.jpg
20	60996404	Pt950H ｴﾝｹﾞｰｼﾞ R	VVS2 E EX  0.383	463050	199000	82090	1	t	\N	\N	2	Wedding ring/60996404.jpg
21	60998941	Pt950H ｴﾝｹﾞｰｼﾞ R	VVS2 F EX  0.351	420525	87000	67873	1	t	\N	\N	2	Wedding ring/60998941.jpg
22	60989482	Pt950H ｴﾝｹﾞｰｼﾞ R	VVS1 G VG  0.380	434700	192000	66982	1	t	\N	\N	2	Wedding ring/60989482.jpg
23	60993861	K18PG ｴﾝｹﾞｰｼﾞ R	VS2 F VG 0.296	256725	81000	37025	1	t	\N	\N	2	Wedding ring/60993861.jpg
24	60992079	K18PG ｴﾝｹﾞｰｼﾞ R	SI1 H VG 0.338	221300	70000	24255	1	t	\N	\N	2	Wedding ring/60992079.jpg
25	60990167	Pt950H ｴﾝｹﾞｰｼﾞ R	VS1 H EXHC 0.307	387450	109000	37980	1	t	\N	\N	2	Wedding ring/60990167.jpg
26	60998996	Pt950H ｴﾝｹﾞｰｼﾞ R	VVS2 G VG  0.383	460100	149000	115695	1	t	\N	\N	2	Wedding ring/60998996.jpg
27	60993878	Pt950H ｴﾝｹﾞｰｼﾞ R	SI1 F EX  0.305	374300	122000	63949	1	t	\N	\N	2	Wedding ring/60993878.jpg
28	60984456	Pt950H ｴﾝｹﾞｰｼﾞ R	VS1 F GO  0.308	398600	141000	49095	1	t	\N	\N	2	Wedding ring/60984456.jpg
29	60984463	Pt950H ｴﾝｹﾞｰｼﾞ R	VS1 F VG  0.313	398475	174000	60525	1	t	\N	\N	2	Wedding ring/60984463.jpg
30	60986825	Pt950H ｴﾝｹﾞｰｼﾞ R	VVS2 F VG  0.311	395325	164000	57013	1	t	\N	\N	2	Wedding ring/60986825.jpg
31	60992086	Pt950H ｴﾝｹﾞｰｼﾞ R	VVS2 G VG  0.501	710325	245000	85427	1	t	\N	\N	2	Wedding ring/60992086.jpg
32	60993977	Pt950H ｴﾝｹﾞｰｼﾞ R	VS2 G EX 0.501	617400	214000	92569	0	f	\N	\N	2	Wedding ring/60993977.jpg
33	60989796	Pt950H ｴﾝｹﾞｰｼﾞ R	VVS2 E VG  0.515	832800	333000	116232	1	t	\N	\N	2	Wedding ring/60989796.jpg
34	61001336	Pt950H ｴﾝｹﾞｰｼﾞ R	VVS1 F VG 0.302	432000	127000	98657	1	t	\N	\N	2	Wedding ring/61001336.jpg
35	60984418	Pt950H ｴﾝｹﾞｰｼﾞ R	SI1 E VG  0.511	576000	206000	71724	1	t	\N	\N	2	Wedding ring/60984418.jpg
36	60989833	Pt950H ｴﾝｹﾞｰｼﾞ R	VVS1 G EXHC0.524	878100	297000	103404	1	t	\N	\N	2	Wedding ring/60989833.jpg
37	60984319	Pt950H ｴﾝｹﾞｰｼﾞ R	SI1 E GO 0.304	285224	210000	73170	1	t	\N	\N	2	Wedding ring/60984319.jpg
38	60989826	*Pt950H ｴﾝｹﾞｰｼﾞR	VS1 I VG 0.528	537075	167000	58078	1	t	\N	\N	2	Wedding ring/60989826.jpg
39	60989819	Pt950H ｴﾝｹﾞｰｼﾞ R	VS2 I EXHC 0.515	535500	172000	59962	1	t	\N	\N	2	Wedding ring/60989819.jpg
40	60992017	Pt950H ｴﾝｹﾞｰｼﾞ R	VS2 H EX 0.509	617000	176000	61305	1	t	\N	\N	2	Wedding ring/60992017.jpg
41	60998910	Pt950H ｴﾝｹﾞｰｼﾞ R	VS2 F EXHC0.516	561600	257000	200155	1	t	\N	\N	2	Wedding ring/60998910.jpg
42	60989321	Pt950H ｴﾝｹﾞｰｼﾞ R	VS1 F GO 0.502	664800	253000	88180	1	t	\N	\N	2	Wedding ring/60989321.jpg
43	60998903	Pt950H ｴﾝｹﾞｰｼﾞ R	SI1 H EX  0.419	339500	91000	70971	1	t	\N	\N	2	Wedding ring/60998903.jpg
44	60993960	Pt950H ｴﾝｹﾞｰｼﾞ R	SI1 G EX 0.315	338600	113000	59519	1	t	\N	\N	2	Wedding ring/60993960.jpg
45	60996428	Pt950H ｴﾝｹﾞｰｼﾞ R	VVS2 G EX 0.510	770175	284000	219377	1	t	\N	\N	2	Wedding ring/60996428.jpg
46	60972910	Pt950H ｴﾝｹﾞｰｼﾞ R	VVS1 G EX 0.522	863500	340000	118663	1	t	\N	\N	2	Wedding ring/60972910.jpg
47	60984289	Pt950H ｴﾝｹﾞｰｼﾞ R	VS2 E GO 0.303	376425	256000	89346	1	t	\N	\N	2	Wedding ring/60984289.jpg
48	60986665	Pt950H ｴﾝｹﾞｰｼﾞ R	VS1 F VG  0.310	389025	120000	41670	1	t	\N	\N	2	Wedding ring/60986665.jpg
49	60989598	*Pt950H ｴﾝｹﾞｰｼﾞR	VS1 G EX 0.310	390600	117000	40835	1	t	\N	\N	2	Wedding ring/60989598.jpg
50	60989581	Pt950H ｴﾝｹﾞｰｼﾞ R	VVS1 F VG  0.302	448875	223000	77598	1	t	\N	\N	2	Wedding ring/60989581.jpg
51	60989604	Pt950H ｴﾝｹﾞｰｼﾞ R	VS2 E GO  0.510	705600	225000	78352	1	t	\N	\N	2	Wedding ring/60989604.jpg
52	60993984	Pt950H ｴﾝｹﾞｰｼﾞ R	VVS1 G EXHC0.508	850500	309000	128325	1	t	\N	\N	2	Wedding ring/60993984.jpg
53	60996442	*Pt950H ｴﾝｹﾞｰｼﾞR	VS1 G EX 0.513	722925	252000	109183	1	t	\N	\N	2	Wedding ring/60996442.jpg
54	60999016	Pt950H ｴﾝｹﾞｰｼﾞ R	VS1 G EX  0.530	730000	243000	189363	1	t	\N	\N	2	Wedding ring/60999016.jpg
55	60992048	Pt950H ｴﾝｹﾞｰｼﾞ R	VS2 H EX 0.520	654000	191000	66426	1	t	\N	\N	2	Wedding ring/60992048.jpg
56	60984296	Pt950H ｴﾝｹﾞｰｼﾞ R	VS2 E VG 0.512	552000	294000	102401	1	t	\N	\N	2	Wedding ring/60984296.jpg
57	60989574	Pt950H ｴﾝｹﾞｰｼﾞ R	VVS1 F EX  0.304	487700	227000	79082	1	t	\N	\N	2	Wedding ring/60989574.jpg
58	60984272	Pt950H ｴﾝｹﾞｰｼﾞ R	VS1 F GO 0.308	379575	133000	46322	1	t	\N	\N	2	Wedding ring/60984272.jpg
59	60969408	*Pt950H ｴﾝｹﾞｰｼﾞR	VVS2 E VG  0.324	350548	156000	54383	1	t	\N	\N	2	Wedding ring/60969408.jpg
60	60981349	PT950H ｴﾝｹﾞｰｼﾞ R	VVS1 G3EXHC0.343	345600	158000	54978	1	t	\N	\N	2	Wedding ring/60981349.jpg
61	60985491	Pt950H ｴﾝｹﾞｰｼﾞ R	VVS2 F VG 0.306	431550	132000	45774	1	t	\N	\N	2	Wedding ring/60985491.jpg
62	60985507	Pt950H ｴﾝｹﾞｰｼﾞ R	VVS2 F3EXHC0.310	507600	175000	60860	1	t	\N	\N	2	Wedding ring/60985507.jpg
63	60989666	Pt950H ｴﾝｹﾞｰｼﾞ R	SI2 E 3EXHC0.412	469800	160000	55761	1	t	\N	\N	2	Wedding ring/60989666.jpg
64	60993281	Pt950H ｴﾝｹﾞｰｼﾞ R	SI1 F VGHC 0.308	362900	111000	58857	1	t	\N	\N	2	Wedding ring/60993281.jpg
65	60989024	Pt950H ｴﾝｹﾞｰｼﾞ R	VVS2 E VG  0.329	476300	151000	52201	1	t	\N	\N	2	Wedding ring/60989024.jpg
66	60989673	*Pt950H ｴﾝｹﾞｰｼﾞR	SI2 E 3EXHC0.427	477900	164000	56927	1	t	\N	\N	2	Wedding ring/60989673.jpg
67	60989680	Pt950H ｴﾝｹﾞｰｼﾞ R	VVS1 G VG  0.403	543375	178000	62120	1	t	\N	\N	2	Wedding ring/60989680.jpg
68	60989659	Pt950H ｴﾝｹﾞｰｼﾞ R	VS2 H VG  0.300	279904	118000	40997	1	t	\N	\N	2	Wedding ring/60989659.jpg
69	60971104	Pt950H ｴﾝｹﾞｰｼﾞ R	VS1 E VG  0.382	439425	158000	54942	1	t	\N	\N	2	Wedding ring/60971104.jpg
70	60985514	Pt950H ｴﾝｹﾞｰｼﾞ R	VVS2 F VG 0.315	441600	162000	56286	1	t	\N	\N	2	Wedding ring/60985514.jpg
71	60985521	Pt950H ｴﾝｹﾞｰｼﾞ R	VVS2 F EX 0.329	489300	153000	53350	0	f	\N	\N	2	Wedding ring/60985521.jpg
72	60989758	Pt950H ｴﾝｹﾞｰｼﾞ R	VS1 G GO  0.401	486675	165000	57408	1	t	\N	\N	2	Wedding ring/60989758.jpg
73	60989437	Pt950H ｴﾝｹﾞｰｼﾞ R	VS1 E GO  0.405	504000	159000	55393	1	t	\N	\N	2	Wedding ring/60989437.jpg
74	60989420	Pt950H ｴﾝｹﾞｰｼﾞ R	VS1 E GO  0.414	524900	170000	59134	1	t	\N	\N	2	Wedding ring/60989420.jpg
75	60984357	Pt950H ｴﾝｹﾞｰｼﾞ R	VS1 F GO 0.312	373275	144000	50069	1	t	\N	\N	2	Wedding ring/60984357.jpg
76	60984364	Pt950H ｴﾝｹﾞｰｼﾞ R	VS1 F VG 0.318	385875	177000	61768	1	t	\N	\N	2	Wedding ring/60984364.jpg
77	60998989	Pt950H ｴﾝｹﾞｰｼﾞ R	VVS1 F EXHC0.559	915500	332000	258739	1	t	\N	\N	2	Wedding ring/60998989.jpg
78	60972569	*Pt950H ｴﾝｹﾞｰｼﾞR	VVS2 H EX 0.332	411075	153000	53315	1	t	\N	\N	2	Wedding ring/60972569.jpg
79	60996367	*Pt950H ｴﾝｹﾞｰｼﾞR	VS1 E EXHC 0.441	592500	258000	106752	1	t	\N	\N	2	Wedding ring/60996367.jpg
80	60999085	Pt950H ｴﾝｹﾞｰｼﾞ R	SI1 G EX  0.394	370125	118000	91897	1	t	\N	\N	2	Wedding ring/60999085.jpg
81	60994028	Pt950H ｴﾝｹﾞｰｼﾞ R	SI1 E EX 0.319	374300	126000	64081	1	t	\N	\N	2	Wedding ring/60994028.jpg
82	60971203	PT950H ｴﾝｹﾞｰｼﾞ R	VVS2 G EX 0.361	252000	167000	58235	1	t	\N	\N	2	Wedding ring/60971203.jpg
83	60984531	Pt950H ｴﾝｹﾞｰｼﾞ R	VS2 F GO  0.402	435800	158000	55133	1	t	\N	\N	2	Wedding ring/60984531.jpg
84	60989369	Pt950H ｴﾝｹﾞｰｼﾞ R	VVS2 H GO  0.334	405000	128000	44697	1	t	\N	\N	2	Wedding ring/60989369.jpg
85	60991997	Pt950H ｴﾝｹﾞｰｼﾞ R	VS1 H VG 0.503	496800	199000	69366	1	t	\N	\N	2	Wedding ring/60991997.jpg
86	60999276	Pt950H ｴﾝｹﾞｰｼﾞ R	VS1 I EXHC 0.557	630000	123000	95439	1	t	\N	\N	2	Wedding ring/60999276.jpg
87	60989390	*Pt950H ｴﾝｹﾞｰｼﾞR	VVS2 G GO  0.460	362900	261000	90913	1	t	\N	\N	2	Wedding ring/60989390.jpg
88	60999221	Pt950H ｴﾝｹﾞｰｼﾞ R	SI1 H EX  0.410	432600	143000	111684	1	t	\N	\N	2	Wedding ring/60999221.jpg
89	60994134	Pt950H ｴﾝｹﾞｰｼﾞ R	VVS2 F VG  0.518	784000	303000	130165	1	t	\N	\N	2	Wedding ring/60994134.jpg
90	60985569	Pt950H ｴﾝｹﾞｰｼﾞ R	VVS1 F VG  0.331	363948	137000	47628	1	t	\N	\N	2	Wedding ring/60985569.jpg
91	60989857	Pt950H ｴﾝｹﾞｰｼﾞ R	VVS1 H EX 0.528	512400	227000	79233	1	t	\N	\N	2	Wedding ring/60989857.jpg
92	60985552	Pt950H ｴﾝｹﾞｰｼﾞ R	VVS2 F VG  0.338	404775	138000	48132	1	t	\N	\N	2	Wedding ring/60985552.jpg
93	60993922	Pt950H ｴﾝｹﾞｰｼﾞ R	VS1 F EX 0.525	741000	270000	106629	1	t	\N	\N	2	Wedding ring/60993922.jpg
94	60984975	Pt950H ｴﾝｹﾞｰｼﾞ R	VS2 F GO  0.723	520800	413000	144223	1	t	\N	\N	2	Wedding ring/60984975.jpg
95	60989864	Pt950H ｴﾝｹﾞｰｼﾞ R	VVS1 G EX  0.568	579600	289000	100813	1	t	\N	\N	2	Wedding ring/60989864.jpg
96	60988584	Pt950H ｴﾝｹﾞｰｼﾞ R	VS1 F VG 0.732	1108800	411000	143490	0	f	\N	\N	2	Wedding ring/60988584.jpg
97	60996329	*Pt950H ｴﾝｹﾞｰｼﾞR	VS1 F EX 0.563	788000	285000	220163	1	t	\N	\N	2	Wedding ring/60996329.jpg
98	60989888	*Pt950H ｴﾝｹﾞｰｼﾞR	SI2 F GO 0.717	600000	271000	94348	1	t	\N	\N	2	Wedding ring/60989888.jpg
99	60984951	Pt950H ｴﾝｹﾞｰｼﾞ R	VS2 F GO  0.500	598500	221000	77076	1	t	\N	\N	2	Wedding ring/60984951.jpg
100	60989871	Pt950H ｴﾝｹﾞｰｼﾞ R	SI1 F GO  0.713	1480000	468000	163209	1	t	\N	\N	2	Wedding ring/60989871.jpg
101	60993939	Pt950H ｴﾝｹﾞｰｼﾞ R	VS1 E VG 0.486	596925	222000	92585	1	t	\N	\N	2	Wedding ring/60993939.jpg
102	60989932	*Pt950H ｴﾝｹﾞｰｼﾞR	SI2 G GO 0.701	785700	298000	104036	1	t	\N	\N	2	Wedding ring/60989932.jpg
103	60985019	Pt950H ｴﾝｹﾞｰｼﾞ R	VS2 E VG  0.704	1106500	425000	148232	0	f	\N	\N	2	Wedding ring/60985019.jpg
104	60985026	Pt950H ｴﾝｹﾞｰｼﾞ R	VS1 E FAIR 1.030	2472750	992000	346360	1	t	\N	\N	2	Wedding ring/60985026.jpg
105	60999818	Pt950H ｴﾝｹﾞｰｼﾞ R	VS2 H EXHC 0.412	442300	124000	96331	1	t	\N	\N	2	Wedding ring/60999818.jpg
106	60985675	Pt950H ｴﾝｹﾞｰｼﾞ R	VS2 E VG 0.361	441600	176000	61258	1	t	\N	\N	2	Wedding ring/60985675.jpg
107	60993946	Pt950H ｴﾝｹﾞｰｼﾞ R	VVS2 G EXHC0.538	826875	296000	114124	1	t	\N	\N	2	Wedding ring/60993946.jpg
108	60996343	Pt950H ｴﾝｹﾞｰｼﾞ R	VVS1 F EXHC0.563	1022300	348000	128113	1	t	\N	\N	2	Wedding ring/60996343.jpg
109	60992697	Pt950H ｴﾝｹﾞｰｼﾞ R	VVS2 F EX  0.461	466600	249000	104522	1	t	\N	\N	2	Wedding ring/60992697.jpg
110	60998231	Pt950H ｴﾝｹﾞｰｼﾞ R	VS1 I EXHC 0.392	459900	94000	73142	1	t	\N	\N	2	Wedding ring/60998231.jpg
111	60991102	Pt950H ｴﾝｹﾞｰｼﾞ R	VS1 H VG 0.334	292700	127000	43896	1	t	\N	\N	2	Wedding ring/60991102.jpg
112	60991126	Pt950H ｴﾝｹﾞｰｼﾞ R	SI1 F EX 0.502	1457600	160000	55614	1	t	\N	\N	2	Wedding ring/60991126.jpg
113	60999320	Pt950H ｴﾝｹﾞｰｼﾞ R	VS1 E EX  0.320	452600	109000	84999	1	t	\N	\N	2	Wedding ring/60999320.jpg
114	60992666	Pt950H ｴﾝｹﾞｰｼﾞ R	SI1 I VG 0.342	254100	153000	71385	1	t	\N	\N	2	Wedding ring/60992666.jpg
115	60989628	*Pt950H ｴﾝｹﾞｰｼﾞR	VS2 H EX  0.511	441600	204000	71195	1	t	\N	\N	2	Wedding ring/60989628.jpg
116	60989635	Pt950H ｴﾝｹﾞｰｼﾞ R	VS2 G VG  0.395	496800	227000	79055	1	t	\N	\N	2	Wedding ring/60989635.jpg
117	60986528	Pt950H ｴﾝｹﾞｰｼﾞ R	VS1 E VG 0.503	805200	326000	113586	1	t	\N	\N	2	Wedding ring/60986528.jpg
118	60998255	Pt950H ｴﾝｹﾞｰｼﾞ R	VVS2 F VG  0.585	912000	285000	221984	1	t	\N	\N	2	Wedding ring/60998255.jpg
119	60986535	Pt950H ｴﾝｹﾞｰｼﾞ R	VVS1 E VG  0.329	547600	211000	73524	1	t	\N	\N	2	Wedding ring/60986535.jpg
120	60992789	Pt950H ｴﾝｹﾞｰｼﾞ R	VS2 G EX 0.256	309000	182000	63626	1	t	\N	\N	2	Wedding ring/60992789.jpg
121	60987501	Pt950H ｴﾝｹﾞｰｼﾞ R	VS2 F GO 0.303	448875	121000	42094	1	t	\N	\N	2	Wedding ring/60987501.jpg
122	60991614	Pt950H ｴﾝｹﾞｰｼﾞ R	VS2 H VG 0.317	439100	112000	39094	1	t	\N	\N	2	Wedding ring/60991614.jpg
123	60987518	Pt950H ｴﾝｹﾞｰｼﾞ R	VS1 F VG  0.501	811700	316000	110029	1	t	\N	\N	2	Wedding ring/60987518.jpg
124	60987525	Pt950H ｴﾝｹﾞｰｼﾞ R	VS2 F GO  0.502	730700	220000	76749	1	t	\N	\N	2	Wedding ring/60987525.jpg
125	60998309	Pt950H ｴﾝｹﾞｰｼﾞR	VVS1 E 3EX 0.516	887700	323000	252237	1	t	\N	\N	2	Wedding ring/60998309.jpg
126	60995452	*Pt950H ｴﾝｹﾞｰｼﾞR	VVS2 F EX  0.548	1012500	335000	130683	1	t	\N	\N	2	Wedding ring/60995452.jpg
127	60989345	*Pt950H ｴﾝｹﾞｰｼﾞR	VVS2 H EX  0.539	834750	239000	83149	1	t	\N	\N	2	Wedding ring/60989345.jpg
128	60991607	Pt950H ｴﾝｹﾞｰｼﾞ R	VVS2 F VG  0.517	889875	295000	102934	1	t	\N	\N	2	Wedding ring/60991607.jpg
129	60988638	*Pt950H ｴﾝｹﾞｰｼﾞR	VS1 F VG  0.526	741825	327000	113779	1	t	\N	\N	2	Wedding ring/60988638.jpg
130	61001312	Pt950H ｴﾝｹﾞｰｼﾞ R	SI1 H EX 0.305	307500	103000	80285	1	t	\N	\N	2	Wedding ring/61001312.jpg
131	60987006	Pt950H ｴﾝｹﾞｰｼﾞ R	VS1 G VG  0.306	406700	159000	55375	1	t	\N	\N	2	Wedding ring/60987006.jpg
132	60986986	Pt950H ｴﾝｹﾞｰｼﾞ R	VS1 H EXHC 0.523	727400	240000	83487	1	t	\N	\N	2	Wedding ring/60986986.jpg
133	60993908	Pt950H ｴﾝｹﾞｰｼﾞ R	VS1 G VG  0.495	573500	196000	96547	1	t	\N	\N	2	Wedding ring/60993908.jpg
134	60998927	Pt950H ｴﾝｹﾞｰｼﾞ R	SI1 F VG  0.385	411500	99000	77331	1	t	\N	\N	2	Wedding ring/60998927.jpg
135	60996398	Pt950H ｴﾝｹﾞｰｼﾞ R	VVS1 G EX 0.571	720000	348000	141224	1	t	\N	\N	2	Wedding ring/60996398.jpg
136	60986993	Pt950H ｴﾝｹﾞｰｼﾞ R	VVS2 G VG  0.310	420525	209000	72944	0	f	\N	\N	2	Wedding ring/60986993.jpg
137	60990228	Pt950/PGｴﾝｹﾞｰｼﾞR	SI2 G GO 0.553	377500	164000	57066	1	t	\N	\N	2	Wedding ring/60990228.jpg
138	60999566	Pt950/PGｴﾝｹﾞｰｼﾞR	SI1 E VG  0.511	576000	167000	129906	1	t	\N	\N	2	Wedding ring/60999566.jpg
139	60999214	Pt950/PGｴﾝｹﾞｰｼﾞR	SI1 I EX  0.394	288000	46000	35626	1	t	\N	\N	2	Wedding ring/60999214.jpg
140	61002999	Pt950/PGｴﾝｹﾞｰｼﾞR	VS2 H VG 0.314	236600	78000	60610	1	t	\N	\N	2	Wedding ring/61002999.jpg
141	60990211	Pt950/PGｴﾝｹﾞｰｼﾞR	SI2 F VG 0.510	406700	162000	56505	1	t	\N	\N	2	Wedding ring/60990211.jpg
142	60990174	Pt950/PGｴﾝｹﾞｰｼﾞR	VS1 I EX 0.395	288225	93000	32168	1	t	\N	\N	2	Wedding ring/60990174.jpg
143	60999269	Pt950/PGｴﾝｹﾞｰｼﾞR	SI1 H EX  0.592	599000	178000	138334	1	t	\N	\N	2	Wedding ring/60999269.jpg
144	60998538	PT950/PGｴﾝｹﾞｰｼﾞ	VS2 E EX  0.343	316575	101000	78246	1	t	\N	\N	2	Wedding ring/60998538.jpg
145	60999177	Pt950/PGｴﾝｹﾞｰｼﾞR	SI1 H EX  0.382	307200	55000	42523	1	t	\N	\N	2	Wedding ring/60999177.jpg
146	60999733	Pt950H ｴﾝｹﾞｰｼﾞ R	PRI VS2 J  0.543	505500	79000	61188	1	t	\N	\N	2	Wedding ring/60999733.jpg
147	60999726	Pt950H ｴﾝｹﾞｰｼﾞ R	PRI VS2 J  0.351	345100	56000	43135	1	t	\N	\N	2	Wedding ring/60999726.jpg
148	60999740	Pt950H ｴﾝｹﾞｰｼﾞ R	PRI SI1 F  0.350	408000	52000	40619	1	t	\N	\N	2	Wedding ring/60999740.jpg
149	60998606	Pt950H ｴﾝｹﾞｰｼﾞ R	VS2 G EX  0.315	411500	113000	87833	1	t	\N	\N	2	Wedding ring/60998606.jpg
150	60990013	Pt950H ｴﾝｹﾞｰｼﾞ R	VS2 H VG 0.503	350700	180000	62772	1	t	\N	\N	2	Wedding ring/60990013.jpg
151	60999207	Pt950H ｴﾝｹﾞｰｼﾞ R	VS2 H EXHC 0.545	604800	199000	155163	1	t	\N	\N	2	Wedding ring/60999207.jpg
152	60993953	Pt950H ｴﾝｹﾞｰｼﾞ R	VS1 G EX 0.532	491400	275000	113229	1	t	\N	\N	2	Wedding ring/60993953.jpg
153	61002326	Pt950H ｴﾝｹﾞｰｼﾞ R	VVS2 H VG 0.212	225750	66000	50992	1	t	\N	\N	2	Wedding ring/61002326.jpg
154	61000957	Pt950H ｴﾝｹﾞｰｼﾞ R	VS1 E EX 0.332	422100	129000	100540	1	t	\N	\N	2	Wedding ring/61000957.jpg
155	61002166	Pt950H ｴﾝｹﾞｰｼﾞ R	VVS1 G EX 0.324	450450	134000	104503	1	t	\N	\N	2	Wedding ring/61002166.jpg
156	61002494	Pt950H ｴﾝｹﾞｰｼﾞ R	VS1 G GO 0.337	320000	81000	63089	1	t	\N	\N	2	Wedding ring/61002494.jpg
157	61002470	Pt950H ｴﾝｹﾞｰｼﾞ R	VS1 G VG 0.317	385875	80000	61850	1	t	\N	\N	2	Wedding ring/61002470.jpg
158	61002487	Pt950H ｴﾝｹﾞｰｼﾞ R	VS1 G VG 0.334	395325	98000	76238	1	t	\N	\N	2	Wedding ring/61002487.jpg
159	61006331	Pt950H ｴﾝｹﾞｰｼﾞ R	VVS1 I EX 0.337	345000	119000	92192	1	t	\N	\N	2	Wedding ring/61006331.jpg
160	61002197	Pt950H ｴﾝｹﾞｰｼﾞ R	VS2 J EX 0.331	186900	67000	52234	1	t	\N	\N	2	Wedding ring/61002197.jpg
161	61002210	Pt950H ｴﾝｹﾞｰｼﾞ R	VVS1 I EX 0.303	346500	121000	94129	1	t	\N	\N	2	Wedding ring/61002210.jpg
162	61002227	Pt950H ｴﾝｹﾞｰｼﾞ R	VVS2 I EX 0.311	297000	65000	50157	1	t	\N	\N	2	Wedding ring/61002227.jpg
163	61002234	Pt950H ｴﾝｹﾞｰｼﾞ R	VS1 I EXHC 0.331	343350	99000	77217	1	t	\N	\N	2	Wedding ring/61002234.jpg
164	61002067	Pt950H ｴﾝｹﾞｰｼﾞ R	VS2 I VG 0.316	294525	90000	70239	1	t	\N	\N	2	Wedding ring/61002067.jpg
165	61002258	Pt950H ｴﾝｹﾞｰｼﾞ R	SI1 G EXHC 0.348	341775	106000	82399	1	t	\N	\N	2	Wedding ring/61002258.jpg
166	61002265	Pt950H ｴﾝｹﾞｰｼﾞ R	SI1 F EXHC 0.315	343350	97000	75598	1	t	\N	\N	2	Wedding ring/61002265.jpg
167	61002098	Pt950H ｴﾝｹﾞｰｼﾞ R	VVS1 H EXHC0.347	434700	151000	117909	1	t	\N	\N	2	Wedding ring/61002098.jpg
168	61002272	Pt950H ｴﾝｹﾞｰｼﾞ R	VS1 J EX 0.326	332325	101000	78594	1	t	\N	\N	2	Wedding ring/61002272.jpg
169	61002296	Pt950H ｴﾝｹﾞｰｼﾞ R	VS1 J EX 0.343	338625	102000	78917	1	t	\N	\N	2	Wedding ring/61002296.jpg
170	61002630	Pt950H ｴﾝｹﾞｰｼﾞ R	VS1 J EX 0.356	207650	105000	83269	1	t	\N	\N	2	Wedding ring/61002630.jpg
171	61002647	Pt950H ｴﾝｹﾞｰｼﾞ R	VS2 F VG 0.306	242000	108000	85920	1	t	\N	\N	2	Wedding ring/61002647.jpg
172	61002654	Pt950H ｴﾝｹﾞｰｼﾞ R	VVS2 H EX 0.409	516600	95000	70547	1	t	\N	\N	2	Wedding ring/61002654.jpg
173	61003149	Pt950H ｴﾝｹﾞｰｼﾞ R	VVS1 H EXHC0.339	437850	124000	96873	1	t	\N	\N	2	Wedding ring/61003149.jpg
174	61003118	Pt950H ｴﾝｹﾞｰｼﾞ R	SI2 J VG 0.308	277200	79000	60961	1	t	\N	\N	2	Wedding ring/61003118.jpg
175	61003132	Pt950H ｴﾝｹﾞｰｼﾞ R	VS2 G EXHC 0.327	366975	104000	80522	1	t	\N	\N	2	Wedding ring/61003132.jpg
176	61003163	Pt950H ｴﾝｹﾞｰｼﾞ R	VS1 G EXHC 0.339	407925	107000	85529	1	t	\N	\N	2	Wedding ring/61003163.jpg
177	61003170	Pt950H ｴﾝｹﾞｰｼﾞ R	VS2 G EXHC 0.335	378000	106000	84613	1	t	\N	\N	2	Wedding ring/61003170.jpg
178	61003187	Pt950H ｴﾝｹﾞｰｼﾞ R	SI1 H VG 0.313	316575	82000	65744	1	t	\N	\N	2	Wedding ring/61003187.jpg
179	61003194	Pt950H ｴﾝｹﾞｰｼﾞ R	VVS1 F VG 0.309	445725	122000	97013	1	t	\N	\N	2	Wedding ring/61003194.jpg
180	50121250	PT ﾀﾞｲﾔ R	\N	378000	198000	62580	1	t	\N	\N	3	Fashion jewelry/50121250_web.jpg
181	50121861	PT ﾀﾞｲﾔ R	\N	369000	141000	44700	1	t	\N	\N	3	Fashion jewelry/50121861_web.jpg
182	50125449	PT ﾀﾞｲﾔ R	\N	472000	181000	57216	1	t	\N	\N	3	Fashion jewelry/50125449_web.jpg
183	50130382	WG ﾊﾟ-ﾙ R	Y30	359640	141000	44700	1	t	\N	\N	3	Fashion jewelry/50130382_web.jpg
184	50130689	WG ﾀﾞｲﾔ R	\N	131760	71000	22350	1	t	\N	\N	3	Fashion jewelry/50130689_web.jpg
185	50137930	PT ﾀﾞｲﾔ R	\N	236000	78000	24585	1	t	\N	\N	3	Fashion jewelry/50137930_1_web.jpg
186	50139101	PTﾄﾘｰﾄﾋﾟﾝｸﾀﾞｲﾔ R	1.05	653400	226000	71520	1	t	\N	\N	3	Fashion jewelry/50139101_web.jpg
187	50176328	K18YG ﾀﾞｲﾔ R	0.15	88000	36000	25000	1	t	\N	\N	3	Fashion jewelry/50176328_web.jpg
188	50176335	K18YG ﾀﾞｲﾔ R	0.2	88000	36000	25000	1	t	\N	\N	3	Fashion jewelry/50176335_web.jpg
189	50177097	Pt900 ﾀﾞｲﾔ R	9.075/0.8	24062400	7910000	5617830	1	t	\N	\N	3	Fashion jewelry/50177097_web.jpg
190	50194155	K18WG ﾀﾞｲﾔ R	0.14	94800	50000	35100	1	t	\N	\N	3	Fashion jewelry/50194155_web.jpg
191	50194667	K18WG ﾀﾞｲﾔ R	0.03	42000	18000	12600	2	t	\N	\N	3	Fashion jewelry/50194667_web.jpg
192	50194674	K18PG ﾀﾞｲﾔ R	0.03	41000	18000	12600	1	t	\N	\N	3	Fashion jewelry/50194674_web.jpg
193	50194681	K18YG ﾀﾞｲﾔ R	0.03	43000	18000	12600	2	t	\N	\N	3	Fashion jewelry/50194681_web.jpg
194	60960504	PT ｷｬｯﾂｱｲ R	10	3240000	976000	309547	1	t	\N	\N	3	Fashion jewelry/60960504_web.jpg
195	60962133	ダイヤリング(PT)	\N	2589300	984000	312110	1	t	\N	\N	3	Fashion jewelry/60962133_web.jpg
196	60962164	ダイヤリング(PT)	\N	2526300	958000	303884	1	t	\N	\N	3	Fashion jewelry/60962164_web.jpg
197	60962416	PT ｱﾚｷｻﾝﾄﾞﾗｲﾄ R	3.36	2567300	1339000	425019	1	t	\N	\N	3	Fashion jewelry/60962416_web.jpg
198	60967633	PG ﾀﾞｲﾔ R	\N	263000	90000	27574	1	t	\N	\N	3	Fashion jewelry/60967633_web.jpg
199	60973078	PG ﾀﾞｲﾔ R	0.56	134100	70000	21473	1	t	\N	\N	3	Fashion jewelry/60973078_web.jpg
200	60973160	WG ﾀﾞｲﾔ R	0.48	173000	79000	24390	1	t	\N	\N	3	Fashion jewelry/60973160_web.jpg
201	60975386	PT950H ﾀﾞｲﾔ R	SI1 E 3EXHC1.265	3240000	1379000	437772	1	t	\N	\N	3	Fashion jewelry/60975386_1_web.jpg
202	60977571	PT900 ﾀﾞｲﾔ R	OV I1 F	1463000	411000	130197	1	t	\N	\N	3	Fashion jewelry/60977571_web.jpg
203	60977830	K18 ﾀﾞｲﾔ R	0.55	186000	71000	21843	1	t	\N	\N	3	Fashion jewelry/60977830_web.jpg
204	60981912	K18YG ﾀﾞｲﾔ R	0.12	52000	22000	6596	1	t	\N	\N	3	Fashion jewelry/60981912_web.jpg
205	61000094	K18WG ﾀﾞｲﾔ R	\N	372000	114000	80526	2	t	\N	\N	3	Fashion jewelry/61000094_web.jpg
206	61000131	ダイヤリング(WG)	\N	59400	23000	15823	6	t	\N	\N	3	Fashion jewelry/61000131_web.jpg
207	61018921	K18WG ﾀﾞｲﾔ R	RD SI2 I EX	328320	90000	63561	1	t	\N	\N	3	Fashion jewelry/61018921_web.jpg
208	61019140	Pt900 ﾀﾞｲﾔ R	RD VVS1 L EX	381800	180000	127812	1	t	\N	\N	3	Fashion jewelry/61019140_web.jpg
209	61019157	Pt900 ﾀﾞｲﾔ R	RD VVS2 L EX	381800	137000	96925	1	t	\N	\N	3	Fashion jewelry/61019157_web.jpg
210	61019171	Pt900 ﾀﾞｲﾔ R	RD VS1 K EX	245200	105000	74287	1	t	\N	\N	3	Fashion jewelry/61019171_web.jpg
211	61019331	Pt900 ﾀﾞｲﾔ R	RD VVS2 G EX	492700	99000	69887	1	t	\N	\N	3	Fashion jewelry/61019331_web.jpg
212	61019416	Pt900 ﾀﾞｲﾔ R	RD VS2 E EX	367200	68000	47806	1	t	\N	\N	3	Fashion jewelry/61019416_web.jpg
213	61019607	Pt900 ﾀﾞｲﾔ R	RD VVS1 H VG	311850	91000	64105	1	t	\N	\N	3	Fashion jewelry/61019607_web.jpg
214	61019614	Pt900 ﾀﾞｲﾔ R	RD VVS2 H GO	311850	68000	47884	1	t	\N	\N	3	Fashion jewelry/61019614_web.jpg
215	61019645	Pt900 ﾀﾞｲﾔ R	RD VVS1 H EX	410400	135000	95570	1	t	\N	\N	3	Fashion jewelry/61019645_web.jpg
216	61019966	K18WG ﾀﾞｲﾔ R	ﾊﾟｳﾞｪ　　　　　	108000	49000	42267	1	t	\N	\N	3	Fashion jewelry/61019966_web.jpg
217	61031562	Pt900 ﾀﾞｲﾔ R	RD VVS1 F EXHC	330500	139000	54011	1	t	\N	\N	3	Fashion jewelry/61031562_web.jpg
218	70035872	WG ﾀﾞｲﾔ R	\N	617000	178000	54803	1	t	\N	\N	3	Fashion jewelry/70035872_web.jpg
219	70040388	WG ﾀﾞｲﾔ R	\N	756000	210000	64528	1	t	\N	\N	3	Fashion jewelry/70040388_web.jpg
220	70052985	WG ﾀﾞｲﾔ R	1.03	328320	132000	41614	1	t	\N	\N	3	Fashion jewelry/70052985_web.jpg
221	70062496	WG ﾋﾟﾝｸｻﾌｧｲﾔ R	\N	80800	28000	8842	1	t	\N	\N	3	Fashion jewelry/70062496_web.jpg
222	70063806	WG ﾋﾟﾝｸｻﾌｧｲﾔ R	\N	129600	45000	14162	1	t	\N	\N	3	Fashion jewelry/70063806_web.jpg
223	70063851	K18 ｲｴﾛ-ｻﾌｧｲﾔ R	\N	97200	34000	10684	1	t	\N	\N	3	Fashion jewelry/70063851_web.jpg
224	80025467	Pt900 ﾀﾞｲﾔ R	ｹﾞﾝｾｷ	340900	143000	36853	1	t	\N	\N	3	Fashion jewelry/80025467_web.jpg
225	80025511	K18WG ﾀﾞｲﾔ R	RD SI2 J GO	196000	90000	63483	1	t	\N	\N	3	Fashion jewelry/80025511_web.jpg
226	80025573	ｺﾝﾋﾞ ﾀﾞｲﾔ R	RD SI2 J VG	125000	57000	42216	1	t	\N	\N	3	Fashion jewelry/80025573_web.jpg
227	80031420	K18WG ﾀﾞｲﾔ R	0.5ct 11号	191000	73000	51733	1	t	\N	\N	3	Fashion jewelry/80031420_web.jpg
228	80032045	K18WG ﾀﾞｲﾔ R	ﾋﾟﾝｸﾀﾞｲﾔ	81000	37000	22097	1	t	\N	\N	3	Fashion jewelry/80032045_web.jpg
229	80032106	Pt900 ﾀﾞｲﾔ R	RD SI2 J EX	260400	131000	55931	1	t	\N	\N	3	Fashion jewelry/80032106_web.jpg
230	80032120	Pt900 ﾀﾞｲﾔ R	RD VS1 F VG	408700	217000	46522	1	t	\N	\N	3	Fashion jewelry/80032120_web.jpg
231	80032427	Pt900 ﾀﾞｲﾔ R	RD SI2 F VG	452600	229000	79293	1	t	\N	\N	3	Fashion jewelry/80032427_web.jpg
232	80033035	K18WG ﾀﾞｲﾔ R	ﾊﾟｳﾞｪ/ﾌﾞﾗｳﾝ	154000	49000	33538	1	t	\N	\N	3	Fashion jewelry/80033035_web.jpg
233	80033295	Pt900 ﾀﾞｲﾔ R	HS VVS2 D	379800	160000	45056	1	t	\N	\N	3	Fashion jewelry/80033295_web.jpg
234	80033318	Pt900 ﾀﾞｲﾔ R	RD VS1 D EXHC	353900	149000	62314	1	t	\N	\N	3	Fashion jewelry/80033318_web.jpg
235	80033349	Pt900 ﾀﾞｲﾔ R	ｹﾞﾝｾｷ	340900	143000	50930	1	t	\N	\N	3	Fashion jewelry/80033349_web.jpg
236	80033523	Pt900 ﾀﾞｲﾔ R	RD VS2 L EX	453900	230000	126752	1	t	\N	\N	3	Fashion jewelry/80033523_web.jpg
237	80033547	Pt900 ﾀﾞｲﾔ R	RD VS2 L VG	500400	230000	108863	1	t	\N	\N	3	Fashion jewelry/80033547_web.jpg
238	80037422	Pt900 ﾀﾞｲﾔ R	RD VVS1 F EX	330500	139000	66030	1	t	\N	\N	3	Fashion jewelry/80037422_web.jpg
239	99036621	ダイヤリング(PT)	\N	3790800	1354000	963056	1	t	\N	\N	3	Fashion jewelry/99036621_1_web.jpg
240	70034554	WG ﾀﾞｲﾔ Nec	\N	43000000	9376000	3178747	1	t	\N	\N	4	High jewelry/70034554.jpg
241	60929419	WG ﾀﾞｲﾔ Nec	\N	1973000	960000	335161	1	t	\N	\N	4	High jewelry/60929419.jpg
242	70037128	WG ﾀﾞｲﾔ Nec	\N	2827500	1131000	383224	1	t	\N	\N	4	High jewelry/70037128.jpg
243	61000971	K18WG ﾀﾞｲﾔ Nec	\N	5747000	2357000	1841026	1	t	\N	\N	4	High jewelry/61000971.jpg
244	70047271	PT ﾀﾞｲﾔ Nec	\N	4532000	1591000	555412	1	t	\N	\N	4	High jewelry/70047271.jpg
245	70046816	k18WG ﾀﾞｲﾔ Nec	\N	3972500	1589000	554739	1	t	\N	\N	4	High jewelry/70046816.jpg
246	60967671	PT ｵﾊﾟ-ﾙ Nec	\N	1568000	818000	285547	1	t	\N	\N	4	High jewelry/60967671.jpg
247	70036046	WG ﾀﾞｲﾔ Nec	\N	4267500	1707000	578465	1	t	\N	\N	4	High jewelry/70036046.jpg
248	60977359	K18 ﾀﾞｲﾔ Nec	\N	3032000	1582000	552158	1	t	\N	\N	4	High jewelry/60977359.jpg
249	60974372	K18 ﾀﾞｲﾔ R	\N	2462400	927000	322868	1	t	\N	\N	4	High jewelry/60974372.jpg
250	70043570	PT ﾀﾞｲﾔ Bre	\N	1650000	660000	223510	1	t	\N	\N	4	High jewelry/70043570.jpg
\.


--
-- Data for Name: jewelry_type; Type: TABLE DATA; Schema: public; Owner: andimeon
--

COPY public.jewelry_type (id, title, slug, description, cover_url, title_eng) FROM stdin;
1	ネックレス	necklace	Platinum and gold necklaces with diamonds and other precious stones.	static/img/type_cover/necklace.png	Necklace
2	エンゲージリング	wedding-ring	Gold and platinum wedding rings with diamonds.	static/img/type_cover/wedding_ring.png	Wedding ring
3	その他のリング	fashion-jewelry	Designer gold and platinum gemstone jewelry.	static/img/type_cover/fashion_jewelry.png	Fashion jewelry
4	ハイジュエリー系	high-jewelry	Gorgeous diamond-guided necklaces for high class customers.	static/img/type_cover/high_jewelry.jpg	High jewelry
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: andimeon
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: andimeon
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: andimeon
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 32, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: andimeon
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: andimeon
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: andimeon
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: andimeon
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 35, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: andimeon
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 8, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: andimeon
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 47, true);


--
-- Name: jewelry_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: andimeon
--

SELECT pg_catalog.setval('public.jewelry_product_id_seq', 250, true);


--
-- Name: jewelry_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: andimeon
--

SELECT pg_catalog.setval('public.jewelry_type_id_seq', 4, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: andimeon
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: andimeon
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: andimeon
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: andimeon
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: andimeon
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: andimeon
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: andimeon
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: andimeon
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: andimeon
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: andimeon
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: andimeon
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: andimeon
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: andimeon
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: andimeon
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: andimeon
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: andimeon
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: andimeon
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: jewelry_product jewelry_product_pkey; Type: CONSTRAINT; Schema: public; Owner: andimeon
--

ALTER TABLE ONLY public.jewelry_product
    ADD CONSTRAINT jewelry_product_pkey PRIMARY KEY (id);


--
-- Name: jewelry_type jewelry_type_pkey; Type: CONSTRAINT; Schema: public; Owner: andimeon
--

ALTER TABLE ONLY public.jewelry_type
    ADD CONSTRAINT jewelry_type_pkey PRIMARY KEY (id);


--
-- Name: jewelry_type jewelry_type_slug_key; Type: CONSTRAINT; Schema: public; Owner: andimeon
--

ALTER TABLE ONLY public.jewelry_type
    ADD CONSTRAINT jewelry_type_slug_key UNIQUE (slug);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: andimeon
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: andimeon
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: andimeon
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: andimeon
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: andimeon
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: andimeon
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: andimeon
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: andimeon
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: andimeon
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: andimeon
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: andimeon
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: andimeon
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: andimeon
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: jewelry_product_sold_by_id_ec7e8ce2; Type: INDEX; Schema: public; Owner: andimeon
--

CREATE INDEX jewelry_product_sold_by_id_ec7e8ce2 ON public.jewelry_product USING btree (sold_by_id);


--
-- Name: jewelry_product_type_id_62f81748; Type: INDEX; Schema: public; Owner: andimeon
--

CREATE INDEX jewelry_product_type_id_62f81748 ON public.jewelry_product USING btree (type_id);


--
-- Name: jewelry_type_slug_df28a802_like; Type: INDEX; Schema: public; Owner: andimeon
--

CREATE INDEX jewelry_type_slug_df28a802_like ON public.jewelry_type USING btree (slug varchar_pattern_ops);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: andimeon
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: andimeon
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: andimeon
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: andimeon
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: andimeon
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: andimeon
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: andimeon
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: andimeon
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: andimeon
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: jewelry_product jewelry_product_sold_by_id_ec7e8ce2_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: andimeon
--

ALTER TABLE ONLY public.jewelry_product
    ADD CONSTRAINT jewelry_product_sold_by_id_ec7e8ce2_fk_auth_user_id FOREIGN KEY (sold_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: jewelry_product jewelry_product_type_id_62f81748_fk_jewelry_type_id; Type: FK CONSTRAINT; Schema: public; Owner: andimeon
--

ALTER TABLE ONLY public.jewelry_product
    ADD CONSTRAINT jewelry_product_type_id_62f81748_fk_jewelry_type_id FOREIGN KEY (type_id) REFERENCES public.jewelry_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

