##################################################################*/
/* ##########################- SCHEMA -########################## */
##################################################################*/
-- SCHEMA: m_mobilite_3v

-- DROP SCHEMA m_mobilite_3v ;

CREATE SCHEMA m_mobilite_3v
    AUTHORIZATION sig_stage;

COMMENT ON SCHEMA m_mobilite_3v
    IS 'Données métiers sur le thème des aménagements cyclables';

GRANT ALL ON SCHEMA m_mobilite_3v TO create_sig;

GRANT ALL ON SCHEMA m_mobilite_3v TO sig_stage;

ALTER DEFAULT PRIVILEGES IN SCHEMA m_mobilite_3v
GRANT SELECT ON TABLES TO sig_read;

/* ##############################################################*/
/* ##########################- TABLES -##########################*/
/* ##############################################################*/
-- Table: m_mobilite_3v.itinerairecy

-- DROP TABLE m_mobilite_3v.itinerairecy;

CREATE TABLE m_mobilite_3v.itinerairecy
(
    id_iticy integer NOT NULL,
    nomoff character varying(50) COLLATE pg_catalog."default",
    libelle character varying(50) COLLATE pg_catalog."default",
    nom_loc character varying(50) COLLATE pg_catalog."default",
    depart character varying(50) COLLATE pg_catalog."default",
    arrivee character varying(50) COLLATE pg_catalog."default",
    estinscrit character varying(2) COLLATE pg_catalog."default",
    nvschema character varying(2) COLLATE pg_catalog."default",
    annee_ins bigint,
    siteweb character varying(50) COLLATE pg_catalog."default",
    annee_ouv bigint,
    observ character varying(254) COLLATE pg_catalog."default",
    orga_sai character varying(50) COLLATE pg_catalog."default",
    op_sai character varying(50) COLLATE pg_catalog."default",
    date_sai timestamp without time zone,
    CONSTRAINT id_iticy PRIMARY KEY (id_iticy),
    CONSTRAINT estinscrit FOREIGN KEY (estinscrit)
        REFERENCES m_mobilite_3v.list_fauxbooleen ("clé") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT nvschema FOREIGN KEY (nvschema)
        REFERENCES m_mobilite_3v.list_nvschema ("clé") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE m_mobilite_3v.itinerairecy
    OWNER to sig_stage;

GRANT SELECT ON TABLE m_mobilite_3v.itinerairecy TO sig_read;

GRANT ALL ON TABLE m_mobilite_3v.itinerairecy TO sig_stage;
/*---------------------------------------------------------------*/
-- Table: m_mobilite_3v.stationnementcy

-- DROP TABLE m_mobilite_3v.stationnementcy;

CREATE TABLE m_mobilite_3v.stationnementcy
(
    id_sta integer NOT NULL,
    id_local character varying(20) COLLATE pg_catalog."default",
    adresse character varying(100) COLLATE pg_catalog."default",
    complt_adr character varying(100) COLLATE pg_catalog."default",
    type_accro character varying(2) COLLATE pg_catalog."default",
    typevelo character varying(2) COLLATE pg_catalog."default",
    an_pose bigint,
    capacite character varying(10) COLLATE pg_catalog."default",
    couvert character varying(2) COLLATE pg_catalog."default",
    payant character varying(2) COLLATE pg_catalog."default",
    statut character varying(2) COLLATE pg_catalog."default",
    fictif character varying(2) COLLATE pg_catalog."default",
    precsion character varying(2) COLLATE pg_catalog."default",
    etat_mob character varying(2) COLLATE pg_catalog."default",
    ouvert character varying(2) COLLATE pg_catalog."default",
    securise character varying(2) COLLATE pg_catalog."default",
    gardien character varying(2) COLLATE pg_catalog."default",
    acceslib character varying(2) COLLATE pg_catalog."default",
    proprio character varying(2) COLLATE pg_catalog."default",
    gestio character varying(2) COLLATE pg_catalog."default",
    image character varying(50) COLLATE pg_catalog."default",
    orga_sai character varying(50) COLLATE pg_catalog."default",
    op_sai character varying(50) COLLATE pg_catalog."default",
    date_maj timestamp without time zone,
    observ character varying(254) COLLATE pg_catalog."default",
    "long" real,
    lat real,
    x real,
    y real,
    geom geometry(Point,2154),
    CONSTRAINT id_sta PRIMARY KEY (id_sta),
    CONSTRAINT couvert FOREIGN KEY (couvert)
        REFERENCES m_mobilite_3v.list_fauxbooleen ("clé") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT etat_mob FOREIGN KEY (etat_mob)
        REFERENCES m_mobilite_3v.list_etat_mob ("clé") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT fictif FOREIGN KEY (fictif)
        REFERENCES m_mobilite_3v.list_fauxbooleen ("clé") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT ouvert FOREIGN KEY (ouvert)
        REFERENCES m_mobilite_3v.list_fauxbooleen ("clé") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT payant FOREIGN KEY (payant)
        REFERENCES m_mobilite_3v.list_fauxbooleen ("clé") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT statut FOREIGN KEY (statut)
        REFERENCES m_mobilite_3v.list_statut ("clé") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT type_accro FOREIGN KEY (type_accro)
        REFERENCES m_mobilite_3v.list_typeaccro ("clé") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT typevelo FOREIGN KEY (typevelo)
        REFERENCES m_mobilite_3v.list_typevelo ("clé") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE m_mobilite_3v.stationnementcy
    OWNER to sig_stage;

GRANT SELECT ON TABLE m_mobilite_3v.stationnementcy TO sig_read;

GRANT ALL ON TABLE m_mobilite_3v.stationnementcy TO sig_stage;
/*---------------------------------------------------------------*/
-- Table: m_mobilite_3v.services

-- DROP TABLE m_mobilite_3v.services;

CREATE TABLE m_mobilite_3v.services
(
    id_serv integer NOT NULL,
    typeserv character varying(2) COLLATE pg_catalog."default",
    etat character varying(2) COLLATE pg_catalog."default" NOT NULL,
    nombre integer,
    ouvert character varying(2) COLLATE pg_catalog."default",
    nvelolocd bigint,
    nvelolocci bigint,
    observ character varying(254) COLLATE pg_catalog."default",
    geom geometry(Point,2154),
    CONSTRAINT id_serv PRIMARY KEY (id_serv),
    CONSTRAINT etat FOREIGN KEY (etat)
        REFERENCES m_mobilite_3v.list_etat_mob ("clé") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT ouvert FOREIGN KEY (ouvert)
        REFERENCES m_mobilite_3v.list_fauxbooleen ("clé") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT typeserv FOREIGN KEY (typeserv)
        REFERENCES m_mobilite_3v.list_typeserv ("clé") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE m_mobilite_3v.services
    OWNER to sig_stage;

GRANT SELECT ON TABLE m_mobilite_3v.services TO sig_read;

GRANT ALL ON TABLE m_mobilite_3v.services TO sig_stage;
/*---------------------------------------------------------------*/
-- Table: m_mobilite_3v.segmentcy

-- DROP TABLE m_mobilite_3v.segmentcy;

CREATE TABLE m_mobilite_3v.segmentcy
(
    id_segcy bigint NOT NULL,
    id_on3v character varying(30) COLLATE pg_catalog."default",
    revetement character varying(2) COLLATE pg_catalog."default",
    annee_ouv bigint,
    qualitegeo character varying(2) COLLATE pg_catalog."default",
    geofictive character varying(2) COLLATE pg_catalog."default",
    amgt_pos character varying(2) COLLATE pg_catalog."default",
    op_sai character varying(50) COLLATE pg_catalog."default",
    orga_sai character varying(50) COLLATE pg_catalog."default",
    date_maj timestamp without time zone,
    id_osm integer,
    reseau_loc character varying(2) COLLATE pg_catalog."default",
    nom_loc character varying(50) COLLATE pg_catalog."default",
    num_iti character varying(20) COLLATE pg_catalog."default",
    d_service bigint,
    acces_ame character varying(2) COLLATE pg_catalog."default",
    trafic_vit integer,
    lumiere character varying(2) COLLATE pg_catalog."default",
    observ character varying(254) COLLATE pg_catalog."default",
    project_c character varying(50) COLLATE pg_catalog."default",
    ref_geo character varying(50) COLLATE pg_catalog."default",
    code_com_d character varying(10) COLLATE pg_catalog."default",
    ame_d character varying(2) COLLATE pg_catalog."default",
    statut_d character varying(2) COLLATE pg_catalog."default",
    regime_d character varying(2) COLLATE pg_catalog."default",
    sens_d character varying(2) COLLATE pg_catalog."default",
    largeur_d real,
    local_d character varying(2) COLLATE pg_catalog."default",
    code_com_g character varying(10) COLLATE pg_catalog."default",
    ame_g character varying(2) COLLATE pg_catalog."default",
    statut_g character varying(2) COLLATE pg_catalog."default",
    regime_g character varying(2) COLLATE pg_catalog."default",
    sens_g character varying(2) COLLATE pg_catalog."default",
    largeur_g real,
    local_g character varying(2) COLLATE pg_catalog."default",
    geom geometry(LineString,2154),
    CONSTRAINT id_segcy PRIMARY KEY (id_segcy),
    CONSTRAINT acces_ame FOREIGN KEY (acces_ame)
        REFERENCES m_mobilite_3v.list_acces_ame ("clé") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT ame_d FOREIGN KEY (ame_d)
        REFERENCES m_mobilite_3v.list_ame ("clé") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT ame_g FOREIGN KEY (ame_g)
        REFERENCES m_mobilite_3v.list_ame ("clé") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT amgt_pos FOREIGN KEY (amgt_pos)
        REFERENCES m_mobilite_3v.list_amgt_pos ("clé") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT geofictive FOREIGN KEY (geofictive)
        REFERENCES m_mobilite_3v.list_fauxbooleen ("clé") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT local_d FOREIGN KEY (local_d)
        REFERENCES m_mobilite_3v.list_local ("clé") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT local_g FOREIGN KEY (local_g)
        REFERENCES m_mobilite_3v.list_local ("clé") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT lumiere FOREIGN KEY (lumiere)
        REFERENCES m_mobilite_3v.list_fauxbooleen ("clé") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT qualitegeo FOREIGN KEY (qualitegeo)
        REFERENCES m_mobilite_3v.list_precsion ("clé") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT regime_d FOREIGN KEY (regime_d)
        REFERENCES m_mobilite_3v.list_regime ("clé") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT regime_g FOREIGN KEY (regime_g)
        REFERENCES m_mobilite_3v.list_fauxbooleen ("clé") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT reseau_loc FOREIGN KEY (reseau_loc)
        REFERENCES m_mobilite_3v.list_reseau_loc ("clé") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT revetement FOREIGN KEY (revetement)
        REFERENCES m_mobilite_3v.list_revetement ("clé") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT sens_d FOREIGN KEY (sens_d)
        REFERENCES m_mobilite_3v.list_sens ("clé") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT sens_g FOREIGN KEY (sens_g)
        REFERENCES m_mobilite_3v.list_sens ("clé") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT statut_d FOREIGN KEY (statut_d)
        REFERENCES m_mobilite_3v.list_statut ("clé") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT statut_g FOREIGN KEY (statut_g)
        REFERENCES m_mobilite_3v.list_statut ("clé") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE m_mobilite_3v.segmentcy
    OWNER to sig_stage;

GRANT SELECT ON TABLE m_mobilite_3v.segmentcy TO sig_read;

GRANT ALL ON TABLE m_mobilite_3v.segmentcy TO sig_stage;
/*---------------------------------------------------------------*/
-- Table: m_mobilite_3v.noeuds

-- DROP TABLE m_mobilite_3v.noeuds;

CREATE TABLE m_mobilite_3v.noeuds
(
    id_nd integer NOT NULL,
    typenoeud character varying(2) COLLATE pg_catalog."default",
    libelle character varying(50) COLLATE pg_catalog."default",
    numeroserie integer,
    geom geometry(Point,2154),
    CONSTRAINT id_nd PRIMARY KEY (id_nd)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE m_mobilite_3v.noeuds
    OWNER to sig_stage;

GRANT SELECT ON TABLE m_mobilite_3v.noeuds TO sig_read;

GRANT ALL ON TABLE m_mobilite_3v.noeuds TO sig_stage;

/*---------------------------------------------------------------*/
/*------------------------- LISTES ------------------------------*/
/*---------------------------------------------------------------*/

-- Table: m_mobilite_3v.list_acces_ame

-- DROP TABLE m_mobilite_3v.list_acces_ame;

CREATE TABLE m_mobilite_3v.list_acces_ame
(
    "clé" character varying(2) COLLATE pg_catalog."default" NOT NULL,
    valeur character varying COLLATE pg_catalog."default",
    CONSTRAINT "clé_acces_ame" PRIMARY KEY ("clé")
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE m_mobilite_3v.list_acces_ame
    OWNER to sig_stage;

GRANT SELECT ON TABLE m_mobilite_3v.list_acces_ame TO sig_read;

GRANT ALL ON TABLE m_mobilite_3v.list_acces_ame TO sig_stage;
/*--------------------------------------------------------------*/
-- Table: m_mobilite_3v.list_ame

-- DROP TABLE m_mobilite_3v.list_ame;

CREATE TABLE m_mobilite_3v.list_ame
(
    "clé" character varying(2) COLLATE pg_catalog."default" NOT NULL,
    valeur character varying COLLATE pg_catalog."default",
    CONSTRAINT "clé_ame" PRIMARY KEY ("clé")
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE m_mobilite_3v.list_ame
    OWNER to sig_stage;

GRANT SELECT ON TABLE m_mobilite_3v.list_ame TO sig_read;

GRANT ALL ON TABLE m_mobilite_3v.list_ame TO sig_stage;
/*--------------------------------------------------------------*/
-- Table: m_mobilite_3v.list_amgt_pos

-- DROP TABLE m_mobilite_3v.list_amgt_pos;

CREATE TABLE m_mobilite_3v.list_amgt_pos
(
    "clé" character varying(2) COLLATE pg_catalog."default" NOT NULL,
    valeur character varying COLLATE pg_catalog."default",
    CONSTRAINT "clé_amgt_pos" PRIMARY KEY ("clé")
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE m_mobilite_3v.list_amgt_pos
    OWNER to sig_stage;

GRANT SELECT ON TABLE m_mobilite_3v.list_amgt_pos TO sig_read;

GRANT ALL ON TABLE m_mobilite_3v.list_amgt_pos TO sig_stage;
/*--------------------------------------------------------------*/
-- Table: m_mobilite_3v.list_etat_mob

-- DROP TABLE m_mobilite_3v.list_etat_mob;

CREATE TABLE m_mobilite_3v.list_etat_mob
(
    "clé" character varying(2) COLLATE pg_catalog."default" NOT NULL,
    valeur character varying COLLATE pg_catalog."default",
    CONSTRAINT "clé_etat" PRIMARY KEY ("clé")
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE m_mobilite_3v.list_etat_mob
    OWNER to sig_stage;

GRANT SELECT ON TABLE m_mobilite_3v.list_etat_mob TO sig_read;

GRANT ALL ON TABLE m_mobilite_3v.list_etat_mob TO sig_stage;
/*--------------------------------------------------------------*/
-- Table: m_mobilite_3v.list_fauxbooleen

-- DROP TABLE m_mobilite_3v.list_fauxbooleen;

CREATE TABLE m_mobilite_3v.list_fauxbooleen
(
    "clé" character varying(2) COLLATE pg_catalog."default" NOT NULL,
    valeur character varying COLLATE pg_catalog."default",
    CONSTRAINT "clé_fauxbooleen" PRIMARY KEY ("clé")
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE m_mobilite_3v.list_fauxbooleen
    OWNER to sig_stage;

GRANT SELECT ON TABLE m_mobilite_3v.list_fauxbooleen TO sig_read;

GRANT ALL ON TABLE m_mobilite_3v.list_fauxbooleen TO sig_stage;
/*--------------------------------------------------------------*/
-- Table: m_mobilite_3v.list_local

-- DROP TABLE m_mobilite_3v.list_local;

CREATE TABLE m_mobilite_3v.list_local
(
    "clé" character varying(2) COLLATE pg_catalog."default" NOT NULL,
    valeur character varying COLLATE pg_catalog."default",
    CONSTRAINT "clé_local" PRIMARY KEY ("clé")
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE m_mobilite_3v.list_local
    OWNER to sig_stage;

GRANT SELECT ON TABLE m_mobilite_3v.list_local TO sig_read;

GRANT ALL ON TABLE m_mobilite_3v.list_local TO sig_stage;
/*--------------------------------------------------------------*/
-- Table: m_mobilite_3v.list_nvschema

-- DROP TABLE m_mobilite_3v.list_nvschema;

CREATE TABLE m_mobilite_3v.list_nvschema
(
    "clé" character varying(2) COLLATE pg_catalog."default" NOT NULL,
    valeur character varying COLLATE pg_catalog."default",
    CONSTRAINT "clé_nvschema" PRIMARY KEY ("clé")
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE m_mobilite_3v.list_nvschema
    OWNER to sig_stage;

GRANT SELECT ON TABLE m_mobilite_3v.list_nvschema TO sig_read;

GRANT ALL ON TABLE m_mobilite_3v.list_nvschema TO sig_stage;
/*--------------------------------------------------------------*/
-- Table: m_mobilite_3v.list_precsion

-- DROP TABLE m_mobilite_3v.list_precsion;

CREATE TABLE m_mobilite_3v.list_precsion
(
    "clé" character varying(2) COLLATE pg_catalog."default" NOT NULL,
    valeur character varying COLLATE pg_catalog."default",
    CONSTRAINT "clé_precsion" PRIMARY KEY ("clé")
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE m_mobilite_3v.list_precsion
    OWNER to sig_stage;

GRANT SELECT ON TABLE m_mobilite_3v.list_precsion TO sig_read;

GRANT ALL ON TABLE m_mobilite_3v.list_precsion TO sig_stage;
/*--------------------------------------------------------------*/
-- Table: m_mobilite_3v.list_proprio_gestio

-- DROP TABLE m_mobilite_3v.list_proprio_gestio;

CREATE TABLE m_mobilite_3v.list_proprio_gestio
(
    "clé" character varying(2) COLLATE pg_catalog."default" NOT NULL,
    valeur character varying COLLATE pg_catalog."default",
    CONSTRAINT "clé_proprio_gestio" PRIMARY KEY ("clé")
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE m_mobilite_3v.list_proprio_gestio
    OWNER to sig_stage;

GRANT SELECT ON TABLE m_mobilite_3v.list_proprio_gestio TO sig_read;

GRANT ALL ON TABLE m_mobilite_3v.list_proprio_gestio TO sig_stage;
/*--------------------------------------------------------------*/
-- Table: m_mobilite_3v.list_regime

-- DROP TABLE m_mobilite_3v.list_regime;

CREATE TABLE m_mobilite_3v.list_regime
(
    "clé" character varying(2) COLLATE pg_catalog."default" NOT NULL,
    valeur character varying COLLATE pg_catalog."default",
    CONSTRAINT "clé_regime" PRIMARY KEY ("clé")
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE m_mobilite_3v.list_regime
    OWNER to sig_stage;

GRANT SELECT ON TABLE m_mobilite_3v.list_regime TO sig_read;

GRANT ALL ON TABLE m_mobilite_3v.list_regime TO sig_stage;
/*--------------------------------------------------------------*/
-- Table: m_mobilite_3v.list_reseau_loc

-- DROP TABLE m_mobilite_3v.list_reseau_loc;

CREATE TABLE m_mobilite_3v.list_reseau_loc
(
    "clé" character varying(2) COLLATE pg_catalog."default" NOT NULL,
    valeur character varying COLLATE pg_catalog."default",
    CONSTRAINT "clé_reseau_loc" PRIMARY KEY ("clé")
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE m_mobilite_3v.list_reseau_loc
    OWNER to sig_stage;

GRANT SELECT ON TABLE m_mobilite_3v.list_reseau_loc TO sig_read;

GRANT ALL ON TABLE m_mobilite_3v.list_reseau_loc TO sig_stage;
/*--------------------------------------------------------------*/
-- Table: m_mobilite_3v.list_revetement

-- DROP TABLE m_mobilite_3v.list_revetement;

CREATE TABLE m_mobilite_3v.list_revetement
(
    "clé" character varying(2) COLLATE pg_catalog."default" NOT NULL,
    valeur character varying COLLATE pg_catalog."default",
    CONSTRAINT "clé_revetement" PRIMARY KEY ("clé")
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE m_mobilite_3v.list_revetement
    OWNER to sig_stage;

GRANT SELECT ON TABLE m_mobilite_3v.list_revetement TO sig_read;

GRANT ALL ON TABLE m_mobilite_3v.list_revetement TO sig_stage;
/*--------------------------------------------------------------*/
-- Table: m_mobilite_3v.list_sens

-- DROP TABLE m_mobilite_3v.list_sens;

CREATE TABLE m_mobilite_3v.list_sens
(
    "clé" character varying(2) COLLATE pg_catalog."default" NOT NULL,
    valeur character varying COLLATE pg_catalog."default",
    CONSTRAINT "clé_sens" PRIMARY KEY ("clé")
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE m_mobilite_3v.list_sens
    OWNER to sig_stage;

GRANT SELECT ON TABLE m_mobilite_3v.list_sens TO sig_read;

GRANT ALL ON TABLE m_mobilite_3v.list_sens TO sig_stage;
/*--------------------------------------------------------------*/
-- Table: m_mobilite_3v.list_statut

-- DROP TABLE m_mobilite_3v.list_statut;

CREATE TABLE m_mobilite_3v.list_statut
(
    "clé" character varying(2) COLLATE pg_catalog."default" NOT NULL,
    valeur character varying COLLATE pg_catalog."default",
    CONSTRAINT "clé_statut" PRIMARY KEY ("clé")
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE m_mobilite_3v.list_statut
    OWNER to sig_stage;

GRANT SELECT ON TABLE m_mobilite_3v.list_statut TO sig_read;

GRANT ALL ON TABLE m_mobilite_3v.list_statut TO sig_stage;
/*--------------------------------------------------------------*/
-- Table: m_mobilite_3v.list_type_equip

-- DROP TABLE m_mobilite_3v.list_type_equip;

CREATE TABLE m_mobilite_3v.list_type_equip
(
    "clé" character varying(2) COLLATE pg_catalog."default" NOT NULL,
    valeur character varying COLLATE pg_catalog."default",
    CONSTRAINT "clé_typeequip" PRIMARY KEY ("clé")
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE m_mobilite_3v.list_type_equip
    OWNER to sig_stage;

GRANT SELECT ON TABLE m_mobilite_3v.list_type_equip TO sig_read;

GRANT ALL ON TABLE m_mobilite_3v.list_type_equip TO sig_stage;
/*--------------------------------------------------------------*/
-- Table: m_mobilite_3v.list_type_noeud

-- DROP TABLE m_mobilite_3v.list_type_noeud;

CREATE TABLE m_mobilite_3v.list_type_noeud
(
    "clé" character varying(2) COLLATE pg_catalog."default" NOT NULL,
    valeur character varying COLLATE pg_catalog."default",
    CONSTRAINT "clé_typenoeud" PRIMARY KEY ("clé")
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE m_mobilite_3v.list_type_noeud
    OWNER to sig_stage;

GRANT SELECT ON TABLE m_mobilite_3v.list_type_noeud TO sig_read;

GRANT ALL ON TABLE m_mobilite_3v.list_type_noeud TO sig_stage;
/*--------------------------------------------------------------*/
-- Table: m_mobilite_3v.list_typeaccro

-- DROP TABLE m_mobilite_3v.list_typeaccro;

CREATE TABLE m_mobilite_3v.list_typeaccro
(
    "clé" character varying(2) COLLATE pg_catalog."default" NOT NULL,
    valeur character varying COLLATE pg_catalog."default",
    CONSTRAINT "clé_typeaccro" PRIMARY KEY ("clé")
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE m_mobilite_3v.list_typeaccro
    OWNER to sig_stage;

GRANT SELECT ON TABLE m_mobilite_3v.list_typeaccro TO sig_read;

GRANT ALL ON TABLE m_mobilite_3v.list_typeaccro TO sig_stage;
/*--------------------------------------------------------------*/
-- Table: m_mobilite_3v.list_typeserv

-- DROP TABLE m_mobilite_3v.list_typeserv;

CREATE TABLE m_mobilite_3v.list_typeserv
(
    "clé" character varying(2) COLLATE pg_catalog."default" NOT NULL,
    valeur character varying COLLATE pg_catalog."default",
    CONSTRAINT "clé_typeserv" PRIMARY KEY ("clé")
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE m_mobilite_3v.list_typeserv
    OWNER to sig_stage;

GRANT SELECT ON TABLE m_mobilite_3v.list_typeserv TO sig_read;

GRANT ALL ON TABLE m_mobilite_3v.list_typeserv TO sig_stage;
/*--------------------------------------------------------------*/
-- Table: m_mobilite_3v.list_typevelo

-- DROP TABLE m_mobilite_3v.list_typevelo;

CREATE TABLE m_mobilite_3v.list_typevelo
(
    "clé" character varying(2) COLLATE pg_catalog."default" NOT NULL,
    valeur character varying COLLATE pg_catalog."default",
    CONSTRAINT "clé_typevelo" PRIMARY KEY ("clé")
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE m_mobilite_3v.list_typevelo
    OWNER to sig_stage;

GRANT SELECT ON TABLE m_mobilite_3v.list_typevelo TO sig_read;

GRANT ALL ON TABLE m_mobilite_3v.list_typevelo TO sig_stage;
/*--------------------------------------------------------------*/



/* IL MANQUE LES DONNEES DES LISTES */









