--
-- PostgreSQL database dump
--

-- Dumped from database version 14.2
-- Dumped by pg_dump version 14.2

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

ALTER TABLE ONLY public.sucursal_cuba DROP CONSTRAINT sucursal_cuba_codmincex_aa0b5234_fk;
ALTER TABLE ONLY public.solicitud_ppa_proxy DROP CONSTRAINT solicitud_ppa_proxy_numsolicitud_b3c4e117_fk_solicitud;
ALTER TABLE ONLY public.solicitud_ppa_proxy DROP CONSTRAINT solicitud_ppa_proxy_idproducto_efc8a761_fk;
ALTER TABLE ONLY public.solicitud_ppa_poveedor DROP CONSTRAINT solicitud_ppa_poveedor_codmincex_id_ff8ec5cf_fk;
ALTER TABLE ONLY public.solicitud_ppa_poveedor DROP CONSTRAINT solicitud_ppa_poveed_numsolicitud_f4187e0d_fk_solicitud;
ALTER TABLE ONLY public.solicitud_ppa DROP CONSTRAINT solicitud_ppa_numcontratocliente_cd73b766_fk_cliente_n;
ALTER TABLE ONLY public.solicitud_ppa DROP CONSTRAINT solicitud_ppa_idproducto_5d5752e5_fk;
ALTER TABLE ONLY public.solicitud_ppa DROP CONSTRAINT solicitud_ppa_idespecialista_d2d1d2ea_fk_especiali;
ALTER TABLE ONLY public.solicitud_neumatico_proxy DROP CONSTRAINT solicitud_neumatico_proxy_idproducto_264bd634_fk;
ALTER TABLE ONLY public.solicitud_neumatico_poveedor DROP CONSTRAINT solicitud_neumatico_poveedor_codmincex_id_32e9df78_fk;
ALTER TABLE ONLY public.solicitud_neumatico DROP CONSTRAINT solicitud_neumatico_numcontratocliente_e9e0724c_fk_cliente_n;
ALTER TABLE ONLY public.solicitud_neumatico DROP CONSTRAINT solicitud_neumatico_idespecialista_dfcda92c_fk_especiali;
ALTER TABLE ONLY public.solicitud_neumatico_poveedor DROP CONSTRAINT solicitud_neumatico__numsolicitud_4054007e_fk_solicitud;
ALTER TABLE ONLY public.solicitud_neumatico_proxy DROP CONSTRAINT solicitud_neumatico__numsolicitud_3ebfa720_fk_solicitud;
ALTER TABLE ONLY public.solicitud_equipo_proxy DROP CONSTRAINT solicitud_equipo_proxy_idproducto_08c7c6e0_fk;
ALTER TABLE ONLY public.solicitud_equipo_proxy DROP CONSTRAINT solicitud_equipo_pro_numsolicitud_812d2e09_fk_solicitud;
ALTER TABLE ONLY public.solicitud_equipo_poveedor DROP CONSTRAINT solicitud_equipo_poveedor_codmincex_id_1d17bb40_fk;
ALTER TABLE ONLY public.solicitud_equipo_poveedor DROP CONSTRAINT solicitud_equipo_pov_numsolicitud_a7fb9e8a_fk_solicitud;
ALTER TABLE ONLY public.solicitud_equipo DROP CONSTRAINT solicitud_equipo_numcontratocliente_08e73429_fk_cliente_n;
ALTER TABLE ONLY public.solicitud_equipo DROP CONSTRAINT solicitud_equipo_idespecialista_ca55c049_fk_especiali;
ALTER TABLE ONLY public.solicitud_bateria_proxy DROP CONSTRAINT solicitud_bateria_proxy_idproducto_d16d2d8c_fk;
ALTER TABLE ONLY public.solicitud_bateria_proxy DROP CONSTRAINT solicitud_bateria_pr_numsolicitud_94914016_fk_solicitud;
ALTER TABLE ONLY public.solicitud_bateria_poveedor DROP CONSTRAINT solicitud_bateria_poveedor_codmincex_id_2d96a593_fk;
ALTER TABLE ONLY public.solicitud_bateria_poveedor DROP CONSTRAINT solicitud_bateria_po_numsolicitud_7d22a710_fk_solicitud;
ALTER TABLE ONLY public.solicitud_bateria DROP CONSTRAINT solicitud_bateria_numcontratocliente_726f79a5_fk_cliente_n;
ALTER TABLE ONLY public.solicitud_bateria DROP CONSTRAINT solicitud_bateria_idespecialista_868f4087_fk_especiali;
ALTER TABLE ONLY public.reports_savedreport DROP CONSTRAINT reports_savedreport_run_by_id_0e49a3ac_fk_auth_user_id;
ALTER TABLE ONLY public.proveedor_marca DROP CONSTRAINT proveedor_marca_proveedor_id_81518723_fk_proveedor_codmincex;
ALTER TABLE ONLY public.proveedor_marca DROP CONSTRAINT proveedor_marca_marca_id_ae2ad161_fk;
ALTER TABLE ONLY public.proveedor DROP CONSTRAINT proveedor_codigopais_ba6f5c0d_fk;
ALTER TABLE ONLY public.ppa DROP CONSTRAINT ppa_modelo_5229ec8c_fk;
ALTER TABLE ONLY public.ppa DROP CONSTRAINT ppa_marca_id_ce5f7e04_fk;
ALTER TABLE ONLY public.neumatico DROP CONSTRAINT neumatico_marca_id_e2843a2d_fk;
ALTER TABLE ONLY public.especialista_comex DROP CONSTRAINT especialista_comex_idespecialista_8fc5f862_fk_auth_user_id;
ALTER TABLE ONLY public.equipo DROP CONSTRAINT equipo_marca_id_aef47c38_fk;
ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
ALTER TABLE ONLY public.cliente DROP CONSTRAINT cliente_provincia_478bfc63_fk_provincia_codigoprovincia;
ALTER TABLE ONLY public.casa_matriz DROP CONSTRAINT casa_matriz_codmincex_bd5fc4f6_fk;
ALTER TABLE ONLY public.bateria DROP CONSTRAINT bateria_marca_id_bff70813_fk;
ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
DROP INDEX public.sucursal_cuba_codmincex_aa0b5234_like;
DROP INDEX public.sucursal_cuba_codmincex_aa0b5234;
DROP INDEX public.solicitud_ppa_proxy_numsolicitud_b3c4e117;
DROP INDEX public.solicitud_ppa_proxy_idproducto_efc8a761;
DROP INDEX public.solicitud_ppa_poveedor_numsolicitud_f4187e0d;
DROP INDEX public.solicitud_ppa_poveedor_codmincex_id_ff8ec5cf_like;
DROP INDEX public.solicitud_ppa_poveedor_codmincex_id_ff8ec5cf;
DROP INDEX public.solicitud_ppa_numcontratocliente_cd73b766;
DROP INDEX public.solicitud_ppa_idproducto_5d5752e5;
DROP INDEX public.solicitud_ppa_idespecialista_d2d1d2ea;
DROP INDEX public.solicitud_neumatico_proxy_numsolicitud_3ebfa720;
DROP INDEX public.solicitud_neumatico_proxy_idproducto_264bd634;
DROP INDEX public.solicitud_neumatico_poveedor_numsolicitud_4054007e;
DROP INDEX public.solicitud_neumatico_poveedor_codmincex_id_32e9df78_like;
DROP INDEX public.solicitud_neumatico_poveedor_codmincex_id_32e9df78;
DROP INDEX public.solicitud_neumatico_numcontratocliente_e9e0724c;
DROP INDEX public.solicitud_neumatico_idespecialista_dfcda92c;
DROP INDEX public.solicitud_equipo_proxy_numsolicitud_812d2e09;
DROP INDEX public.solicitud_equipo_proxy_idproducto_08c7c6e0;
DROP INDEX public.solicitud_equipo_poveedor_numsolicitud_a7fb9e8a;
DROP INDEX public.solicitud_equipo_poveedor_codmincex_id_1d17bb40_like;
DROP INDEX public.solicitud_equipo_poveedor_codmincex_id_1d17bb40;
DROP INDEX public.solicitud_equipo_numcontratocliente_08e73429;
DROP INDEX public.solicitud_equipo_idespecialista_ca55c049;
DROP INDEX public.solicitud_bateria_proxy_numsolicitud_94914016;
DROP INDEX public.solicitud_bateria_proxy_idproducto_d16d2d8c;
DROP INDEX public.solicitud_bateria_poveedor_numsolicitud_7d22a710;
DROP INDEX public.solicitud_bateria_poveedor_codmincex_id_2d96a593_like;
DROP INDEX public.solicitud_bateria_poveedor_codmincex_id_2d96a593;
DROP INDEX public.solicitud_bateria_numcontratocliente_726f79a5;
DROP INDEX public.solicitud_bateria_idespecialista_868f4087;
DROP INDEX public.reports_savedreport_run_by_id_0e49a3ac;
DROP INDEX public.provincia_codigoprovincia_faf2e195_like;
DROP INDEX public.proveedor_marca_proveedor_id_81518723_like;
DROP INDEX public.proveedor_marca_proveedor_id_81518723;
DROP INDEX public.proveedor_marca_marca_id_ae2ad161;
DROP INDEX public.proveedor_codmincex_e9a8c16d_like;
DROP INDEX public.proveedor_codigopais_ba6f5c0d;
DROP INDEX public.ppa_modelo_5229ec8c;
DROP INDEX public.ppa_marca_id_ce5f7e04;
DROP INDEX public.pais_codigopais_f394d5a9_like;
DROP INDEX public.neumatico_marca_id_e2843a2d;
DROP INDEX public.equipo_marca_id_aef47c38;
DROP INDEX public.django_session_session_key_c0390e0f_like;
DROP INDEX public.django_session_expire_date_a5c62663;
DROP INDEX public.django_admin_log_user_id_c564eba6;
DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
DROP INDEX public.cliente_provincia_478bfc63_like;
DROP INDEX public.cliente_provincia_478bfc63;
DROP INDEX public.casa_matriz_codmincex_bd5fc4f6_like;
DROP INDEX public.casa_matriz_codmincex_bd5fc4f6;
DROP INDEX public.bateria_marca_id_bff70813;
DROP INDEX public.auth_user_username_6821ab7c_like;
DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
DROP INDEX public.auth_user_groups_group_id_97559544;
DROP INDEX public.auth_permission_content_type_id_2f476e4b;
DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
DROP INDEX public.auth_group_name_a6ea08ec_like;
ALTER TABLE ONLY public.sucursal_cuba DROP CONSTRAINT sucursal_cuba_pkey;
ALTER TABLE ONLY public.solicitud_ppa_proxy DROP CONSTRAINT solicitud_ppa_proxy_pkey;
ALTER TABLE ONLY public.solicitud_ppa_poveedor DROP CONSTRAINT solicitud_ppa_poveedor_pkey;
ALTER TABLE ONLY public.solicitud_ppa DROP CONSTRAINT solicitud_ppa_pkey;
ALTER TABLE ONLY public.solicitud_neumatico_proxy DROP CONSTRAINT solicitud_neumatico_proxy_pkey;
ALTER TABLE ONLY public.solicitud_neumatico_poveedor DROP CONSTRAINT solicitud_neumatico_poveedor_pkey;
ALTER TABLE ONLY public.solicitud_neumatico DROP CONSTRAINT solicitud_neumatico_pkey;
ALTER TABLE ONLY public.solicitud_equipo_proxy DROP CONSTRAINT solicitud_equipo_proxy_pkey;
ALTER TABLE ONLY public.solicitud_equipo_poveedor DROP CONSTRAINT solicitud_equipo_poveedor_pkey;
ALTER TABLE ONLY public.solicitud_equipo DROP CONSTRAINT solicitud_equipo_pkey;
ALTER TABLE ONLY public.solicitud_bateria_proxy DROP CONSTRAINT solicitud_bateria_proxy_pkey;
ALTER TABLE ONLY public.solicitud_bateria_poveedor DROP CONSTRAINT solicitud_bateria_poveedor_pkey;
ALTER TABLE ONLY public.solicitud_bateria DROP CONSTRAINT solicitud_bateria_pkey;
ALTER TABLE ONLY public.reports_savedreport DROP CONSTRAINT reports_savedreport_pkey;
ALTER TABLE ONLY public.provincia DROP CONSTRAINT provincia_pkey;
ALTER TABLE ONLY public.proveedor DROP CONSTRAINT proveedor_pkey;
ALTER TABLE ONLY public.proveedor_marca DROP CONSTRAINT proveedor_marca_proveedor_id_marca_id_716b0f11_uniq;
ALTER TABLE ONLY public.proveedor_marca DROP CONSTRAINT proveedor_marca_pkey;
ALTER TABLE ONLY public.proveedor DROP CONSTRAINT proveedor_codmincex_codigopais_eea1226c_uniq;
ALTER TABLE ONLY public.ppa DROP CONSTRAINT ppa_pkey;
ALTER TABLE ONLY public.pais DROP CONSTRAINT pais_pkey;
ALTER TABLE ONLY public.neumatico DROP CONSTRAINT neumatico_pkey;
ALTER TABLE ONLY public.especialista_comex DROP CONSTRAINT especialista_comex_pkey;
ALTER TABLE ONLY public.equipo DROP CONSTRAINT equipo_pkey;
ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
ALTER TABLE ONLY public.cliente DROP CONSTRAINT cliente_pkey;
ALTER TABLE ONLY public.casa_matriz DROP CONSTRAINT casa_matriz_pkey;
ALTER TABLE ONLY public.bateria DROP CONSTRAINT bateria_pkey;
ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
ALTER TABLE ONLY public."Trazas_logentry" DROP CONSTRAINT "Trazas_logentry_pkey";
ALTER TABLE ONLY public.marca DROP CONSTRAINT "Nomencladores_marca_pkey";
ALTER TABLE public.sucursal_cuba ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.solicitud_ppa_proxy ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.solicitud_ppa_poveedor ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.solicitud_ppa ALTER COLUMN numsolicitud DROP DEFAULT;
ALTER TABLE public.solicitud_neumatico_proxy ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.solicitud_neumatico_poveedor ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.solicitud_neumatico ALTER COLUMN numsolicitud DROP DEFAULT;
ALTER TABLE public.solicitud_equipo_proxy ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.solicitud_equipo_poveedor ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.solicitud_equipo ALTER COLUMN numsolicitud DROP DEFAULT;
ALTER TABLE public.solicitud_bateria_proxy ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.solicitud_bateria_poveedor ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.solicitud_bateria ALTER COLUMN numsolicitud DROP DEFAULT;
ALTER TABLE public.reports_savedreport ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.proveedor_marca ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.casa_matriz ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public."Trazas_logentry" ALTER COLUMN id DROP DEFAULT;
DROP SEQUENCE public.sucursal_cuba_id_seq;
DROP TABLE public.sucursal_cuba;
DROP SEQUENCE public.solicitud_ppa_proxy_id_seq;
DROP TABLE public.solicitud_ppa_proxy;
DROP SEQUENCE public.solicitud_ppa_poveedor_id_seq;
DROP TABLE public.solicitud_ppa_poveedor;
DROP SEQUENCE public.solicitud_ppa_numsolicitud_seq;
DROP TABLE public.solicitud_ppa;
DROP SEQUENCE public.solicitud_neumatico_proxy_id_seq;
DROP TABLE public.solicitud_neumatico_proxy;
DROP SEQUENCE public.solicitud_neumatico_poveedor_id_seq;
DROP TABLE public.solicitud_neumatico_poveedor;
DROP SEQUENCE public.solicitud_neumatico_numsolicitud_seq;
DROP TABLE public.solicitud_neumatico;
DROP SEQUENCE public.solicitud_equipo_proxy_id_seq;
DROP TABLE public.solicitud_equipo_proxy;
DROP SEQUENCE public.solicitud_equipo_poveedor_id_seq;
DROP TABLE public.solicitud_equipo_poveedor;
DROP SEQUENCE public.solicitud_equipo_numsolicitud_seq;
DROP TABLE public.solicitud_equipo;
DROP SEQUENCE public.solicitud_bateria_proxy_id_seq;
DROP TABLE public.solicitud_bateria_proxy;
DROP SEQUENCE public.solicitud_bateria_poveedor_id_seq;
DROP TABLE public.solicitud_bateria_poveedor;
DROP SEQUENCE public.solicitud_bateria_numsolicitud_seq;
DROP TABLE public.solicitud_bateria;
DROP SEQUENCE public.reports_savedreport_id_seq;
DROP TABLE public.reports_savedreport;
DROP TABLE public.provincia;
DROP SEQUENCE public.proveedor_marca_id_seq;
DROP TABLE public.proveedor_marca;
DROP TABLE public.proveedor;
DROP TABLE public.ppa;
DROP TABLE public.pais;
DROP TABLE public.neumatico;
DROP TABLE public.marca;
DROP TABLE public.especialista_comex;
DROP TABLE public.equipo;
DROP TABLE public.django_session;
DROP SEQUENCE public.django_migrations_id_seq;
DROP TABLE public.django_migrations;
DROP SEQUENCE public.django_content_type_id_seq;
DROP TABLE public.django_content_type;
DROP SEQUENCE public.django_admin_log_id_seq;
DROP TABLE public.django_admin_log;
DROP TABLE public.cliente;
DROP SEQUENCE public.casa_matriz_id_seq;
DROP TABLE public.casa_matriz;
DROP TABLE public.bateria;
DROP SEQUENCE public.auth_user_user_permissions_id_seq;
DROP TABLE public.auth_user_user_permissions;
DROP SEQUENCE public.auth_user_id_seq;
DROP SEQUENCE public.auth_user_groups_id_seq;
DROP TABLE public.auth_user_groups;
DROP TABLE public.auth_user;
DROP SEQUENCE public.auth_permission_id_seq;
DROP TABLE public.auth_permission;
DROP SEQUENCE public.auth_group_permissions_id_seq;
DROP TABLE public.auth_group_permissions;
DROP SEQUENCE public.auth_group_id_seq;
DROP TABLE public.auth_group;
DROP SEQUENCE public."Trazas_logentry_id_seq";
DROP TABLE public."Trazas_logentry";
SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: Trazas_logentry; Type: TABLE; Schema: public; Owner: const
--

