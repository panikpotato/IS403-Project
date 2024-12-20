PGDMP      2            
    |            Haley_Esthetics    15.8    16.4                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16604    Haley_Esthetics    DATABASE     �   CREATE DATABASE "Haley_Esthetics" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
 !   DROP DATABASE "Haley_Esthetics";
                postgres    false            �            1259    16605    Login    TABLE     z   CREATE TABLE public."Login" (
    "UserName" character varying(50) NOT NULL,
    "Password" character varying NOT NULL
);
    DROP TABLE public."Login";
       public         heap    postgres    false            �            1259    16631    Review    TABLE     �   CREATE TABLE public."Review" (
    "ReviewID" bigint NOT NULL,
    "UserID" bigint NOT NULL,
    "Date" date NOT NULL,
    "Comment" character varying,
    "Rating" smallint NOT NULL
);
    DROP TABLE public."Review";
       public         heap    postgres    false            �            1259    16644    Review_ReviewID_seq    SEQUENCE     �   ALTER TABLE public."Review" ALTER COLUMN "ReviewID" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Review_ReviewID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    216            �            1259    16612    UserAccount    TABLE       CREATE TABLE public."UserAccount" (
    "UserID" bigint NOT NULL,
    "UserName" character varying NOT NULL,
    "FirstName" character varying NOT NULL,
    "LastName" character varying NOT NULL,
    "Phone" character varying,
    "Email" character varying NOT NULL
);
 !   DROP TABLE public."UserAccount";
       public         heap    postgres    false            �            1259    16643    UserAccount_UserID_seq    SEQUENCE     �   ALTER TABLE public."UserAccount" ALTER COLUMN "UserID" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."UserAccount_UserID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    215                      0    16605    Login 
   TABLE DATA           9   COPY public."Login" ("UserName", "Password") FROM stdin;
    public          postgres    false    214   Q                 0    16631    Review 
   TABLE DATA           U   COPY public."Review" ("ReviewID", "UserID", "Date", "Comment", "Rating") FROM stdin;
    public          postgres    false    216   �                 0    16612    UserAccount 
   TABLE DATA           h   COPY public."UserAccount" ("UserID", "UserName", "FirstName", "LastName", "Phone", "Email") FROM stdin;
    public          postgres    false    215   �                  0    0    Review_ReviewID_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."Review_ReviewID_seq"', 1, true);
          public          postgres    false    218                       0    0    UserAccount_UserID_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."UserAccount_UserID_seq"', 1, true);
          public          postgres    false    217            o           2606    16611    Login Login_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Login"
    ADD CONSTRAINT "Login_pkey" PRIMARY KEY ("UserName");
 >   ALTER TABLE ONLY public."Login" DROP CONSTRAINT "Login_pkey";
       public            postgres    false    214            s           2606    16637    Review Review_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public."Review"
    ADD CONSTRAINT "Review_pkey" PRIMARY KEY ("ReviewID");
 @   ALTER TABLE ONLY public."Review" DROP CONSTRAINT "Review_pkey";
       public            postgres    false    216            q           2606    16618    UserAccount UserAccount_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."UserAccount"
    ADD CONSTRAINT "UserAccount_pkey" PRIMARY KEY ("UserID");
 J   ALTER TABLE ONLY public."UserAccount" DROP CONSTRAINT "UserAccount_pkey";
       public            postgres    false    215            u           2606    16638    Review UserID    FK CONSTRAINT        ALTER TABLE ONLY public."Review"
    ADD CONSTRAINT "UserID" FOREIGN KEY ("UserID") REFERENCES public."UserAccount"("UserID");
 ;   ALTER TABLE ONLY public."Review" DROP CONSTRAINT "UserID";
       public          postgres    false    3185    216    215            t           2606    16619    UserAccount UserName    FK CONSTRAINT     �   ALTER TABLE ONLY public."UserAccount"
    ADD CONSTRAINT "UserName" FOREIGN KEY ("UserName") REFERENCES public."Login"("UserName");
 B   ALTER TABLE ONLY public."UserAccount" DROP CONSTRAINT "UserName";
       public          postgres    false    214    3183    215                  x�˪4���H,..�/J142����� Ux+         %   x�3�4�4202�54�54�t/JM,Q�4����� Qxl         6   x�3�̪4�����/�(M�L�K�4125245�4��H:$U�ꥦ�r��qqq ZN     