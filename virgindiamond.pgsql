PGDMP     1            	        x            virgindiamond    12.3    12.3 w    >           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            @           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            A           1262    24578    virgindiamond    DATABASE     k   CREATE DATABASE virgindiamond WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C' LC_CTYPE = 'C';
    DROP DATABASE virgindiamond;
                andimeon    false            �            1259    24610 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    andimeon    false            �            1259    24608    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          andimeon    false    209            B           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          andimeon    false    208            �            1259    24620    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    andimeon    false            �            1259    24618    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          andimeon    false    211            C           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          andimeon    false    210            �            1259    24602    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    andimeon    false            �            1259    24600    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          andimeon    false    207            D           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          andimeon    false    206            �            1259    24628 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
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
    DROP TABLE public.auth_user;
       public         heap    andimeon    false            �            1259    24638    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    andimeon    false            �            1259    24636    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          andimeon    false    215            E           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          andimeon    false    214            �            1259    24626    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          andimeon    false    213            F           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          andimeon    false    212            �            1259    24646    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    andimeon    false            �            1259    24644 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          andimeon    false    217            G           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          andimeon    false    216            �            1259    24706    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
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
 $   DROP TABLE public.django_admin_log;
       public         heap    andimeon    false            �            1259    24704    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          andimeon    false    219            H           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          andimeon    false    218            �            1259    24592    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    andimeon    false            �            1259    24590    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          andimeon    false    205            I           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          andimeon    false    204            �            1259    24581    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    andimeon    false            �            1259    24579    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          andimeon    false    203            J           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          andimeon    false    202            �            1259    24779    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    andimeon    false            �            1259    24749    jewelry_product    TABLE     �  CREATE TABLE public.jewelry_product (
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
 #   DROP TABLE public.jewelry_product;
       public         heap    andimeon    false            �            1259    24747    jewelry_product_id_seq    SEQUENCE     �   CREATE SEQUENCE public.jewelry_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.jewelry_product_id_seq;
       public          andimeon    false    223            K           0    0    jewelry_product_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.jewelry_product_id_seq OWNED BY public.jewelry_product.id;
          public          andimeon    false    222            �            1259    24739    jewelry_type    TABLE       CREATE TABLE public.jewelry_type (
    id integer NOT NULL,
    title character varying(30) NOT NULL,
    slug character varying(50) NOT NULL,
    description character varying(100) NOT NULL,
    cover_url character varying(100),
    title_eng character varying(30) NOT NULL
);
     DROP TABLE public.jewelry_type;
       public         heap    andimeon    false            �            1259    24737    jewelry_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.jewelry_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.jewelry_type_id_seq;
       public          andimeon    false    221            L           0    0    jewelry_type_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.jewelry_type_id_seq OWNED BY public.jewelry_type.id;
          public          andimeon    false    220            [           2604    24613    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          andimeon    false    209    208    209            \           2604    24623    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          andimeon    false    211    210    211            Z           2604    24605    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          andimeon    false    206    207    207            ]           2604    24631    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          andimeon    false    213    212    213            ^           2604    24641    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          andimeon    false    215    214    215            _           2604    24649    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          andimeon    false    216    217    217            `           2604    24709    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          andimeon    false    219    218    219            Y           2604    24595    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          andimeon    false    204    205    205            X           2604    24584    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          andimeon    false    202    203    203            c           2604    24752    jewelry_product id    DEFAULT     x   ALTER TABLE ONLY public.jewelry_product ALTER COLUMN id SET DEFAULT nextval('public.jewelry_product_id_seq'::regclass);
 A   ALTER TABLE public.jewelry_product ALTER COLUMN id DROP DEFAULT;
       public          andimeon    false    222    223    223            b           2604    24742    jewelry_type id    DEFAULT     r   ALTER TABLE ONLY public.jewelry_type ALTER COLUMN id SET DEFAULT nextval('public.jewelry_type_id_seq'::regclass);
 >   ALTER TABLE public.jewelry_type ALTER COLUMN id DROP DEFAULT;
       public          andimeon    false    221    220    221            ,          0    24610 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          andimeon    false    209   D�       .          0    24620    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          andimeon    false    211   a�       *          0    24602    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          andimeon    false    207   ~�       0          0    24628 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          andimeon    false    213   ٟ       2          0    24638    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          andimeon    false    215   ��       4          0    24646    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          andimeon    false    217   ��       6          0    24706    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          andimeon    false    219   Š       (          0    24592    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          andimeon    false    205   ƣ       &          0    24581    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          andimeon    false    203   @�       ;          0    24779    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          andimeon    false    224   ��       :          0    24749    jewelry_product 
   TABLE DATA           �   COPY public.jewelry_product (id, product_num, description, standart, price, "price_IJT", price_net, quantity, exist, sold_at, sold_by_id, type_id, image) FROM stdin;
    public          andimeon    false    223   ��       8          0    24739    jewelry_type 
   TABLE DATA           Z   COPY public.jewelry_type (id, title, slug, description, cover_url, title_eng) FROM stdin;
    public          andimeon    false    221   :�       M           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          andimeon    false    208            N           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          andimeon    false    210            O           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 32, true);
          public          andimeon    false    206            P           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          andimeon    false    214            Q           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);
          public          andimeon    false    212            R           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          andimeon    false    216            S           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 35, true);
          public          andimeon    false    218            T           0    0    django_content_type_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.django_content_type_id_seq', 8, true);
          public          andimeon    false    204            U           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 47, true);
          public          andimeon    false    202            V           0    0    jewelry_product_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.jewelry_product_id_seq', 250, true);
          public          andimeon    false    222            W           0    0    jewelry_type_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.jewelry_type_id_seq', 4, true);
          public          andimeon    false    220            q           2606    24735    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            andimeon    false    209            v           2606    24662 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            andimeon    false    211    211            y           2606    24625 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            andimeon    false    211            s           2606    24615    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            andimeon    false    209            l           2606    24653 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            andimeon    false    207    207            n           2606    24607 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            andimeon    false    207            �           2606    24643 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            andimeon    false    215            �           2606    24677 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            andimeon    false    215    215            {           2606    24633    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            andimeon    false    213            �           2606    24651 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            andimeon    false    217            �           2606    24691 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            andimeon    false    217    217            ~           2606    24729     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            andimeon    false    213            �           2606    24715 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            andimeon    false    219            g           2606    24599 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            andimeon    false    205    205            i           2606    24597 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            andimeon    false    205            e           2606    24589 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            andimeon    false    203            �           2606    24786 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            andimeon    false    224            �           2606    24757 $   jewelry_product jewelry_product_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.jewelry_product
    ADD CONSTRAINT jewelry_product_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.jewelry_product DROP CONSTRAINT jewelry_product_pkey;
       public            andimeon    false    223            �           2606    24744    jewelry_type jewelry_type_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.jewelry_type
    ADD CONSTRAINT jewelry_type_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.jewelry_type DROP CONSTRAINT jewelry_type_pkey;
       public            andimeon    false    221            �           2606    24746 "   jewelry_type jewelry_type_slug_key 
   CONSTRAINT     ]   ALTER TABLE ONLY public.jewelry_type
    ADD CONSTRAINT jewelry_type_slug_key UNIQUE (slug);
 L   ALTER TABLE ONLY public.jewelry_type DROP CONSTRAINT jewelry_type_slug_key;
       public            andimeon    false    221            o           1259    24736    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            andimeon    false    209            t           1259    24673 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            andimeon    false    211            w           1259    24674 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            andimeon    false    211            j           1259    24659 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            andimeon    false    207                       1259    24689 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            andimeon    false    215            �           1259    24688 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            andimeon    false    215            �           1259    24703 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            andimeon    false    217            �           1259    24702 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            andimeon    false    217            |           1259    24730     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            andimeon    false    213            �           1259    24726 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            andimeon    false    219            �           1259    24727 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            andimeon    false    219            �           1259    24788 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            andimeon    false    224            �           1259    24787 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            andimeon    false    224            �           1259    24769 #   jewelry_product_sold_by_id_ec7e8ce2    INDEX     e   CREATE INDEX jewelry_product_sold_by_id_ec7e8ce2 ON public.jewelry_product USING btree (sold_by_id);
 7   DROP INDEX public.jewelry_product_sold_by_id_ec7e8ce2;
       public            andimeon    false    223            �           1259    24770     jewelry_product_type_id_62f81748    INDEX     _   CREATE INDEX jewelry_product_type_id_62f81748 ON public.jewelry_product USING btree (type_id);
 4   DROP INDEX public.jewelry_product_type_id_62f81748;
       public            andimeon    false    223            �           1259    24758    jewelry_type_slug_df28a802_like    INDEX     l   CREATE INDEX jewelry_type_slug_df28a802_like ON public.jewelry_type USING btree (slug varchar_pattern_ops);
 3   DROP INDEX public.jewelry_type_slug_df28a802_like;
       public            andimeon    false    221            �           2606    24668 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          andimeon    false    207    211    3182            �           2606    24663 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          andimeon    false    211    3187    209            �           2606    24654 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          andimeon    false    207    3177    205            �           2606    24683 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          andimeon    false    209    215    3187            �           2606    24678 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          andimeon    false    213    3195    215            �           2606    24697 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          andimeon    false    217    207    3182            �           2606    24692 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          andimeon    false    3195    217    213            �           2606    24716 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          andimeon    false    205    3177    219            �           2606    24721 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          andimeon    false    213    3195    219            �           2606    24771 C   jewelry_product jewelry_product_sold_by_id_ec7e8ce2_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.jewelry_product
    ADD CONSTRAINT jewelry_product_sold_by_id_ec7e8ce2_fk_auth_user_id FOREIGN KEY (sold_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY public.jewelry_product DROP CONSTRAINT jewelry_product_sold_by_id_ec7e8ce2_fk_auth_user_id;
       public          andimeon    false    213    223    3195            �           2606    24764 C   jewelry_product jewelry_product_type_id_62f81748_fk_jewelry_type_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.jewelry_product
    ADD CONSTRAINT jewelry_product_type_id_62f81748_fk_jewelry_type_id FOREIGN KEY (type_id) REFERENCES public.jewelry_type(id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY public.jewelry_product DROP CONSTRAINT jewelry_product_type_id_62f81748_fk_jewelry_type_id;
       public          andimeon    false    3216    221    223            ,      x������ � �      .      x������ � �      *   K  x�]�[j�@E�gV������mJ�7��Ə�쾉tg$�o$Ё�
��2��/��P�q[.�g�����%!���8DCqK���>��fAn	X�{�{5j����ۺަѕ�&�r��b[�gX*�EC���N�rX�}v	�ۇ��Ksx	�)!�R�J��*�k\\M���ޏ)�3��� �����ƘV�͛�Ӹ=��st�����i�7B�?i�7~�/��F��aC�^#�ꑄQ���]xf̤]0�eLe] �ʈ$��[�aYoL!�4 (0���1-硤w^�~�n����W&�¤�J�I�`���,_�����ƋA      0   �   x�=�O�0@�ۧ��M�ߦ�kD ��JA1bj�(�?#����wz�x=�{s��O�(�60a��w�5�J�L��&�]mJr�s�hu�Q1q�x����7ɘ�"�JV��K�I��B�X"�T���2�ͺ�uJ?�z�n��E}�IB�v|�0��s/�      2      x������ � �      4      x������ � �      6   �  x���Mo�@��ί�r���vg��ʇ8�J q(=Ǥ.QR9	PU=4>�޸q	!�^@��Y$�k��ӵ)q��[���ٙygI �:�X�@�)���u@�Gq�r����hg{؏{]t_$�7v7���q�&{�d4�nn2 ��9 JE\.��@� ���-v�d/�ѫ8�6�|�0L#V`!x�zɰ��p�w�F%~E�LaDC�����#�i:��������4���f8O����i�`{���w��� ݿ��� �O�;�UU��kC�!
�2 <L�;I�_I{J�ʑ�+8:�}���U�%�M���.�a)��	_�%��|cqP�7�QoM�������"k�*l$�d��%_�|��;uD]�]�kCp��D�|�O�6D M��^Wp��\^���_-(�/�b���+|a@�̬��[����U^H��k�u&��|E��\"��n_�/ZS�cR�%3'�c��6���;�ٯ�B���yY_��~�x0�ϱ������e��p������=�8�&6���,U�n8�<���#ٶ����C;�uB]�HT�ܥ�#v��f'v��fgv��f����$t]�qT�7��{{����;���b�Of���o�c;�P��c��8�sr�Jc�Mi�	�6�Q�n�
�4b
���}��+Ԡ����R�n�kE��@�s=�C��}~��wD�zR������@ꢨ�&A�z��o���?C�N�/�b�3      (   j   x�M�K
�@��#$~��d#ژ	:=t� s{EQ�{��zP?.!�,Gׂ'�ٿ�X�`$�>�I%'4'dcEK�D�3/��Б�Q�5��<k��xߘT�<8>�.1$      &   X  x���ݎ�8��3O���"�?�Y��M�p��t;o_J�x4����$�xtH��6��y~���A)��us��T��(�E�?���j�сq�����c������IA��|�n�K�%�]��.r��5��u����!4�s��X���Πw��Bs������%���I꯲��'���,|;��E�߄[sm�(F�#ʭ�ah��ý��4�#E}�6?C��.�*J[�T�_Q���<�k���R�w�"�W�.)�3��=�ĞH �"L��i��wRأ��83mV�s�yt��n�=D�*s�Xy�y�[���s3�.��a�v��K���8_5�.I�J��xg�S$�M��jA]��q�`�3�R <�bP�������L�K��n�m�����6G �&�/U��9J�o�
�
`E:�P	@- EU �3�tT�^����7,�O (.�~ztW	�F-�ƀή!�j�6G��XOy�!�~N�9'u!���Xe 3Lɀ�;	F�=n#�h�VG[�?D }PL�6_ ���/��p�5�(Czк
p�K(Cf0�`9n-T��� O�x@e
�m  ��`����� �D���i��4?�zXY�se��S����L"�]Pw�-;Ȁ2�����4��Ù�8">��%���,�6�r�P���	PfQ&P��n�� ��.f��&q�C,s(�=��)T�3R�2�h� �^����je�} �8�Z'��q�m~#�eŲ@c `o���� �P�@ ��2uCR &ȻEe �5�tC�@oWJ�,ue�R�e	� ֕f ĝ��0�����2^d8��:����I{"      ;   >  x��An�0�p
�������)d�]Q�X�$N�vl��K��)������L�Ǌ���)մ���%;���=mْ3�0[�4��K��yd��>�̬��.F"��iL�EW�p��d���Ƽ���n��b��ErĤ�_��%���˓�}Q�=��c�d���d����T�y��+����~cֳ����H�`�$����sse�������Y�m	R�{j���i0�Q����[ɷ��#z� �G�>��`�S�c /�t��^O�K��Ě���s^}]UHN�u���?\�}��x4�a��s��v��Y      :      x���[�e�qǟ�>�y
I�g�~y����6�0#��#O$��	���MH&�!y$J��1��q��˜/3��|�Tտz��g�Z�' �3���[W��Kv�����U��{xu{�����o_����__}�����vqI�9��.&�ܒ�O�o~����߾��o���ސ��>������o����Boa��E�)�s�9�iI�yD_��J���_ �+(2��Z���ݫ���}�/�/������"��򵯋�!@)�)!:��.ED��ĔsI<[�G�_Z&�Y�'��/�V�y)4��zXBs����O���W���u�}�)f��̤�{�;$��
��O����L������}��7q{�_�����o�s��[��x��2]V��\���T���@����@.�A�Ӂh���n":��z����Lx��%��;����w��KJ���S��J��U�w"?����ٳ���kW����=�`Z������C!�߅���,��TXbЍ.��jؗϲN�ʧ}F�����Bi-�#���B>��J�f���������!�'��7?�/�E�^v�pN�`�Y���XcBbStaS>����Sڔ�|o		2�\��Î�'NN����=ޫ�G(��Q�r�Y�!�( tY���֤��9���ϒNҫJ��6!�7?�}�����5��m�L�����N�ưXC+;Cy��գ����2W>�L�e �N�.���Rxѳ{D������j�*w��'˳����ճ�Wl�i�H���j�l��>��w>��W����	�$�L([��l�J��Dr�e�d����*S@�Bm=�)�A%CD{*�[��Bg���!�J\@�la��`����U�k��j��nE\��E��]�^��K�qʒ�J�x<N&���!���Sq�B��-d9"�@l��Ad�Y�Η:���h5}���.�ՔŻc��J�P�*Q����i=����NO~�,c�����c�BեX �a�E�bO�Z�� m��dz�lÃ��� ������#�]�%�Au~�c4U�T��Ev�-1��V�ƜiT�Qz�*	�"�T���uϴ���K���!! ����a�c�*�:�o�h�q@�3K�3!#�]����D0#�`��5��H9V�����<}	�2�UwML�f�g�~�Hq[��0�ŧE�G�@�*��ڪ��zR���M��R��,�ت�`�[�w�[C�G)�Mz�B�W얏'�0�V��S�������MKh9;x�����c,0��L��Aa �ƚf2f�ۇ"���,��8Πkڕi������kXs̒�"Z�d�-�m:���>����h�T���ir��~��;5� ���	惡Gs��%�EJ@���/g
�%�`�f���H�׊�x!GdX���� 3�H��e���&�FD�L�8��z��8�KҲJ/��2Smo$-�PI��Т�-/N0����G϶���3����{���a
�b�j�ѣa�d�����ĄַR�=�P@U{��>]���>z��W��G��="��G�;v8Xh��: WOl��Ё ��Aʽ��U�'�P���]�F����2�L��)���k2�Z�sԆm�=�e"WK:��e1HAb�J#�,o�T1���$�wJ�o�N���-�Ia���U�ίj�����E}�V-}32T� 
��)�\ v�.�m���Ѯ1v�P@��ےm�6��+�:X_���x�
̢�a"
A(OoX2�5t���M�@ ��k�*�R���V�(0�Tݙ ����[�v���P%s�$��6%H�`2L�I��ȶI� ?RH?�&x�ߜ���BA}V�G2��ߝت[5���I�G�1�n�LV�~e����E�̂�".���$�jD�Q��
t�l!���f�ƭ��)�j�V�
�ӷyU��hߤ�9:�����ۆ)�j�lg��ǳ�Z�!.������a�P���W�-L�K�E�,�,�P5y+5Z�|�)�O��X��P�Q
�j����.��D�m�(��8�k��!B+���<�=Zc2���G��K��P��V�L��a"�8��q�s\x2��
��Nw��ӥa"p�&�綹p��ج^�j��D"�ָU�}��"Èd��;T���'|9+B4���BZI�3�g�;��N�ݯj�R�*��_�����n�J�;� �&���T ˉ��Q�Ν\��2UJ1O�t�r2������`�+�I�0��P)����.ߖ����Z�e�U��mDJt�)�^�,N5�G�F~�`2U�f΄-��26/�u���H_ ��حD�����QP"�@��	R{G����Nc�f�k�������y6����_�W �����]�@�Ps�~:�@���Qha�?pqǌ
עG��d�P�J�Y ��$�'�Xa=/IRn�m�RJg�$� �&)��]�ꫧ4d�i|�#�bzԨ�۲���7�R�_š�z~[H���1L�Q�3�������!S��?t�_��P5L��M��ջQ���h(v��-GCP�������I>58z��_ڱ�
��J�}�]��2���"at�FJ�c�w4"�)��h�E>�l�� *\)V�B%Uᮅ�6�V��8H�!m��`�V� :R�<��9h��v+���c�R2jd�LU�h�缹�4/�Q��h��
�DI�D]�dk��Oؤ 
]J)�T���D�rV΢0%�.�ʝ#wc���.��>w��*��w��l�8�8�f
�U��`�.�u���6Q���p�jU��8kf���UG��ϊra�9����o�kS 7�A��}�K�j8���Z�}�h���[��A���������9#�f�r�n�8�#�Q��T�[��^�k3Kϱ+T����3/�C]VnEhY��]���1�Q*B&.�
�� ���%��O3΍���c�I�a*�����~r�ɻ-!��v}Y1QxmӜ${���7�;`$�����a�_�ǎ�i{ M�[挱��ã1��I���5Ŕ����M��ٵP�����'o�BF�M�b�k�XI��NΨhU����p�Q0�P&��m�a�y.E��6����»`��im����52&_��̑�����Q��Ra�<�����Ѓ46"~J�u+ �B�B퍻6¡S����(FohC�� ���d�G�f�I���8��K�2��uRzU������iC�}-L�C��@uw�5��@ڌ)yp������Z��j�c�RG	<N٧����P�Ɍ��(�]��'G�Yls\%X���{J����6ݭ�n͆��;��׸�w+�c�r��vb����]愦u�5f�3�)zQB���\O�VbB.�z���b��V��y�z�q�#A�S�#^L�#e�B�6����8��BW�SٯX��-�0u�3�)w�i��^B�O`$wBQlR�D��YD�k ��h�+�hH�R=5ҌC��Q;$��p�Q
�]�Q�d�bQy�|si�4��is�TJ�Y#�j�`��G�)��ڴ4g����Qj�͐F��J@��ئ�<{мց*�sG���U��Q.,T+q��i�����y;��A��.S����6ao2k�M{�]ŵDt�p�g��P�P����w�R�ί����Tdy�O��o/M��=Fh�F_�W3��LQ�(@��B=j&��+n~"�<�����I���ƣ� Ǿ��1���Q403-f(T�-c�i�<5qUJ�aG�A)���0E�E���<�ʻq�)����S:Σ��X�x�4�h�=~hWHeڠyӸP�u��jq<���z��^w��tg`��خ5��ޏ�oo��mI�1��3�N&lS�����Č�Pj��#)Ǧ�������,��'�V�4��w����U��9�& 4��Է���΂P��u����=eɔ6g��!����c�b�.q�C'�����GnX�E�����.ea(TO~\��+�����hg�/��]���<~B�+�+��B����I��7cY�ԪT�FpF�r����!���_�(U�9�*<�P�Mc�l*Vs?C�
���LN'�~�qz /
  ���f�b	T��w�g��p�L���x	��&f(��n��J���,��6��>g�1���y�F�p��ҽDLh�����Y��0�q�B���@1l�������a����s�ϵ�V���Gճ�����5��s��F�EG);��Ө���uU�b��O��i�)��pK�D׎VUʬʬS�ć���U��-[��l�lS���T�ի�8ة%�#�e�["N�(f�t�s�ܤ�E����2Ԣ����Ja��P
�)��y�ڻ{���Lf���4Fʶ0����z��A!JJ�S�g�F��W�{��q�u��
U�&�CΎ����)�
ޤjs�/�I����k����yMG��̜5�����E
vG���H)��K�.�6����-�l���*�8� �/��{&���T�In2c}t5nP���
4�{Oњ9�#e-j�&兀�J���\�ap>,�*C�]�3w�NP��c+�v[��
�m�����!%�޽�ᰃW
U�T�Ծ��P	Io��ݧ�=��W�B�.�<�A���DZC!竨Vw\�Q�Ba���y'&��bW:�ԏ_vQ�b�bg.����	nG��Ԇ�^����^�2�Ğ	�D~"���0%+����آعG9NX�aW��
mʖ�c�b�bg���h#?{2ڣq�Z��ئX;`�>f���\�rM�]b�2�2'�ѳ�*:?�U��x���G�D �O(�1���RO���,v��Ϯ�������Ï��W�}������G����V~��2��[�8p�?�$m���I� ^@$}�
;͖/&��m\��D9��ǫ�x/rM�ߙ�� D؆�@(�L��̗�G��Y�<G�Q� ��!�����!����������Rat�a{�.?�v󷬻���Д�B����'K��շOr��ǘ�2��ڥ�ٞ��BTb1R�;����)�l�%�� 1o ] ��[�W��{��kW�=w��8�H7r�xK%2`�&���3pϣr2~�9��D9J��elo�Kn(�R.���D�`�݊��cy;���Դ\x]pP��s,$pC�Ji��x����R���P��v�{���eo��u�o�[8��^G��T�K�Ӻ����|�9��������g���������{�]��=���$�!%QnwD
r���R�˳f�=Rَ����q��_����L��)b���`i�~LS�#��Fˈ�s�0=���	�!K9���^^�@^�]Y�Ps����6�j����%���G����|:n/2D��Qcħ�[D.x%n:^|�nfC����aH]���,�]�sN��ֳ���x�;; ��y!�2�o��L�:7x�{�̾�!~@~�5������^"w���m&{qa�2�����^-����6�吡�>0�9�>��q04�m HBw)]��8�5�(��o�P�sp��%#�b$r��V�/�-Ţ��]<��z��X�~_��7.f��5n�Ė-����S��o�c��~�h�Mp���zV�Cm��q��v�@�p�e*�%�y��w����=�L\�����8
1�[�5�f�)�����e���qj�$����m�ʢ�>���rvF�#[��$���DA���T���7��va�+'���x��$�&��$opIqho؟K�A:p��,Ϭ�7��������IՂ4ST��\/��7<<����9��_����O���jX҈ �	�!�����>��oޟ�����#����imD������̯�_4��3���Es��fH� :#�f�'���#����̋�vB�_r蔎���+9�.�'u�yg�E���@<C(�#g(�M�ʡ�Oo_��vXM.(��4���Y�7� ��Fa��̢'c�Ȳ7����|�p./���.򺘮q�Z��=$opxJ>��c����#��p�Q�:ҥXZ>��!}��W�?v�_a�5�	Ց�6A��/���|�����I.����B�B�����1�PC�*/����=��?�����7�}4���hQohxz�Bʝ��^E��z8�L#R����ݾ�ŬrQ�3���{<6�C�	���AP�%W�ԑ�u}>����p�y��'?�7��8�
h��=t{���H�N$�����e<�{�6ߑB?��Bb8�s<6���� �O��)����zE��]6�����`�2����:�aw�hx�!{�
���]M]vݨ��d���P��F�����#�^U^:D�G��K��>�	^ڪ�~�E
��+qR)nb>Y��9'���������Ԁ�(����z�ۚC�p&����/�"A���ZΣ�������><�X�"��:?U���C��c����d��C�ʗ�%V�'�#?�P��΀��f�`y
�چV��A)W|WmA��������WG�2�$t���~05"�+�w��,}"OY ������("�
��^�H�oW]`�He�2� �_h��uF���x�!�Ґ��*kMN��+�I#pěkKgo�\Xk�� <�Uc����8Y��ή��>��IS��R፵5�����j+�x��Y64�����ڛ?�(82)�m|xwV3���,N����7��?��R�      8   D  x�u��N�0�g�)�MğG@�	�� U�}u\;����g���B]@��R_;$�u9�|����Aw��a���O��]�)r���TuASũ�9�}�ҩ�2�eZh�m۠�-0�kKm�ؘ��a�,DR�J1}&�ť�K�}��#�6��V�|�{j�72Υ���g�ve��v!t�Q���[3���;��|-o}���6�Z&0����X)�_\�cP�&ЮwH7rԷ�㟷^�+�`s�z�к�V�ŒdRd��6����QKۇkC���<����3`v�z7h�R�� �.�(���c�     