CREATE TABLE public."Trazas_logentry" (
    id bigint NOT NULL
);


ALTER TABLE public."Trazas_logentry" OWNER TO const;

--
-- Name: Trazas_logentry_id_seq; Type: SEQUENCE; Schema: public; Owner: const
--

CREATE SEQUENCE public."Trazas_logentry_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Trazas_logentry_id_seq" OWNER TO const;

--
-- Name: Trazas_logentry_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: const
--

ALTER SEQUENCE public."Trazas_logentry_id_seq" OWNED BY public."Trazas_logentry".id;


--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: const
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO const;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: const
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO const;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: const
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: const
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO const;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: const
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO const;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: const
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: const
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    codename character varying(100) NOT NULL,
    content_type_id integer NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO const;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: const
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO const;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: const
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: const
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    role character varying(250) NOT NULL
);


ALTER TABLE public.auth_user OWNER TO const;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: const
--

CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO const;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: const
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO const;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: const
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: const
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO const;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: const
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: const
--

CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO const;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: const
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO const;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: const
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: bateria; Type: TABLE; Schema: public; Owner: const
--

CREATE TABLE public.bateria (
    idproducto character varying(30) NOT NULL,
    descripcion character varying(50) NOT NULL,
    "UM" character varying(15) NOT NULL,
    marca_id character varying(10) NOT NULL,
    voltaje double precision NOT NULL,
    amperaje double precision NOT NULL
);


ALTER TABLE public.bateria OWNER TO const;

--
-- Name: casa_matriz; Type: TABLE; Schema: public; Owner: const
--

CREATE TABLE public.casa_matriz (
    id bigint NOT NULL,
    direccion character varying(100) NOT NULL,
    email character varying(254) NOT NULL,
    telefono bigint NOT NULL,
    contacto character varying(150) NOT NULL,
    sitio_web character varying(60) NOT NULL,
    codmincex character varying(16) NOT NULL
);


ALTER TABLE public.casa_matriz OWNER TO const;

--
-- Name: casa_matriz_id_seq; Type: SEQUENCE; Schema: public; Owner: const
--

CREATE SEQUENCE public.casa_matriz_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.casa_matriz_id_seq OWNER TO const;

--
-- Name: casa_matriz_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: const
--

ALTER SEQUENCE public.casa_matriz_id_seq OWNED BY public.casa_matriz.id;


--
-- Name: cliente; Type: TABLE; Schema: public; Owner: const
--

CREATE TABLE public.cliente (
    numcontratocliente integer NOT NULL,
    nomcliente character varying(100) NOT NULL,
    "OSDE" character varying(45) NOT NULL,
    provincia character varying(3) NOT NULL
);


ALTER TABLE public.cliente OWNER TO const;

--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: const
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


ALTER TABLE public.django_admin_log OWNER TO const;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: const
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO const;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: const
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: const
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO const;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: const
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO const;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: const
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: const
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO const;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: const
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO const;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: const
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: const
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO const;

--
-- Name: equipo; Type: TABLE; Schema: public; Owner: const
--

CREATE TABLE public.equipo (
    idproducto character varying(30) NOT NULL,
    descripcion character varying(50) NOT NULL,
    "UM" character varying(15) NOT NULL,
    marca_id character varying(10) NOT NULL,
    modelo character varying(30) NOT NULL
);


ALTER TABLE public.equipo OWNER TO const;

--
-- Name: especialista_comex; Type: TABLE; Schema: public; Owner: const
--

CREATE TABLE public.especialista_comex (
    idespecialista integer NOT NULL,
    categoria character varying(10) NOT NULL
);


ALTER TABLE public.especialista_comex OWNER TO const;

--
-- Name: marca; Type: TABLE; Schema: public; Owner: const
--

CREATE TABLE public.marca (
    codigomarca character varying(10) NOT NULL,
    nommarca character varying(30) NOT NULL
);


ALTER TABLE public.marca OWNER TO const;

--
-- Name: neumatico; Type: TABLE; Schema: public; Owner: const
--

CREATE TABLE public.neumatico (
    idproducto character varying(30) NOT NULL,
    descripcion character varying(50) NOT NULL,
    "UM" character varying(15) NOT NULL,
    marca_id character varying(10) NOT NULL,
    diametro double precision NOT NULL,
    grosor double precision NOT NULL
);


ALTER TABLE public.neumatico OWNER TO const;

--
-- Name: pais; Type: TABLE; Schema: public; Owner: const
--

CREATE TABLE public.pais (
    nompais character varying(100) NOT NULL,
    codigopais character varying(20) NOT NULL
);


ALTER TABLE public.pais OWNER TO const;

--
-- Name: ppa; Type: TABLE; Schema: public; Owner: const
--

CREATE TABLE public.ppa (
    idproducto character varying(30) NOT NULL,
    descripcion character varying(50) NOT NULL,
    "UM" character varying(15) NOT NULL,
    marca_id character varying(10) NOT NULL,
    modelo character varying(30) NOT NULL
);


ALTER TABLE public.ppa OWNER TO const;

--
-- Name: proveedor; Type: TABLE; Schema: public; Owner: const
--

CREATE TABLE public.proveedor (
    codmincex character varying(16) NOT NULL,
    nomproveedor character varying(100) NOT NULL,
    clasificacion text NOT NULL,
    codigopais character varying(20) NOT NULL
);


ALTER TABLE public.proveedor OWNER TO const;

--
-- Name: proveedor_marca; Type: TABLE; Schema: public; Owner: const
--

CREATE TABLE public.proveedor_marca (
    id bigint NOT NULL,
    proveedor_id character varying(16) NOT NULL,
    marca_id character varying(10) NOT NULL
);


ALTER TABLE public.proveedor_marca OWNER TO const;

--
-- Name: proveedor_marca_id_seq; Type: SEQUENCE; Schema: public; Owner: const
--

CREATE SEQUENCE public.proveedor_marca_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.proveedor_marca_id_seq OWNER TO const;

--
-- Name: proveedor_marca_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: const
--

ALTER SEQUENCE public.proveedor_marca_id_seq OWNED BY public.proveedor_marca.id;


--
-- Name: provincia; Type: TABLE; Schema: public; Owner: const
--

CREATE TABLE public.provincia (
    codigoprovincia character varying(3) NOT NULL,
    nombre character varying(100) NOT NULL,
    capital character varying(100)
);


ALTER TABLE public.provincia OWNER TO const;

--
-- Name: reports_savedreport; Type: TABLE; Schema: public; Owner: const
--

CREATE TABLE public.reports_savedreport (
    id bigint NOT NULL,
    report character varying(255),
    report_file character varying(100) NOT NULL,
    date_modified timestamp with time zone NOT NULL,
    date_created timestamp with time zone NOT NULL,
    run_by_id integer
);


ALTER TABLE public.reports_savedreport OWNER TO const;

--
-- Name: reports_savedreport_id_seq; Type: SEQUENCE; Schema: public; Owner: const
--

CREATE SEQUENCE public.reports_savedreport_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.reports_savedreport_id_seq OWNER TO const;

--
-- Name: reports_savedreport_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: const
--

ALTER SEQUENCE public.reports_savedreport_id_seq OWNED BY public.reports_savedreport.id;


--
-- Name: solicitud_bateria; Type: TABLE; Schema: public; Owner: const
--

CREATE TABLE public.solicitud_bateria (
    numsolicitud integer NOT NULL,
    fechasol date NOT NULL,
    estado character varying(10) NOT NULL,
    observaciones text,
    valor_estimado double precision NOT NULL,
    idespecialista integer,
    numcontratocliente integer NOT NULL
);


ALTER TABLE public.solicitud_bateria OWNER TO const;

--
-- Name: solicitud_bateria_numsolicitud_seq; Type: SEQUENCE; Schema: public; Owner: const
--

CREATE SEQUENCE public.solicitud_bateria_numsolicitud_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.solicitud_bateria_numsolicitud_seq OWNER TO const;

--
-- Name: solicitud_bateria_numsolicitud_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: const
--

ALTER SEQUENCE public.solicitud_bateria_numsolicitud_seq OWNED BY public.solicitud_bateria.numsolicitud;


--
-- Name: solicitud_bateria_poveedor; Type: TABLE; Schema: public; Owner: const
--

CREATE TABLE public.solicitud_bateria_poveedor (
    id bigint NOT NULL,
    codmincex_id character varying(16) NOT NULL,
    numsolicitud integer NOT NULL
);


ALTER TABLE public.solicitud_bateria_poveedor OWNER TO const;

--
-- Name: solicitud_bateria_poveedor_id_seq; Type: SEQUENCE; Schema: public; Owner: const
--

