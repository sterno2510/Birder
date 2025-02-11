PGDMP                     
    z         
   blue_ocean    15.0    15.0 5    V           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            W           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            X           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            Y           1262    24711 
   blue_ocean    DATABASE     �   CREATE DATABASE blue_ocean WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = icu LOCALE = 'en_US.UTF-8' ICU_LOCALE = 'en-US';
    DROP DATABASE blue_ocean;
                postgres    false            �            1259    24722    friendships    TABLE     �   CREATE TABLE public.friendships (
    friendship_id integer NOT NULL,
    logged_in_user_id integer NOT NULL,
    friend_user_id integer NOT NULL
);
    DROP TABLE public.friendships;
       public         heap    postgres    false            �            1259    24721    Friendships_friendship_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Friendships_friendship_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public."Friendships_friendship_id_seq";
       public          postgres    false    217            Z           0    0    Friendships_friendship_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public."Friendships_friendship_id_seq" OWNED BY public.friendships.friendship_id;
          public          postgres    false    216            �            1259    24774    bird_photos    TABLE       CREATE TABLE public.bird_photos (
    photo_id integer NOT NULL,
    photo_url text NOT NULL,
    user_id integer NOT NULL,
    bird_id integer NOT NULL,
    location_lat double precision,
    location_lon double precision,
    date timestamp with time zone NOT NULL
);
    DROP TABLE public.bird_photos;
       public         heap    postgres    false            �            1259    24773    bird_photos_photo_id_seq    SEQUENCE     �   CREATE SEQUENCE public.bird_photos_photo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.bird_photos_photo_id_seq;
       public          postgres    false    223            [           0    0    bird_photos_photo_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.bird_photos_photo_id_seq OWNED BY public.bird_photos.photo_id;
          public          postgres    false    222            �            1259    24756 	   bird_user    TABLE     �   CREATE TABLE public.bird_user (
    b_u_id integer NOT NULL,
    bird_id integer NOT NULL,
    user_id integer NOT NULL,
    note text
);
    DROP TABLE public.bird_user;
       public         heap    postgres    false            �            1259    24755    bird_user_b_u_id_seq    SEQUENCE     �   CREATE SEQUENCE public.bird_user_b_u_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.bird_user_b_u_id_seq;
       public          postgres    false    219            \           0    0    bird_user_b_u_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.bird_user_b_u_id_seq OWNED BY public.bird_user.b_u_id;
          public          postgres    false    218            �            1259    24713    birds    TABLE     y   CREATE TABLE public.birds (
    bird_id integer NOT NULL,
    bird_common_name text NOT NULL,
    scentific_name text
);
    DROP TABLE public.birds;
       public         heap    postgres    false            �            1259    24712    birds_bird_id_seq    SEQUENCE     �   CREATE SEQUENCE public.birds_bird_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.birds_bird_id_seq;
       public          postgres    false    215            ]           0    0    birds_bird_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.birds_bird_id_seq OWNED BY public.birds.bird_id;
          public          postgres    false    214            �            1259    24792    conversations    TABLE     D   CREATE TABLE public.conversations (
    conv_id integer NOT NULL
);
 !   DROP TABLE public.conversations;
       public         heap    postgres    false            �            1259    24791    conversations_conv_id_seq    SEQUENCE     �   CREATE SEQUENCE public.conversations_conv_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.conversations_conv_id_seq;
       public          postgres    false    227            ^           0    0    conversations_conv_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.conversations_conv_id_seq OWNED BY public.conversations.conv_id;
          public          postgres    false    226            �            1259    24783    message    TABLE     �   CREATE TABLE public.message (
    message_id integer NOT NULL,
    message text NOT NULL,
    "timestamp" timestamp with time zone NOT NULL,
    sender_id integer NOT NULL,
    conversation_id integer NOT NULL
);
    DROP TABLE public.message;
       public         heap    postgres    false            �            1259    24782    message_message_id_seq    SEQUENCE     �   CREATE SEQUENCE public.message_message_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.message_message_id_seq;
       public          postgres    false    225            _           0    0    message_message_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.message_message_id_seq OWNED BY public.message.message_id;
          public          postgres    false    224            �            1259    24765    users    TABLE     �   CREATE TABLE public.users (
    user_id integer NOT NULL,
    first_name text NOT NULL,
    last_name text NOT NULL,
    username text NOT NULL,
    email text NOT NULL,
    profile_url text NOT NULL,
    user_location integer
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    24764    users_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.users_user_id_seq;
       public          postgres    false    221            `           0    0    users_user_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;
          public          postgres    false    220            �           2604    24777    bird_photos photo_id    DEFAULT     |   ALTER TABLE ONLY public.bird_photos ALTER COLUMN photo_id SET DEFAULT nextval('public.bird_photos_photo_id_seq'::regclass);
 C   ALTER TABLE public.bird_photos ALTER COLUMN photo_id DROP DEFAULT;
       public          postgres    false    223    222    223            �           2604    24759    bird_user b_u_id    DEFAULT     t   ALTER TABLE ONLY public.bird_user ALTER COLUMN b_u_id SET DEFAULT nextval('public.bird_user_b_u_id_seq'::regclass);
 ?   ALTER TABLE public.bird_user ALTER COLUMN b_u_id DROP DEFAULT;
       public          postgres    false    218    219    219            �           2604    24716    birds bird_id    DEFAULT     n   ALTER TABLE ONLY public.birds ALTER COLUMN bird_id SET DEFAULT nextval('public.birds_bird_id_seq'::regclass);
 <   ALTER TABLE public.birds ALTER COLUMN bird_id DROP DEFAULT;
       public          postgres    false    215    214    215            �           2604    24795    conversations conv_id    DEFAULT     ~   ALTER TABLE ONLY public.conversations ALTER COLUMN conv_id SET DEFAULT nextval('public.conversations_conv_id_seq'::regclass);
 D   ALTER TABLE public.conversations ALTER COLUMN conv_id DROP DEFAULT;
       public          postgres    false    226    227    227            �           2604    24725    friendships friendship_id    DEFAULT     �   ALTER TABLE ONLY public.friendships ALTER COLUMN friendship_id SET DEFAULT nextval('public."Friendships_friendship_id_seq"'::regclass);
 H   ALTER TABLE public.friendships ALTER COLUMN friendship_id DROP DEFAULT;
       public          postgres    false    217    216    217            �           2604    24786    message message_id    DEFAULT     x   ALTER TABLE ONLY public.message ALTER COLUMN message_id SET DEFAULT nextval('public.message_message_id_seq'::regclass);
 A   ALTER TABLE public.message ALTER COLUMN message_id DROP DEFAULT;
       public          postgres    false    224    225    225            �           2604    24768    users user_id    DEFAULT     n   ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);
 <   ALTER TABLE public.users ALTER COLUMN user_id DROP DEFAULT;
       public          postgres    false    220    221    221            O          0    24774    bird_photos 
   TABLE DATA           n   COPY public.bird_photos (photo_id, photo_url, user_id, bird_id, location_lat, location_lon, date) FROM stdin;
    public          postgres    false    223   �:       K          0    24756 	   bird_user 
   TABLE DATA           C   COPY public.bird_user (b_u_id, bird_id, user_id, note) FROM stdin;
    public          postgres    false    219   �:       G          0    24713    birds 
   TABLE DATA           J   COPY public.birds (bird_id, bird_common_name, scentific_name) FROM stdin;
    public          postgres    false    215   �:       S          0    24792    conversations 
   TABLE DATA           0   COPY public.conversations (conv_id) FROM stdin;
    public          postgres    false    227   *;       I          0    24722    friendships 
   TABLE DATA           W   COPY public.friendships (friendship_id, logged_in_user_id, friend_user_id) FROM stdin;
    public          postgres    false    217   G;       Q          0    24783    message 
   TABLE DATA           _   COPY public.message (message_id, message, "timestamp", sender_id, conversation_id) FROM stdin;
    public          postgres    false    225   d;       M          0    24765    users 
   TABLE DATA           l   COPY public.users (user_id, first_name, last_name, username, email, profile_url, user_location) FROM stdin;
    public          postgres    false    221   �;       a           0    0    Friendships_friendship_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public."Friendships_friendship_id_seq"', 1, false);
          public          postgres    false    216            b           0    0    bird_photos_photo_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.bird_photos_photo_id_seq', 1, false);
          public          postgres    false    222            c           0    0    bird_user_b_u_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.bird_user_b_u_id_seq', 1, false);
          public          postgres    false    218            d           0    0    birds_bird_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.birds_bird_id_seq', 1, true);
          public          postgres    false    214            e           0    0    conversations_conv_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.conversations_conv_id_seq', 1, false);
          public          postgres    false    226            f           0    0    message_message_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.message_message_id_seq', 1, false);
          public          postgres    false    224            g           0    0    users_user_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.users_user_id_seq', 1, false);
          public          postgres    false    220            �           2606    24727    friendships Friendships_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.friendships
    ADD CONSTRAINT "Friendships_pkey" PRIMARY KEY (friendship_id);
 H   ALTER TABLE ONLY public.friendships DROP CONSTRAINT "Friendships_pkey";
       public            postgres    false    217            �           2606    24781    bird_photos bird_photos_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.bird_photos
    ADD CONSTRAINT bird_photos_pkey PRIMARY KEY (photo_id);
 F   ALTER TABLE ONLY public.bird_photos DROP CONSTRAINT bird_photos_pkey;
       public            postgres    false    223            �           2606    24763    bird_user bird_user_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.bird_user
    ADD CONSTRAINT bird_user_pkey PRIMARY KEY (b_u_id);
 B   ALTER TABLE ONLY public.bird_user DROP CONSTRAINT bird_user_pkey;
       public            postgres    false    219            �           2606    24720    birds birds_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.birds
    ADD CONSTRAINT birds_pkey PRIMARY KEY (bird_id);
 :   ALTER TABLE ONLY public.birds DROP CONSTRAINT birds_pkey;
       public            postgres    false    215            �           2606    24797     conversations conversations_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.conversations
    ADD CONSTRAINT conversations_pkey PRIMARY KEY (conv_id);
 J   ALTER TABLE ONLY public.conversations DROP CONSTRAINT conversations_pkey;
       public            postgres    false    227            �           2606    24790    message message_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.message
    ADD CONSTRAINT message_pkey PRIMARY KEY (message_id);
 >   ALTER TABLE ONLY public.message DROP CONSTRAINT message_pkey;
       public            postgres    false    225            �           2606    24772    users users_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    221            O      x������ � �      K      x������ � �      G      x�3�L�)MU�J�������� 5��      S      x������ � �      I      x������ � �      Q      x������ � �      M      x������ � �     