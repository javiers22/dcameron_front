PGDMP         !        	        z            dcameron    10.21    10.0 :    ;           0    0    ENCODING    ENCODING        SET client_encoding = 'BIG5';
                       false            <           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            =           1262    16393    dcameron    DATABASE     ?   CREATE DATABASE dcameron WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Colombia.1252' LC_CTYPE = 'Spanish_Colombia.1252';
    DROP DATABASE dcameron;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            >           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12924    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            ?           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            ?            1259    16421    failed_jobs    TABLE       CREATE TABLE failed_jobs (
    id bigint NOT NULL,
    uuid character varying(255) NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public.failed_jobs;
       public         postgres    false    3            ?            1259    16419    failed_jobs_id_seq    SEQUENCE     t   CREATE SEQUENCE failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.failed_jobs_id_seq;
       public       postgres    false    3    202            @           0    0    failed_jobs_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE failed_jobs_id_seq OWNED BY failed_jobs.id;
            public       postgres    false    201            ?            1259    16455    habitacions    TABLE     ?   CREATE TABLE habitacions (
    id bigint NOT NULL,
    cantidad integer NOT NULL,
    hotels_id integer NOT NULL,
    tipos_id integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.habitacions;
       public         postgres    false    3            ?            1259    16453    habitacions_id_seq    SEQUENCE     t   CREATE SEQUENCE habitacions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.habitacions_id_seq;
       public       postgres    false    3    208            A           0    0    habitacions_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE habitacions_id_seq OWNED BY habitacions.id;
            public       postgres    false    207            ?            1259    16444    hotels    TABLE     k  CREATE TABLE hotels (
    id bigint NOT NULL,
    nombre character varying(100) NOT NULL,
    direccion character varying(100) NOT NULL,
    nit character varying(100) NOT NULL,
    ciudad character varying(100) NOT NULL,
    num_hab character varying(100) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.hotels;
       public         postgres    false    3            ?            1259    16442    hotels_id_seq    SEQUENCE     o   CREATE SEQUENCE hotels_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.hotels_id_seq;
       public       postgres    false    3    206            B           0    0    hotels_id_seq    SEQUENCE OWNED BY     1   ALTER SEQUENCE hotels_id_seq OWNED BY hotels.id;
            public       postgres    false    205            ?            1259    16396 
   migrations    TABLE     ?   CREATE TABLE migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);
    DROP TABLE public.migrations;
       public         postgres    false    3            ?            1259    16394    migrations_id_seq    SEQUENCE     ?   CREATE SEQUENCE migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.migrations_id_seq;
       public       postgres    false    197    3            C           0    0    migrations_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE migrations_id_seq OWNED BY migrations.id;
            public       postgres    false    196            ?            1259    16413    password_resets    TABLE     ?   CREATE TABLE password_resets (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);
 #   DROP TABLE public.password_resets;
       public         postgres    false    3            ?            1259    16433    personal_access_tokens    TABLE     I  CREATE TABLE personal_access_tokens (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    token character varying(64) NOT NULL,
    abilities text NOT NULL,
    last_used_at timestamp(0) without time zone NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 *   DROP TABLE public.personal_access_tokens;
       public         postgres    false    3            ?            1259    16431    personal_access_tokens_id_seq    SEQUENCE        CREATE SEQUENCE personal_access_tokens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.personal_access_tokens_id_seq;
       public       postgres    false    204    3            D           0    0    personal_access_tokens_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE personal_access_tokens_id_seq OWNED BY personal_access_tokens.id;
            public       postgres    false    203            ?            1259    16463    tipos    TABLE     ?   CREATE TABLE tipos (
    id bigint NOT NULL,
    tipo character varying(100) NOT NULL,
    acomodacion character varying(100) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.tipos;
       public         postgres    false    3            ?            1259    16461    tipos_id_seq    SEQUENCE     n   CREATE SEQUENCE tipos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.tipos_id_seq;
       public       postgres    false    210    3            E           0    0    tipos_id_seq    SEQUENCE OWNED BY     /   ALTER SEQUENCE tipos_id_seq OWNED BY tipos.id;
            public       postgres    false    209            ?            1259    16404    users    TABLE     q  CREATE TABLE users (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(255) NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.users;
       public         postgres    false    3            ?            1259    16402    users_id_seq    SEQUENCE     n   CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public       postgres    false    199    3            F           0    0    users_id_seq    SEQUENCE OWNED BY     /   ALTER SEQUENCE users_id_seq OWNED BY users.id;
            public       postgres    false    198            ?
           2604    16424    failed_jobs id    DEFAULT     b   ALTER TABLE ONLY failed_jobs ALTER COLUMN id SET DEFAULT nextval('failed_jobs_id_seq'::regclass);
 =   ALTER TABLE public.failed_jobs ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    201    202    202            ?
           2604    16458    habitacions id    DEFAULT     b   ALTER TABLE ONLY habitacions ALTER COLUMN id SET DEFAULT nextval('habitacions_id_seq'::regclass);
 =   ALTER TABLE public.habitacions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    208    207    208            ?
           2604    16447 	   hotels id    DEFAULT     X   ALTER TABLE ONLY hotels ALTER COLUMN id SET DEFAULT nextval('hotels_id_seq'::regclass);
 8   ALTER TABLE public.hotels ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    206    205    206            ?
           2604    16399    migrations id    DEFAULT     `   ALTER TABLE ONLY migrations ALTER COLUMN id SET DEFAULT nextval('migrations_id_seq'::regclass);
 <   ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    196    197    197            ?
           2604    16436    personal_access_tokens id    DEFAULT     x   ALTER TABLE ONLY personal_access_tokens ALTER COLUMN id SET DEFAULT nextval('personal_access_tokens_id_seq'::regclass);
 H   ALTER TABLE public.personal_access_tokens ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    204    203    204            ?
           2604    16466    tipos id    DEFAULT     V   ALTER TABLE ONLY tipos ALTER COLUMN id SET DEFAULT nextval('tipos_id_seq'::regclass);
 7   ALTER TABLE public.tipos ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    209    210    210            ?
           2604    16407    users id    DEFAULT     V   ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    199    198    199            0          0    16421    failed_jobs 
   TABLE DATA               Z   COPY failed_jobs (id, uuid, connection, queue, payload, exception, failed_at) FROM stdin;
    public       postgres    false    202            6          0    16455    habitacions 
   TABLE DATA               Y   COPY habitacions (id, cantidad, hotels_id, tipos_id, created_at, updated_at) FROM stdin;
    public       postgres    false    208            4          0    16444    hotels 
   TABLE DATA               ^   COPY hotels (id, nombre, direccion, nit, ciudad, num_hab, created_at, updated_at) FROM stdin;
    public       postgres    false    206            +          0    16396 
   migrations 
   TABLE DATA               3   COPY migrations (id, migration, batch) FROM stdin;
    public       postgres    false    197            .          0    16413    password_resets 
   TABLE DATA               <   COPY password_resets (email, token, created_at) FROM stdin;
    public       postgres    false    200            2          0    16433    personal_access_tokens 
   TABLE DATA               k   COPY personal_access_tokens (id, name, token, abilities, last_used_at, created_at, updated_at) FROM stdin;
    public       postgres    false    204            8          0    16463    tipos 
   TABLE DATA               G   COPY tipos (id, tipo, acomodacion, created_at, updated_at) FROM stdin;
    public       postgres    false    210            -          0    16404    users 
   TABLE DATA               n   COPY users (id, name, email, email_verified_at, password, remember_token, created_at, updated_at) FROM stdin;
    public       postgres    false    199            G           0    0    failed_jobs_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('failed_jobs_id_seq', 1, false);
            public       postgres    false    201            H           0    0    habitacions_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('habitacions_id_seq', 1, true);
            public       postgres    false    207            I           0    0    hotels_id_seq    SEQUENCE SET     4   SELECT pg_catalog.setval('hotels_id_seq', 1, true);
            public       postgres    false    205            J           0    0    migrations_id_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('migrations_id_seq', 7, true);
            public       postgres    false    196            K           0    0    personal_access_tokens_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('personal_access_tokens_id_seq', 1, false);
            public       postgres    false    203            L           0    0    tipos_id_seq    SEQUENCE SET     4   SELECT pg_catalog.setval('tipos_id_seq', 1, false);
            public       postgres    false    209            M           0    0    users_id_seq    SEQUENCE SET     4   SELECT pg_catalog.setval('users_id_seq', 1, false);
            public       postgres    false    198            ?
           2606    16430    failed_jobs failed_jobs_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.failed_jobs DROP CONSTRAINT failed_jobs_pkey;
       public         postgres    false    202            ?
           2606    16460    habitacions habitacions_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY habitacions
    ADD CONSTRAINT habitacions_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.habitacions DROP CONSTRAINT habitacions_pkey;
       public         postgres    false    208            ?
           2606    16452    hotels hotels_pkey 
   CONSTRAINT     I   ALTER TABLE ONLY hotels
    ADD CONSTRAINT hotels_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.hotels DROP CONSTRAINT hotels_pkey;
       public         postgres    false    206            ?
           2606    16401    migrations migrations_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.migrations DROP CONSTRAINT migrations_pkey;
       public         postgres    false    197            ?
           2606    16441 2   personal_access_tokens personal_access_tokens_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.personal_access_tokens DROP CONSTRAINT personal_access_tokens_pkey;
       public         postgres    false    204            ?
           2606    16468    tipos tipos_pkey 
   CONSTRAINT     G   ALTER TABLE ONLY tipos
    ADD CONSTRAINT tipos_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.tipos DROP CONSTRAINT tipos_pkey;
       public         postgres    false    210            ?
           2606    16412    users users_pkey 
   CONSTRAINT     G   ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public         postgres    false    199            0      x?????? ? ?      6   (   x?3?4BcN###]]K#C+Ss ?&????? ??	&      4  