CREATE SEQUENCE public.solicitud_bateria_poveedor_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.solicitud_bateria_poveedor_id_seq OWNER TO const;

--
-- Name: solicitud_bateria_poveedor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: const
--

ALTER SEQUENCE public.solicitud_bateria_poveedor_id_seq OWNED BY public.solicitud_bateria_poveedor.id;


--
-- Name: solicitud_bateria_proxy; Type: TABLE; Schema: public; Owner: const
--

CREATE TABLE public.solicitud_bateria_proxy (
    id bigint NOT NULL,
    cantidad integer NOT NULL,
    idproducto character varying(30) NOT NULL,
    numsolicitud integer NOT NULL
);


ALTER TABLE public.solicitud_bateria_proxy OWNER TO const;

--
-- Name: solicitud_bateria_proxy_id_seq; Type: SEQUENCE; Schema: public; Owner: const
--

CREATE SEQUENCE public.solicitud_bateria_proxy_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.solicitud_bateria_proxy_id_seq OWNER TO const;

--
-- Name: solicitud_bateria_proxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: const
--

ALTER SEQUENCE public.solicitud_bateria_proxy_id_seq OWNED BY public.solicitud_bateria_proxy.id;


--
-- Name: solicitud_equipo; Type: TABLE; Schema: public; Owner: const
--

CREATE TABLE public.solicitud_equipo (
    numsolicitud integer NOT NULL,
    fechasol date NOT NULL,
    estado character varying(10) NOT NULL,
    observaciones text,
    valor_estimado double precision NOT NULL,
    idespecialista integer,
    numcontratocliente integer NOT NULL
);


ALTER TABLE public.solicitud_equipo OWNER TO const;

--
-- Name: solicitud_equipo_numsolicitud_seq; Type: SEQUENCE; Schema: public; Owner: const
--

CREATE SEQUENCE public.solicitud_equipo_numsolicitud_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.solicitud_equipo_numsolicitud_seq OWNER TO const;

--
-- Name: solicitud_equipo_numsolicitud_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: const
--

ALTER SEQUENCE public.solicitud_equipo_numsolicitud_seq OWNED BY public.solicitud_equipo.numsolicitud;


--
-- Name: solicitud_equipo_poveedor; Type: TABLE; Schema: public; Owner: const
--

CREATE TABLE public.solicitud_equipo_poveedor (
    id bigint NOT NULL,
    codmincex_id character varying(16) NOT NULL,
    numsolicitud integer NOT NULL
);


ALTER TABLE public.solicitud_equipo_poveedor OWNER TO const;

--
-- Name: solicitud_equipo_poveedor_id_seq; Type: SEQUENCE; Schema: public; Owner: const
--

CREATE SEQUENCE public.solicitud_equipo_poveedor_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.solicitud_equipo_poveedor_id_seq OWNER TO const;

--
-- Name: solicitud_equipo_poveedor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: const
--

ALTER SEQUENCE public.solicitud_equipo_poveedor_id_seq OWNED BY public.solicitud_equipo_poveedor.id;


--
-- Name: solicitud_equipo_proxy; Type: TABLE; Schema: public; Owner: const
--

CREATE TABLE public.solicitud_equipo_proxy (
    id bigint NOT NULL,
    cantidad integer NOT NULL,
    idproducto character varying(30) NOT NULL,
    numsolicitud integer NOT NULL
);


ALTER TABLE public.solicitud_equipo_proxy OWNER TO const;

--
-- Name: solicitud_equipo_proxy_id_seq; Type: SEQUENCE; Schema: public; Owner: const
--

CREATE SEQUENCE public.solicitud_equipo_proxy_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.solicitud_equipo_proxy_id_seq OWNER TO const;

--
-- Name: solicitud_equipo_proxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: const
--

ALTER SEQUENCE public.solicitud_equipo_proxy_id_seq OWNED BY public.solicitud_equipo_proxy.id;


--
-- Name: solicitud_neumatico; Type: TABLE; Schema: public; Owner: const
--

CREATE TABLE public.solicitud_neumatico (
    numsolicitud integer NOT NULL,
    fechasol date NOT NULL,
    estado character varying(10) NOT NULL,
    observaciones text,
    valor_estimado double precision NOT NULL,
    idespecialista integer,
    numcontratocliente integer NOT NULL
);


ALTER TABLE public.solicitud_neumatico OWNER TO const;

--
-- Name: solicitud_neumatico_numsolicitud_seq; Type: SEQUENCE; Schema: public; Owner: const
--

CREATE SEQUENCE public.solicitud_neumatico_numsolicitud_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.solicitud_neumatico_numsolicitud_seq OWNER TO const;

--
-- Name: solicitud_neumatico_numsolicitud_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: const
--

ALTER SEQUENCE public.solicitud_neumatico_numsolicitud_seq OWNED BY public.solicitud_neumatico.numsolicitud;


--
-- Name: solicitud_neumatico_poveedor; Type: TABLE; Schema: public; Owner: const
--

CREATE TABLE public.solicitud_neumatico_poveedor (
    id bigint NOT NULL,
    codmincex_id character varying(16) NOT NULL,
    numsolicitud integer NOT NULL
);


ALTER TABLE public.solicitud_neumatico_poveedor OWNER TO const;

--
-- Name: solicitud_neumatico_poveedor_id_seq; Type: SEQUENCE; Schema: public; Owner: const
--

CREATE SEQUENCE public.solicitud_neumatico_poveedor_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.solicitud_neumatico_poveedor_id_seq OWNER TO const;

--
-- Name: solicitud_neumatico_poveedor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: const
--

ALTER SEQUENCE public.solicitud_neumatico_poveedor_id_seq OWNED BY public.solicitud_neumatico_poveedor.id;


--
-- Name: solicitud_neumatico_proxy; Type: TABLE; Schema: public; Owner: const
--

CREATE TABLE public.solicitud_neumatico_proxy (
    id bigint NOT NULL,
    cantidad integer NOT NULL,
    idproducto character varying(30) NOT NULL,
    numsolicitud integer NOT NULL
);


ALTER TABLE public.solicitud_neumatico_proxy OWNER TO const;

--
-- Name: solicitud_neumatico_proxy_id_seq; Type: SEQUENCE; Schema: public; Owner: const
--

CREATE SEQUENCE public.solicitud_neumatico_proxy_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.solicitud_neumatico_proxy_id_seq OWNER TO const;

--
-- Name: solicitud_neumatico_proxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: const
--

ALTER SEQUENCE public.solicitud_neumatico_proxy_id_seq OWNED BY public.solicitud_neumatico_proxy.id;


--
-- Name: solicitud_ppa; Type: TABLE; Schema: public; Owner: const
--

CREATE TABLE public.solicitud_ppa (
    numsolicitud integer NOT NULL,
    fechasol date NOT NULL,
    estado character varying(10) NOT NULL,
    observaciones text,
    valor_estimado double precision NOT NULL,
    idproducto character varying(30) NOT NULL,
    idespecialista integer,
    numcontratocliente integer NOT NULL
);


ALTER TABLE public.solicitud_ppa OWNER TO const;

--
-- Name: solicitud_ppa_numsolicitud_seq; Type: SEQUENCE; Schema: public; Owner: const
--

CREATE SEQUENCE public.solicitud_ppa_numsolicitud_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.solicitud_ppa_numsolicitud_seq OWNER TO const;

--
-- Name: solicitud_ppa_numsolicitud_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: const
--

ALTER SEQUENCE public.solicitud_ppa_numsolicitud_seq OWNED BY public.solicitud_ppa.numsolicitud;


--
-- Name: solicitud_ppa_poveedor; Type: TABLE; Schema: public; Owner: const
--

CREATE TABLE public.solicitud_ppa_poveedor (
    id bigint NOT NULL,
    codmincex_id character varying(16) NOT NULL,
    numsolicitud integer NOT NULL
);


ALTER TABLE public.solicitud_ppa_poveedor OWNER TO const;

--
-- Name: solicitud_ppa_poveedor_id_seq; Type: SEQUENCE; Schema: public; Owner: const
--

CREATE SEQUENCE public.solicitud_ppa_poveedor_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.solicitud_ppa_poveedor_id_seq OWNER TO const;

--
-- Name: solicitud_ppa_poveedor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: const
--

ALTER SEQUENCE public.solicitud_ppa_poveedor_id_seq OWNED BY public.solicitud_ppa_poveedor.id;


--
-- Name: solicitud_ppa_proxy; Type: TABLE; Schema: public; Owner: const
--

CREATE TABLE public.solicitud_ppa_proxy (
    id bigint NOT NULL,
    cantidad integer NOT NULL,
    idproducto character varying(30) NOT NULL,
    numsolicitud integer NOT NULL
);


ALTER TABLE public.solicitud_ppa_proxy OWNER TO const;

--
-- Name: solicitud_ppa_proxy_id_seq; Type: SEQUENCE; Schema: public; Owner: const
--

CREATE SEQUENCE public.solicitud_ppa_proxy_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.solicitud_ppa_proxy_id_seq OWNER TO const;

--
-- Name: solicitud_ppa_proxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: const
--

ALTER SEQUENCE public.solicitud_ppa_proxy_id_seq OWNED BY public.solicitud_ppa_proxy.id;


--
-- Name: sucursal_cuba; Type: TABLE; Schema: public; Owner: const
--

CREATE TABLE public.sucursal_cuba (
    id bigint NOT NULL,
    direccion character varying(100) NOT NULL,
    email character varying(254) NOT NULL,
    telefono bigint NOT NULL,
    contacto character varying(150) NOT NULL,
    carnet_trabajo character varying(200) NOT NULL,
    codmincex character varying(16) NOT NULL
);


ALTER TABLE public.sucursal_cuba OWNER TO const;

--
-- Name: sucursal_cuba_id_seq; Type: SEQUENCE; Schema: public; Owner: const
--

CREATE SEQUENCE public.sucursal_cuba_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sucursal_cuba_id_seq OWNER TO const;

--
-- Name: sucursal_cuba_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: const
--

ALTER SEQUENCE public.sucursal_cuba_id_seq OWNED BY public.sucursal_cuba.id;


--
-- Name: Trazas_logentry id; Type: DEFAULT; Schema: public; Owner: const
--

