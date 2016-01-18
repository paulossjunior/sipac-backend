PGDMP     "    !        
         t           Incaper    9.4.5    9.4.0 �    �	           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �	           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �	           1262    24785    Incaper    DATABASE     {   CREATE DATABASE "Incaper" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'pt_BR.UTF-8' LC_CTYPE = 'pt_BR.UTF-8';
    DROP DATABASE "Incaper";
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             paulo    false            �	           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  paulo    false    5            �	           0    0    public    ACL     �   REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM paulo;
GRANT ALL ON SCHEMA public TO paulo;
GRANT ALL ON SCHEMA public TO PUBLIC;
                  paulo    false    5            �            3079    12123    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �	           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    205            �            1259    32770    agricultura_producao    TABLE       CREATE TABLE agricultura_producao (
    id integer NOT NULL,
    preco double precision NOT NULL,
    mesoregiao_id integer NOT NULL,
    microregiao_id integer NOT NULL,
    municipio_id integer NOT NULL,
    produto_id integer NOT NULL,
    data_id integer NOT NULL
);
 (   DROP TABLE public.agricultura_producao;
       public         postgres    false    5            �            1259    32768    agricultura_producao_id_seq    SEQUENCE     }   CREATE SEQUENCE agricultura_producao_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.agricultura_producao_id_seq;
       public       postgres    false    5    200            �	           0    0    agricultura_producao_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE agricultura_producao_id_seq OWNED BY agricultura_producao.id;
            public       postgres    false    199            �            1259    32778    agricultura_produto    TABLE     �   CREATE TABLE agricultura_produto (
    id integer NOT NULL,
    nome character varying(100) NOT NULL,
    codigo integer NOT NULL
);
 '   DROP TABLE public.agricultura_produto;
       public         postgres    false    5            �            1259    32776    agricultura_produto_id_seq    SEQUENCE     |   CREATE SEQUENCE agricultura_produto_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.agricultura_produto_id_seq;
       public       postgres    false    202    5            �	           0    0    agricultura_produto_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE agricultura_produto_id_seq OWNED BY agricultura_produto.id;
            public       postgres    false    201            �            1259    24817 
   auth_group    TABLE     ^   CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);
    DROP TABLE public.auth_group;
       public         postgres    false    5            �            1259    24815    auth_group_id_seq    SEQUENCE     s   CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public       postgres    false    5    179            �	           0    0    auth_group_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;
            public       postgres    false    178            �            1259    24827    auth_group_permissions    TABLE     �   CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         postgres    false    5            �            1259    24825    auth_group_permissions_id_seq    SEQUENCE        CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public       postgres    false    181    5            �	           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;
            public       postgres    false    180            �            1259    24809    auth_permission    TABLE     �   CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         postgres    false    5            �            1259    24807    auth_permission_id_seq    SEQUENCE     x   CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public       postgres    false    177    5            �	           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;
            public       postgres    false    176            �            1259    24835 	   auth_user    TABLE     �  CREATE TABLE auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(30) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         postgres    false    5            �            1259    24845    auth_user_groups    TABLE     x   CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         postgres    false    5            �            1259    24843    auth_user_groups_id_seq    SEQUENCE     y   CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public       postgres    false    185    5            �	           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;
            public       postgres    false    184            �            1259    24833    auth_user_id_seq    SEQUENCE     r   CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public       postgres    false    183    5            �	           0    0    auth_user_id_seq    SEQUENCE OWNED BY     7   ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;
            public       postgres    false    182            �            1259    24853    auth_user_user_permissions    TABLE     �   CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         postgres    false    5            �            1259    24851 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public       postgres    false    187    5            �	           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;
            public       postgres    false    186            �            1259    40965 	   core_data    TABLE     h   CREATE TABLE core_data (
    id integer NOT NULL,
    ano integer NOT NULL,
    mes integer NOT NULL
);
    DROP TABLE public.core_data;
       public         postgres    false    5            �            1259    40963    core_data_id_seq    SEQUENCE     r   CREATE SEQUENCE core_data_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.core_data_id_seq;
       public       postgres    false    204    5            �	           0    0    core_data_id_seq    SEQUENCE OWNED BY     7   ALTER SEQUENCE core_data_id_seq OWNED BY core_data.id;
            public       postgres    false    203            �            1259    24938    core_estado    TABLE     |   CREATE TABLE core_estado (
    id integer NOT NULL,
    nome character varying(50) NOT NULL,
    codigo integer NOT NULL
);
    DROP TABLE public.core_estado;
       public         postgres    false    5            �            1259    24936    core_estado_id_seq    SEQUENCE     t   CREATE SEQUENCE core_estado_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.core_estado_id_seq;
       public       postgres    false    5    191            �	           0    0    core_estado_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE core_estado_id_seq OWNED BY core_estado.id;
            public       postgres    false    190            �            1259    24946    core_mesoregiao    TABLE     �   CREATE TABLE core_mesoregiao (
    id integer NOT NULL,
    nome character varying(50) NOT NULL,
    codigo integer NOT NULL,
    estado_id integer NOT NULL
);
 #   DROP TABLE public.core_mesoregiao;
       public         postgres    false    5            �            1259    24944    core_mesoregiao_id_seq    SEQUENCE     x   CREATE SEQUENCE core_mesoregiao_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.core_mesoregiao_id_seq;
       public       postgres    false    5    193            �	           0    0    core_mesoregiao_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE core_mesoregiao_id_seq OWNED BY core_mesoregiao.id;
            public       postgres    false    192            �            1259    24954    core_microregiao    TABLE     �   CREATE TABLE core_microregiao (
    id integer NOT NULL,
    nome character varying(50) NOT NULL,
    codigo integer NOT NULL,
    mesoregiao_id integer NOT NULL
);
 $   DROP TABLE public.core_microregiao;
       public         postgres    false    5            �            1259    24952    core_microregiao_id_seq    SEQUENCE     y   CREATE SEQUENCE core_microregiao_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.core_microregiao_id_seq;
       public       postgres    false    195    5            �	           0    0    core_microregiao_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE core_microregiao_id_seq OWNED BY core_microregiao.id;
            public       postgres    false    194            �            1259    24962    core_municipio    TABLE     �   CREATE TABLE core_municipio (
    id integer NOT NULL,
    nome character varying(50) NOT NULL,
    codigo integer NOT NULL,
    codigo_completo bigint NOT NULL,
    microregiao_id integer NOT NULL,
    estado_id integer NOT NULL
);
 "   DROP TABLE public.core_municipio;
       public         postgres    false    5            �            1259    24960    core_municipio_id_seq    SEQUENCE     w   CREATE SEQUENCE core_municipio_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.core_municipio_id_seq;
       public       postgres    false    197    5            �	           0    0    core_municipio_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE core_municipio_id_seq OWNED BY core_municipio.id;
            public       postgres    false    196            �            1259    24913    django_admin_log    TABLE     �  CREATE TABLE django_admin_log (
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
       public         postgres    false    5            �            1259    24911    django_admin_log_id_seq    SEQUENCE     y   CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public       postgres    false    189    5            �	           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;
            public       postgres    false    188            �            1259    24799    django_content_type    TABLE     �   CREATE TABLE django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         postgres    false    5            �            1259    24797    django_content_type_id_seq    SEQUENCE     |   CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public       postgres    false    175    5            �	           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;
            public       postgres    false    174            �            1259    24788    django_migrations    TABLE     �   CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         postgres    false    5            �            1259    24786    django_migrations_id_seq    SEQUENCE     z   CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public       postgres    false    5    173            �	           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;
            public       postgres    false    172            �            1259    24980    django_session    TABLE     �   CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         postgres    false    5            �           2604    32773    id    DEFAULT     t   ALTER TABLE ONLY agricultura_producao ALTER COLUMN id SET DEFAULT nextval('agricultura_producao_id_seq'::regclass);
 F   ALTER TABLE public.agricultura_producao ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    199    200    200            �           2604    32781    id    DEFAULT     r   ALTER TABLE ONLY agricultura_produto ALTER COLUMN id SET DEFAULT nextval('agricultura_produto_id_seq'::regclass);
 E   ALTER TABLE public.agricultura_produto ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    201    202    202            �           2604    24820    id    DEFAULT     `   ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    179    178    179            �           2604    24830    id    DEFAULT     x   ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    180    181    181            �           2604    24812    id    DEFAULT     j   ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    176    177    177            �           2604    24838    id    DEFAULT     ^   ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    183    182    183            �           2604    24848    id    DEFAULT     l   ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    185    184    185            �           2604    24856    id    DEFAULT     �   ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    187    186    187            �           2604    40968    id    DEFAULT     ^   ALTER TABLE ONLY core_data ALTER COLUMN id SET DEFAULT nextval('core_data_id_seq'::regclass);
 ;   ALTER TABLE public.core_data ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    204    203    204            �           2604    24941    id    DEFAULT     b   ALTER TABLE ONLY core_estado ALTER COLUMN id SET DEFAULT nextval('core_estado_id_seq'::regclass);
 =   ALTER TABLE public.core_estado ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    190    191    191            �           2604    24949    id    DEFAULT     j   ALTER TABLE ONLY core_mesoregiao ALTER COLUMN id SET DEFAULT nextval('core_mesoregiao_id_seq'::regclass);
 A   ALTER TABLE public.core_mesoregiao ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    193    192    193            �           2604    24957    id    DEFAULT     l   ALTER TABLE ONLY core_microregiao ALTER COLUMN id SET DEFAULT nextval('core_microregiao_id_seq'::regclass);
 B   ALTER TABLE public.core_microregiao ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    194    195    195            �           2604    24965    id    DEFAULT     h   ALTER TABLE ONLY core_municipio ALTER COLUMN id SET DEFAULT nextval('core_municipio_id_seq'::regclass);
 @   ALTER TABLE public.core_municipio ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    196    197    197            �           2604    24916    id    DEFAULT     l   ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    189    188    189            �           2604    24802    id    DEFAULT     r   ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    175    174    175            �           2604    24791    id    DEFAULT     n   ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    172    173    173            �	          0    32770    agricultura_producao 
   TABLE DATA               t   COPY agricultura_producao (id, preco, mesoregiao_id, microregiao_id, municipio_id, produto_id, data_id) FROM stdin;
    public       postgres    false    200   j�       �	           0    0    agricultura_producao_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('agricultura_producao_id_seq', 7086, true);
            public       postgres    false    199            �	          0    32778    agricultura_produto 
   TABLE DATA               8   COPY agricultura_produto (id, nome, codigo) FROM stdin;
    public       postgres    false    202   r      �	           0    0    agricultura_produto_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('agricultura_produto_id_seq', 876, true);
            public       postgres    false    201            �	          0    24817 
   auth_group 
   TABLE DATA               '   COPY auth_group (id, name) FROM stdin;
    public       postgres    false    179   �      �	           0    0    auth_group_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('auth_group_id_seq', 1, false);
            public       postgres    false    178            �	          0    24827    auth_group_permissions 
   TABLE DATA               F   COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public       postgres    false    181   �      �	           0    0    auth_group_permissions_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);
            public       postgres    false    180            �	          0    24809    auth_permission 
   TABLE DATA               G   COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
    public       postgres    false    177   �      �	           0    0    auth_permission_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('auth_permission_id_seq', 39, true);
            public       postgres    false    176            �	          0    24835 	   auth_user 
   TABLE DATA               �   COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public       postgres    false    183   �      �	          0    24845    auth_user_groups 
   TABLE DATA               :   COPY auth_user_groups (id, user_id, group_id) FROM stdin;
    public       postgres    false    185   [      �	           0    0    auth_user_groups_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);
            public       postgres    false    184            �	           0    0    auth_user_id_seq    SEQUENCE SET     7   SELECT pg_catalog.setval('auth_user_id_seq', 1, true);
            public       postgres    false    182            �	          0    24853    auth_user_user_permissions 
   TABLE DATA               I   COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public       postgres    false    187   x      �	           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);
            public       postgres    false    186            �	          0    40965 	   core_data 
   TABLE DATA               *   COPY core_data (id, ano, mes) FROM stdin;
    public       postgres    false    204   �      �	           0    0    core_data_id_seq    SEQUENCE SET     7   SELECT pg_catalog.setval('core_data_id_seq', 2, true);
            public       postgres    false    203            �	          0    24938    core_estado 
   TABLE DATA               0   COPY core_estado (id, nome, codigo) FROM stdin;
    public       postgres    false    191   �      �	           0    0    core_estado_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('core_estado_id_seq', 27, true);
            public       postgres    false    190            �	          0    24946    core_mesoregiao 
   TABLE DATA               ?   COPY core_mesoregiao (id, nome, codigo, estado_id) FROM stdin;
    public       postgres    false    193   !      �	           0    0    core_mesoregiao_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('core_mesoregiao_id_seq', 76, true);
            public       postgres    false    192            �	          0    24954    core_microregiao 
   TABLE DATA               D   COPY core_microregiao (id, nome, codigo, mesoregiao_id) FROM stdin;
    public       postgres    false    195   u!      �	           0    0    core_microregiao_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('core_microregiao_id_seq', 13, true);
            public       postgres    false    194            �	          0    24962    core_municipio 
   TABLE DATA               _   COPY core_municipio (id, nome, codigo, codigo_completo, microregiao_id, estado_id) FROM stdin;
    public       postgres    false    197   W"      �	           0    0    core_municipio_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('core_municipio_id_seq', 91, true);
            public       postgres    false    196            �	          0    24913    django_admin_log 
   TABLE DATA               �   COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public       postgres    false    189   l'      �	           0    0    django_admin_log_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('django_admin_log_id_seq', 343, true);
            public       postgres    false    188            �	          0    24799    django_content_type 
   TABLE DATA               <   COPY django_content_type (id, app_label, model) FROM stdin;
    public       postgres    false    175   �A      �	           0    0    django_content_type_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('django_content_type_id_seq', 13, true);
            public       postgres    false    174            �	          0    24788    django_migrations 
   TABLE DATA               <   COPY django_migrations (id, app, name, applied) FROM stdin;
    public       postgres    false    173   YB      �	           0    0    django_migrations_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('django_migrations_id_seq', 18, true);
            public       postgres    false    172            �	          0    24980    django_session 
   TABLE DATA               I   COPY django_session (session_key, session_data, expire_date) FROM stdin;
    public       postgres    false    198   "D      	           2606    32775    agricultura_producao_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY agricultura_producao
    ADD CONSTRAINT agricultura_producao_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.agricultura_producao DROP CONSTRAINT agricultura_producao_pkey;
       public         postgres    false    200    200            	           2606    32783    agricultura_produto_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY agricultura_produto
    ADD CONSTRAINT agricultura_produto_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.agricultura_produto DROP CONSTRAINT agricultura_produto_pkey;
       public         postgres    false    202    202            �           2606    24824    auth_group_name_key 
   CONSTRAINT     R   ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public         postgres    false    179    179            �           2606    24879 -   auth_group_permissions_group_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 n   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_0cd325b0_uniq;
       public         postgres    false    181    181    181            �           2606    24832    auth_group_permissions_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public         postgres    false    181    181            �           2606    24822    auth_group_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public         postgres    false    179    179            �           2606    24865 -   auth_permission_content_type_id_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_01ab375a_uniq UNIQUE (content_type_id, codename);
 g   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_01ab375a_uniq;
       public         postgres    false    177    177    177            �           2606    24814    auth_permission_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public         postgres    false    177    177            �           2606    24850    auth_user_groups_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public         postgres    false    185    185            �           2606    24894 &   auth_user_groups_user_id_94350c0c_uniq 
   CONSTRAINT     x   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_94350c0c_uniq UNIQUE (user_id, group_id);
 a   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_94350c0c_uniq;
       public         postgres    false    185    185    185            �           2606    24840    auth_user_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public         postgres    false    183    183            �           2606    24858    auth_user_user_permissions_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public         postgres    false    187    187            �           2606    24908 0   auth_user_user_permissions_user_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 u   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_14a6b632_uniq;
       public         postgres    false    187    187    187            �           2606    24842    auth_user_username_key 
   CONSTRAINT     X   ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public         postgres    false    183    183            	           2606    40970    core_data_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY core_data
    ADD CONSTRAINT core_data_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.core_data DROP CONSTRAINT core_data_pkey;
       public         postgres    false    204    204            	           2606    24943    core_estado_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY core_estado
    ADD CONSTRAINT core_estado_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.core_estado DROP CONSTRAINT core_estado_pkey;
       public         postgres    false    191    191            	           2606    24951    core_mesoregiao_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY core_mesoregiao
    ADD CONSTRAINT core_mesoregiao_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.core_mesoregiao DROP CONSTRAINT core_mesoregiao_pkey;
       public         postgres    false    193    193            	           2606    24959    core_microregiao_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY core_microregiao
    ADD CONSTRAINT core_microregiao_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.core_microregiao DROP CONSTRAINT core_microregiao_pkey;
       public         postgres    false    195    195            	           2606    24967    core_municipio_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY core_municipio
    ADD CONSTRAINT core_municipio_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.core_municipio DROP CONSTRAINT core_municipio_pkey;
       public         postgres    false    197    197            �           2606    24922    django_admin_log_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public         postgres    false    189    189            �           2606    24806 +   django_content_type_app_label_76bd3d3b_uniq 
   CONSTRAINT        ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_76bd3d3b_uniq UNIQUE (app_label, model);
 i   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_76bd3d3b_uniq;
       public         postgres    false    175    175    175            �           2606    24804    django_content_type_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public         postgres    false    175    175            �           2606    24796    django_migrations_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public         postgres    false    173    173            	           2606    24987    django_session_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public         postgres    false    198    198            	           1259    32800    agricultura_producao_376ba068    INDEX     a   CREATE INDEX agricultura_producao_376ba068 ON agricultura_producao USING btree (microregiao_id);
 1   DROP INDEX public.agricultura_producao_376ba068;
       public         postgres    false    200            	           1259    32801    agricultura_producao_40924980    INDEX     _   CREATE INDEX agricultura_producao_40924980 ON agricultura_producao USING btree (municipio_id);
 1   DROP INDEX public.agricultura_producao_40924980;
       public         postgres    false    200            	           1259    32799    agricultura_producao_55e329a2    INDEX     `   CREATE INDEX agricultura_producao_55e329a2 ON agricultura_producao USING btree (mesoregiao_id);
 1   DROP INDEX public.agricultura_producao_55e329a2;
       public         postgres    false    200            	           1259    41010    agricultura_producao_a565e755    INDEX     Z   CREATE INDEX agricultura_producao_a565e755 ON agricultura_producao USING btree (data_id);
 1   DROP INDEX public.agricultura_producao_a565e755;
       public         postgres    false    200            	           1259    32802    agricultura_producao_b306f3fc    INDEX     ]   CREATE INDEX agricultura_producao_b306f3fc ON agricultura_producao USING btree (produto_id);
 1   DROP INDEX public.agricultura_producao_b306f3fc;
       public         postgres    false    200            �           1259    24867    auth_group_name_a6ea08ec_like    INDEX     a   CREATE INDEX auth_group_name_a6ea08ec_like ON auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public         postgres    false    179            �           1259    24880    auth_group_permissions_0e939a4f    INDEX     _   CREATE INDEX auth_group_permissions_0e939a4f ON auth_group_permissions USING btree (group_id);
 3   DROP INDEX public.auth_group_permissions_0e939a4f;
       public         postgres    false    181            �           1259    24881    auth_group_permissions_8373b171    INDEX     d   CREATE INDEX auth_group_permissions_8373b171 ON auth_group_permissions USING btree (permission_id);
 3   DROP INDEX public.auth_group_permissions_8373b171;
       public         postgres    false    181            �           1259    24866    auth_permission_417f1b1c    INDEX     X   CREATE INDEX auth_permission_417f1b1c ON auth_permission USING btree (content_type_id);
 ,   DROP INDEX public.auth_permission_417f1b1c;
       public         postgres    false    177            �           1259    24896    auth_user_groups_0e939a4f    INDEX     S   CREATE INDEX auth_user_groups_0e939a4f ON auth_user_groups USING btree (group_id);
 -   DROP INDEX public.auth_user_groups_0e939a4f;
       public         postgres    false    185            �           1259    24895    auth_user_groups_e8701ad4    INDEX     R   CREATE INDEX auth_user_groups_e8701ad4 ON auth_user_groups USING btree (user_id);
 -   DROP INDEX public.auth_user_groups_e8701ad4;
       public         postgres    false    185            �           1259    24910 #   auth_user_user_permissions_8373b171    INDEX     l   CREATE INDEX auth_user_user_permissions_8373b171 ON auth_user_user_permissions USING btree (permission_id);
 7   DROP INDEX public.auth_user_user_permissions_8373b171;
       public         postgres    false    187            �           1259    24909 #   auth_user_user_permissions_e8701ad4    INDEX     f   CREATE INDEX auth_user_user_permissions_e8701ad4 ON auth_user_user_permissions USING btree (user_id);
 7   DROP INDEX public.auth_user_user_permissions_e8701ad4;
       public         postgres    false    187            �           1259    24882     auth_user_username_6821ab7c_like    INDEX     g   CREATE INDEX auth_user_username_6821ab7c_like ON auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public         postgres    false    183            	           1259    24996    core_mesoregiao_2c189993    INDEX     R   CREATE INDEX core_mesoregiao_2c189993 ON core_mesoregiao USING btree (estado_id);
 ,   DROP INDEX public.core_mesoregiao_2c189993;
       public         postgres    false    193            	           1259    24973    core_microregiao_55e329a2    INDEX     X   CREATE INDEX core_microregiao_55e329a2 ON core_microregiao USING btree (mesoregiao_id);
 -   DROP INDEX public.core_microregiao_55e329a2;
       public         postgres    false    195            	           1259    25008    core_municipio_2c189993    INDEX     P   CREATE INDEX core_municipio_2c189993 ON core_municipio USING btree (estado_id);
 +   DROP INDEX public.core_municipio_2c189993;
       public         postgres    false    197            		           1259    24979    core_municipio_376ba068    INDEX     U   CREATE INDEX core_municipio_376ba068 ON core_municipio USING btree (microregiao_id);
 +   DROP INDEX public.core_municipio_376ba068;
       public         postgres    false    197            �           1259    24933    django_admin_log_417f1b1c    INDEX     Z   CREATE INDEX django_admin_log_417f1b1c ON django_admin_log USING btree (content_type_id);
 -   DROP INDEX public.django_admin_log_417f1b1c;
       public         postgres    false    189            �           1259    24934    django_admin_log_e8701ad4    INDEX     R   CREATE INDEX django_admin_log_e8701ad4 ON django_admin_log USING btree (user_id);
 -   DROP INDEX public.django_admin_log_e8701ad4;
       public         postgres    false    189            	           1259    24988    django_session_de54fa62    INDEX     R   CREATE INDEX django_session_de54fa62 ON django_session USING btree (expire_date);
 +   DROP INDEX public.django_session_de54fa62;
       public         postgres    false    198            	           1259    24989 (   django_session_session_key_c0390e0f_like    INDEX     w   CREATE INDEX django_session_session_key_c0390e0f_like ON django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public         postgres    false    198            )	           2606    32789 ?   agricultura_prod_microregiao_id_08ccf3e3_fk_core_microregiao_id    FK CONSTRAINT     �   ALTER TABLE ONLY agricultura_producao
    ADD CONSTRAINT agricultura_prod_microregiao_id_08ccf3e3_fk_core_microregiao_id FOREIGN KEY (microregiao_id) REFERENCES core_microregiao(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.agricultura_producao DROP CONSTRAINT agricultura_prod_microregiao_id_08ccf3e3_fk_core_microregiao_id;
       public       postgres    false    2311    195    200            +	           2606    32803 ?   agricultura_produ_produto_id_60948ef5_fk_agricultura_produto_id    FK CONSTRAINT     �   ALTER TABLE ONLY agricultura_producao
    ADD CONSTRAINT agricultura_produ_produto_id_60948ef5_fk_agricultura_produto_id FOREIGN KEY (produto_id) REFERENCES agricultura_produto(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.agricultura_producao DROP CONSTRAINT agricultura_produ_produto_id_60948ef5_fk_agricultura_produto_id;
       public       postgres    false    200    202    2328            (	           2606    32784 ?   agricultura_produc_mesoregiao_id_7055ed45_fk_core_mesoregiao_id    FK CONSTRAINT     �   ALTER TABLE ONLY agricultura_producao
    ADD CONSTRAINT agricultura_produc_mesoregiao_id_7055ed45_fk_core_mesoregiao_id FOREIGN KEY (mesoregiao_id) REFERENCES core_mesoregiao(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.agricultura_producao DROP CONSTRAINT agricultura_produc_mesoregiao_id_7055ed45_fk_core_mesoregiao_id;
       public       postgres    false    200    193    2308            ,	           2606    41011 5   agricultura_producao_data_id_8a70c11d_fk_core_data_id    FK CONSTRAINT     �   ALTER TABLE ONLY agricultura_producao
    ADD CONSTRAINT agricultura_producao_data_id_8a70c11d_fk_core_data_id FOREIGN KEY (data_id) REFERENCES core_data(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.agricultura_producao DROP CONSTRAINT agricultura_producao_data_id_8a70c11d_fk_core_data_id;
       public       postgres    false    204    2330    200            *	           2606    32794 ?   agricultura_producao_municipio_id_c466d0f0_fk_core_municipio_id    FK CONSTRAINT     �   ALTER TABLE ONLY agricultura_producao
    ADD CONSTRAINT agricultura_producao_municipio_id_c466d0f0_fk_core_municipio_id FOREIGN KEY (municipio_id) REFERENCES core_municipio(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.agricultura_producao DROP CONSTRAINT agricultura_producao_municipio_id_c466d0f0_fk_core_municipio_id;
       public       postgres    false    2315    200    197            	           2606    24873 ?   auth_group_permiss_permission_id_84c5c92e_fk_auth_permission_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permiss_permission_id_84c5c92e_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permiss_permission_id_84c5c92e_fk_auth_permission_id;
       public       postgres    false    2271    177    181            	           2606    24868 9   auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public       postgres    false    181    2276    179            	           2606    24859 ?   auth_permiss_content_type_id_2f476e4b_fk_django_content_type_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permiss_content_type_id_2f476e4b_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permiss_content_type_id_2f476e4b_fk_django_content_type_id;
       public       postgres    false    2266    177    175            	           2606    24888 3   auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public       postgres    false    2276    185    179            	           2606    24883 1   auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public       postgres    false    185    183    2284            !	           2606    24902 ?   auth_user_user_per_permission_id_1fbb5f2c_fk_auth_permission_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_per_permission_id_1fbb5f2c_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_per_permission_id_1fbb5f2c_fk_auth_permission_id;
       public       postgres    false    2271    187    177             	           2606    24897 ;   auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public       postgres    false    187    2284    183            $	           2606    24997 4   core_mesoregiao_estado_id_de43b177_fk_core_estado_id    FK CONSTRAINT     �   ALTER TABLE ONLY core_mesoregiao
    ADD CONSTRAINT core_mesoregiao_estado_id_de43b177_fk_core_estado_id FOREIGN KEY (estado_id) REFERENCES core_estado(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.core_mesoregiao DROP CONSTRAINT core_mesoregiao_estado_id_de43b177_fk_core_estado_id;
       public       postgres    false    2305    193    191            %	           2606    24968 =   core_microregiao_mesoregiao_id_d1550f1e_fk_core_mesoregiao_id    FK CONSTRAINT     �   ALTER TABLE ONLY core_microregiao
    ADD CONSTRAINT core_microregiao_mesoregiao_id_d1550f1e_fk_core_mesoregiao_id FOREIGN KEY (mesoregiao_id) REFERENCES core_mesoregiao(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.core_microregiao DROP CONSTRAINT core_microregiao_mesoregiao_id_d1550f1e_fk_core_mesoregiao_id;
       public       postgres    false    195    193    2308            '	           2606    25009 3   core_municipio_estado_id_8d07bbda_fk_core_estado_id    FK CONSTRAINT     �   ALTER TABLE ONLY core_municipio
    ADD CONSTRAINT core_municipio_estado_id_8d07bbda_fk_core_estado_id FOREIGN KEY (estado_id) REFERENCES core_estado(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.core_municipio DROP CONSTRAINT core_municipio_estado_id_8d07bbda_fk_core_estado_id;
       public       postgres    false    197    191    2305            &	           2606    24974 =   core_municipio_microregiao_id_d4c9f769_fk_core_microregiao_id    FK CONSTRAINT     �   ALTER TABLE ONLY core_municipio
    ADD CONSTRAINT core_municipio_microregiao_id_d4c9f769_fk_core_microregiao_id FOREIGN KEY (microregiao_id) REFERENCES core_microregiao(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.core_municipio DROP CONSTRAINT core_municipio_microregiao_id_d4c9f769_fk_core_microregiao_id;
       public       postgres    false    195    197    2311            "	           2606    24923 ?   django_admin_content_type_id_c4bce8eb_fk_django_content_type_id    FK CONSTRAINT     �   ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_content_type_id_c4bce8eb_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_content_type_id_c4bce8eb_fk_django_content_type_id;
       public       postgres    false    189    175    2266            #	           2606    24928 1   django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public       postgres    false    189    2284    183            �	      x�u�[���
���s��]�R�o�	
�AV�~�2�ED)��k��5�5�گ��W�WZ]W��n^�L��OSޯ��� ��R�����7�¿'^��)��{d�M�=q+@��u�x�]U3ts�gNg�7�������>���S����z.�YJ~Q2���I�@����\c(Η4����b�.S�w�P:o������q�W�쳻+���]��7���wc\�p�Tp{ǝ�JxP�P�w�Wor�~T��s~g�y�
��C�s�FZ�k��?�
r��{ZVФ9���9��5����B8s*��^*MQ���w��e�s ��$B�{W_ܻ�ӏө�	ݨ�bR~ǅ�@��U�>u�*�����f�Ө�����qz����#�{ֵ���A���ԿoOe�kd���>Yz]C�L=}F����W�TBWG2w+����y��#F@m4�P��߱fe��r��'���x�ܷ�J�|/y͛��=����D�JH�_ԋP靻"zKO�rS|�r��qA��y�A����?��j���-jŔ�Q��R�cè�:a��n��������&D��|����ug��#�mO��&:��-%=�ʡ��ӵ�['��7=��w�E�i�TW��K����X�1�;�T�����HW:���7x�D�]���ڱ���FOl�m.��W��Jg��1Q��v3��k�.���K	�[�����L��K� ��=�Fg:�)P&e�˔c�E�&Au挊C�ݣ)%ҋ7t�	�/�Nr����ow��Z��M����,�|����r��w�gd||�ɼ��w~���K<}pis/���~o���$M�������;����9c�����^�� ��8�s�D+|��^<����Zo6��fpQ%�S��8*���?x�̜�j�~�{��<*�/*�PXt�[G��B%ߣ:�>���0�ϜT��F��n�}�\���rOĩ��ƽ�|�]�����;�����&���Hyx��!h_����`g,��?�oS����������.�^�Qv�x�p>��8W�);�����_.�Zn��-�u�OT{_��%@�tBS^t�<yE+��-|�w���!�����y�*�^��|�J���%�n�л;���V*
��]0�7H E#�O�=M�1��A�R�ġ�
���ByB)d��FW)���^x�����Bm��rZo�}��e�_Z���4����zC��+35q�
�鸡[�W�tx��QG���A����w���1�	d���Ĥ�e��*(Z�ڿK���VV�ۻ`qXȮ���=�M<����4J��$���P#�%����*:��=�$���z�7:���gU=���e���+���j�N��?���5$+1�*��	�nr�â�~���-��]���n�R�r�"���8�?������l�a�88��Tp�)ZC�6���N���ϴ�����3�D��i�P�u۬6�eg�V\��PR����Gˇ��|(�T���P$~����W�a�O�O{���UN���Ρ�v�j�Pz�+rXW��p�F�lMCkޟAqPWwmׄ	è����m�u���eI�A���Gog������36�w��|+)�9���L�L�d
t>�c�59�w�i`�8βdB-w^GX����tV��q�G;�>萁R�V�v�|��� �����Q#q:(��ad8.�z�[�s�97�����\NQ>`�s�0y5��L�Yx���i��,�(�\T���2c�;�>j�8B��KIֹ�#�>�`l?|���Dy�&�?[x�������3�}W~���Z���y��տ��>Λz=�}�y��攠v�띧��m�q��Wp�Ԍ�+�?���zV���I+�X{�٥��t�؀�;�'�vdlXN;�~:��D�0N���1��X�w	��8өc��x�#�<,��d��'B�0�m���]q0�,�R�\��}γ�~����F�������*Fr�����1w�G~y�3�'�C ��`,4�%�4[�����`���,��%����|�x�^�N�ȉ!4I�=�i̺���J�l�d����nF����ӡʥ9%N�,�V��z�DFĻ���z�2w�W��
�c��F�����2���ZvIll�HM2�+�g���T�~=�p�!�sϨL���=��r{�j��3J��5M�#z/J�Eex�EY0w9��,Ҧ�9��j���9��r�$�<�E��K�ӄb�^d���Z	��T��cx��z�x]l�1,�[˭�d��j�8Fe�I��y���)�w�3/��M���z������έĲ�ʛ&dm'��iֹ��PV;��@'~��+�}�dU�xv��T��G V���w�ȧl�W���*�t^C>3x&)V?���O����>�����Ve��1���Y:]�z�������<_�k煫��W�����i<��0�����x�,ǋ�պ����mR=��3o#�0���Uhnq|��ue��~�{��D�o:��'��T��{��7�x �+�Ϋ]=3��j�i}����/�:N�+pM�үp-���g��N���{/�Z�Y����N�;�Ll����V�=�jg�+�`����MÝpf/�<��)Y�ֲ�hr���� M�3�u�0��x������Ώ�f���e�n|\3�,�'�C�]̻sYH�B=8}�����|h�b9��O���MӁ=H�E�*���Y��%3J�#��ږ����l�xFpA�?PF�w�[�]���/����q����~��x^<�;^O��XF��q�� @��_=��*%��W/����,��|r�Ϋ}����o�=��0���|�z�����;o?Vx�u��g�����9�>�Z�܎MU-r>������{E-����<Qy���xy���((Yv���.h~v�{��[���>����9n8%j��m��zF([�`��@��
�.��L����3G5�y�j���7�C�]-1��&@��c���]����<G۹�AVe�7���%ػ[���j�������1��/�}~A-��J����y�n��%@Q������V��n%�N/0y����� ��v�6&����I��x�m��p��8�������+Q��ם?�u�Mo���)��2��;MP
����O��� �|��w-���w�Cc;�|�|�mP�T�~��}K<�����8�������ԕ�A�ŉ�y~ػ����8�w,�))�λ�h"ʇM�f3�&�'���a݅)~��m7&���joqW�?斮���G���������e�dc�����8�g�G:��#��k���ߩ�ىK�1>�U�d���|Ek��;?������f���s��k���~���I;����X��m�)\]V��T0��ֺ�֍%���d���6e�+?�tX��^�Ҩ��y?w���o\vb?�)���r�˵m�4���M�M*NaFB:���rRBj)�~�Ny��O�ʛQ=��OɯhR4.���}\���/� G#��r���S�<��=;�'a�?�+�(ǘ�\����/[کL ��l�w���qU#����X4I>L2~��R���2�0����ia�\|b渾�������<5`���"�-�$�C�\�j�QWd^V��+���-H�cx��`|ĕ�𼂃��u����d{������;�	�ڵ��	������v���:����P��)����ye��Ӂ�k��&�#*~<t�-�D���^h�;ËO�����L>G �2�蚘㻫`��������hh��y?��n#�x�n��]}����d��x�`좿�Iޘ.�g�1$�ۘ����4�7����^�	�O��fQ0��E�©`<?}�\#l��o�����𚎠���B0��<��	��~(/v��,���Lʘ:�7�F�b�#u�@0BV;�LΥ�(%���1`%�y�񄺨5�}A�4	dh��>��g2�B���.�b�������	�	��ku�1A    0̣�Zc'}��b��h���I�8��ά������Ρi���x�V�g/|X�����3l��a0[�
���lT�H��/��Γ=@pL��3����#��︅}�c����r��������5C�p�xCܥ��g���������|{���M��H�s����|5�)�Q�Yh�r�Y?�g����F�vgQLgu ����v������è�)�W�t5�B�g?��cP�%�G��{�E��܏S�'g���SG|���x�l�z��Lp�_��l��O#g�9��	A��s|SLP�Ӯ�{PtL;e��E����f>�{�h:�ƺ��c���ovy�p{ǃR�D&���z��w�b�8��ӻ���WC�ƈ���9�x���W\�YY͇O����A�C.��Ou��%|�Ӷ����ڟ+��;���m�P?f�}���Υ���#��9��N[��Iչ�i��2�����i�ԁ�ϰeD����uX������d�h�t�i@L��[pt�o�?��.�>�����\�62�{V��^��׋�ȋ2�ɔr�)��]f��ƣ߯0�"���ݎ'��3�=I���PD��c��&*�O#�����<[�&�z�2.��N�B�ֹ˗�r;.︲}���s�� ��<߱j�v�Rqz� e�݂|�q�,g�n��S}I���Q�����4���	�q�AS�(�����W��)`/�'}��A]��N|����h�&b���]g��� ��oy�v�kfu㍽ʐ���=q>�SF ���`h��]�HO�x��I˸n�|�}�G�����������K� ����T:yCg��1Ǖ&��xGO�k*�|���w�|W�x����c��KX8�+�nd�^���{x�� �c^��~_�n�s�)o��|o��~��\ג5|�ԅ!�s�|��R�Oy�1r�~tI� �=��!�-僜.���p���r4:����Sio��P�
�oguȘ�����&�5��_�J�r8�����F97>o����`�w���P9=���������c5.
_:2>�Bf%����-�%X�P������ �C�R�]=@�R��s3�x�w5��2�A�6�ۀV^\2T�z��*ϡ-��u�j��f �-]��:�ytP���pu��|��E�.tԆ����{�R�x��i2ƃ��Cqd�4��qxȕR)���Jn*��ӏ��������m���ڢ[�͙�5��?�,�=�9�xQK�����S�������B?G�������x�����7,�V{�٥N�8S9'p�'��ڭ�w�7�������2�U�RQ��f�c\�q�.]�91Zm~gF#|1.�[�DL����70*�3�x'��?q̉Ʒ�e���MP�x�����	�
��g�ά��N���R�P�޽�P�N��#�	�h��;��2�}��S�M~�Wh7����� �O�}���M��K�ڡ�y��-|��ݽ:�tj|0�,��g+� �,WT�� ����FR-�!�ax�x��4j��k=�1�޹��YEg�WV�Ԟ�s�+љ�����	���c2��Z�^���(a��V�m�6B�\c<��k����g�T.��K15C�Y��^�����~��n�Ӟ
ds�G��M�K0�:�)_�|_-DB��%�܇�����n�(���%�����k\κ^��;S��Џ2�٘\P��_��)]����t�/A(t_o|Y�0��j<}��5Cy����ឲ�ƕM��\(������HNң�����N��Ez��/�/A����`p(�>?��_���U��1���0_ K��dV�^��G*h��Hy�?x�Aݨ�9����3tv���'�^(p���A�.5�?��{�|��^gcc||���9X2�t��B{��%Ha�A���%0�ܶU��o\K�w���j>j���V>;4�����`FU�n���pm�����m0���������g�*ꨭ��sx�}p�ڎ����g�e�U�����7%ڔ
F��9�ʵ,��3z�����'O�lP��.)����Q]OTmMy�ގ�ʔmj��e����a�5���\��1rS�TP���k:ʇ^�qMD�ޣ�~��Wq�r�:y�T.�"k����;et/�ʧ�3�J9^c.��~_���\�.O�eEy��]��}�8<������wu�Q޴~|t+�ϧ�M0�þgQ��a|�.V��q����n�}W�yP[9W�X�'�E�+f�.(Hj��.��vg���>t��q�4��q�!]�L`�*�?�cw���	
ǣ���n�
�\�	���o��Q]�R(	���)Իu��+4m�h�6C3�|&w����msox[��>����sAz���
M0���3'*��gN4�?8�ϔh�뇟|��?p9�I�?�]ைۜh�N�\�7A��2����pV���7�r��8E�86x,���I����6�Hg��ī~���#����T�L0C�(��������҂����d�:?��н&x�~��g�������ӏ�[���nPc?�������`�������<f�0���[�^�	P}�Fy����'�#�C@9:w�U �xHl��;$6����P:���Pd%կ��@��p#�x��P�S�Q����{�( 
V{h�NŹ�a|�����P��H���g�]�!�n�~�uz��u����^�%S�5�=;���ձ9�����.���0�n��Ρ�(-W8�p^�^:x����� ������#x����*�am4�L��e�a����ҩ(S�����:o����V2��#q	����\܉By�.�����#�k]��U���c��Sx��h�zo��p���=z�:\�	~�[��k�<6C�J3FLGq��F=6���v��O��,�]e5���6����	�S��뛯�!ׅ���xr�,���!D;2��/)���V �}C�o�8��ܯc��c<�g��I[��y�r}�N�J^�Rt��q��C�o�OSd�.�r��
���\�<?���W^'���aы�b�x^Qi1Nџ0b\���q~�u�0��M��F�����Ͼ9?�4��8�}s����\�h����Ͼq�^`��}��7h����V�����AۅKwb}�pz���?A�7zLz*k<==����舶2�ox�bY��A�7�k���r�XE�f��}c�#E��|���#�
YG�^������H�S�kh����(�� +���'��ƋƄw�J�Gr��K��7��,I�a}��o ���Ѡ�^�8���S����o\�1����?�7�8<:�r���<��đ�8G9���-����o|���C��8@W�#��ax��͎�+.?4OA���'�������qn6TW��G���A���'���o$z���'��W*����;[x��w�����I���х��ڦz��h�~ӭw�>j|�	p/��.�@�r����a�7-��o\�a�7m���c�7���KI��E��Ӆ��Ȳ8T5_��&�$d�gT)R�u��.Q�j�V_���q������|R"xY�g	��JyT{��~��#��hr��b�!�ňrJ�e�4�Ӡ�IA������ݭ<�=�N ,�9=��m{b�\��8�.�Xb�6���N�LP�Po�����){����NM�N3�9jh��&;���>�c�~�/Lt]�Ҹz���rf/���N�z�0��9�x����������7��������{@ơ�0a�;x����0+�����|p��>�8��G�@:�:���<�� �EO���x!�y#M�a����N���_��yy�y��YL���x�����¢�ƍ�J��;�7��-��2?x�=�ʯ��&=���x��E�w�#��{e��F��Kx�h'�}vb8���G�����kA�s��x �!�_��H� ��x,���8�q!��y�cq���>��&h��ōw�d�/:�k��<=h��    E�y�ZO�&A�9ژ �Ϲ�a��%X��"�眑��=C��HP�	*:NG�>x��a�BHd���W(Z������Sb�سIP<
�C ���\���I ��S)4�~����cKcP����� �3�׭MPC�z4��^�;_�%N�8
�	���@λÝ���^B�@����#�aΠ�{�d��MG�.[�{�<��(����<�GQ��5��J@K����x�L�߲	fh�	��x�*���[v(��&(O?��UIй#-��~ۍ�C|=o�����!A�y����v5�¿G�)B\��?|�B��|~pޡd�\.���	�̫6�S�R^��T�(��ħ���UJh]	{7�;p\�����ۍ�����y��V*s�1>>�$����fm����S��)��n��<�f���n��E��R�#�v3�0�����4�+�7>�T��gBi�f���|�=l���7�jSܹN(��4�)��|�tm{�[�]��*2F�a���MMq�65��iSSި)雡���!�O�h��d����e�G-Q�S��)5��ʔ��9���MS�-����n)�cF�]K�v-�lEF��4��8~����δF����r�m��F�����vt�NI�0;�{:χ���u�c��px�X�v��<�C�<�����}�5{��q���S2�^��J���'����Kaغ糝�:S�?i�:;ql�]ya���Jǜ��OCv>���2�|Z���Q7er:���6\�8y��Cy���GE�AC��A��wL�U)>�h@�������z({x�q*�ᖸ�����<;8/�u[硰�Qtr�a츟�S7��x����b{�\��6_��*h��l�bu+O��ݻ�gtN�u+/��w)��kL�9�;GT�ߏ�NN|�#����>\��|�xIOy+7��b!���^��P�ag�[y��/E�y��4�������<��K<����+D�r^qn+냘�7�����N�JdOr�����M������F�<?�yS\�3�a~�hQ*����N����A�F9�<�����E�(��48�*�H����`=W+�9o7���]Nԏ!Z�����||�����9�ݨ�S�j���eod�F<�T<�~:<��!B�>ë��%xU-
����gh�ߓQ|���m�-9<����T���ܩ�kP`l��e�̠�᏾uF�G�u���4�/^�J"��{��纮e��;p�؃�h�|Џ�vf�oT7d�gx^nN���l��VrGQ���ʋq.����?�����T���7=�.dz8m?�����NӲ�q�;��K��7�B��ZC���� ���@�QIm�v��䎊�\6C4�M���͗�{v �yp�g���r\m������a������4��p.f+V��Wl��6Nk�,�g*�:
������q�8���?¬ӎ�e$>Û�ad|�`��;O�F5�^NU��?�kx��q;��5.Ŧ�B�R����VU�o�P�<.���!?��"�>�n�gZ���Hꫳ�ܬ9.h��l+|�����OzZ[��r�����R�]�������y�|6p,��^(cנ61�x�1�;���8�֬]��_��ֶμ��*d��q9y1���u�xa�	^):�5���#hy�qA�O�:��9���p]1V�r�r©��ߚun���6��xtֱ� ��tܮ�w�=�
0<ȣb�z�&7ZD��x�)�:�qH+u�.>lw��-ɗr���zq�:�e��Q���c(����&��L1��cyM��W����χ������vx�G���z��є�ư�M���ڎ�;���x�x��W�2�%�q�Q�B�
�1����"��)J�ޖ�����ݱ��W��fxP��<��x]q�rp���W��{,
ݍ(��{�Q�Wp7 �:��n�"Ԍ���Xb6����v������	���<]!���|� 9�s�tTJG,��[�P���ū�l|�(�!��#Ors��3�Z��|�����+���f��T�����\�A�l�@`�Y���R�M~.A@���Ҷ�*�7�`�=��GG���̃�w���đͱ.ث��~�Y1.��/(�qq>Bl=�X�~�hr���8�É�}g��$C��u�9G���xeFo1\��Μ~/�{j��(�y�Kw�uFy��S���6���_x�)gO.����I.���m�p��<�\l��Q9i�Sc��/�H�aѢ-��
��u�a���V4A�0���
q^���h�q��|r.�T�\���ˏj�'p�����ty�#�.(��َ�����y��xS���t��SB#O��Γ��sD�`���<.�z�gR�+�|��|:�/<Nb��������b��@}��&9k#���6vt����E�r�K<	r��9o�%�CFQ�m`Ӭ��
&��L9"O�#2AEF�Pd|@N�ڢQb<�GFN�6�����Q��q)��s�xL���U;��wR�y�������Bm�^��>�x�+������`�ʫn�`�WA�tOIu`���e�
L}$�m�����O���Ry�nW��<C#� �4x����O�}@q:ރ㘵�
<��8�5,�ήr�ST9�c���[�;��S'�	�x�:������{8<���xʾ�E*�8e�dOh�'Og�bg0�3�e&.+��j5�"�� h��9�1�y�������p�P�~�o0<�/��Z�c�~��7��\E����/cx��IfL�bdU����S0��Rs�K���0畭�h���R�?f1�/�43;��`i=;!R^~ԽP�n�7��s\���^���\4ެ�A/G�D۪dw>?���# ��X��1�
N� +�㬆VӴ�[xq~r�y��Nd�~����������v_���N���v���Ós5�*Ϗt��gp�ߩ�V�e"�-�1pޣ���=ᝋZI��{s���;�������'>�"�������$;U��j��ѹA�@�Tt,��,�e�x�W*���W��ų5���n����
�SV����׸�qޮ`�u�/2�����T<���|�[�p<���.�|�6��,~ީ��++]ȿ���Oy��s.}v�S-�+�:�¢j��*H�<�y�z�W)?~/>��nxy3�d����|��O'4<a�=n&�*�����fǬf<�E�^��G�1\�Ӑ��;������r���X���<�(/��$\g1�C�$J8�p\�q�����ɲ9����Ə�2�2�+z>�L��_���iF���C�;1�)�N�b'ʛG8�q{��.���L�:��&�!���r��ig��;�h����M���N�O�H���X�~���x�CQk
��+z�����Rk8�r����y�p��u`��μ;�^���L�`𨄖���_�x��"���)��	\C7�j	͡����8i�/�����#��,�.���!�>������	���]�.h�;�.�.�4h]0����$:�q{��k�����YqA�?0���̧7��Q⩎�03��N���=gs>>����G�B�6L{~ڌ��,\��*��vV��k�Q�l{6����9��Ys�'�&9\���Zk��Myh_�r��M)�%�C��a�>z���q��fUF��B!!�y��w>Gm8\�ᒄ��N,<�$'�h:���&`�a�wn�R�*`<G
#�������㋸	�
k��¼�א}�陙����~i�,��g���|]с����n�������"o��N]@M�n���r�YA�w7��Ը9<�Zi|�ϟ���NhP��#3q�oqVP���xq��T�4::rYZx&Z�|cw����t�C<Lم�rrש�q�]O#��^�<'��3�����������[0�;�@�':���
2}s��j��`ʹ N����	Bw�F����v����Ղm�ΣÂ���8>�i���W�'	��GQ�5`��D)�"�sb�w�G��/��:��q.��`D������`��:�����h)t �  .��Q=�@���W���<��+��_a�ܯ���D�`>�1.X�l_8�O���|� �q>!��/����iK��!O�n���_�40��7�c��矫G*X��y�@�DR{ñ�~�UL`���ك��;nц�Sn裃��|����ߔ�A
`O�-`YM�7����yP�p}ǡ��Kځ�	�`o��X�pe8�� �4=���^���������'�k�A��x�-T���雨/Q�2��W��������M.�r*�yш2�\��(���V�X��۽g�:����j�r��E�9C�hx�����x����;��mˠ+9(S��xQwB����o<��A��s���?4�)D����v�s�tS<2T0�{��	�nF����O�h�.��Q1-_���.�
�	*���wܹ�-TM���3���u`����x������L1P}�l��+����{�;珠5�Gx���|�ڃ��gx������D����C��ٰ��:���y(�x��G?�x�l%����Y�~��L�k=Ma�ֈe��S�K��g!9��������=�d�/��!��M(9�1.������tzt���	�_>��w�?(�[ع���o@�Xw��˂�C��u��ddf�)��42;�&��<�W��0�μ�s�hXP)?�`^s�sZ��y�����(�P����x��T�����&����`|D��3�b�4A~^"0~o79���.�Agv\.X`p��+�O�G�����;�@���_���C~�*���\(|�T:�[�M�F<�;�U��= S��I�\�7�.O�J���v�`k�	��%�s�*;�P��}Õm8f������������	h�I���e��O�(Δ*�J�p}���8�S����Li|<fD��*8\���4��r���D�A���x�E1�*�
��'��u�w�����}�5YJ����GǏ�i�%�j{�Z�u�͋{�h�V^aj�N���t�2A�q�`ě�'šMėgI�����?�<эҊt<f��J���6d����4A{��ƻY��r~���³U��9(�i���{�fO�bȤ?9m�4�x��y�Q�w�5�6���{p*07d���=�ҙ�����q_�/df� S�]���E�W�����[��w�s����u�)�:<l�1��*���Կ0,�G�a	3����x�Ǹ��r,��wp���>M�!R�|F��e�˥�����x��]r�D���D���x��R⍊D8���x����1|!NK���o�-��e�Q2i,�b)�R�(�F�j��w<��L|�g\���؃�-L�?B:���Ǟf����D-�z�����q?��fx�1�o�>��exQ�"��ks��Q�r�u^���F�+�-hɎ�;�Tb�ԉ�D��_x��q�z��L?G��Ów(�O��ze����+dV��j�ÝɰP��t��|�6#�a>+�'G���ַ��'�B:�dP+�;�I���_��D�k�-�c�	�E�~�Y>8b�� �4��R���8����K�E�S]�|1�zƇQ���'��b<���������8!9�2AW��H�#�Y�/�$_	�@�������ϡ�R4Rf���BB��n�#y������!!*�z�8QA��k~�c��[G��B7�3Έ	j��v��8k��Μ�4>��e���%n/Qz�S�&�FCܣ����7}�[���r}��{�$t�<�_����ފΔ�D�P�<GVO���5d6H/��s`�6%��&��5�9�̿�'Ǹ*����a�RH�6�>xv������(6a�T�XK��Q�K0�:q*�|����B�*HȬN�*��lڼ���[hy�Z|ZJ����>�Z��w�m��-��2� ��:�(��KP�M\]-�K���)H�o�Ph��>?��9��)���O�a_���^�O�W�+�����=1����||pY��w��w>c�Ň知Hyք������K��*H�}�dq>>�����7�`�`4�p�a�RA��-�����I_��%My�?x�Nݨ�9����3t�m��+�1F�k���y�L��_��~	�Okg�g�����n0>C�Q�և��m<�tҗ����4^>x�ZZ��w�V�����h�5��y��U�Sxm��k���n�ٷ�&h<-��>BVQGy�Kd�0)_����0)O�{vA[[~m#l�~pӣ����ǽ��抚�3�m���w^���>O\B������&/W��W����eٖ��=�&���v��cbW���w~<���� �@t��)�ʤ��TR^�����q�d���ޓ�.��_E=��	�Jq��7�~7��n����:O��^�l?UШ�����c��R����W����9r�>x�BF����x��U�r�j���=_�wn1��1>��.�������Uf���˫��-铥�x���\��Z34*��+�9E'E�]�..UAi�%�0#*�܊��e&}�SJ�̯F�CF���=1q�6��QT�!彍S(��<y�p�9	�hwA�G��vA����MP���	��2lt{�BG��	�v�	V�8��B��
҅��0#�s���;�\G�O�Bw�CQ(�kfA'�ˇ&�!7h���@�d5jW`LZ� ����X�y]PCvQG'һ=�f�����u�ʓ�bC�v���y�.��7�\{2����a<�O�<��/48���&�4j�����7e��a���gaV^z��m&H���2��y[���n���l���nc{Vl��/�=ґǁ*[���:���&�To�2��@]�MP5n�o}M�8������&�_`D��}��Z� ]4�Q��?87q�T�쳨%F�����!���J��%�h���!%a^��7ب
*gt�����My��Cm�a�pE#��#���a�w&OI59�o��Qt�<�\�*��|_�Cp�)L5,�K�	��Z��P&��	���Nd�����!�AP h�Z�b��%����v�A��+ԒU�^�0�8L�9$3 (����e�jPk��2�����Ǚ����I5�(�u�w����.���5��#r#?�x����	*�}�}�Μ>^�G-ˁuD��9�V�q	K��'��Rn���C��_Vg�b���a�~Tܣ����|5�~Z2�x�*^�A�x�ś�����F��DfJ��R╊D�]H�(�p-'��-ƿ�\�/�T��e�Q�r��T�����yR۔`�^�"3@7e�s�Q^�E'N'�B9\W�.o?�=Ro)8I9���q�©����E�7n=J��Lh�����d�B�Q���^:7(RO�TWϞqu2U^܁R�L�W� J���^�;u�2�[�{p+FxTuIU�8����$摪<��Q�cUU��0xF�#u6au��P�c*iA�y��v�{J4ݙS���{�A���������MgŔ�Q'�g�L??}�=e�������,�C      �	   B  x��Y�o��>3Ż��څI���M�2]JO!E#z�e�f!�Y�6=5�C����C���K�CO�i���#�K��̓-�J��b�]yfޯo�������Q8�-�u�����"{�X��sE@���tEЅ�}w��P��Y2({j�?��p��Į;}�%Óв[��@�%Q�NftHf[a�&<�>���K���[�3�����ͮ씇����y	u���O�E�
�8��ڶ̈#O�y3-Us���s�Q.���m=�.2?���,V;��aF�r��<htz��� ��s[�B2�J*��AG�=@�Fat��3����Fz����#�H���U<PQ����V;aGd�6��3����'1l_Gl�y��'�\���5�Y��>ɁF:�r%:!fI��A�-!����E(P�y�$�d ;�#hm�@�@ã$Ӈ��<��8f/r��~�<�U���SfŘ�g�� *���Յ�Q�|��tI �b�}�>2wI(^��X�(���[�� ��>�ǡB�Y^"xTG��#mt<_ע�E�4>aeO�푲�	_������}=Ր����qb`�=�6�Xr>/�Lt�����x��l��ay����y�ᦜ]�ͷw���_��E��@��`�1��?��.Ťo{Ky2�qJ6`B^�Ʃ��,H:F�I�ؼC���,22�OR��$�e{ry}��ȴ�hJg�I�vu�b5�|W�\5�F}��]�)mxr�|� �q�B�_��a�ׇ:wW�Mϑ��_1�I0���ش}��Hh��l�m��2)��F:Mr�� ��c�tFc�"G���Ƃ�2ƹZ�O���No��Q�l�AbM{r�q�u/M�f�G.C����+�����Z9�Y�}�>���<�L��Q��,��p��ڮǉ�w}(��8UМj�nQ"jf�zU.�瞚}�[�ڏJ4��]9��f���1���p�Eln˩*��y=)�Q3������t�Iy���y�[�T7�j��V6�z�jRΪW�ͼ�S�kO͛��햁�3�s�=����T�����l�&y��t�.��V��Փ8�q�t\cz�<�7f��ɤ�a����[HdQ�Z���:�!rO��Xn? w"ϸ}З3@p����UU�K���4s���s8Wu��7JvE�� ɰ�Z�#̲a�~��H��٫JM5���r�=g�j5�	+�]Ӷ�6����-���h�Cx�OvFv�c$�-n����OM�崙W1���wʋ�h� 
b��\����c�>�J��AK�I(��8��AY��1�j�H��>��)MJ�������=|����|@�Rd�*P,�.��q�7�5� ��3J��:ڡ�Np����-���s| �lf$�� �q]O�O�.����}͵�ZLJj wŸ�������:> I���q2@�F5B~">/ i�:���\? �梙Ϩ�<i-�q�L�c��KsuwSM�B�N�~�z!eܗY��N_�΋�*z&���4^v+�&�@�qa2�w_k@,�HgҮ�T��XB~�/P&M��$^5w��>$��Afh'��>�E��Q!��z��� WxT?�/R�GhC?����6ń<��X15BA�H�k����t��at#�֓]O�h�l�$P�:`+س���Q�dzr���,���hHB�;ga?p�H��ԭ\���
�!��U=+/�5�����fO]�j�ܗ�e5m�������7�*q��.b��Y"]��?��8<e�$�8NN)�"*�n��Ǝxfo�r��c�aH0��,�2z��yg���EP����	�k1��=Z5=@2��i2.���Y��v���!�z�d����;������S�-�`��Z�A.�7�#�������
E9nN 2t</gW��	T�;���>z��j�@y_#G�Qr[O�o��j^ߴ���*�1��B��f��4���?}�
�̂��Jv�?�s�5riA8�0��دtB�$V���<'2B�Z�j?N�JA>�[�+��i��Wդ�D�s��^n��f�ݕ��O�ɔץ������̼�n��_��	ڴ+\���B�Ja�ɻ��,�Lۡ�$m8A��#ˮկfW���R;��/�M�+	ԣ�Jh��#2$���`i}$�<��J�bu�Զկ�NԾ�������- ,�?�넩��ȵ$`����me�5�s�  �ƎE>�2���bG���􁂴��P�dע<nG�, �JF1�dA�ƌt��Ջ� ;���� ��f-;-��z�٫Ob�$pY0G�����tZޜ72�K��!�#l
?Q:e]:$X�i<LF�Ho	�<z���R$x�]봞�����g�DėOA6�k�0Q��;�����I���X[n�M'c.�gH*�a8.��	]�p?����I:K�e7�xh���c;��Ɖ��܄`<i=��FfZ�/�GV���Z��ú��	����L���,��a�,> �4Jkp@? �H"�\�:@�.kܥf]r3�Ѭ�8�yրI���@�pRF��_mgxׁEY��|�ꉶ�Q�;O	p����	��,�2�q2SPy�x�G�S�7L�v���vu�<^O�笔p�5�g�oY��F !ZN�S�RũB%��"�y,� ��}��k+�x�ӳ��z�m����l�<�?L��[JPmN�6��͖�(y)�pv\�,�ǀ�)"yo�j�I�+�&���鍝 !:̌���yq��+����k���Ǡ��(r͒��,qDB!-,\��w��=����A<L�7��Kf��O g(������O�f�85P�@������L��L�t�����QZ� �
��N'�|�����4Y̝p�%(�o�sI��^n��	�R6k6�j�\P_�Pt��L!i��X���_~d���H֦��ˏ�\�{�؁1�����W�/����+Z"H��Ⱥ�<	
@� *�����г�Z�}4�?�z�! �2:䈋Jي����Pk���S��ф(ș�F૝{�tE�㼞R��,�צ+�w� t�������=�6JLSbA�t�:T��n�_�������!A����������	]����Ab�8�[:��#a#A�DO�W�ɺ�&�H�\��c{�C�=4/,.��g��:�>�ͥ@I���t.5��mK�V�P�F&w��F!�XD�>�/���Ik�����4�Hs��y2�rd�k�BT	�9�	�m��d�����` ��`��iɛ k�
����<�Q��c�s��۵F��g��:,�$�cÚ:�t�i�P@)}����	�`P���G7Z�4��������ϯa��o��� A2�\`N�%9@@Ӳ�R�G*��Pd�p���BM��})>.oJz���Y ��{B���~��zOM�_iBP��wuy��{�D&C/?�n+�m��C�%�z�F���j��u��z�Pړ'^ҳ��gl�;S����=�!���>�� >*���)�ȃ��i�q<Y���+��;"��V��=��������ӵg�� GB��7�$��;�:#�ȍ>`�����(Oѱ�eݜ�7���Vz�E����&�N����8�/�q(��,<Ղ[n"���]~{W����T4����?�L�+� �ц���4 �K��i�%�0�A�D%�=;J�y��T���x�@^F���Ǥ(L�5o�Q��m-O�P�Q��Xx�a���ѐ u�5��,�u-d̶��,���rK@S�Dg�5�� ���#�>�:��_���Ǟ�?�}���ȀG:+���2�Ҏ�����s� \�X7?*�7�.8�,����C#.��~��ٳ���ڥ      �	      x������ � �      �	      x������ � �      �	   �  x�e�K�� ���9��@^]�5FE	�DjC�Ǣ��l��6���B�Z}ws�C��c��}})�����C	& �_7�NP��A��=�.���`���[�ӶM~V&Xs*� �[s�`���&�����A��r']�.wn"%�з$86��2̿��5���8>��G �G��Ὗ��=���8U	��蒻�`t
���7#�NI6_�!��� �Aw�Z��*vO:����Ul� s�D�� �U	BA&��n���Ʃ���`,7J��.�Z���t�3L���{q���E
	S�7"��)�ۜ䘧~Z&��rP�]�� eH����%fu������v���N�A�XN���@\)���0�d�Y��>��qi �+�\ȼ��n[�:�[���	���@G ~� �����      �	   �   x�e�M�0����):xul�iBPv�N�"�ͷi%ji�>�c����c��U�u�R� N)5��t���G�����8*u0�������rJo����^~�֞��� �L�������
pŚ0p�Q����_�u�$W/����5���r�/c��V/�      �	      x������ � �      �	      x������ � �      �	      x�3�4204�44�2����b���� 1�      �	   =  x�]�MjA�ׯN1'V��.͟0H�2��6�A��g��6����`.�!�k��{��b���ST0�`�),�0?�gNځ�&+&��c�e8�=5��8�j�7������K-�>��a�a�4\ B<�]�F�#f��\-L��6WϹ�R����w�xb�U(I留E6�5�{�eC���c�.�;%np�VJf�-�ъT�`:8&��;��\�:���bO�B,6t$��C�������X��k��`�ku�������֧=j˪�(���]�~B��.�-��"����[^����W�ǰ��r�vCD?}<��      �	   X   x�37���/�O-.IUp-.8��(�$_�81�$5�8�Ӑ�Ђ�܄�(Z��� T�]�X�)�sj^	H!%�`%f���X�M@�1z\\\ I1�      �	   �   x�M�AN�0E�ߧ�	���]�H $ʦ�+6��БR��8��b�r1<���{�kF�pG"dO�֯l������i�?�cZ�G&4*=�<Q�D��-�9JgB�К��T�2�S��k.qF��{�i�v������3�n�/�6	u[��?R�o��-��0*�r�M�]"�z�4�sd���c�k���5҂��ս�c~�L�      �	     x�U��r�6�룧�d �॔��H�<;�*D»�p�5H�$��(��
Wv�/�sAg����_\��l�VW���/�X��i��J�Q�nϴ���+_�۾��UrS�>B�*��[��>#:v�V-�L��u����1�a���%�bi�X���]�r �aG�/�G���T��d�Q�&�\q�[=��A��Y�b���y�R�c1��΍{U#V�X܇������L1�b�w���Y�Z,M>���|\b�6P�OJ+�f�����nVh�e�5\��-a�+[�Ym�u<�4�!��&L��|ځ1��B�������i�ؔ��$����J�)���J��"´���S�V�d���8-n°�VޅX�j�v��� e-)d�Z�]��>����R'L�+�åcq�����8St���z�G:-f���[.Ĵ���a#��	J%�b����R,.��>Sn+e�,D��[���In�b��<�>���Vg�X�V)x�N�1"2E�p���W0Vb���u����p���)���.����U��P5^�	#T��0�`�]��/���b{�"D�k8�c3n��c�%Ǌذ����?�e}��k�y�����Da�ʨn�L�v�\sX��3�N6d�[���\��(�y�y�k)p��4u���n,^�17aG��$�(6l|?�:<L�tW��K4�02(�b.�j�B�d5r0f�rE2�c�8�L1Ҹ�+n<��q�����⪳����_����Y�x����W��8���U�6~\��~r�,_+-Og��cx�xdv$�88�xP#1A��q0ҕ���f���꽧�k�\�):��e����-��LQi��O���w'�oY@�B�c�|����V�-1�5�M�7SIs0���Uir�Zq�0���p�~`[TFDf;�w�SX߭�[�\�)�F��.y0�)��G���"���ݛ�&|��1Zِ��;�L���wز8M�ܙ��%��s�
��)��2���/ت��!�̪�Y��4�k+o3�5\�����e3����~``v�Ȭ�k�N�~X��P6�If���<b�a�[�>E�����%�x�{�����A#WS�l���p�~�ן^,�e+f6��~�ݡ�c��!�p@����%<�Jn��j�>mߧp��_+Z������n�3?�KYI���Sc�>��T�rf�i��8oO��#~�X�r*f6�p���
� ���,fvt�ӵM+�����w�Ƨ[�����28�١�p����W?M~��L1������?���      �	      x��\�r�8�>����u�ؽ�/���2��W��qtT셖Y.MȦG�*:���2���9�#l�h^a3	H�ldw�NLה�� �/_f�b	Ϙ���E&Sf?2�Q���9���Ddɨ}�t/�z��<7�C�ξ�w�N�ݺKD������Vt�3��
��p��m�u:ۭ{�j���ႀK�?�I�u�>ఛ��?�w6$aC+�{y���7�9�3F�(����`���ݼ�ϯ�v�q0cL9�J�q�}�{���k�k7Z=7|N���ܲɤ��"�q�^�U�^u�v���X閉��A�l���Ʋ8��L8�C?Yܢ,#��j�LYrX�w`�Z\&�l?����{>A��ZI�#M2���t10A'n��)��d�Ox�=?tϫ0A*�T�F�ɨyhW���f׼t��?`O8ų����ď�s�����
x�wJ�ۇ|���XmxO��%�n����[5��e&��3-4C(��w���M�ݞ<�%������M&�3�նq;<#�(%�����@m��<?�X`���pg!�>5�(�Y��:�q��t�3U�������rA�y�l�x����~���;'���H%aB���-�3�^��<�"�����^n_��yt���91C����d͏f��&N���<s;����M�ԥn'.�������� ��ĸ�����%D����<S� .��c`A>�sۓX�v�n�����2�Գ6��������Cp�z*�B������{]=��g��ӓ����q���u�ʔ1=ߔ�?Y5��('�\SY�B�����'�b,n�xR/W�ٯ �Q�������2g�b�8�+�G�������q�)�<2K���쏅#�E�\
&�"�~L<`����$N.�,�}\��c�F2N,Ź�62?�������� ��"ID�����(CI\ʛ��)%�2�rއd)��6$�&���)�%�1��G"ؘ�P����й߷��$�&���@ȸ>T�d�e��
Ql��	�ͣQd�Zk7[MJDE��=݇!�h�������"��Q�R<wBb+)A*%!h�`NKDEPK)�B	&�g��W*� �}�i��B�I�{�v�`�����U�j�P��
�z�n7��3�}��U��lZ���k����A5��* _�ݷ�45��,�!+(^V�҅:�"�_I�i��ݯG�$ �հ��f�l� E�T��J��]}�C)��f�5�ϵKhLR�6p�����	����@��O�����3%gl�$�U��`~q��Lp'bY���`z}���џZx�K���)��+X���Yl��G.?��&m�O��.�Š��=�!�GA&���A.����+�A
@�∐B�>����.��i5�Ta���֝<7 �V����Q:���+@�K�\��"=�-��h1:OG�����p���-I�b$gI1(�7�����,Xϛ�LϮ��i8�%�����Qh=�@MF@�|�'��V���'��Vj��M�&uZ/�Y1���	�(Ɲ��f8(����q�A�!�q8�kX�#���)�v�B��W8Ŵ��bZ�_�S��iY�E�JA��ne�S����#)��z<~
� ����t�#�I=���6�����Ge5�'[7���Ǵ*�bTL��rZ
�^�~>B,A5��'�Ո_���-�l�	���r�����U5�/�5g%X��ǥ���={,�n|S`���,��S���i1]̃	�˅���ԛN�ϑ�%x�+W�l6�-92�\�A:� �f�x7����rt`��粚��`��r�Ku|�X��nݤ�.���?7 �/0�\u���"���?sL��>�:�b��:� ��Oz�ܭ_Wߺ�`�����@�����Ӊ�_@��o�L.�@#.#��^�&�XP��*0��9�C<�8�3W��N�DF��O��J�"���V���UVZ2 s������!�5�W�� hhs튙"�`lt	�?/~Z�4AGk�sSr��Y��2�SP��0�yqqUGcq��L�֋ i���fX΂aY�t6S��s���ߖ��ֹ��^��p��8�lf��O	�(��t
�pqJY����(?#.@ŉd����
��ř�૗�����,=�i1�gi���j�!={�6 ���>5���)Y�O�'W�%h�"���bX\Q'��x^���C$f�8�,�^_�d���X�N2�Kт�ut��Z?QN��gRzS"j��'x˹?�!�&��>4�Y $��%3.>r�]-�*�8�_p�̗�zR�h\�	���nΐ�_.�U�ߏM�����~�������¼����+����t�A��<?����V�^l���I��$�jX�9�)�ּ���������8=79�a�'.�Խ����g��	�
-��WNX�*S���Ѣ �+L�w�h$_=-�����
������֛�h$�fA�W2׻M�kd ���B��n�@Xz�җf�_����/]�����y�5�'�]��d�p�z��`4'��@�b�l��ղ�`8�W��94L8��~,��]��w^@>�!R�R;�'d��N��h�H�]����RJ�"�Be�5/�f|b*�l�O(����`V�b�) %د��� �@����$8��Dwܒȭ1ȏ��{1��� �m٘7�� �� C�Yg�;��眎q�^.�'QM����&�	�Ɣ��ml�%�P^*����;���m�b��mb3!�����C!{��>�K�}ry��]����zWޔ�Ѐ�_�ݦݾ6����Mh� c�)��FDl�!	~��_��`턜� g.妀�r�Y
����DpE�3��K��tq�������oN{1 ~��"�Y(�����;�DY�rH5��ց�������M�}Mh 7Z�P=+���c�f���UI�"�h�� �qy�j4&8y�x|�@�^��6Z�F�}:w�&�e��~4`�'��W�E,�cj�\(��J7*���y5B�����!8��'i G=�q}�N�`��ke@�`دi��"���uw D�U?���H�~��O;sX�zRT�`�ð��t�]�p�d_\�i1-F e�1��=)�=K���.Ȝu�d�����L;����gȚ���c\C|n|���~-F�t��<�:�[+N��֋��Z�˄h�,@^���6Yh���
���KX;l�}�6���� &�����	M�X��T��|]-aB�l���o�>�h���t��1�`�}=va�=t�砊Ǣ����ǰv��q�Ԯ�-<��~8�v�s�h+��,���\��}k/��!9�W �a�U9�r�v�e�Ҿh?�H�߈�����%>�U��2ڢAc*�]�3��F�'ںA�p0�	��dy@%L����M�'2��h�5I�ᐡ�����h���r�	R�&��Ř:r�E�?�����)l���y9���望�3��A<��Xx���.��hOAJz06)�/���H?؊�i�t���q��I?�kx
����}]~�m��iHb�-K���ഈv}�Cxr]V�}�ԣŨ��z]P��
���⭵ɴ�GuJ�!����v���GcA��Ӣ��(�p�Ù�1-�>/��:OG��M}��/gԓ���j�W�>��W�ܨ�8����mVAbN�s�6W}oTz-]�h�	�ٷ
���qz7�ö72s��`�r6�g��	��;�~�人	'B8��|��Y�`F\\L�<A��]�ʀn�Q�9}8��h)}�`Mr�i�����ॹ�5?�L�~��0+E��e�B��h����0�x�.���C{�>n�o+8�α|�Z�?.�����Gd�$ķm�<wX�Y��5��}x�E;b8zn�dyrSNoJ�e #�*�a&�E6��È��� U箛�,�����ϣ�/5�%;�x���X� L�;W�1Q2��,��U"���ߊdA�>�p�sH��UD�|Ӭ�^�>��j�`dE�s������i�l5�����O�m��(ԕ�܏�M�u#�� 6
  *p�8\O�=���~�jS���n�>��K��K�\}Y-��Y�
\�6}�0���Q̝O�q�.TV<�%CT���:�i�W��6=۬~힚'�+=o�7nV<Ӌt	zӕ����h�lX�\�S2X3�����fOY�3��i�ǣ�3�K��V���Ge "Hk5p݁򤚔 %x�����Um��	��9�Lr[�"�p�e�<�Pc?2�x|$���z���uq��q��}�Or�ܖ�jRL�:��N�s)��*0��<�6C+��y�<On�*~S`�ўB�uz\r㡟��Ip��� 
Xmr��� �7�٢�.�q_�`��Y��8��&���Y��F�mv���v0�m�tb�cp����v��2��hkP�ݹ��1�l���%|�%E��jާ�w���j���yX���.ZQL�����5�N��Ю�(������n��mh� �!����U�qx�;(Ș<J%�
�K����h?
�p���'��N��h?
�"������h�/!X	��$(�A/��.�'��GE���6)�'(�߻{�1X�G)���ߣ� �
�R�=������-��&)��WW:Y��U '�$��K�oo`�1zM�G�A�7ܸ��͑�5��{g�,={�tN��G���ոVW��p ���Y�d��_��\.ځ��������KÃ��ڮ6]z�}��|n�k�>�BHײ�]?̢ηr�BX�z�h+m)�Ñ�~����P�*tG1axw8?cGy�хV�v
��[+D �v���Τ�6(�؛r^��q��ǒo�P"�O���φ�3
o1�h�A�x���e�D�hgQ��TH_Ps5gE5��8^����>v_�]�eX|�8�D�M/�B�?��#֟��Y��9�U�N�=lk�h1��9�3�X�as����̣{��x<�CSz�kd����~�ۦ���_
�Y;={"���1 �,��� Q��r����#��Jl�����.<�8C�b_(���<y�h�a�������%�C�h��S�v�b��(����lR�`��&V��L�𜳣�}}��G5�&�}�K���%�z�M���"AH+���f�-�K:����l䉆��:��t�_8	כ���3Cs�a U "�i�_����I��Ƴ̿� a�G�/�_Z8�6��@4�@_�%�� �!Ϥ��9�~����n���2�i���ɸv��ɴ�W9��ޗwh�G�hyhS�b4Ƃ|ñn��p��?�8��~��<���ɹ���$KϾAF��F�f�FY��Y=�n5i�OWL�����s���(���{8��S.�jCG p����ms0�9=+�k�Uq�NJ��f�$� /��1�7��'6Ga�#�l 5Ư�L�jx�H��jx�C� �M3����K��}٥�o:��h�q�]{\�<9h���'Zf��/��c�=��༟���I[���L����&�7Ǳ�o'��rw���@���x��/��,D׍�b�3�f�q}�T�}�"���	^s�_˒I�G��w�7J� ��y��F4� u�'ˏxB6�˕��AF�LʟU��+'ZX�![_׶6�Ƽ��f���{Ye�rҿ���	��r�q��tbEe���Ɵ*�k��Be`�z�B�~�\��<�,&����].�sD�	S��:b��A�F@f	`�&-��]�%�J��h�W0K&+l++��%q���Pܣz�L(��b��%�3F�(�N(~�ȼ�fe y�L��\#X����|k\�i���kG_�j���SP�I~ڭ���''X�����X�L�Q��M�>�O��<�M�K �&��b�is�<����t	b�\z�3�Lۗ�T #�-�o�3�����c���׷,!z?�'���0�̊М��j1�V1�	��]�(��J����'2?!�����At�`=�k�)���zz�!���)��*���}��߰�.��(��+~4\=����R�!�?�5���̽�n%A@8u�' �o����cWl���'7q��!��W��g'�ht��#�@�ǫJ��,��-��ܙ�7W����j�}%�O(������!��2�7�ݑ�iow��\M�ID��)t���?0%����Yb���d"-������|Z�IMt������<�]:�����tV�h�Ře��sz��2�{XF-��v��W�'��`1�g�e0A����sk)D�~�6�d��� �.�7�c^%�.��7E=+`�ͪ�﯉B�j At�����c�fܗ�"*P�&�����b���D�	�
�J�8�����݈W�&s龾���K���￁�?�'��֖��8�}�~T�N'NH��2�w�t
�q6BX�|��,�j !�L�)(y!_�D�
b�c^�'{�]L������LA���j��\��,�/�-)T\�[ig�S��9Ͱщ��eEp���%H���ݦ9�l���<�t�;|�&n�H_������Gf�t	<K� w�n���]���>���h����J��L��?����PH�R      �	   �   x�e�K�0�5�j�~���Q����Eo_�N�J]�<�@q�K�9��p���º���S�Ys-x�+�!����_��7���߶/xm���3�zZ�ژ�2�7��;��j� E�@�J��W%(�c���?�O��"9�〈oګQL      �	   �  x���[�� E�ݫ��UU���HM�������C:G����{���8�mk�kΟ�> �6�!7(__�������I��+]hp{��\!�FEU�w]��\��Da�������[1?m����mɿYw��3���U�S!��l}��[�)I+&Ts#{�dݜ}��>.!���Mo���~���3�!���(�Q��S9�����"�Qt��GJ=���=�s�2����]ʵ���'c0B�
A�Y��c�w���֞�CP"; �!�n������S���1n�.>%w�'�U�ft�Q|�O��H�q��J#�o�|�'T���%򞉪�r��Y���n��z"52-U�.f�F�x�2Q"���( 1����XV���>�=����UI|B9J�ʴ���y�-=v=���D3r���x�5=�E��@~����Κ�o��r�*�.      �	     x�e��n�0 E��+������^��J�� m��$HU7��~�nɞ�zsrε��v�h��Gՠ�=m��y�~���L��(^e�~Od'��.��DX(�Y�K����N�u��k��RY��U��Q�� o�ʇ����!��"��J��ؘE�!�=<ГE4֌�ݣ-� nYU�:����;���w�����Z�G�Đ75��	緟�?.�Io<*�L��F��<��Y������y� ܘ ��}�۝�v���6��x[�qExhu     