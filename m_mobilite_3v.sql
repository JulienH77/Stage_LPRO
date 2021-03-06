PGDMP     !    
                y        	   igeo_test    9.6.16    12.2 ?    ?"           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?"           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?"           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?"           1262    36989448 	   igeo_test    DATABASE     y   CREATE DATABASE igeo_test WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'fr_FR.utf8' LC_CTYPE = 'fr_FR.utf8';
    DROP DATABASE igeo_test;
             
   create_sig    false            ?"           0    0    DATABASE igeo_test    COMMENT     ?   COMMENT ON DATABASE igeo_test IS 'Base de test de l''information géographique du service IG de l''Agglomération de la Région de Compiègne';
                
   create_sig    false    8933            ?"           0    0    DATABASE igeo_test    ACL     |   REVOKE CONNECT,TEMPORARY ON DATABASE igeo_test FROM PUBLIC;
GRANT ALL ON DATABASE igeo_test TO sig_stage WITH GRANT OPTION;
                
   create_sig    false    8933            ?"           0    0 	   igeo_test    DATABASE PROPERTIES     K   ALTER DATABASE igeo_test SET search_path TO '$user', 'public', 'topology';
                  
   create_sig    false            #            2615    51779206    m_mobilite_3v    SCHEMA        CREATE SCHEMA m_mobilite_3v;
    DROP SCHEMA m_mobilite_3v;
             	   sig_stage    false            ?"           0    0    SCHEMA m_mobilite_3v    COMMENT     b   COMMENT ON SCHEMA m_mobilite_3v IS 'Données métiers sur le thème des aménagements cyclables';
                	   sig_stage    false    35            ?"           0    0    SCHEMA m_mobilite_3v    ACL     1   GRANT ALL ON SCHEMA m_mobilite_3v TO create_sig;
                	   sig_stage    false    35            i           1259    51784553    itinerairecy    TABLE     "  CREATE TABLE m_mobilite_3v.itinerairecy (
    id_iticy integer NOT NULL,
    nomoff character varying(50),
    libelle character varying(50),
    nom_loc character varying(50),
    depart character varying(50),
    arrivee character varying(50),
    estinscrit character varying(2),
    nvschema character varying(2),
    annee_ins bigint,
    siteweb character varying(50),
    annee_ouv bigint,
    observ character varying(254),
    orga_sai character varying(50),
    op_sai character varying(50),
    date_sai timestamp without time zone
);
 '   DROP TABLE m_mobilite_3v.itinerairecy;
       m_mobilite_3v         	   sig_stage    false    35            ?"           0    0    TABLE itinerairecy    ACL     >   GRANT SELECT ON TABLE m_mobilite_3v.itinerairecy TO sig_read;
          m_mobilite_3v       	   sig_stage    false    1641            T           1259    51784260    list_acces_ame    TABLE     v   CREATE TABLE m_mobilite_3v.list_acces_ame (
    "clé" character varying(2) NOT NULL,
    valeur character varying
);
 )   DROP TABLE m_mobilite_3v.list_acces_ame;
       m_mobilite_3v         	   sig_stage    false    35            ?"           0    0    TABLE list_acces_ame    ACL     @   GRANT SELECT ON TABLE m_mobilite_3v.list_acces_ame TO sig_read;
          m_mobilite_3v       	   sig_stage    false    1620            U           1259    51784268    list_ame    TABLE     p   CREATE TABLE m_mobilite_3v.list_ame (
    "clé" character varying(2) NOT NULL,
    valeur character varying
);
 #   DROP TABLE m_mobilite_3v.list_ame;
       m_mobilite_3v         	   sig_stage    false    35            ?"           0    0    TABLE list_ame    ACL     :   GRANT SELECT ON TABLE m_mobilite_3v.list_ame TO sig_read;
          m_mobilite_3v       	   sig_stage    false    1621            V           1259    51784276    list_amgt_pos    TABLE     u   CREATE TABLE m_mobilite_3v.list_amgt_pos (
    "clé" character varying(2) NOT NULL,
    valeur character varying
);
 (   DROP TABLE m_mobilite_3v.list_amgt_pos;
       m_mobilite_3v         	   sig_stage    false    35            ?"           0    0    TABLE list_amgt_pos    ACL     ?   GRANT SELECT ON TABLE m_mobilite_3v.list_amgt_pos TO sig_read;
          m_mobilite_3v       	   sig_stage    false    1622            W           1259    51784284    list_etat_mob    TABLE     u   CREATE TABLE m_mobilite_3v.list_etat_mob (
    "clé" character varying(2) NOT NULL,
    valeur character varying
);
 (   DROP TABLE m_mobilite_3v.list_etat_mob;
       m_mobilite_3v         	   sig_stage    false    35            ?"           0    0    TABLE list_etat_mob    ACL     ?   GRANT SELECT ON TABLE m_mobilite_3v.list_etat_mob TO sig_read;
          m_mobilite_3v       	   sig_stage    false    1623            X           1259    51784292    list_fauxbooleen    TABLE     x   CREATE TABLE m_mobilite_3v.list_fauxbooleen (
    "clé" character varying(2) NOT NULL,
    valeur character varying
);
 +   DROP TABLE m_mobilite_3v.list_fauxbooleen;
       m_mobilite_3v         	   sig_stage    false    35            ?"           0    0    TABLE list_fauxbooleen    ACL     B   GRANT SELECT ON TABLE m_mobilite_3v.list_fauxbooleen TO sig_read;
          m_mobilite_3v       	   sig_stage    false    1624            Y           1259    51784300 
   list_local    TABLE     r   CREATE TABLE m_mobilite_3v.list_local (
    "clé" character varying(2) NOT NULL,
    valeur character varying
);
 %   DROP TABLE m_mobilite_3v.list_local;
       m_mobilite_3v         	   sig_stage    false    35            ?"           0    0    TABLE list_local    ACL     <   GRANT SELECT ON TABLE m_mobilite_3v.list_local TO sig_read;
          m_mobilite_3v       	   sig_stage    false    1625            Z           1259    51784308    list_nvschema    TABLE     u   CREATE TABLE m_mobilite_3v.list_nvschema (
    "clé" character varying(2) NOT NULL,
    valeur character varying
);
 (   DROP TABLE m_mobilite_3v.list_nvschema;
       m_mobilite_3v         	   sig_stage    false    35            ?"           0    0    TABLE list_nvschema    ACL     ?   GRANT SELECT ON TABLE m_mobilite_3v.list_nvschema TO sig_read;
          m_mobilite_3v       	   sig_stage    false    1626            [           1259    51784316    list_precsion    TABLE     u   CREATE TABLE m_mobilite_3v.list_precsion (
    "clé" character varying(2) NOT NULL,
    valeur character varying
);
 (   DROP TABLE m_mobilite_3v.list_precsion;
       m_mobilite_3v         	   sig_stage    false    35            ?"           0    0    TABLE list_precsion    ACL     ?   GRANT SELECT ON TABLE m_mobilite_3v.list_precsion TO sig_read;
          m_mobilite_3v       	   sig_stage    false    1627            \           1259    51784324    list_proprio_gestio    TABLE     {   CREATE TABLE m_mobilite_3v.list_proprio_gestio (
    "clé" character varying(2) NOT NULL,
    valeur character varying
);
 .   DROP TABLE m_mobilite_3v.list_proprio_gestio;
       m_mobilite_3v         	   sig_stage    false    35            ?"           0    0    TABLE list_proprio_gestio    ACL     E   GRANT SELECT ON TABLE m_mobilite_3v.list_proprio_gestio TO sig_read;
          m_mobilite_3v       	   sig_stage    false    1628            ]           1259    51784332    list_regime    TABLE     s   CREATE TABLE m_mobilite_3v.list_regime (
    "clé" character varying(2) NOT NULL,
    valeur character varying
);
 &   DROP TABLE m_mobilite_3v.list_regime;
       m_mobilite_3v         	   sig_stage    false    35            ?"           0    0    TABLE list_regime    ACL     =   GRANT SELECT ON TABLE m_mobilite_3v.list_regime TO sig_read;
          m_mobilite_3v       	   sig_stage    false    1629            ^           1259    51784340    list_reseau_loc    TABLE     w   CREATE TABLE m_mobilite_3v.list_reseau_loc (
    "clé" character varying(2) NOT NULL,
    valeur character varying
);
 *   DROP TABLE m_mobilite_3v.list_reseau_loc;
       m_mobilite_3v         	   sig_stage    false    35            ?"           0    0    TABLE list_reseau_loc    ACL     A   GRANT SELECT ON TABLE m_mobilite_3v.list_reseau_loc TO sig_read;
          m_mobilite_3v       	   sig_stage    false    1630            _           1259    51784348    list_revetement    TABLE     w   CREATE TABLE m_mobilite_3v.list_revetement (
    "clé" character varying(2) NOT NULL,
    valeur character varying
);
 *   DROP TABLE m_mobilite_3v.list_revetement;
       m_mobilite_3v         	   sig_stage    false    35            ?"           0    0    TABLE list_revetement    ACL     A   GRANT SELECT ON TABLE m_mobilite_3v.list_revetement TO sig_read;
          m_mobilite_3v       	   sig_stage    false    1631            `           1259    51784356 	   list_sens    TABLE     q   CREATE TABLE m_mobilite_3v.list_sens (
    "clé" character varying(2) NOT NULL,
    valeur character varying
);
 $   DROP TABLE m_mobilite_3v.list_sens;
       m_mobilite_3v         	   sig_stage    false    35            ?"           0    0    TABLE list_sens    ACL     ;   GRANT SELECT ON TABLE m_mobilite_3v.list_sens TO sig_read;
          m_mobilite_3v       	   sig_stage    false    1632            a           1259    51784364    list_statut    TABLE     s   CREATE TABLE m_mobilite_3v.list_statut (
    "clé" character varying(2) NOT NULL,
    valeur character varying
);
 &   DROP TABLE m_mobilite_3v.list_statut;
       m_mobilite_3v         	   sig_stage    false    35            ?"           0    0    TABLE list_statut    ACL     =   GRANT SELECT ON TABLE m_mobilite_3v.list_statut TO sig_read;
          m_mobilite_3v       	   sig_stage    false    1633            c           1259    51784380    list_type_equip    TABLE     w   CREATE TABLE m_mobilite_3v.list_type_equip (
    "clé" character varying(2) NOT NULL,
    valeur character varying
);
 *   DROP TABLE m_mobilite_3v.list_type_equip;
       m_mobilite_3v         	   sig_stage    false    35            ?"           0    0    TABLE list_type_equip    ACL     A   GRANT SELECT ON TABLE m_mobilite_3v.list_type_equip TO sig_read;
          m_mobilite_3v       	   sig_stage    false    1635            d           1259    51784388    list_type_noeud    TABLE     w   CREATE TABLE m_mobilite_3v.list_type_noeud (
    "clé" character varying(2) NOT NULL,
    valeur character varying
);
 *   DROP TABLE m_mobilite_3v.list_type_noeud;
       m_mobilite_3v         	   sig_stage    false    35            ?"           0    0    TABLE list_type_noeud    ACL     A   GRANT SELECT ON TABLE m_mobilite_3v.list_type_noeud TO sig_read;
          m_mobilite_3v       	   sig_stage    false    1636            b           1259    51784372    list_typeaccro    TABLE     v   CREATE TABLE m_mobilite_3v.list_typeaccro (
    "clé" character varying(2) NOT NULL,
    valeur character varying
);
 )   DROP TABLE m_mobilite_3v.list_typeaccro;
       m_mobilite_3v         	   sig_stage    false    35            ?"           0    0    TABLE list_typeaccro    ACL     @   GRANT SELECT ON TABLE m_mobilite_3v.list_typeaccro TO sig_read;
          m_mobilite_3v       	   sig_stage    false    1634            e           1259    51784396    list_typeserv    TABLE     u   CREATE TABLE m_mobilite_3v.list_typeserv (
    "clé" character varying(2) NOT NULL,
    valeur character varying
);
 (   DROP TABLE m_mobilite_3v.list_typeserv;
       m_mobilite_3v         	   sig_stage    false    35            ?"           0    0    TABLE list_typeserv    ACL     ?   GRANT SELECT ON TABLE m_mobilite_3v.list_typeserv TO sig_read;
          m_mobilite_3v       	   sig_stage    false    1637            f           1259    51784404    list_typevelo    TABLE     u   CREATE TABLE m_mobilite_3v.list_typevelo (
    "clé" character varying(2) NOT NULL,
    valeur character varying
);
 (   DROP TABLE m_mobilite_3v.list_typevelo;
       m_mobilite_3v         	   sig_stage    false    35            ?"           0    0    TABLE list_typevelo    ACL     ?   GRANT SELECT ON TABLE m_mobilite_3v.list_typevelo TO sig_read;
          m_mobilite_3v       	   sig_stage    false    1638            k           1259    51818599    noeuds    TABLE     ?   CREATE TABLE m_mobilite_3v.noeuds (
    id_nd integer NOT NULL,
    typenoeud character varying(2),
    libelle character varying(50),
    numeroserie integer,
    geom public.geometry(Point,2154)
);
 !   DROP TABLE m_mobilite_3v.noeuds;
       m_mobilite_3v         	   sig_stage    false    35            ?"           0    0    TABLE noeuds    ACL     8   GRANT SELECT ON TABLE m_mobilite_3v.noeuds TO sig_read;
          m_mobilite_3v       	   sig_stage    false    1643            g           1259    51784412 	   segmentcy    TABLE     ?  CREATE TABLE m_mobilite_3v.segmentcy (
    id_segcy bigint NOT NULL,
    id_on3v character varying(30),
    revetement character varying(2),
    annee_ouv bigint,
    qualitegeo character varying(2),
    geofictive character varying(2),
    amgt_pos character varying(2),
    op_sai character varying(50),
    orga_sai character varying(50),
    date_maj timestamp without time zone,
    id_osm integer,
    reseau_loc character varying(2),
    nom_loc character varying(50),
    num_iti character varying(20),
    d_service bigint,
    acces_ame character varying(2),
    trafic_vit integer,
    lumiere character varying(2),
    observ character varying(254),
    project_c character varying(50),
    ref_geo character varying(50),
    code_com_d character varying(10),
    ame_d character varying(2),
    statut_d character varying(2),
    regime_d character varying(2),
    sens_d character varying(2),
    largeur_d real,
    local_d character varying(2),
    code_com_g character varying(10),
    ame_g character varying(2),
    statut_g character varying(2),
    regime_g character varying(2),
    sens_g character varying(2),
    largeur_g real,
    local_g character varying(2),
    geom public.geometry(LineString,2154)
);
 $   DROP TABLE m_mobilite_3v.segmentcy;
       m_mobilite_3v         	   sig_stage    false    35             #           0    0    TABLE segmentcy    ACL     ;   GRANT SELECT ON TABLE m_mobilite_3v.segmentcy TO sig_read;
          m_mobilite_3v       	   sig_stage    false    1639            j           1259    51784571    services    TABLE     <  CREATE TABLE m_mobilite_3v.services (
    id_serv integer NOT NULL,
    typeserv character varying(2),
    etat character varying(2) NOT NULL,
    nombre integer,
    ouvert character varying(2),
    nvelolocd bigint,
    nvelolocci bigint,
    observ character varying(254),
    geom public.geometry(Point,2154)
);
 #   DROP TABLE m_mobilite_3v.services;
       m_mobilite_3v         	   sig_stage    false    35            #           0    0    TABLE services    ACL     :   GRANT SELECT ON TABLE m_mobilite_3v.services TO sig_read;
          m_mobilite_3v       	   sig_stage    false    1642            h           1259    51784505    stationnementcy    TABLE     ?  CREATE TABLE m_mobilite_3v.stationnementcy (
    id_sta integer NOT NULL,
    id_local character varying(20),
    adresse character varying(100),
    complt_adr character varying(100),
    type_accro character varying(2),
    typevelo character varying(2),
    an_pose bigint,
    capacite character varying(10),
    couvert character varying(2),
    payant character varying(2),
    statut character varying(2),
    fictif character varying(2),
    precsion character varying(2),
    etat_mob character varying(2),
    ouvert character varying(2),
    securise character varying(2),
    gardien character varying(2),
    acceslib character varying(2),
    proprio character varying(2),
    gestio character varying(2),
    image character varying(50),
    orga_sai character varying(50),
    op_sai character varying(50),
    date_maj timestamp without time zone,
    observ character varying(254),
    long real,
    lat real,
    x real,
    y real,
    geom public.geometry(Point,2154)
);
 *   DROP TABLE m_mobilite_3v.stationnementcy;
       m_mobilite_3v         	   sig_stage    false    35            #           0    0    TABLE stationnementcy    ACL     A   GRANT SELECT ON TABLE m_mobilite_3v.stationnementcy TO sig_read;
          m_mobilite_3v       	   sig_stage    false    1640            ?"          0    51784553    itinerairecy 
   TABLE DATA           ?   COPY m_mobilite_3v.itinerairecy (id_iticy, nomoff, libelle, nom_loc, depart, arrivee, estinscrit, nvschema, annee_ins, siteweb, annee_ouv, observ, orga_sai, op_sai, date_sai) FROM stdin;
    m_mobilite_3v       	   sig_stage    false    1641   ??       ?"          0    51784260    list_acces_ame 
   TABLE DATA           ?   COPY m_mobilite_3v.list_acces_ame ("clé", valeur) FROM stdin;
    m_mobilite_3v       	   sig_stage    false    1620   ??       ?"          0    51784268    list_ame 
   TABLE DATA           9   COPY m_mobilite_3v.list_ame ("clé", valeur) FROM stdin;
    m_mobilite_3v       	   sig_stage    false    1621    ?       ?"          0    51784276    list_amgt_pos 
   TABLE DATA           >   COPY m_mobilite_3v.list_amgt_pos ("clé", valeur) FROM stdin;
    m_mobilite_3v       	   sig_stage    false    1622   *?       ?"          0    51784284    list_etat_mob 
   TABLE DATA           >   COPY m_mobilite_3v.list_etat_mob ("clé", valeur) FROM stdin;
    m_mobilite_3v       	   sig_stage    false    1623   ??       ?"          0    51784292    list_fauxbooleen 
   TABLE DATA           A   COPY m_mobilite_3v.list_fauxbooleen ("clé", valeur) FROM stdin;
    m_mobilite_3v       	   sig_stage    false    1624   ݮ       ?"          0    51784300 
   list_local 
   TABLE DATA           ;   COPY m_mobilite_3v.list_local ("clé", valeur) FROM stdin;
    m_mobilite_3v       	   sig_stage    false    1625   '?       ?"          0    51784308    list_nvschema 
   TABLE DATA           >   COPY m_mobilite_3v.list_nvschema ("clé", valeur) FROM stdin;
    m_mobilite_3v       	   sig_stage    false    1626   ??       ?"          0    51784316    list_precsion 
   TABLE DATA           >   COPY m_mobilite_3v.list_precsion ("clé", valeur) FROM stdin;
    m_mobilite_3v       	   sig_stage    false    1627   ?       ?"          0    51784324    list_proprio_gestio 
   TABLE DATA           D   COPY m_mobilite_3v.list_proprio_gestio ("clé", valeur) FROM stdin;
    m_mobilite_3v       	   sig_stage    false    1628   o?       ?"          0    51784332    list_regime 
   TABLE DATA           <   COPY m_mobilite_3v.list_regime ("clé", valeur) FROM stdin;
    m_mobilite_3v       	   sig_stage    false    1629   ߰       ?"          0    51784340    list_reseau_loc 
   TABLE DATA           @   COPY m_mobilite_3v.list_reseau_loc ("clé", valeur) FROM stdin;
    m_mobilite_3v       	   sig_stage    false    1630   a?       ?"          0    51784348    list_revetement 
   TABLE DATA           @   COPY m_mobilite_3v.list_revetement ("clé", valeur) FROM stdin;
    m_mobilite_3v       	   sig_stage    false    1631   ??       ?"          0    51784356 	   list_sens 
   TABLE DATA           :   COPY m_mobilite_3v.list_sens ("clé", valeur) FROM stdin;
    m_mobilite_3v       	   sig_stage    false    1632   0?       ?"          0    51784364    list_statut 
   TABLE DATA           <   COPY m_mobilite_3v.list_statut ("clé", valeur) FROM stdin;
    m_mobilite_3v       	   sig_stage    false    1633   ??       ?"          0    51784380    list_type_equip 
   TABLE DATA           @   COPY m_mobilite_3v.list_type_equip ("clé", valeur) FROM stdin;
    m_mobilite_3v       	   sig_stage    false    1635   ??       ?"          0    51784388    list_type_noeud 
   TABLE DATA           @   COPY m_mobilite_3v.list_type_noeud ("clé", valeur) FROM stdin;
    m_mobilite_3v       	   sig_stage    false    1636   ??       ?"          0    51784372    list_typeaccro 
   TABLE DATA           ?   COPY m_mobilite_3v.list_typeaccro ("clé", valeur) FROM stdin;
    m_mobilite_3v       	   sig_stage    false    1634   b?       ?"          0    51784396    list_typeserv 
   TABLE DATA           >   COPY m_mobilite_3v.list_typeserv ("clé", valeur) FROM stdin;
    m_mobilite_3v       	   sig_stage    false    1637   ô       ?"          0    51784404    list_typevelo 
   TABLE DATA           >   COPY m_mobilite_3v.list_typevelo ("clé", valeur) FROM stdin;
    m_mobilite_3v       	   sig_stage    false    1638   s?       ?"          0    51818599    noeuds 
   TABLE DATA           U   COPY m_mobilite_3v.noeuds (id_nd, typenoeud, libelle, numeroserie, geom) FROM stdin;
    m_mobilite_3v       	   sig_stage    false    1643   ??       ?"          0    51784412 	   segmentcy 
   TABLE DATA           ?  COPY m_mobilite_3v.segmentcy (id_segcy, id_on3v, revetement, annee_ouv, qualitegeo, geofictive, amgt_pos, op_sai, orga_sai, date_maj, id_osm, reseau_loc, nom_loc, num_iti, d_service, acces_ame, trafic_vit, lumiere, observ, project_c, ref_geo, code_com_d, ame_d, statut_d, regime_d, sens_d, largeur_d, local_d, code_com_g, ame_g, statut_g, regime_g, sens_g, largeur_g, local_g, geom) FROM stdin;
    m_mobilite_3v       	   sig_stage    false    1639   V?       ?"          0    51784571    services 
   TABLE DATA           w   COPY m_mobilite_3v.services (id_serv, typeserv, etat, nombre, ouvert, nvelolocd, nvelolocci, observ, geom) FROM stdin;
    m_mobilite_3v       	   sig_stage    false    1642   ?       ?"          0    51784505    stationnementcy 
   TABLE DATA           -  COPY m_mobilite_3v.stationnementcy (id_sta, id_local, adresse, complt_adr, type_accro, typevelo, an_pose, capacite, couvert, payant, statut, fictif, precsion, etat_mob, ouvert, securise, gardien, acceslib, proprio, gestio, image, orga_sai, op_sai, date_maj, observ, long, lat, x, y, geom) FROM stdin;
    m_mobilite_3v       	   sig_stage    false    1640   ??       7!           2606    51784267    list_acces_ame clé_acces_ame 
   CONSTRAINT     h   ALTER TABLE ONLY m_mobilite_3v.list_acces_ame
    ADD CONSTRAINT "clé_acces_ame" PRIMARY KEY ("clé");
 P   ALTER TABLE ONLY m_mobilite_3v.list_acces_ame DROP CONSTRAINT "clé_acces_ame";
       m_mobilite_3v         	   sig_stage    false    1620            9!           2606    51784275    list_ame clé_ame 
   CONSTRAINT     \   ALTER TABLE ONLY m_mobilite_3v.list_ame
    ADD CONSTRAINT "clé_ame" PRIMARY KEY ("clé");
 D   ALTER TABLE ONLY m_mobilite_3v.list_ame DROP CONSTRAINT "clé_ame";
       m_mobilite_3v         	   sig_stage    false    1621            ;!           2606    51784283    list_amgt_pos clé_amgt_pos 
   CONSTRAINT     f   ALTER TABLE ONLY m_mobilite_3v.list_amgt_pos
    ADD CONSTRAINT "clé_amgt_pos" PRIMARY KEY ("clé");
 N   ALTER TABLE ONLY m_mobilite_3v.list_amgt_pos DROP CONSTRAINT "clé_amgt_pos";
       m_mobilite_3v         	   sig_stage    false    1622            =!           2606    51784291    list_etat_mob clé_etat 
   CONSTRAINT     b   ALTER TABLE ONLY m_mobilite_3v.list_etat_mob
    ADD CONSTRAINT "clé_etat" PRIMARY KEY ("clé");
 J   ALTER TABLE ONLY m_mobilite_3v.list_etat_mob DROP CONSTRAINT "clé_etat";
       m_mobilite_3v         	   sig_stage    false    1623            ?!           2606    51784299 !   list_fauxbooleen clé_fauxbooleen 
   CONSTRAINT     l   ALTER TABLE ONLY m_mobilite_3v.list_fauxbooleen
    ADD CONSTRAINT "clé_fauxbooleen" PRIMARY KEY ("clé");
 T   ALTER TABLE ONLY m_mobilite_3v.list_fauxbooleen DROP CONSTRAINT "clé_fauxbooleen";
       m_mobilite_3v         	   sig_stage    false    1624            A!           2606    51784307    list_local clé_local 
   CONSTRAINT     `   ALTER TABLE ONLY m_mobilite_3v.list_local
    ADD CONSTRAINT "clé_local" PRIMARY KEY ("clé");
 H   ALTER TABLE ONLY m_mobilite_3v.list_local DROP CONSTRAINT "clé_local";
       m_mobilite_3v         	   sig_stage    false    1625            C!           2606    51784315    list_nvschema clé_nvschema 
   CONSTRAINT     f   ALTER TABLE ONLY m_mobilite_3v.list_nvschema
    ADD CONSTRAINT "clé_nvschema" PRIMARY KEY ("clé");
 N   ALTER TABLE ONLY m_mobilite_3v.list_nvschema DROP CONSTRAINT "clé_nvschema";
       m_mobilite_3v         	   sig_stage    false    1626            E!           2606    51784323    list_precsion clé_precsion 
   CONSTRAINT     f   ALTER TABLE ONLY m_mobilite_3v.list_precsion
    ADD CONSTRAINT "clé_precsion" PRIMARY KEY ("clé");
 N   ALTER TABLE ONLY m_mobilite_3v.list_precsion DROP CONSTRAINT "clé_precsion";
       m_mobilite_3v         	   sig_stage    false    1627            G!           2606    51784331 '   list_proprio_gestio clé_proprio_gestio 
   CONSTRAINT     r   ALTER TABLE ONLY m_mobilite_3v.list_proprio_gestio
    ADD CONSTRAINT "clé_proprio_gestio" PRIMARY KEY ("clé");
 Z   ALTER TABLE ONLY m_mobilite_3v.list_proprio_gestio DROP CONSTRAINT "clé_proprio_gestio";
       m_mobilite_3v         	   sig_stage    false    1628            I!           2606    51784339    list_regime clé_regime 
   CONSTRAINT     b   ALTER TABLE ONLY m_mobilite_3v.list_regime
    ADD CONSTRAINT "clé_regime" PRIMARY KEY ("clé");
 J   ALTER TABLE ONLY m_mobilite_3v.list_regime DROP CONSTRAINT "clé_regime";
       m_mobilite_3v         	   sig_stage    false    1629            K!           2606    51784347    list_reseau_loc clé_reseau_loc 
   CONSTRAINT     j   ALTER TABLE ONLY m_mobilite_3v.list_reseau_loc
    ADD CONSTRAINT "clé_reseau_loc" PRIMARY KEY ("clé");
 R   ALTER TABLE ONLY m_mobilite_3v.list_reseau_loc DROP CONSTRAINT "clé_reseau_loc";
       m_mobilite_3v         	   sig_stage    false    1630            M!           2606    51784355    list_revetement clé_revetement 
   CONSTRAINT     j   ALTER TABLE ONLY m_mobilite_3v.list_revetement
    ADD CONSTRAINT "clé_revetement" PRIMARY KEY ("clé");
 R   ALTER TABLE ONLY m_mobilite_3v.list_revetement DROP CONSTRAINT "clé_revetement";
       m_mobilite_3v         	   sig_stage    false    1631            O!           2606    51784363    list_sens clé_sens 
   CONSTRAINT     ^   ALTER TABLE ONLY m_mobilite_3v.list_sens
    ADD CONSTRAINT "clé_sens" PRIMARY KEY ("clé");
 F   ALTER TABLE ONLY m_mobilite_3v.list_sens DROP CONSTRAINT "clé_sens";
       m_mobilite_3v         	   sig_stage    false    1632            Q!           2606    51784371    list_statut clé_statut 
   CONSTRAINT     b   ALTER TABLE ONLY m_mobilite_3v.list_statut
    ADD CONSTRAINT "clé_statut" PRIMARY KEY ("clé");
 J   ALTER TABLE ONLY m_mobilite_3v.list_statut DROP CONSTRAINT "clé_statut";
       m_mobilite_3v         	   sig_stage    false    1633            S!           2606    51784379    list_typeaccro clé_typeaccro 
   CONSTRAINT     h   ALTER TABLE ONLY m_mobilite_3v.list_typeaccro
    ADD CONSTRAINT "clé_typeaccro" PRIMARY KEY ("clé");
 P   ALTER TABLE ONLY m_mobilite_3v.list_typeaccro DROP CONSTRAINT "clé_typeaccro";
       m_mobilite_3v         	   sig_stage    false    1634            U!           2606    51784387    list_type_equip clé_typeequip 
   CONSTRAINT     i   ALTER TABLE ONLY m_mobilite_3v.list_type_equip
    ADD CONSTRAINT "clé_typeequip" PRIMARY KEY ("clé");
 Q   ALTER TABLE ONLY m_mobilite_3v.list_type_equip DROP CONSTRAINT "clé_typeequip";
       m_mobilite_3v         	   sig_stage    false    1635            W!           2606    51784395    list_type_noeud clé_typenoeud 
   CONSTRAINT     i   ALTER TABLE ONLY m_mobilite_3v.list_type_noeud
    ADD CONSTRAINT "clé_typenoeud" PRIMARY KEY ("clé");
 Q   ALTER TABLE ONLY m_mobilite_3v.list_type_noeud DROP CONSTRAINT "clé_typenoeud";
       m_mobilite_3v         	   sig_stage    false    1636            Y!           2606    51784403    list_typeserv clé_typeserv 
   CONSTRAINT     f   ALTER TABLE ONLY m_mobilite_3v.list_typeserv
    ADD CONSTRAINT "clé_typeserv" PRIMARY KEY ("clé");
 N   ALTER TABLE ONLY m_mobilite_3v.list_typeserv DROP CONSTRAINT "clé_typeserv";
       m_mobilite_3v         	   sig_stage    false    1637            [!           2606    51784411    list_typevelo clé_typevelo 
   CONSTRAINT     f   ALTER TABLE ONLY m_mobilite_3v.list_typevelo
    ADD CONSTRAINT "clé_typevelo" PRIMARY KEY ("clé");
 N   ALTER TABLE ONLY m_mobilite_3v.list_typevelo DROP CONSTRAINT "clé_typevelo";
       m_mobilite_3v         	   sig_stage    false    1638            a!           2606    51784560    itinerairecy id_iticy 
   CONSTRAINT     `   ALTER TABLE ONLY m_mobilite_3v.itinerairecy
    ADD CONSTRAINT id_iticy PRIMARY KEY (id_iticy);
 F   ALTER TABLE ONLY m_mobilite_3v.itinerairecy DROP CONSTRAINT id_iticy;
       m_mobilite_3v         	   sig_stage    false    1641            e!           2606    51818603    noeuds id_nd 
   CONSTRAINT     T   ALTER TABLE ONLY m_mobilite_3v.noeuds
    ADD CONSTRAINT id_nd PRIMARY KEY (id_nd);
 =   ALTER TABLE ONLY m_mobilite_3v.noeuds DROP CONSTRAINT id_nd;
       m_mobilite_3v         	   sig_stage    false    1643            ]!           2606    51784419    segmentcy id_segcy 
   CONSTRAINT     ]   ALTER TABLE ONLY m_mobilite_3v.segmentcy
    ADD CONSTRAINT id_segcy PRIMARY KEY (id_segcy);
 C   ALTER TABLE ONLY m_mobilite_3v.segmentcy DROP CONSTRAINT id_segcy;
       m_mobilite_3v         	   sig_stage    false    1639            c!           2606    51784578    services id_serv 
   CONSTRAINT     Z   ALTER TABLE ONLY m_mobilite_3v.services
    ADD CONSTRAINT id_serv PRIMARY KEY (id_serv);
 A   ALTER TABLE ONLY m_mobilite_3v.services DROP CONSTRAINT id_serv;
       m_mobilite_3v         	   sig_stage    false    1642            _!           2606    51784512    stationnementcy id_sta 
   CONSTRAINT     _   ALTER TABLE ONLY m_mobilite_3v.stationnementcy
    ADD CONSTRAINT id_sta PRIMARY KEY (id_sta);
 G   ALTER TABLE ONLY m_mobilite_3v.stationnementcy DROP CONSTRAINT id_sta;
       m_mobilite_3v         	   sig_stage    false    1640            k!           2606    51784445    segmentcy acces_ame    FK CONSTRAINT     ?   ALTER TABLE ONLY m_mobilite_3v.segmentcy
    ADD CONSTRAINT acces_ame FOREIGN KEY (acces_ame) REFERENCES m_mobilite_3v.list_acces_ame("clé");
 D   ALTER TABLE ONLY m_mobilite_3v.segmentcy DROP CONSTRAINT acces_ame;
       m_mobilite_3v       	   sig_stage    false    1639    8503    1620            m!           2606    51784455    segmentcy ame_d    FK CONSTRAINT     ?   ALTER TABLE ONLY m_mobilite_3v.segmentcy
    ADD CONSTRAINT ame_d FOREIGN KEY (ame_d) REFERENCES m_mobilite_3v.list_ame("clé");
 @   ALTER TABLE ONLY m_mobilite_3v.segmentcy DROP CONSTRAINT ame_d;
       m_mobilite_3v       	   sig_stage    false    1621    1639    8505            n!           2606    51784460    segmentcy ame_g    FK CONSTRAINT     ?   ALTER TABLE ONLY m_mobilite_3v.segmentcy
    ADD CONSTRAINT ame_g FOREIGN KEY (ame_g) REFERENCES m_mobilite_3v.list_ame("clé");
 @   ALTER TABLE ONLY m_mobilite_3v.segmentcy DROP CONSTRAINT ame_g;
       m_mobilite_3v       	   sig_stage    false    8505    1621    1639            i!           2606    51784435    segmentcy amgt_pos    FK CONSTRAINT     ?   ALTER TABLE ONLY m_mobilite_3v.segmentcy
    ADD CONSTRAINT amgt_pos FOREIGN KEY (amgt_pos) REFERENCES m_mobilite_3v.list_amgt_pos("clé");
 C   ALTER TABLE ONLY m_mobilite_3v.segmentcy DROP CONSTRAINT amgt_pos;
       m_mobilite_3v       	   sig_stage    false    8507    1622    1639            w!           2606    51784513    stationnementcy couvert    FK CONSTRAINT     ?   ALTER TABLE ONLY m_mobilite_3v.stationnementcy
    ADD CONSTRAINT couvert FOREIGN KEY (couvert) REFERENCES m_mobilite_3v.list_fauxbooleen("clé");
 H   ALTER TABLE ONLY m_mobilite_3v.stationnementcy DROP CONSTRAINT couvert;
       m_mobilite_3v       	   sig_stage    false    1640    1624    8511            ?!           2606    51784566    itinerairecy estinscrit    FK CONSTRAINT     ?   ALTER TABLE ONLY m_mobilite_3v.itinerairecy
    ADD CONSTRAINT estinscrit FOREIGN KEY (estinscrit) REFERENCES m_mobilite_3v.list_fauxbooleen("clé");
 H   ALTER TABLE ONLY m_mobilite_3v.itinerairecy DROP CONSTRAINT estinscrit;
       m_mobilite_3v       	   sig_stage    false    1624    1641    8511            ?!           2606    51784584    services etat    FK CONSTRAINT     ?   ALTER TABLE ONLY m_mobilite_3v.services
    ADD CONSTRAINT etat FOREIGN KEY (etat) REFERENCES m_mobilite_3v.list_etat_mob("clé");
 >   ALTER TABLE ONLY m_mobilite_3v.services DROP CONSTRAINT etat;
       m_mobilite_3v       	   sig_stage    false    1623    1642    8509            {!           2606    51784533    stationnementcy etat_mob    FK CONSTRAINT     ?   ALTER TABLE ONLY m_mobilite_3v.stationnementcy
    ADD CONSTRAINT etat_mob FOREIGN KEY (etat_mob) REFERENCES m_mobilite_3v.list_etat_mob("clé");
 I   ALTER TABLE ONLY m_mobilite_3v.stationnementcy DROP CONSTRAINT etat_mob;
       m_mobilite_3v       	   sig_stage    false    1640    8509    1623            y!           2606    51784523    stationnementcy fictif    FK CONSTRAINT     ?   ALTER TABLE ONLY m_mobilite_3v.stationnementcy
    ADD CONSTRAINT fictif FOREIGN KEY (fictif) REFERENCES m_mobilite_3v.list_fauxbooleen("clé");
 G   ALTER TABLE ONLY m_mobilite_3v.stationnementcy DROP CONSTRAINT fictif;
       m_mobilite_3v       	   sig_stage    false    1640    1624    8511            h!           2606    51784430    segmentcy geofictive    FK CONSTRAINT     ?   ALTER TABLE ONLY m_mobilite_3v.segmentcy
    ADD CONSTRAINT geofictive FOREIGN KEY (geofictive) REFERENCES m_mobilite_3v.list_fauxbooleen("clé");
 E   ALTER TABLE ONLY m_mobilite_3v.segmentcy DROP CONSTRAINT geofictive;
       m_mobilite_3v       	   sig_stage    false    1624    1639    8511            u!           2606    51784495    segmentcy local_d    FK CONSTRAINT     ?   ALTER TABLE ONLY m_mobilite_3v.segmentcy
    ADD CONSTRAINT local_d FOREIGN KEY (local_d) REFERENCES m_mobilite_3v.list_local("clé");
 B   ALTER TABLE ONLY m_mobilite_3v.segmentcy DROP CONSTRAINT local_d;
       m_mobilite_3v       	   sig_stage    false    8513    1625    1639            v!           2606    51784500    segmentcy local_g    FK CONSTRAINT     ?   ALTER TABLE ONLY m_mobilite_3v.segmentcy
    ADD CONSTRAINT local_g FOREIGN KEY (local_g) REFERENCES m_mobilite_3v.list_local("clé");
 B   ALTER TABLE ONLY m_mobilite_3v.segmentcy DROP CONSTRAINT local_g;
       m_mobilite_3v       	   sig_stage    false    1639    8513    1625            l!           2606    51784450    segmentcy lumiere    FK CONSTRAINT     ?   ALTER TABLE ONLY m_mobilite_3v.segmentcy
    ADD CONSTRAINT lumiere FOREIGN KEY (lumiere) REFERENCES m_mobilite_3v.list_fauxbooleen("clé");
 B   ALTER TABLE ONLY m_mobilite_3v.segmentcy DROP CONSTRAINT lumiere;
       m_mobilite_3v       	   sig_stage    false    1639    1624    8511            !           2606    51784561    itinerairecy nvschema    FK CONSTRAINT     ?   ALTER TABLE ONLY m_mobilite_3v.itinerairecy
    ADD CONSTRAINT nvschema FOREIGN KEY (nvschema) REFERENCES m_mobilite_3v.list_nvschema("clé");
 F   ALTER TABLE ONLY m_mobilite_3v.itinerairecy DROP CONSTRAINT nvschema;
       m_mobilite_3v       	   sig_stage    false    8515    1626    1641            z!           2606    51784528    stationnementcy ouvert    FK CONSTRAINT     ?   ALTER TABLE ONLY m_mobilite_3v.stationnementcy
    ADD CONSTRAINT ouvert FOREIGN KEY (ouvert) REFERENCES m_mobilite_3v.list_fauxbooleen("clé");
 G   ALTER TABLE ONLY m_mobilite_3v.stationnementcy DROP CONSTRAINT ouvert;
       m_mobilite_3v       	   sig_stage    false    1640    8511    1624            ?!           2606    51784589    services ouvert    FK CONSTRAINT     ?   ALTER TABLE ONLY m_mobilite_3v.services
    ADD CONSTRAINT ouvert FOREIGN KEY (ouvert) REFERENCES m_mobilite_3v.list_fauxbooleen("clé");
 @   ALTER TABLE ONLY m_mobilite_3v.services DROP CONSTRAINT ouvert;
       m_mobilite_3v       	   sig_stage    false    8511    1624    1642            x!           2606    51784518    stationnementcy payant    FK CONSTRAINT     ?   ALTER TABLE ONLY m_mobilite_3v.stationnementcy
    ADD CONSTRAINT payant FOREIGN KEY (payant) REFERENCES m_mobilite_3v.list_fauxbooleen("clé");
 G   ALTER TABLE ONLY m_mobilite_3v.stationnementcy DROP CONSTRAINT payant;
       m_mobilite_3v       	   sig_stage    false    1640    1624    8511            g!           2606    51784425    segmentcy qualitegeo    FK CONSTRAINT     ?   ALTER TABLE ONLY m_mobilite_3v.segmentcy
    ADD CONSTRAINT qualitegeo FOREIGN KEY (qualitegeo) REFERENCES m_mobilite_3v.list_precsion("clé");
 E   ALTER TABLE ONLY m_mobilite_3v.segmentcy DROP CONSTRAINT qualitegeo;
       m_mobilite_3v       	   sig_stage    false    1627    1639    8517            ?           826    51779207    DEFAULT PRIVILEGES FOR TABLES    DEFAULT ACL     ?   ALTER DEFAULT PRIVILEGES FOR ROLE sig_stage IN SCHEMA m_mobilite_3v REVOKE ALL ON TABLES  FROM sig_stage;
ALTER DEFAULT PRIVILEGES FOR ROLE sig_stage IN SCHEMA m_mobilite_3v GRANT SELECT ON TABLES  TO sig_read;
          m_mobilite_3v       	   sig_stage    false    35            q!           2606    51784475    segmentcy regime_d    FK CONSTRAINT     ?   ALTER TABLE ONLY m_mobilite_3v.segmentcy
    ADD CONSTRAINT regime_d FOREIGN KEY (regime_d) REFERENCES m_mobilite_3v.list_regime("clé");
 C   ALTER TABLE ONLY m_mobilite_3v.segmentcy DROP CONSTRAINT regime_d;
       m_mobilite_3v       	   sig_stage    false    8521    1629    1639            r!           2606    51784480    segmentcy regime_g    FK CONSTRAINT     ?   ALTER TABLE ONLY m_mobilite_3v.segmentcy
    ADD CONSTRAINT regime_g FOREIGN KEY (regime_g) REFERENCES m_mobilite_3v.list_fauxbooleen("clé");
 C   ALTER TABLE ONLY m_mobilite_3v.segmentcy DROP CONSTRAINT regime_g;
       m_mobilite_3v       	   sig_stage    false    8511    1624    1639            j!           2606    51784440    segmentcy reseau_loc    FK CONSTRAINT     ?   ALTER TABLE ONLY m_mobilite_3v.segmentcy
    ADD CONSTRAINT reseau_loc FOREIGN KEY (reseau_loc) REFERENCES m_mobilite_3v.list_reseau_loc("clé");
 E   ALTER TABLE ONLY m_mobilite_3v.segmentcy DROP CONSTRAINT reseau_loc;
       m_mobilite_3v       	   sig_stage    false    8523    1630    1639            f!           2606    51784420    segmentcy revetement    FK CONSTRAINT     ?   ALTER TABLE ONLY m_mobilite_3v.segmentcy
    ADD CONSTRAINT revetement FOREIGN KEY (revetement) REFERENCES m_mobilite_3v.list_revetement("clé");
 E   ALTER TABLE ONLY m_mobilite_3v.segmentcy DROP CONSTRAINT revetement;
       m_mobilite_3v       	   sig_stage    false    1631    8525    1639            s!           2606    51784485    segmentcy sens_d    FK CONSTRAINT     ?   ALTER TABLE ONLY m_mobilite_3v.segmentcy
    ADD CONSTRAINT sens_d FOREIGN KEY (sens_d) REFERENCES m_mobilite_3v.list_sens("clé");
 A   ALTER TABLE ONLY m_mobilite_3v.segmentcy DROP CONSTRAINT sens_d;
       m_mobilite_3v       	   sig_stage    false    1632    1639    8527            t!           2606    51784490    segmentcy sens_g    FK CONSTRAINT     ?   ALTER TABLE ONLY m_mobilite_3v.segmentcy
    ADD CONSTRAINT sens_g FOREIGN KEY (sens_g) REFERENCES m_mobilite_3v.list_sens("clé");
 A   ALTER TABLE ONLY m_mobilite_3v.segmentcy DROP CONSTRAINT sens_g;
       m_mobilite_3v       	   sig_stage    false    8527    1632    1639            |!           2606    51784538    stationnementcy statut    FK CONSTRAINT     ?   ALTER TABLE ONLY m_mobilite_3v.stationnementcy
    ADD CONSTRAINT statut FOREIGN KEY (statut) REFERENCES m_mobilite_3v.list_statut("clé");
 G   ALTER TABLE ONLY m_mobilite_3v.stationnementcy DROP CONSTRAINT statut;
       m_mobilite_3v       	   sig_stage    false    1640    8529    1633            o!           2606    51784465    segmentcy statut_d    FK CONSTRAINT     ?   ALTER TABLE ONLY m_mobilite_3v.segmentcy
    ADD CONSTRAINT statut_d FOREIGN KEY (statut_d) REFERENCES m_mobilite_3v.list_statut("clé");
 C   ALTER TABLE ONLY m_mobilite_3v.segmentcy DROP CONSTRAINT statut_d;
       m_mobilite_3v       	   sig_stage    false    1639    1633    8529            p!           2606    51784470    segmentcy statut_g    FK CONSTRAINT     ?   ALTER TABLE ONLY m_mobilite_3v.segmentcy
    ADD CONSTRAINT statut_g FOREIGN KEY (statut_g) REFERENCES m_mobilite_3v.list_statut("clé");
 C   ALTER TABLE ONLY m_mobilite_3v.segmentcy DROP CONSTRAINT statut_g;
       m_mobilite_3v       	   sig_stage    false    1633    1639    8529            ~!           2606    51784548    stationnementcy type_accro    FK CONSTRAINT     ?   ALTER TABLE ONLY m_mobilite_3v.stationnementcy
    ADD CONSTRAINT type_accro FOREIGN KEY (type_accro) REFERENCES m_mobilite_3v.list_typeaccro("clé");
 K   ALTER TABLE ONLY m_mobilite_3v.stationnementcy DROP CONSTRAINT type_accro;
       m_mobilite_3v       	   sig_stage    false    1634    8531    1640            ?!           2606    51784579    services typeserv    FK CONSTRAINT     ?   ALTER TABLE ONLY m_mobilite_3v.services
    ADD CONSTRAINT typeserv FOREIGN KEY (typeserv) REFERENCES m_mobilite_3v.list_typeserv("clé");
 B   ALTER TABLE ONLY m_mobilite_3v.services DROP CONSTRAINT typeserv;
       m_mobilite_3v       	   sig_stage    false    8537    1637    1642            }!           2606    51784543    stationnementcy typevelo    FK CONSTRAINT     ?   ALTER TABLE ONLY m_mobilite_3v.stationnementcy
    ADD CONSTRAINT typevelo FOREIGN KEY (typevelo) REFERENCES m_mobilite_3v.list_typevelo("clé");
 I   ALTER TABLE ONLY m_mobilite_3v.stationnementcy DROP CONSTRAINT typevelo;
       m_mobilite_3v       	   sig_stage    false    8539    1640    1638            ?"   ?   x???1?0???W?$?+??f??]rJ?BI[??{M??7?{???a^H??<X?iaAAm?^ӥ[???4ܦ???t?.0???@dM????JƮ9??Վ??JVG??伸;??a0???Eb,ֱ@?*U&EQr?͓!zS~???P?/Yrv/8?ru??	E??*?)s~J8??\`?      ?"   U   x?30?t,M.?S(J?+N?L?K?M?+?20????I-?20?	?20R?\&?a?W??+??*嗖?rYZ()J?????? ?r8      ?"   ?   x?mP?N?0>?O?;J???c[$???d??Fj?)????y1?	??????B@?t???6?ۈB³	???Խ???b?????5ܹT*
?K?wNǙ?bs??"(?Σ?YT̓7?7!O(??u?id???@??ޑO???ƥ?O???E{???b/j82J3KJ??<Yu8]G???s?<??7?;??NrM?R(??????j?b?W?Pi??"?y??1Q?|??mj???øݖ"z??KD??>??      ?"   F   x?30?t,M.?S(J?+N?L?K?M?+?20????I,9??(1?????	?g???W?????Z????? r>?      ?"   M   x?30?t,M.?S(J?+N?L?K?M?+?20?tI-I-??/:??????5??(?W?e`?????ei	?	?????? m4z      ?"   :   x?30?t,M.?S(J?+N?L?K?M?+?20??/??20????㲴**)J?????? ??s      ?"   W   x?30?t,M.?S(J?+N?L?K?M?+?20?)??,)??,?20?t?H,-.>?2?????3?$?(??ʔ??̢T.KK?%@F? o?      ?"   v   x?30?t,M.?S(J?+N?L?K?M?+?20?t--?/8?25?????/?$3?/1????3???t(Ǆ???ʂĢ?.??)?g^IjQr~nn)X??3?m?L+J?KZZ-/)J?????? ?.^      ?"   K   x?30?t,M.?S(J?+N?L?K?M?+?20?tҙ??W?e??rq?^??,b???XZ?))J?????? N9      ?"   `   x?30?t,M.?S(J?+N?L?K?M?+?20?t???-?K?20?tp??20?t9?? ???Ą3??????<.S΀?̲?+?,-?ƕ?r??qqq ?m      ?"   r   x?]?1
?@E??S?	¨Iai!x?3,?O?Cy??X?t???x"??ˎ??MS????R?h??KM]r?T?l??4?֫Z?O??a??ck9|??????|???=?W4=??6o+?      ?"   A   x?30?t,M.?S(J?+N?L?K?M?+?20?r?20?.)*M.)-J?ZZ??r??qqq 1??      ?"   n   x?̱?@?ڞ?&@Ф?D
5?q??,%??Rơ???=?E	K??ٰ?B??
>=c???⽀?B???w??H???z?%7?X??|о?8ws????mi#?      ?"   E   x?30?t,M.?S(J?+N?L?K?M?+?20???L?,JM.????K??20?tB???-)J?????? ???      ?"   \   x?30?t,M.?S(J?+N?L?K?M?+?20?t?S((??Jr?@???Ĳ??
.c?8??,39????3?(?,?8??(???hZ	????? WC      ?"   ?   x?M?;?0Dk?)??寔p?(iL2A+9kpl??9?U???i?q????? ?$+w???0r?%??'????<~?m֞d3C]?$[wA?Z??1>k4??;ykI?箮H??k???W??&???sݖD?? 9?      ?"   ?   x??;n?0?g?:A?4}yLR?T]??2m??????:?.Vy?????XB?,??"???=???S?a??&תэ???E?5s??6-J?JQ;=?)?Em?Chٍ???pN?͸(?)gZ?M?^cп???؅$?????$Ϛ????op&U??3?e??#?=|p?;Z[ZZ?8???a?;D??QV      ?"   Q   x?30?t,M.?S(J?+N?L?K?M?+?20?4T(???+QHQHLN.?O?H?20?4???sic???]R?????? ? ?      ?"   ?   x?-?;?0D??S?h??!D????٘M??ؑ??)??Ű ??ћ!?s?٩ .??????y9p2?!m??]g??-ܽqI??pV?O?????z????V?b???>?d=??o?????t?G#!"???X??u>?Sղd????MA??B?/9?<?      ?"   b   x?30?t,M.?S(J?+N?L?K?M?+?20?	?20R?\Ɯa?W??+?d&?dM8?]?L??ɉE??\f0n~ir???\??@?K?R?b???? ?*!	      ?"   a   x?3?4??LN,*JM?/-RH,KMV(H,.NLOU(?<??$??Ӑ??????????2766v54qq1q?0211431025ru4r5s4u41?????? mg      ?"   ?  x?Mһn?0 ???+?uJ??H*?^:t蜥C?E
4?????j??cR4-<?@8?x?/?x{?ڷ?@???	???蹺d?????ہhgx9 ?ׯ????????w̍
?o???y?<???? ?qf?? 9i?W(pM??!?ViL??	?-iH'????IuͶ=J?a?.o˹w\z?/????z:?3???ܳ??J??G7?Q??@?1*??mkb??4?????9"??oT,?Y??7?IA??W??????>? k????A#敿???|??Z????-[?Gz߾d??̢????????@9{gc?"l?]??7,+f?W?b+??g???]?҄?>?B/d?i?2/??????خ?5?mno3/?9?#?? ?F??Y??Ne????.c?o?l?")?x?-\}n??1X?????????Q??      ?"   m   x????0 g?+??U?B2ZЌ??d?T????w7???)??}??j?Ӗ?ii?mU[???=6ѽ[?^??a`??M??9???{7?4bO#??={g??1??pg      ?"   ?   x?M???@??ݧ????S?U????g.F4?\xzc??/???%  =͢?Ue4?? ????m7??˒??;??????1=ʐ3$MX????>]^?? c?t????(??i)M?AX???zW?k۔?9??|?l?6WJ} Q?,?     