ALTER TABLE ONLY public."Trazas_logentry" ALTER COLUMN id SET DEFAULT nextval('public."Trazas_logentry_id_seq"'::regclass);


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: casa_matriz id; Type: DEFAULT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.casa_matriz ALTER COLUMN id SET DEFAULT nextval('public.casa_matriz_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: proveedor_marca id; Type: DEFAULT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.proveedor_marca ALTER COLUMN id SET DEFAULT nextval('public.proveedor_marca_id_seq'::regclass);


--
-- Name: reports_savedreport id; Type: DEFAULT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.reports_savedreport ALTER COLUMN id SET DEFAULT nextval('public.reports_savedreport_id_seq'::regclass);


--
-- Name: solicitud_bateria numsolicitud; Type: DEFAULT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_bateria ALTER COLUMN numsolicitud SET DEFAULT nextval('public.solicitud_bateria_numsolicitud_seq'::regclass);


--
-- Name: solicitud_bateria_poveedor id; Type: DEFAULT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_bateria_poveedor ALTER COLUMN id SET DEFAULT nextval('public.solicitud_bateria_poveedor_id_seq'::regclass);


--
-- Name: solicitud_bateria_proxy id; Type: DEFAULT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_bateria_proxy ALTER COLUMN id SET DEFAULT nextval('public.solicitud_bateria_proxy_id_seq'::regclass);


--
-- Name: solicitud_equipo numsolicitud; Type: DEFAULT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_equipo ALTER COLUMN numsolicitud SET DEFAULT nextval('public.solicitud_equipo_numsolicitud_seq'::regclass);


--
-- Name: solicitud_equipo_poveedor id; Type: DEFAULT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_equipo_poveedor ALTER COLUMN id SET DEFAULT nextval('public.solicitud_equipo_poveedor_id_seq'::regclass);


--
-- Name: solicitud_equipo_proxy id; Type: DEFAULT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_equipo_proxy ALTER COLUMN id SET DEFAULT nextval('public.solicitud_equipo_proxy_id_seq'::regclass);


--
-- Name: solicitud_neumatico numsolicitud; Type: DEFAULT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_neumatico ALTER COLUMN numsolicitud SET DEFAULT nextval('public.solicitud_neumatico_numsolicitud_seq'::regclass);


--
-- Name: solicitud_neumatico_poveedor id; Type: DEFAULT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_neumatico_poveedor ALTER COLUMN id SET DEFAULT nextval('public.solicitud_neumatico_poveedor_id_seq'::regclass);


--
-- Name: solicitud_neumatico_proxy id; Type: DEFAULT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_neumatico_proxy ALTER COLUMN id SET DEFAULT nextval('public.solicitud_neumatico_proxy_id_seq'::regclass);


--
-- Name: solicitud_ppa numsolicitud; Type: DEFAULT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_ppa ALTER COLUMN numsolicitud SET DEFAULT nextval('public.solicitud_ppa_numsolicitud_seq'::regclass);


--
-- Name: solicitud_ppa_poveedor id; Type: DEFAULT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_ppa_poveedor ALTER COLUMN id SET DEFAULT nextval('public.solicitud_ppa_poveedor_id_seq'::regclass);


--
-- Name: solicitud_ppa_proxy id; Type: DEFAULT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_ppa_proxy ALTER COLUMN id SET DEFAULT nextval('public.solicitud_ppa_proxy_id_seq'::regclass);


--
-- Name: sucursal_cuba id; Type: DEFAULT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.sucursal_cuba ALTER COLUMN id SET DEFAULT nextval('public.sucursal_cuba_id_seq'::regclass);


--
-- Data for Name: Trazas_logentry; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public."Trazas_logentry" (id) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.auth_group (id, name) FROM stdin;
1	admin
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
1	1	1
2	1	2
3	1	3
4	1	4
5	1	5
6	1	6
7	1	7
8	1	8
9	1	9
10	1	10
11	1	11
12	1	12
13	1	13
14	1	14
15	1	15
16	1	16
17	1	17
18	1	18
19	1	19
20	1	20
21	1	21
22	1	22
23	1	23
24	1	24
25	1	25
26	1	26
27	1	27
28	1	28
29	1	29
30	1	30
31	1	31
32	1	32
33	1	33
34	1	34
35	1	35
36	1	36
37	1	37
38	1	38
39	1	39
40	1	40
41	1	41
42	1	42
43	1	43
44	1	44
45	1	45
46	1	46
47	1	47
48	1	48
49	1	49
50	1	50
51	1	51
52	1	52
53	1	53
54	1	54
55	1	55
56	1	56
57	1	57
58	1	58
59	1	59
60	1	60
61	1	61
62	1	62
63	1	63
64	1	64
65	1	65
66	1	66
67	1	67
68	1	68
69	1	69
70	1	70
71	1	71
72	1	72
73	1	73
74	1	74
75	1	75
76	1	76
77	1	77
78	1	78
79	1	79
80	1	80
81	1	81
82	1	82
83	1	83
84	1	84
85	1	85
86	1	86
87	1	87
88	1	88
89	1	89
90	1	90
91	1	91
92	1	92
93	1	93
94	1	94
95	1	95
96	1	96
97	1	97
98	1	98
99	1	99
100	1	100
101	1	101
102	1	102
103	1	103
104	1	104
105	1	105
106	1	106
107	1	107
108	1	108
109	1	109
110	1	110
111	1	111
112	1	112
113	1	113
114	1	114
115	1	115
116	1	116
117	1	117
118	1	118
119	1	119
120	1	120
121	1	121
122	1	122
123	1	123
124	1	124
125	1	125
126	1	126
127	1	127
128	1	128
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.auth_permission (id, name, codename, content_type_id) FROM stdin;
1	Can add Traza	add_logentry	1
2	Can change Traza	change_logentry	1
3	Can delete Traza	delete_logentry	1
4	Can view Traza	view_logentry	1
5	Can add permission	add_permission	2
6	Can change permission	change_permission	2
7	Can delete permission	delete_permission	2
8	Can view permission	view_permission	2
9	Can add rol	add_group	3
10	Can change rol	change_group	3
11	Can delete rol	delete_group	3
12	Can view rol	view_group	3
13	Can add user	add_user	4
14	Can change user	change_user	4
15	Can delete user	delete_user	4
16	Can view user	view_user	4
17	Can add content type	add_contenttype	5
18	Can change content type	change_contenttype	5
19	Can delete content type	delete_contenttype	5
20	Can view content type	view_contenttype	5
21	Can add session	add_session	6
22	Can change session	change_session	6
23	Can delete session	delete_session	6
24	Can view session	view_session	6
25	Can add Solicitud de Batería	add_solicitud_bateria	7
26	Can change Solicitud de Batería	change_solicitud_bateria	7
27	Can delete Solicitud de Batería	delete_solicitud_bateria	7
28	Can view Solicitud de Batería	view_solicitud_bateria	7
29	Can add Solicitud de Equipo	add_solicitud_equipo	8
30	Can change Solicitud de Equipo	change_solicitud_equipo	8
31	Can delete Solicitud de Equipo	delete_solicitud_equipo	8
32	Can view Solicitud de Equipo	view_solicitud_equipo	8
33	Can add Solicitud de Neumático	add_solicitud_neumatico	9
34	Can change Solicitud de Neumático	change_solicitud_neumatico	9
35	Can delete Solicitud de Neumático	delete_solicitud_neumatico	9
36	Can view Solicitud de Neumático	view_solicitud_neumatico	9
37	Can add Solicitud de Partes, Piezas y Accesorios	add_solicitud_ppa	10
38	Can change Solicitud de Partes, Piezas y Accesorios	change_solicitud_ppa	10
39	Can delete Solicitud de Partes, Piezas y Accesorios	delete_solicitud_ppa	10
40	Can view Solicitud de Partes, Piezas y Accesorios	view_solicitud_ppa	10
41	Can add Partes, Piezas y Accesorios	add_solicitud_ppa_proxy	11
42	Can change Partes, Piezas y Accesorios	change_solicitud_ppa_proxy	11
43	Can delete Partes, Piezas y Accesorios	delete_solicitud_ppa_proxy	11
44	Can view Partes, Piezas y Accesorios	view_solicitud_ppa_proxy	11
45	Can add Proveedor	add_solicitud_ppa_proveedor	12
46	Can change Proveedor	change_solicitud_ppa_proveedor	12
47	Can delete Proveedor	delete_solicitud_ppa_proveedor	12
48	Can view Proveedor	view_solicitud_ppa_proveedor	12
49	Can add Neumático	add_solicitud_neumatico_proxy	13
50	Can change Neumático	change_solicitud_neumatico_proxy	13
51	Can delete Neumático	delete_solicitud_neumatico_proxy	13
52	Can view Neumático	view_solicitud_neumatico_proxy	13
53	Can add Proveedor	add_solicitud_neumatico_proveedor	14
54	Can change Proveedor	change_solicitud_neumatico_proveedor	14
55	Can delete Proveedor	delete_solicitud_neumatico_proveedor	14
56	Can view Proveedor	view_solicitud_neumatico_proveedor	14
57	Can add Equipo	add_solicitud_equipo_proxy	15
58	Can change Equipo	change_solicitud_equipo_proxy	15
59	Can delete Equipo	delete_solicitud_equipo_proxy	15
60	Can view Equipo	view_solicitud_equipo_proxy	15
61	Can add Proveedor	add_solicitud_equipo_proveedor	16
62	Can change Proveedor	change_solicitud_equipo_proveedor	16
63	Can delete Proveedor	delete_solicitud_equipo_proveedor	16
64	Can view Proveedor	view_solicitud_equipo_proveedor	16
65	Can add Batería	add_solicitud_bateria_proxy	17
66	Can change Batería	change_solicitud_bateria_proxy	17
67	Can delete Batería	delete_solicitud_bateria_proxy	17
68	Can view Batería	view_solicitud_bateria_proxy	17
69	Can add Proveedor	add_solicitud_bateria_proveedor	18
70	Can change Proveedor	change_solicitud_bateria_proveedor	18
71	Can delete Proveedor	delete_solicitud_bateria_proveedor	18
72	Can view Proveedor	view_solicitud_bateria_proveedor	18
73	Can add Especialista COMEX	add_especialistacomex	19
74	Can change Especialista COMEX	change_especialistacomex	19
75	Can delete Especialista COMEX	delete_especialistacomex	19
76	Can view Especialista COMEX	view_especialistacomex	19
77	Can add Batería	add_bateria	20
78	Can change Batería	change_bateria	20
79	Can delete Batería	delete_bateria	20
80	Can view Batería	view_bateria	20
81	Can add Equipo	add_equipo	21
82	Can change Equipo	change_equipo	21
83	Can delete Equipo	delete_equipo	21
84	Can view Equipo	view_equipo	21
85	Can add Neumático	add_neumatico	22
86	Can change Neumático	change_neumatico	22
87	Can delete Neumático	delete_neumatico	22
88	Can view Neumático	view_neumatico	22
89	Can add País	add_pais	23
90	Can change País	change_pais	23
91	Can delete País	delete_pais	23
92	Can view País	view_pais	23
93	Can add Pieza	add_ppa	24
94	Can change Pieza	change_ppa	24
95	Can delete Pieza	delete_ppa	24
96	Can view Pieza	view_ppa	24
97	Can add Proveedor	add_proveedor	25
98	Can change Proveedor	change_proveedor	25
99	Can delete Proveedor	delete_proveedor	25
100	Can view Proveedor	view_proveedor	25
101	Can add Provincia	add_provincia	26
102	Can change Provincia	change_provincia	26
103	Can delete Provincia	delete_provincia	26
104	Can view Provincia	view_provincia	26
105	Can add Sucursal en Cuba	add_sucursal_cuba	27
106	Can change Sucursal en Cuba	change_sucursal_cuba	27
107	Can delete Sucursal en Cuba	delete_sucursal_cuba	27
108	Can view Sucursal en Cuba	view_sucursal_cuba	27
109	Can add cliente	add_cliente	28
110	Can change cliente	change_cliente	28
111	Can delete cliente	delete_cliente	28
112	Can view cliente	view_cliente	28
113	Can add Casa Matriz	add_casa_matriz	29
114	Can change Casa Matriz	change_casa_matriz	29
115	Can delete Casa Matriz	delete_casa_matriz	29
116	Can view Casa Matriz	view_casa_matriz	29
117	Can add marca	add_marca	30
118	Can change marca	change_marca	30
119	Can delete marca	delete_marca	30
120	Can view marca	view_marca	30
121	Can add log entry	add_logentry	31
122	Can change log entry	change_logentry	31
123	Can delete log entry	delete_logentry	31
124	Can view log entry	view_logentry	31
125	Can add saved report	add_savedreport	32
126	Can change saved report	change_savedreport	32
127	Can delete saved report	delete_savedreport	32
128	Can view saved report	view_savedreport	32
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined, role) FROM stdin;
1	pbkdf2_sha256$320000$JY2lrueVEU0ZHPi69M7HAu$uQ8BWWwJ4GpVbbiIODy5zKGxeiGN4h9wyeK0MQZuxkA=	2022-04-21 11:51:46.14523-04	t	admin				t	t	2022-04-21 10:36:26.936626-04	CONSULTOR
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: bateria; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.bateria (idproducto, descripcion, "UM", marca_id, voltaje, amperaje) FROM stdin;
\.


--
-- Data for Name: casa_matriz; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.casa_matriz (id, direccion, email, telefono, contacto, sitio_web, codmincex) FROM stdin;
\.


--
-- Data for Name: cliente; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.cliente (numcontratocliente, nomcliente, "OSDE", provincia) FROM stdin;
20220003	Empresa de Inversiones de la Construcción	GEICON	HB
20220002	EMCC Camilo Cienfuegos	GEDIC	HB
20220001	DINVAI	GEDIC	MT
20220004	ECOING 25	GEDIC	VC
20220005	IMECO	GEDIC	HB
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2022-04-21 10:45:41.132021-04		Villa Clara	1	new through import_export	26	1
2	2022-04-21 10:45:41.13602-04		Sancti Spíritus	1	new through import_export	26	1
3	2022-04-21 10:45:41.137041-04		Santiago de Cuba	1	new through import_export	26	1
4	2022-04-21 10:45:41.137041-04		Pinar del Río	1	new through import_export	26	1
5	2022-04-21 10:45:41.138048-04		Matanzas	1	new through import_export	26	1
6	2022-04-21 10:45:41.139046-04		Mayabeque	1	new through import_export	26	1
7	2022-04-21 10:45:41.139046-04		Las Tunas	1	new through import_export	26	1
8	2022-04-21 10:45:41.140044-04		Isla de la Juventud	1	new through import_export	26	1
9	2022-04-21 10:45:41.140044-04		Holguín	1	new through import_export	26	1
10	2022-04-21 10:45:41.140044-04		La Habana	1	new through import_export	26	1
11	2022-04-21 10:45:41.141042-04		Guantánamo	1	new through import_export	26	1
12	2022-04-21 10:45:41.141042-04		Granma	1	new through import_export	26	1
13	2022-04-21 10:45:41.142041-04		Camaguey	1	new through import_export	26	1
14	2022-04-21 10:45:41.142041-04		Cienfuegos	1	new through import_export	26	1
15	2022-04-21 10:45:41.142041-04		Ciego de Ávila	1	new through import_export	26	1
16	2022-04-21 10:45:41.143045-04		Artemisa	1	new through import_export	26	1
17	2022-04-21 10:46:52.854009-04	PR	Pinar del Río	1	new through import_export	26	1
18	2022-04-21 10:46:52.856007-04	AT	Artemisa	1	new through import_export	26	1
19	2022-04-21 10:46:52.857027-04	HB	La Habana	1	new through import_export	26	1
20	2022-04-21 10:46:52.857027-04	MB	Mayabeque	1	new through import_export	26	1
21	2022-04-21 10:46:52.858034-04	MT	Matanzas	1	new through import_export	26	1
22	2022-04-21 10:46:52.858034-04	CF	Cienfuegos	1	new through import_export	26	1
23	2022-04-21 10:46:52.859039-04	VC	Villa Clara	1	new through import_export	26	1
24	2022-04-21 10:46:52.859039-04	SP	Sancti Spíritus	1	new through import_export	26	1
25	2022-04-21 10:46:52.860042-04	CA	Ciego de Ávila	1	new through import_export	26	1
26	2022-04-21 10:46:52.860042-04	CM	Camaguey	1	new through import_export	26	1
27	2022-04-21 10:46:52.861014-04	LT	Las Tunas	1	new through import_export	26	1
28	2022-04-21 10:46:52.862007-04	HL	Holguín	1	new through import_export	26	1
29	2022-04-21 10:46:52.862007-04	GR	Granma	1	new through import_export	26	1
30	2022-04-21 10:46:52.863032-04	SC	Santiago de Cuba	1	new through import_export	26	1
31	2022-04-21 10:46:52.863032-04	GT	Guantánamo	1	new through import_export	26	1
32	2022-04-21 10:46:52.864025-04	IJ	Isla de la Juventud	1	new through import_export	26	1
33	2022-04-21 10:48:42.278555-04	20220003	Empresa de Inversiones de la Construcción	1	new through import_export	28	1
34	2022-04-21 10:48:42.281578-04	20220002	EMCC Camilo Cienfuegos	1	new through import_export	28	1
35	2022-04-21 10:48:42.281578-04	20220001	DINVAI	1	new through import_export	28	1
36	2022-04-21 10:48:42.282592-04	20220004	ECOING 25	1	new through import_export	28	1
37	2022-04-21 10:48:42.283578-04	20220005	IMECO	1	new through import_export	28	1
38	2022-04-21 11:45:56.210742-04	1	admin	1	[{"added": {}}]	3	1
39	2022-04-21 11:50:23.944078-04	CHN	China	1	[{"added": {}}]	23	1
40	2022-04-21 11:52:37.629627-04	CN-0132	CHINA AUTO CAIEC  LTD	1	[{"added": {}}, {"added": {"name": "Sucursal en Cuba", "object": "Sucursal_Cuba object (1)"}}, {"added": {"name": "Casa Matriz", "object": "Casa_Matriz object (1)"}}]	25	1
41	2022-04-21 11:54:39.83388-04	5283	KAMAZ	1	[{"added": {}}]	30	1
42	2022-04-21 11:57:48.022438-04	594284052	Grúa	1	[{"added": {}}]	21	1
43	2022-04-21 11:58:45.760082-04	64728692	Manguera de freno	1	[{"added": {}}]	24	1
44	2022-04-21 11:59:02.492982-04	594284052	Grúa KAMAZ KM-1632	2	[{"changed": {"fields": ["Descripci\\u00f3n"]}}]	21	1
45	2022-04-21 12:08:17.119122-04	1	1	1	[{"added": {}}, {"added": {"name": "Proveedor", "object": "Solicitud_Equipo_Proveedor object (1)"}}, {"added": {"name": "Equipo", "object": "Gr\\u00faa KAMAZ KM-1632"}}]	8	1
46	2022-04-21 15:55:55.338446-04	CHN	China	3		23	1
47	2022-04-21 18:00:40.841151-04	﻿codigopais	pais	3		23	1
48	2022-04-21 18:34:11.937187-04	CN-0132	CHINA AUTO CAIEC  LTD(CAIEC)	1	new through import_export	25	1
49	2022-04-21 18:34:11.940186-04	CN-1287	(CAMCE) CHINA NATIONAL CONSTRUCTION & AGRICULTURAL MACHINARY IMPOT AND EXPORT CORPORATION	1	new through import_export	25	1
50	2022-04-21 18:34:11.942188-04	ES-4425-8	CICLAUTO AUTOMOCION S.L 	1	new through import_export	25	1
51	2022-04-21 18:34:11.943186-04	PA-1439	EL ESTABLO S.A	1	new through import_export	25	1
52	2022-04-21 18:34:11.943186-04	VG-0008	FOREGO INTERNATIONAL LTD	1	new through import_export	25	1
53	2022-04-21 18:35:07.551561-04	VG-0008	FOREGO INTERNATIONAL LTD	2	[{"changed": {"fields": ["Clasificaci\\u00f3n"]}}]	25	1
54	2022-04-21 18:35:37.413816-04	VG-0008	FOREGO INTERNATIONAL LTD	2	[{"changed": {"fields": ["Clasificaci\\u00f3n"]}}]	25	1
55	2022-04-21 18:42:17.658265-04	647386-00-563	Camión KAMAZ	1	[{"added": {}}]	21	1
56	2022-04-21 18:42:47.093128-04	740-3701008-40	ALTERNADOR	1	[{"added": {}}]	24	1
57	2022-04-21 18:43:00.89915-04	647386-00-563	Camión KAMAZ 5511	2	[{"changed": {"fields": ["Descripci\\u00f3n"]}}]	21	1
58	2022-04-21 18:44:10.758725-04	1	1	2	[{"added": {"name": "Proveedor", "object": "Solicitud_Equipo_Proveedor object (2)"}}, {"added": {"name": "Proveedor", "object": "Solicitud_Equipo_Proveedor object (3)"}}]	8	1
59	2022-04-21 18:54:16.664208-04	2	SANY	1	[{"added": {}}]	30	1
60	2022-04-21 18:54:32.87449-04	5283	KAMAZ	3		30	1
61	2022-04-21 18:54:32.877523-04	2	SANY	3		30	1
62	2022-04-22 03:56:27.336699-04	423	DOOSAN	1	[{"added": {}}]	30	1
63	2022-04-22 03:56:38.726906-04	423	DOOSAN	3		30	1
64	2022-04-22 03:58:39.371702-04	DS-0021	DOOSAN	1	[{"added": {}}]	30	1
65	2022-04-22 03:59:02.629476-04	DW-2156	DAEWOO	1	[{"added": {}}]	30	1
66	2022-04-22 03:59:20.576816-04	KMZ-8756	KAMAZ	1	[{"added": {}}]	30	1
67	2022-04-22 03:59:36.161717-04	SNY-1252	SANY	1	[{"added": {}}]	30	1
68	2022-04-22 04:00:07.864186-04	CTP-5496	CATERPILLAR	1	[{"added": {}}]	30	1
69	2022-04-22 04:00:36.396499-04	KMT-6365	KOMATSU	1	[{"added": {}}]	30	1
70	2022-04-22 04:01:23.657349-04	ISZ-9782	ISUZU	1	[{"added": {}}]	30	1
71	2022-04-22 04:01:43.83699-04	HIT-3164	HITACHI	1	[{"added": {}}]	30	1
72	2022-04-22 04:02:07.919248-04	GLY-2356	GEELY	1	[{"added": {}}]	30	1
73	2022-04-22 04:02:36.052708-04	NWH-3369	NEW HOLLAND	1	[{"added": {}}]	30	1
74	2022-04-22 04:03:04.992839-04	VLV-4025	VOLVO	1	[{"added": {}}]	30	1
75	2022-04-22 04:03:28.821136-04	PGT-3032	PEUGEOT	1	[{"added": {}}]	30	1
76	2022-04-22 04:03:58.979065-04	FRD-9954	FORD	1	[{"added": {}}]	30	1
77	2022-04-22 04:04:22.656116-04	NSN-7156	NISSAN	1	[{"added": {}}]	30	1
78	2022-04-22 04:05:00.41827-04	MBZ-1227	MERCEDES BENZ	1	[{"added": {}}]	30	1
79	2022-04-22 04:05:35.598437-04	TYT-2121	TOYOTA	1	[{"added": {}}]	30	1
80	2022-04-22 04:06:04.360747-04	LDA-1101	LADA	1	[{"added": {}}]	30	1
81	2022-04-22 04:06:41.766005-04	647386-00-563	Camión KAMAZ 5511	1	[{"added": {}}]	21	1
82	2022-04-22 04:07:16.460912-04	647386-00-570	Camión KAMAZ 53212	1	[{"added": {}}]	21	1
83	2022-04-22 04:08:22.902807-04	59428400325	BULLDOZER KOMATSU D85 A18	1	[{"added": {}}]	21	1
84	2022-04-22 04:09:05.228896-04	59428400360	BULLDOZER KOMATSU D-155-A-1	1	[{"added": {}}]	21	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	Solicitudes	solicitud_bateria
8	Solicitudes	solicitud_equipo
9	Solicitudes	solicitud_neumatico
10	Solicitudes	solicitud_ppa
11	Solicitudes	solicitud_ppa_proxy
12	Solicitudes	solicitud_ppa_proveedor
13	Solicitudes	solicitud_neumatico_proxy
14	Solicitudes	solicitud_neumatico_proveedor
15	Solicitudes	solicitud_equipo_proxy
16	Solicitudes	solicitud_equipo_proveedor
17	Solicitudes	solicitud_bateria_proxy
18	Solicitudes	solicitud_bateria_proveedor
19	COMEX	especialistacomex
20	Nomencladores	bateria
21	Nomencladores	equipo
22	Nomencladores	neumatico
23	Nomencladores	pais
24	Nomencladores	ppa
25	Nomencladores	proveedor
26	Nomencladores	provincia
27	Nomencladores	sucursal_cuba
28	Nomencladores	cliente
29	Nomencladores	casa_matriz
30	Nomencladores	marca
31	Trazas	logentry
32	reports	savedreport
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2022-04-21 10:31:33.451776-04
2	contenttypes	0002_remove_content_type_name	2022-04-21 10:31:33.464782-04
3	auth	0001_initial	2022-04-21 10:31:33.574773-04
4	COMEX	0001_initial	2022-04-21 10:31:33.590811-04
5	Nomencladores	0001_initial	2022-04-21 10:31:33.689773-04
6	Nomencladores	0002_rename_codigoprovincia_provincia_id	2022-04-21 10:31:33.693773-04
7	Nomencladores	0003_rename_id_provincia_codigoprovincia	2022-04-21 10:31:33.698775-04
8	Nomencladores	0004_rename_numpais_pais_id	2022-04-21 10:31:33.704797-04
9	Nomencladores	0005_remove_pais_codigopais_alter_pais_id	2022-04-21 10:31:33.755774-04
10	Nomencladores	0006_alter_pais_id	2022-04-21 10:31:33.7778-04
11	Nomencladores	0007_remove_pais_id_pais_codigopais	2022-04-21 10:31:33.794776-04
12	Nomencladores	0008_ppa_equipo	2022-04-21 10:31:33.841823-04
13	Nomencladores	0009_rename_equipo_ppa_modelo	2022-04-21 10:31:33.844827-04
14	Nomencladores	0010_marca_alter_bateria_marca_alter_equipo_marca_and_more	2022-04-21 10:31:33.907799-04
15	Solicitudes	0001_initial	2022-04-21 10:31:34.387774-04
16	Trazas	0001_initial	2022-04-21 10:31:34.395796-04
17	admin	0001_initial	2022-04-21 10:31:34.437773-04
18	admin	0002_logentry_remove_auto_add	2022-04-21 10:31:34.44579-04
19	admin	0003_logentry_add_action_flag_choices	2022-04-21 10:31:34.453772-04
20	admin	0004_alter_logentry_options	2022-04-21 10:31:34.463777-04
21	notifications	0001_initial	2022-04-21 10:31:34.535772-04
22	notifications	0002_auto_20150224_1134	2022-04-21 10:31:34.549796-04
23	notifications	0003_notification_data	2022-04-21 10:31:34.561797-04
24	notifications	0004_auto_20150826_1508	2022-04-21 10:31:34.57278-04
25	notifications	0005_auto_20160504_1520	2022-04-21 10:31:34.58179-04
26	notifications	0006_indexes	2022-04-21 10:31:34.612803-04
27	notifications	0007_add_timestamp_index	2022-04-21 10:31:34.621775-04
28	notifications	0008_index_together_recipient_unread	2022-04-21 10:31:34.63179-04
29	notifications	0009_alter_notification_id	2022-04-21 10:31:34.641788-04
30	reports	0001_initial	2022-04-21 10:31:34.67378-04
31	sessions	0001_initial	2022-04-21 10:31:34.690775-04
32	Nomencladores	0011_alter_marca_options_alter_marca_table	2022-04-21 10:32:37.938056-04
33	Nomencladores	0012_rename_codigoprovincia_provincia_id	2022-04-21 10:45:12.916044-04
34	Nomencladores	0013_rename_id_provincia_codigoprovincia	2022-04-21 10:47:24.443083-04
35	Nomencladores	0014_rename_modelo_ppa_equipo	2022-04-21 12:07:40.799-04
36	Nomencladores	0015_alter_casa_matriz_options_alter_pais_codigopais	2022-04-21 17:22:31.189517-04
37	Nomencladores	0016_alter_pais_codigopais	2022-04-21 17:23:22.092222-04
38	Nomencladores	0017_alter_pais_nompais	2022-04-21 17:24:16.863514-04
39	Nomencladores	0018_alter_proveedor_nomproveedor	2022-04-21 18:33:09.922438-04
40	Nomencladores	0019_alter_proveedor_codmincex	2022-04-21 18:33:49.905125-04
41	Nomencladores	0020_alter_bateria_idproducto_alter_equipo_idproducto_and_more	2022-04-21 18:40:17.42573-04
42	Nomencladores	0021_proveedor_marca	2022-04-21 18:53:01.701159-04
43	Nomencladores	0022_alter_marca_codigomarca	2022-04-22 03:57:19.421692-04
44	Nomencladores	0023_alter_marca_codigomarca	2022-04-22 03:58:14.112163-04
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
tl3vikji4feq8tytssqgtdlu3v2uuf3o	.eJxVjEEOwiAQRe_C2hCYIiMu3XsGMsNQqRpISrsy3l2bdKHb_977LxVpXUpce57jJOqsrDr8bkzpkesG5E711nRqdZkn1puid9r1tUl-Xnb376BQL98a0DgHEk5iKbAcs_PgPYpLzhMg2NGxoPfJhCyMaRitICYcDKAlZPX-AMumN3Y:1nhbfV:GiEPZ0JFzSQWfbaDtKoDY0D--xfILleXIFz0Wqm1084	2022-05-05 10:36:41.288253-04
1j83nwi3e2c74kcnlw6c1v40rtfi0d6q	.eJxVjEEOwiAQRe_C2hCYIiMu3XsGMsNQqRpISrsy3l2bdKHb_977LxVpXUpce57jJOqsrDr8bkzpkesG5E711nRqdZkn1puid9r1tUl-Xnb376BQL98a0DgHEk5iKbAcs_PgPYpLzhMg2NGxoPfJhCyMaRitICYcDKAlZPX-AMumN3Y:1nhcqA:i1nAguIktSLDoTLa2RaPnDj2O24g3Jlb2mdL6cU2VVE	2022-05-05 11:51:46.147229-04
\.


--
-- Data for Name: equipo; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.equipo (idproducto, descripcion, "UM", marca_id, modelo) FROM stdin;
647386-00-563	Camión KAMAZ 5511	Unidad	KMZ-8756	5511
647386-00-570	Camión KAMAZ 53212	Unidad	KMZ-8756	53212
59428400325	BULLDOZER KOMATSU D85 A18	Unidad	KMT-6365	D85 A18
59428400360	BULLDOZER KOMATSU D-155-A-1	Unidad	KMT-6365	D-155-A-1
\.


--
-- Data for Name: especialista_comex; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.especialista_comex (idespecialista, categoria) FROM stdin;
\.


--
-- Data for Name: marca; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.marca (codigomarca, nommarca) FROM stdin;
DS-0021	DOOSAN
DW-2156	DAEWOO
KMZ-8756	KAMAZ
SNY-1252	SANY
CTP-5496	CATERPILLAR
KMT-6365	KOMATSU
ISZ-9782	ISUZU
HIT-3164	HITACHI
GLY-2356	GEELY
NWH-3369	NEW HOLLAND
VLV-4025	VOLVO
PGT-3032	PEUGEOT
FRD-9954	FORD
NSN-7156	NISSAN
MBZ-1227	MERCEDES BENZ
TYT-2121	TOYOTA
LDA-1101	LADA
\.


--
-- Data for Name: neumatico; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.neumatico (idproducto, descripcion, "UM", marca_id, diametro, grosor) FROM stdin;
\.


--
-- Data for Name: pais; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.pais (nompais, codigopais) FROM stdin;
Afganistán (el)	AFG
Albania	ALB
Alemania	DEU
Andorra	AND
Angola	AGO
Antigua y Barbuda	ATG
Arabia Saudita (la)	SAU
Argelia	DZA
Argentina (la)	ARG
Armenia	ARM
Australia	AUS
Austria	AUT
Azerbaiyán	AZE
Bahamas (las)	BHS
Bahrein	BHR
Bangladesh	BGD
Barbados	BRB
Belarús	BLR
Bélgica	BEL
Belice	BLZ
Benin	BEN
Bhután	BTN
Bolivia (Estado Plurinacional de)	BOL
Bosnia y Herzegovina	BIH
Botswana	BWA
Brasil (el)	BRA
Brunei Darussalam	BRN
Bulgaria	BGR
Burkina Faso	BFA
Burundi	BDI
Cabo Verde	CPV
Camboya	KHM
Camerún (el)	CMR
Canadá (el)	CAN
Chad (el)	TCD
Chequia	 CZE
Chile	CHL
China	CHN
Chipre	CYP
Colombia	COL
Comoras (las)	COM
Congo (el)	COG
Costa Rica	CRI
Côte d’Ivoire	CIV
Croacia	HRV
Cuba	CUB
Dinamarca	DNK
Djibouti	DJI
Dominica	DMA
Ecuador (el)	ECU
Egipto	EGY
El Salvador	SLV
Emiratos Árabes Unidos (los)	ARE
Eritrea	ERI
Eslovaquia	SVK
Eslovenia	SVN
España	ESP
Estados Unidos de América (los)	USA
Estonia	EST
Eswatini	SWZ
Etiopía	ETH
Federación de Rusia (la)	RUS
Fiji	FJI
Filipinas	PHL
Finlandia	FIN
Francia	FRA
Gabón (el)	GAB
Gambia	GMB
Georgia	GEO
Ghana	GHA
Granada	GRD
Grecia	GRC
Guatemala	GTM
Guinea	GIN
Guinea Ecuatorial	GNQ
Guinea-Bissau	GNB
Guyana	GUY
Haití	HTI
Honduras	HND
Hungría	HUN
India (la)	IND
Indonesia	IDN
Irán (República Islámica del)	IRN
Iraq (el)	IRQ
Irlanda	IRL
Islandia	ISL
Islas Cook (las)	 COK
Islas Marshall (las)	MHL
Islas Salomón (las)	SLB
Israel	ISR
Italia	ITA
Jamaica	JAM
Japón (el)	JPN
Jordania	JOR
Kazajstán	KAZ
Kenya	KEN
Kirguistán	KGZ
Kiribati	KIR
Kuwait	KWT
Lesotho	LSO
Letonia	LVA
Líbano (el)	LBN
Liberia	LBR
Libia	LBY
Liechtenstein	LIE
Lituania	LTU
Luxemburgo	LUX
Madagascar	MDG
Malasia	MYS
Malawi	MWI
Maldivas	MDV
Malí	MLI
Malta	MLT
Marruecos	MAR
Mauricio	MUS
Mauritania	MRT
México	MEX
Micronesia (Estados Federados de)	FSM
Mónaco	MCO
Mongolia	MNG
Montenegro	MNE
Mozambique	MOZ
Myanmar	MMR
Namibia	NAM
Nauru	NRU
Nepal	NPL
Nicaragua	NIC
Níger (el)	NER
Nigeria	NGA
Niue	 NIU
Noruega	NOR
Nueva Zelandia	NZL
Omán	OMN
Países Bajos (los)	NLD
Pakistán (el)	PAK
Palau	PLW
Panamá	PAN
Papua Nueva Guinea	PNG
Paraguay (el)	PRY
Perú (el)	PER
Polonia	POL
Portugal	PRT
Qatar	QAT
Reino Unido de Gran Bretaña e Irlanda del Norte (el)	GBR
República Árabe Siria (la)	SYR
República Centroafricana (la)	CAF
República de Corea (la)	KOR
República de Macedonia del Norte (la)	MKD
República de Moldova(la)	MDA
República Democrática del Congo (la)	COD
República Democrática Popular Lao (la)	LAO
República Dominicana (la)	DOM
República Popular Democrática de Corea(la)	PRK
República Unida de Tanzanía (la)	TZA
Rumania	ROU
Rwanda	RWA
Saint Kitts y Nevis	KNA
Samoa	WSM
San Marino	SMR
San Vicente y las Granadinas	VCT
Santa Lucía	LCA
Santa Sede (la)	 VAT
Santo Tomé y Príncipe	STP
Senegal (el)	SEN
Serbia	SRB
Seychelles	SYC
Sierra Leona	SLE
Singapur	SGP
Somalia	SOM
Sri Lanka	LKA
Sudáfrica	ZAF
Sudán (el)	SDN
Sudán del Sur	 SSD
Suecia	SWE
Suiza	CHE
Suriname	SUR
Tailandia	THA
Tayikistán	TJK
Timor-Leste	TLS
Togo (el)	TGO
Tonga	TON
Trinidad y Tabago	TTO
Túnez	TUN
Turkmenistán	TKM
Turquía	TUR
Tuvalu	TUV
Ucrania	UKR
Uganda	UGA
Uruguay (el)	URY
Uzbekistán	UZB
Vanuatu	VUT
Venezuela (República Bolivariana de)	VEN
Viet Nam	VNM
Yemen (el)	YEM
Zambia	ZMB
Zimbabwe	ZWE
\.


--
-- Data for Name: ppa; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.ppa (idproducto, descripcion, "UM", marca_id, modelo) FROM stdin;
\.


--
-- Data for Name: proveedor; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.proveedor (codmincex, nomproveedor, clasificacion, codigopais) FROM stdin;
CN-0132	CHINA AUTO CAIEC  LTD(CAIEC)	COMERCIALIZADOR	CHN
CN-1287	(CAMCE) CHINA NATIONAL CONSTRUCTION & AGRICULTURAL MACHINARY IMPOT AND EXPORT CORPORATION	COMERCIALIZADOR	CHN
ES-4425-8	CICLAUTO AUTOMOCION S.L 	COMERCIALIZADOR	ESP
PA-1439	EL ESTABLO S.A	PRODUCTOR	PAN
VG-0008	FOREGO INTERNATIONAL LTD	Comercializador	GBR
\.


--
-- Data for Name: proveedor_marca; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.proveedor_marca (id, proveedor_id, marca_id) FROM stdin;
\.


--
-- Data for Name: provincia; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.provincia (codigoprovincia, nombre, capital) FROM stdin;
PR	Pinar del Río	Pinar del Río
AT	Artemisa	Artemisa
HB	La Habana	La Habana
MB	Mayabeque	San José
MT	Matanzas	Matanzas
CF	Cienfuegos	Cienfuegos
VC	Villa Clara	Santa Clara
SP	Sancti Spíritus	Sancti Spíritus
CA	Ciego de Ávila	Ciego de Ávila
CM	Camaguey	Camaguey
LT	Las Tunas	Las Tunas
HL	Holguín	Holguín
GR	Granma	Bayamo
SC	Santiago de Cuba	Santiago
GT	Guantánamo	Guantánamo
IJ	Isla de la Juventud	Nueva Gerona
\.


--
-- Data for Name: reports_savedreport; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.reports_savedreport (id, report, report_file, date_modified, date_created, run_by_id) FROM stdin;
\.


--
-- Data for Name: solicitud_bateria; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.solicitud_bateria (numsolicitud, fechasol, estado, observaciones, valor_estimado, idespecialista, numcontratocliente) FROM stdin;
\.


--
-- Data for Name: solicitud_bateria_poveedor; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.solicitud_bateria_poveedor (id, codmincex_id, numsolicitud) FROM stdin;
\.


--
-- Data for Name: solicitud_bateria_proxy; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.solicitud_bateria_proxy (id, cantidad, idproducto, numsolicitud) FROM stdin;
\.


--
-- Data for Name: solicitud_equipo; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.solicitud_equipo (numsolicitud, fechasol, estado, observaciones, valor_estimado, idespecialista, numcontratocliente) FROM stdin;
1	2022-04-21	Pendiente	zdfgqg	45000	\N	20220001
\.


--
-- Data for Name: solicitud_equipo_poveedor; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.solicitud_equipo_poveedor (id, codmincex_id, numsolicitud) FROM stdin;
2	CN-1287	1
3	CN-0132	1
\.


--
-- Data for Name: solicitud_equipo_proxy; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.solicitud_equipo_proxy (id, cantidad, idproducto, numsolicitud) FROM stdin;
\.


--
-- Data for Name: solicitud_neumatico; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.solicitud_neumatico (numsolicitud, fechasol, estado, observaciones, valor_estimado, idespecialista, numcontratocliente) FROM stdin;
\.


--
-- Data for Name: solicitud_neumatico_poveedor; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.solicitud_neumatico_poveedor (id, codmincex_id, numsolicitud) FROM stdin;
\.


--
-- Data for Name: solicitud_neumatico_proxy; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.solicitud_neumatico_proxy (id, cantidad, idproducto, numsolicitud) FROM stdin;
\.


--
-- Data for Name: solicitud_ppa; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.solicitud_ppa (numsolicitud, fechasol, estado, observaciones, valor_estimado, idproducto, idespecialista, numcontratocliente) FROM stdin;
\.


--
-- Data for Name: solicitud_ppa_poveedor; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.solicitud_ppa_poveedor (id, codmincex_id, numsolicitud) FROM stdin;
\.


--
-- Data for Name: solicitud_ppa_proxy; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.solicitud_ppa_proxy (id, cantidad, idproducto, numsolicitud) FROM stdin;
\.


--
-- Data for Name: sucursal_cuba; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.sucursal_cuba (id, direccion, email, telefono, contacto, carnet_trabajo, codmincex) FROM stdin;
\.


--
-- Name: Trazas_logentry_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public."Trazas_logentry_id_seq"', 1, false);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, true);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 128, true);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 128, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: casa_matriz_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.casa_matriz_id_seq', 1, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 84, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 32, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 44, true);


--
-- Name: proveedor_marca_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.proveedor_marca_id_seq', 1, false);


--
-- Name: reports_savedreport_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.reports_savedreport_id_seq', 1, false);


--
-- Name: solicitud_bateria_numsolicitud_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.solicitud_bateria_numsolicitud_seq', 1, false);


--
-- Name: solicitud_bateria_poveedor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.solicitud_bateria_poveedor_id_seq', 1, false);


--
-- Name: solicitud_bateria_proxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.solicitud_bateria_proxy_id_seq', 1, false);


--
-- Name: solicitud_equipo_numsolicitud_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.solicitud_equipo_numsolicitud_seq', 1, true);


--
-- Name: solicitud_equipo_poveedor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.solicitud_equipo_poveedor_id_seq', 3, true);


--
-- Name: solicitud_equipo_proxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.solicitud_equipo_proxy_id_seq', 1, true);


--
-- Name: solicitud_neumatico_numsolicitud_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.solicitud_neumatico_numsolicitud_seq', 1, false);


--
-- Name: solicitud_neumatico_poveedor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.solicitud_neumatico_poveedor_id_seq', 1, false);


--
-- Name: solicitud_neumatico_proxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.solicitud_neumatico_proxy_id_seq', 1, false);


--
-- Name: solicitud_ppa_numsolicitud_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.solicitud_ppa_numsolicitud_seq', 1, false);


--
-- Name: solicitud_ppa_poveedor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.solicitud_ppa_poveedor_id_seq', 1, false);


--
-- Name: solicitud_ppa_proxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.solicitud_ppa_proxy_id_seq', 1, false);


--
-- Name: sucursal_cuba_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.sucursal_cuba_id_seq', 1, true);


--
-- Name: marca Nomencladores_marca_pkey; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.marca
    ADD CONSTRAINT "Nomencladores_marca_pkey" PRIMARY KEY (codigomarca);


--
-- Name: Trazas_logentry Trazas_logentry_pkey; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public."Trazas_logentry"
    ADD CONSTRAINT "Trazas_logentry_pkey" PRIMARY KEY (id);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: bateria bateria_pkey; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.bateria
    ADD CONSTRAINT bateria_pkey PRIMARY KEY (idproducto);


--
-- Name: casa_matriz casa_matriz_pkey; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.casa_matriz
    ADD CONSTRAINT casa_matriz_pkey PRIMARY KEY (id);


--
-- Name: cliente cliente_pkey; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (numcontratocliente);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: equipo equipo_pkey; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.equipo
    ADD CONSTRAINT equipo_pkey PRIMARY KEY (idproducto);


--
-- Name: especialista_comex especialista_comex_pkey; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.especialista_comex
    ADD CONSTRAINT especialista_comex_pkey PRIMARY KEY (idespecialista);


--
-- Name: neumatico neumatico_pkey; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.neumatico
    ADD CONSTRAINT neumatico_pkey PRIMARY KEY (idproducto);


--
-- Name: pais pais_pkey; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.pais
    ADD CONSTRAINT pais_pkey PRIMARY KEY (codigopais);


--
-- Name: ppa ppa_pkey; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.ppa
    ADD CONSTRAINT ppa_pkey PRIMARY KEY (idproducto);


--
-- Name: proveedor proveedor_codmincex_codigopais_eea1226c_uniq; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.proveedor
    ADD CONSTRAINT proveedor_codmincex_codigopais_eea1226c_uniq UNIQUE (codmincex, codigopais);


--
-- Name: proveedor_marca proveedor_marca_pkey; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.proveedor_marca
    ADD CONSTRAINT proveedor_marca_pkey PRIMARY KEY (id);


--
-- Name: proveedor_marca proveedor_marca_proveedor_id_marca_id_716b0f11_uniq; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.proveedor_marca
    ADD CONSTRAINT proveedor_marca_proveedor_id_marca_id_716b0f11_uniq UNIQUE (proveedor_id, marca_id);


--
-- Name: proveedor proveedor_pkey; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.proveedor
    ADD CONSTRAINT proveedor_pkey PRIMARY KEY (codmincex);


--
-- Name: provincia provincia_pkey; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.provincia
    ADD CONSTRAINT provincia_pkey PRIMARY KEY (codigoprovincia);


--
-- Name: reports_savedreport reports_savedreport_pkey; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.reports_savedreport
    ADD CONSTRAINT reports_savedreport_pkey PRIMARY KEY (id);


--
-- Name: solicitud_bateria solicitud_bateria_pkey; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_bateria
    ADD CONSTRAINT solicitud_bateria_pkey PRIMARY KEY (numsolicitud);


--
-- Name: solicitud_bateria_poveedor solicitud_bateria_poveedor_pkey; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_bateria_poveedor
    ADD CONSTRAINT solicitud_bateria_poveedor_pkey PRIMARY KEY (id);


--
-- Name: solicitud_bateria_proxy solicitud_bateria_proxy_pkey; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_bateria_proxy
    ADD CONSTRAINT solicitud_bateria_proxy_pkey PRIMARY KEY (id);


--
-- Name: solicitud_equipo solicitud_equipo_pkey; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_equipo
    ADD CONSTRAINT solicitud_equipo_pkey PRIMARY KEY (numsolicitud);


--
-- Name: solicitud_equipo_poveedor solicitud_equipo_poveedor_pkey; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_equipo_poveedor
    ADD CONSTRAINT solicitud_equipo_poveedor_pkey PRIMARY KEY (id);


--
-- Name: solicitud_equipo_proxy solicitud_equipo_proxy_pkey; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_equipo_proxy
    ADD CONSTRAINT solicitud_equipo_proxy_pkey PRIMARY KEY (id);


--
-- Name: solicitud_neumatico solicitud_neumatico_pkey; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_neumatico
    ADD CONSTRAINT solicitud_neumatico_pkey PRIMARY KEY (numsolicitud);


--
-- Name: solicitud_neumatico_poveedor solicitud_neumatico_poveedor_pkey; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_neumatico_poveedor
    ADD CONSTRAINT solicitud_neumatico_poveedor_pkey PRIMARY KEY (id);


--
-- Name: solicitud_neumatico_proxy solicitud_neumatico_proxy_pkey; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_neumatico_proxy
    ADD CONSTRAINT solicitud_neumatico_proxy_pkey PRIMARY KEY (id);


--
-- Name: solicitud_ppa solicitud_ppa_pkey; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_ppa
    ADD CONSTRAINT solicitud_ppa_pkey PRIMARY KEY (numsolicitud);


--
-- Name: solicitud_ppa_poveedor solicitud_ppa_poveedor_pkey; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_ppa_poveedor
    ADD CONSTRAINT solicitud_ppa_poveedor_pkey PRIMARY KEY (id);


--
-- Name: solicitud_ppa_proxy solicitud_ppa_proxy_pkey; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_ppa_proxy
    ADD CONSTRAINT solicitud_ppa_proxy_pkey PRIMARY KEY (id);


--
-- Name: sucursal_cuba sucursal_cuba_pkey; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.sucursal_cuba
    ADD CONSTRAINT sucursal_cuba_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: bateria_marca_id_bff70813; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX bateria_marca_id_bff70813 ON public.bateria USING btree (marca_id);


--
-- Name: casa_matriz_codmincex_bd5fc4f6; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX casa_matriz_codmincex_bd5fc4f6 ON public.casa_matriz USING btree (codmincex);


--
-- Name: casa_matriz_codmincex_bd5fc4f6_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX casa_matriz_codmincex_bd5fc4f6_like ON public.casa_matriz USING btree (codmincex varchar_pattern_ops);


--
-- Name: cliente_provincia_478bfc63; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX cliente_provincia_478bfc63 ON public.cliente USING btree (provincia);


--
-- Name: cliente_provincia_478bfc63_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX cliente_provincia_478bfc63_like ON public.cliente USING btree (provincia varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: equipo_marca_id_aef47c38; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX equipo_marca_id_aef47c38 ON public.equipo USING btree (marca_id);


--
-- Name: neumatico_marca_id_e2843a2d; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX neumatico_marca_id_e2843a2d ON public.neumatico USING btree (marca_id);


--
-- Name: pais_codigopais_f394d5a9_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX pais_codigopais_f394d5a9_like ON public.pais USING btree (codigopais varchar_pattern_ops);


--
-- Name: ppa_marca_id_ce5f7e04; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX ppa_marca_id_ce5f7e04 ON public.ppa USING btree (marca_id);


--
-- Name: ppa_modelo_5229ec8c; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX ppa_modelo_5229ec8c ON public.ppa USING btree (modelo);


--
-- Name: proveedor_codigopais_ba6f5c0d; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX proveedor_codigopais_ba6f5c0d ON public.proveedor USING btree (codigopais);


--
-- Name: proveedor_codmincex_e9a8c16d_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX proveedor_codmincex_e9a8c16d_like ON public.proveedor USING btree (codmincex varchar_pattern_ops);


--
-- Name: proveedor_marca_marca_id_ae2ad161; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX proveedor_marca_marca_id_ae2ad161 ON public.proveedor_marca USING btree (marca_id);


--
-- Name: proveedor_marca_proveedor_id_81518723; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX proveedor_marca_proveedor_id_81518723 ON public.proveedor_marca USING btree (proveedor_id);


--
-- Name: proveedor_marca_proveedor_id_81518723_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX proveedor_marca_proveedor_id_81518723_like ON public.proveedor_marca USING btree (proveedor_id varchar_pattern_ops);


--
-- Name: provincia_codigoprovincia_faf2e195_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX provincia_codigoprovincia_faf2e195_like ON public.provincia USING btree (codigoprovincia varchar_pattern_ops);


--
-- Name: reports_savedreport_run_by_id_0e49a3ac; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX reports_savedreport_run_by_id_0e49a3ac ON public.reports_savedreport USING btree (run_by_id);


--
-- Name: solicitud_bateria_idespecialista_868f4087; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX solicitud_bateria_idespecialista_868f4087 ON public.solicitud_bateria USING btree (idespecialista);


--
-- Name: solicitud_bateria_numcontratocliente_726f79a5; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX solicitud_bateria_numcontratocliente_726f79a5 ON public.solicitud_bateria USING btree (numcontratocliente);


--
-- Name: solicitud_bateria_poveedor_codmincex_id_2d96a593; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX solicitud_bateria_poveedor_codmincex_id_2d96a593 ON public.solicitud_bateria_poveedor USING btree (codmincex_id);


--
-- Name: solicitud_bateria_poveedor_codmincex_id_2d96a593_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX solicitud_bateria_poveedor_codmincex_id_2d96a593_like ON public.solicitud_bateria_poveedor USING btree (codmincex_id varchar_pattern_ops);


--
-- Name: solicitud_bateria_poveedor_numsolicitud_7d22a710; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX solicitud_bateria_poveedor_numsolicitud_7d22a710 ON public.solicitud_bateria_poveedor USING btree (numsolicitud);


--
-- Name: solicitud_bateria_proxy_idproducto_d16d2d8c; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX solicitud_bateria_proxy_idproducto_d16d2d8c ON public.solicitud_bateria_proxy USING btree (idproducto);


--
-- Name: solicitud_bateria_proxy_numsolicitud_94914016; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX solicitud_bateria_proxy_numsolicitud_94914016 ON public.solicitud_bateria_proxy USING btree (numsolicitud);


--
-- Name: solicitud_equipo_idespecialista_ca55c049; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX solicitud_equipo_idespecialista_ca55c049 ON public.solicitud_equipo USING btree (idespecialista);


--
-- Name: solicitud_equipo_numcontratocliente_08e73429; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX solicitud_equipo_numcontratocliente_08e73429 ON public.solicitud_equipo USING btree (numcontratocliente);


--
-- Name: solicitud_equipo_poveedor_codmincex_id_1d17bb40; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX solicitud_equipo_poveedor_codmincex_id_1d17bb40 ON public.solicitud_equipo_poveedor USING btree (codmincex_id);


--
-- Name: solicitud_equipo_poveedor_codmincex_id_1d17bb40_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX solicitud_equipo_poveedor_codmincex_id_1d17bb40_like ON public.solicitud_equipo_poveedor USING btree (codmincex_id varchar_pattern_ops);


--
-- Name: solicitud_equipo_poveedor_numsolicitud_a7fb9e8a; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX solicitud_equipo_poveedor_numsolicitud_a7fb9e8a ON public.solicitud_equipo_poveedor USING btree (numsolicitud);


--
-- Name: solicitud_equipo_proxy_idproducto_08c7c6e0; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX solicitud_equipo_proxy_idproducto_08c7c6e0 ON public.solicitud_equipo_proxy USING btree (idproducto);


--
-- Name: solicitud_equipo_proxy_numsolicitud_812d2e09; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX solicitud_equipo_proxy_numsolicitud_812d2e09 ON public.solicitud_equipo_proxy USING btree (numsolicitud);


--
-- Name: solicitud_neumatico_idespecialista_dfcda92c; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX solicitud_neumatico_idespecialista_dfcda92c ON public.solicitud_neumatico USING btree (idespecialista);


--
-- Name: solicitud_neumatico_numcontratocliente_e9e0724c; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX solicitud_neumatico_numcontratocliente_e9e0724c ON public.solicitud_neumatico USING btree (numcontratocliente);


--
-- Name: solicitud_neumatico_poveedor_codmincex_id_32e9df78; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX solicitud_neumatico_poveedor_codmincex_id_32e9df78 ON public.solicitud_neumatico_poveedor USING btree (codmincex_id);


--
-- Name: solicitud_neumatico_poveedor_codmincex_id_32e9df78_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX solicitud_neumatico_poveedor_codmincex_id_32e9df78_like ON public.solicitud_neumatico_poveedor USING btree (codmincex_id varchar_pattern_ops);


--
-- Name: solicitud_neumatico_poveedor_numsolicitud_4054007e; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX solicitud_neumatico_poveedor_numsolicitud_4054007e ON public.solicitud_neumatico_poveedor USING btree (numsolicitud);


--
-- Name: solicitud_neumatico_proxy_idproducto_264bd634; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX solicitud_neumatico_proxy_idproducto_264bd634 ON public.solicitud_neumatico_proxy USING btree (idproducto);


--
-- Name: solicitud_neumatico_proxy_numsolicitud_3ebfa720; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX solicitud_neumatico_proxy_numsolicitud_3ebfa720 ON public.solicitud_neumatico_proxy USING btree (numsolicitud);


--
-- Name: solicitud_ppa_idespecialista_d2d1d2ea; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX solicitud_ppa_idespecialista_d2d1d2ea ON public.solicitud_ppa USING btree (idespecialista);


--
-- Name: solicitud_ppa_idproducto_5d5752e5; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX solicitud_ppa_idproducto_5d5752e5 ON public.solicitud_ppa USING btree (idproducto);


--
-- Name: solicitud_ppa_numcontratocliente_cd73b766; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX solicitud_ppa_numcontratocliente_cd73b766 ON public.solicitud_ppa USING btree (numcontratocliente);


--
-- Name: solicitud_ppa_poveedor_codmincex_id_ff8ec5cf; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX solicitud_ppa_poveedor_codmincex_id_ff8ec5cf ON public.solicitud_ppa_poveedor USING btree (codmincex_id);


--
-- Name: solicitud_ppa_poveedor_codmincex_id_ff8ec5cf_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX solicitud_ppa_poveedor_codmincex_id_ff8ec5cf_like ON public.solicitud_ppa_poveedor USING btree (codmincex_id varchar_pattern_ops);


--
-- Name: solicitud_ppa_poveedor_numsolicitud_f4187e0d; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX solicitud_ppa_poveedor_numsolicitud_f4187e0d ON public.solicitud_ppa_poveedor USING btree (numsolicitud);


--
-- Name: solicitud_ppa_proxy_idproducto_efc8a761; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX solicitud_ppa_proxy_idproducto_efc8a761 ON public.solicitud_ppa_proxy USING btree (idproducto);


--
-- Name: solicitud_ppa_proxy_numsolicitud_b3c4e117; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX solicitud_ppa_proxy_numsolicitud_b3c4e117 ON public.solicitud_ppa_proxy USING btree (numsolicitud);


--
-- Name: sucursal_cuba_codmincex_aa0b5234; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX sucursal_cuba_codmincex_aa0b5234 ON public.sucursal_cuba USING btree (codmincex);


--
-- Name: sucursal_cuba_codmincex_aa0b5234_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX sucursal_cuba_codmincex_aa0b5234_like ON public.sucursal_cuba USING btree (codmincex varchar_pattern_ops);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: bateria bateria_marca_id_bff70813_fk; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.bateria
    ADD CONSTRAINT bateria_marca_id_bff70813_fk FOREIGN KEY (marca_id) REFERENCES public.marca(codigomarca) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: casa_matriz casa_matriz_codmincex_bd5fc4f6_fk; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.casa_matriz
    ADD CONSTRAINT casa_matriz_codmincex_bd5fc4f6_fk FOREIGN KEY (codmincex) REFERENCES public.proveedor(codmincex) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cliente cliente_provincia_478bfc63_fk_provincia_codigoprovincia; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_provincia_478bfc63_fk_provincia_codigoprovincia FOREIGN KEY (provincia) REFERENCES public.provincia(codigoprovincia) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: equipo equipo_marca_id_aef47c38_fk; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.equipo
    ADD CONSTRAINT equipo_marca_id_aef47c38_fk FOREIGN KEY (marca_id) REFERENCES public.marca(codigomarca) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: especialista_comex especialista_comex_idespecialista_8fc5f862_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.especialista_comex
    ADD CONSTRAINT especialista_comex_idespecialista_8fc5f862_fk_auth_user_id FOREIGN KEY (idespecialista) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: neumatico neumatico_marca_id_e2843a2d_fk; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.neumatico
    ADD CONSTRAINT neumatico_marca_id_e2843a2d_fk FOREIGN KEY (marca_id) REFERENCES public.marca(codigomarca) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ppa ppa_marca_id_ce5f7e04_fk; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.ppa
    ADD CONSTRAINT ppa_marca_id_ce5f7e04_fk FOREIGN KEY (marca_id) REFERENCES public.marca(codigomarca) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ppa ppa_modelo_5229ec8c_fk; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.ppa
    ADD CONSTRAINT ppa_modelo_5229ec8c_fk FOREIGN KEY (modelo) REFERENCES public.equipo(idproducto) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: proveedor proveedor_codigopais_ba6f5c0d_fk; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.proveedor
    ADD CONSTRAINT proveedor_codigopais_ba6f5c0d_fk FOREIGN KEY (codigopais) REFERENCES public.pais(codigopais) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: proveedor_marca proveedor_marca_marca_id_ae2ad161_fk; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.proveedor_marca
    ADD CONSTRAINT proveedor_marca_marca_id_ae2ad161_fk FOREIGN KEY (marca_id) REFERENCES public.marca(codigomarca) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: proveedor_marca proveedor_marca_proveedor_id_81518723_fk_proveedor_codmincex; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.proveedor_marca
    ADD CONSTRAINT proveedor_marca_proveedor_id_81518723_fk_proveedor_codmincex FOREIGN KEY (proveedor_id) REFERENCES public.proveedor(codmincex) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: reports_savedreport reports_savedreport_run_by_id_0e49a3ac_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.reports_savedreport
    ADD CONSTRAINT reports_savedreport_run_by_id_0e49a3ac_fk_auth_user_id FOREIGN KEY (run_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: solicitud_bateria solicitud_bateria_idespecialista_868f4087_fk_especiali; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_bateria
    ADD CONSTRAINT solicitud_bateria_idespecialista_868f4087_fk_especiali FOREIGN KEY (idespecialista) REFERENCES public.especialista_comex(idespecialista) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: solicitud_bateria solicitud_bateria_numcontratocliente_726f79a5_fk_cliente_n; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_bateria
    ADD CONSTRAINT solicitud_bateria_numcontratocliente_726f79a5_fk_cliente_n FOREIGN KEY (numcontratocliente) REFERENCES public.cliente(numcontratocliente) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: solicitud_bateria_poveedor solicitud_bateria_po_numsolicitud_7d22a710_fk_solicitud; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_bateria_poveedor
    ADD CONSTRAINT solicitud_bateria_po_numsolicitud_7d22a710_fk_solicitud FOREIGN KEY (numsolicitud) REFERENCES public.solicitud_bateria(numsolicitud) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: solicitud_bateria_poveedor solicitud_bateria_poveedor_codmincex_id_2d96a593_fk; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_bateria_poveedor
    ADD CONSTRAINT solicitud_bateria_poveedor_codmincex_id_2d96a593_fk FOREIGN KEY (codmincex_id) REFERENCES public.proveedor(codmincex) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: solicitud_bateria_proxy solicitud_bateria_pr_numsolicitud_94914016_fk_solicitud; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_bateria_proxy
    ADD CONSTRAINT solicitud_bateria_pr_numsolicitud_94914016_fk_solicitud FOREIGN KEY (numsolicitud) REFERENCES public.solicitud_bateria(numsolicitud) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: solicitud_bateria_proxy solicitud_bateria_proxy_idproducto_d16d2d8c_fk; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_bateria_proxy
    ADD CONSTRAINT solicitud_bateria_proxy_idproducto_d16d2d8c_fk FOREIGN KEY (idproducto) REFERENCES public.bateria(idproducto) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: solicitud_equipo solicitud_equipo_idespecialista_ca55c049_fk_especiali; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_equipo
    ADD CONSTRAINT solicitud_equipo_idespecialista_ca55c049_fk_especiali FOREIGN KEY (idespecialista) REFERENCES public.especialista_comex(idespecialista) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: solicitud_equipo solicitud_equipo_numcontratocliente_08e73429_fk_cliente_n; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_equipo
    ADD CONSTRAINT solicitud_equipo_numcontratocliente_08e73429_fk_cliente_n FOREIGN KEY (numcontratocliente) REFERENCES public.cliente(numcontratocliente) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: solicitud_equipo_poveedor solicitud_equipo_pov_numsolicitud_a7fb9e8a_fk_solicitud; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_equipo_poveedor
    ADD CONSTRAINT solicitud_equipo_pov_numsolicitud_a7fb9e8a_fk_solicitud FOREIGN KEY (numsolicitud) REFERENCES public.solicitud_equipo(numsolicitud) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: solicitud_equipo_poveedor solicitud_equipo_poveedor_codmincex_id_1d17bb40_fk; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_equipo_poveedor
    ADD CONSTRAINT solicitud_equipo_poveedor_codmincex_id_1d17bb40_fk FOREIGN KEY (codmincex_id) REFERENCES public.proveedor(codmincex) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: solicitud_equipo_proxy solicitud_equipo_pro_numsolicitud_812d2e09_fk_solicitud; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_equipo_proxy
    ADD CONSTRAINT solicitud_equipo_pro_numsolicitud_812d2e09_fk_solicitud FOREIGN KEY (numsolicitud) REFERENCES public.solicitud_equipo(numsolicitud) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: solicitud_equipo_proxy solicitud_equipo_proxy_idproducto_08c7c6e0_fk; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_equipo_proxy
    ADD CONSTRAINT solicitud_equipo_proxy_idproducto_08c7c6e0_fk FOREIGN KEY (idproducto) REFERENCES public.equipo(idproducto) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: solicitud_neumatico_proxy solicitud_neumatico__numsolicitud_3ebfa720_fk_solicitud; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_neumatico_proxy
    ADD CONSTRAINT solicitud_neumatico__numsolicitud_3ebfa720_fk_solicitud FOREIGN KEY (numsolicitud) REFERENCES public.solicitud_neumatico(numsolicitud) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: solicitud_neumatico_poveedor solicitud_neumatico__numsolicitud_4054007e_fk_solicitud; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_neumatico_poveedor
    ADD CONSTRAINT solicitud_neumatico__numsolicitud_4054007e_fk_solicitud FOREIGN KEY (numsolicitud) REFERENCES public.solicitud_neumatico(numsolicitud) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: solicitud_neumatico solicitud_neumatico_idespecialista_dfcda92c_fk_especiali; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_neumatico
    ADD CONSTRAINT solicitud_neumatico_idespecialista_dfcda92c_fk_especiali FOREIGN KEY (idespecialista) REFERENCES public.especialista_comex(idespecialista) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: solicitud_neumatico solicitud_neumatico_numcontratocliente_e9e0724c_fk_cliente_n; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_neumatico
    ADD CONSTRAINT solicitud_neumatico_numcontratocliente_e9e0724c_fk_cliente_n FOREIGN KEY (numcontratocliente) REFERENCES public.cliente(numcontratocliente) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: solicitud_neumatico_poveedor solicitud_neumatico_poveedor_codmincex_id_32e9df78_fk; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_neumatico_poveedor
    ADD CONSTRAINT solicitud_neumatico_poveedor_codmincex_id_32e9df78_fk FOREIGN KEY (codmincex_id) REFERENCES public.proveedor(codmincex) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: solicitud_neumatico_proxy solicitud_neumatico_proxy_idproducto_264bd634_fk; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_neumatico_proxy
    ADD CONSTRAINT solicitud_neumatico_proxy_idproducto_264bd634_fk FOREIGN KEY (idproducto) REFERENCES public.neumatico(idproducto) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: solicitud_ppa solicitud_ppa_idespecialista_d2d1d2ea_fk_especiali; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_ppa
    ADD CONSTRAINT solicitud_ppa_idespecialista_d2d1d2ea_fk_especiali FOREIGN KEY (idespecialista) REFERENCES public.especialista_comex(idespecialista) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: solicitud_ppa solicitud_ppa_idproducto_5d5752e5_fk; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_ppa
    ADD CONSTRAINT solicitud_ppa_idproducto_5d5752e5_fk FOREIGN KEY (idproducto) REFERENCES public.equipo(idproducto) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: solicitud_ppa solicitud_ppa_numcontratocliente_cd73b766_fk_cliente_n; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_ppa
    ADD CONSTRAINT solicitud_ppa_numcontratocliente_cd73b766_fk_cliente_n FOREIGN KEY (numcontratocliente) REFERENCES public.cliente(numcontratocliente) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: solicitud_ppa_poveedor solicitud_ppa_poveed_numsolicitud_f4187e0d_fk_solicitud; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_ppa_poveedor
    ADD CONSTRAINT solicitud_ppa_poveed_numsolicitud_f4187e0d_fk_solicitud FOREIGN KEY (numsolicitud) REFERENCES public.solicitud_ppa(numsolicitud) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: solicitud_ppa_poveedor solicitud_ppa_poveedor_codmincex_id_ff8ec5cf_fk; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_ppa_poveedor
    ADD CONSTRAINT solicitud_ppa_poveedor_codmincex_id_ff8ec5cf_fk FOREIGN KEY (codmincex_id) REFERENCES public.proveedor(codmincex) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: solicitud_ppa_proxy solicitud_ppa_proxy_idproducto_efc8a761_fk; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_ppa_proxy
    ADD CONSTRAINT solicitud_ppa_proxy_idproducto_efc8a761_fk FOREIGN KEY (idproducto) REFERENCES public.ppa(idproducto) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: solicitud_ppa_proxy solicitud_ppa_proxy_numsolicitud_b3c4e117_fk_solicitud; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_ppa_proxy
    ADD CONSTRAINT solicitud_ppa_proxy_numsolicitud_b3c4e117_fk_solicitud FOREIGN KEY (numsolicitud) REFERENCES public.solicitud_ppa(numsolicitud) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: sucursal_cuba sucursal_cuba_codmincex_aa0b5234_fk; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.sucursal_cuba
    ADD CONSTRAINT sucursal_cuba_codmincex_aa0b5234_fk FOREIGN KEY (codmincex) REFERENCES public.proveedor(codmincex) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

