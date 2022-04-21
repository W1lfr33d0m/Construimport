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

ALTER TABLE ONLY public.sucursal_cuba DROP CONSTRAINT sucursal_cuba_codmincex_aa0b5234_fk_proveedor_codmincex;
ALTER TABLE ONLY public.solicitud_ppa_proxy DROP CONSTRAINT solicitud_ppa_proxy_numsolicitud_b3c4e117_fk_solicitud;
ALTER TABLE ONLY public.solicitud_ppa_proxy DROP CONSTRAINT solicitud_ppa_proxy_idproducto_efc8a761_fk_ppa_idproducto;
ALTER TABLE ONLY public.solicitud_ppa_poveedor DROP CONSTRAINT solicitud_ppa_poveed_numsolicitud_f4187e0d_fk_solicitud;
ALTER TABLE ONLY public.solicitud_ppa_poveedor DROP CONSTRAINT solicitud_ppa_poveed_codmincex_id_ff8ec5cf_fk_proveedor;
ALTER TABLE ONLY public.solicitud_ppa DROP CONSTRAINT solicitud_ppa_numcontratocliente_cd73b766_fk_cliente_n;
ALTER TABLE ONLY public.solicitud_ppa DROP CONSTRAINT solicitud_ppa_idproducto_5d5752e5_fk_equipo_idproducto;
ALTER TABLE ONLY public.solicitud_ppa DROP CONSTRAINT solicitud_ppa_idespecialista_d2d1d2ea_fk_especiali;
ALTER TABLE ONLY public.solicitud_neumatico DROP CONSTRAINT solicitud_neumatico_numcontratocliente_e9e0724c_fk_cliente_n;
ALTER TABLE ONLY public.solicitud_neumatico DROP CONSTRAINT solicitud_neumatico_idespecialista_dfcda92c_fk_especiali;
ALTER TABLE ONLY public.solicitud_neumatico_poveedor DROP CONSTRAINT solicitud_neumatico__numsolicitud_4054007e_fk_solicitud;
ALTER TABLE ONLY public.solicitud_neumatico_proxy DROP CONSTRAINT solicitud_neumatico__numsolicitud_3ebfa720_fk_solicitud;
ALTER TABLE ONLY public.solicitud_neumatico_proxy DROP CONSTRAINT solicitud_neumatico__idproducto_264bd634_fk_neumatico;
ALTER TABLE ONLY public.solicitud_neumatico_poveedor DROP CONSTRAINT solicitud_neumatico__codmincex_id_32e9df78_fk_proveedor;
ALTER TABLE ONLY public.solicitud_equipo_proxy DROP CONSTRAINT solicitud_equipo_proxy_idproducto_08c7c6e0_fk_equipo_idproducto;
ALTER TABLE ONLY public.solicitud_equipo_proxy DROP CONSTRAINT solicitud_equipo_pro_numsolicitud_812d2e09_fk_solicitud;
ALTER TABLE ONLY public.solicitud_equipo_poveedor DROP CONSTRAINT solicitud_equipo_pov_numsolicitud_a7fb9e8a_fk_solicitud;
ALTER TABLE ONLY public.solicitud_equipo_poveedor DROP CONSTRAINT solicitud_equipo_pov_codmincex_id_1d17bb40_fk_proveedor;
ALTER TABLE ONLY public.solicitud_equipo DROP CONSTRAINT solicitud_equipo_numcontratocliente_08e73429_fk_cliente_n;
ALTER TABLE ONLY public.solicitud_equipo DROP CONSTRAINT solicitud_equipo_idespecialista_ca55c049_fk_especiali;
ALTER TABLE ONLY public.solicitud_bateria_proxy DROP CONSTRAINT solicitud_bateria_pr_numsolicitud_94914016_fk_solicitud;
ALTER TABLE ONLY public.solicitud_bateria_proxy DROP CONSTRAINT solicitud_bateria_pr_idproducto_d16d2d8c_fk_bateria_i;
ALTER TABLE ONLY public.solicitud_bateria_poveedor DROP CONSTRAINT solicitud_bateria_po_numsolicitud_7d22a710_fk_solicitud;
ALTER TABLE ONLY public.solicitud_bateria_poveedor DROP CONSTRAINT solicitud_bateria_po_codmincex_id_2d96a593_fk_proveedor;
ALTER TABLE ONLY public.solicitud_bateria DROP CONSTRAINT solicitud_bateria_numcontratocliente_726f79a5_fk_cliente_n;
ALTER TABLE ONLY public.solicitud_bateria DROP CONSTRAINT solicitud_bateria_idespecialista_868f4087_fk_especiali;
ALTER TABLE ONLY public.reports_savedreport DROP CONSTRAINT reports_savedreport_run_by_id_0e49a3ac_fk_auth_user_id;
ALTER TABLE ONLY public.proveedor DROP CONSTRAINT proveedor_codigopais_ba6f5c0d_fk_pais_codigopais;
ALTER TABLE ONLY public.especialista_comex DROP CONSTRAINT especialista_comex_idespecialista_8fc5f862_fk_auth_user_id;
ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
ALTER TABLE ONLY public.cliente DROP CONSTRAINT cliente_provincia_478bfc63_fk_provincia_codigoprovincia;
ALTER TABLE ONLY public.casa_matriz DROP CONSTRAINT casa_matriz_codmincex_bd5fc4f6_fk_proveedor_codmincex;
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
DROP INDEX public.proveedor_codmincex_e9a8c16d_like;
DROP INDEX public.proveedor_codigopais_ba6f5c0d_like;
DROP INDEX public.proveedor_codigopais_ba6f5c0d;
DROP INDEX public.pais_idpais_57157e63_like;
DROP INDEX public.django_session_session_key_c0390e0f_like;
DROP INDEX public.django_session_expire_date_a5c62663;
DROP INDEX public.django_admin_log_user_id_c564eba6;
DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
DROP INDEX public.cliente_provincia_478bfc63_like;
DROP INDEX public.cliente_provincia_478bfc63;
DROP INDEX public.casa_matriz_codmincex_bd5fc4f6_like;
DROP INDEX public.casa_matriz_codmincex_bd5fc4f6;
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
DROP TABLE public.proveedor;
DROP TABLE public.ppa;
DROP TABLE public.pais;
DROP TABLE public.neumatico;
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
    idproducto integer NOT NULL,
    descripcion character varying(50) NOT NULL,
    "UM" character varying(5) NOT NULL,
    marca character varying(30) NOT NULL,
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
    codmincex character varying(8) NOT NULL
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
    idproducto integer NOT NULL,
    descripcion character varying(50) NOT NULL,
    "UM" character varying(5) NOT NULL,
    marca character varying(30) NOT NULL,
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
-- Name: neumatico; Type: TABLE; Schema: public; Owner: const
--

CREATE TABLE public.neumatico (
    idproducto integer NOT NULL,
    descripcion character varying(50) NOT NULL,
    "UM" character varying(5) NOT NULL,
    marca character varying(30) NOT NULL,
    diametro double precision NOT NULL,
    grosor double precision NOT NULL
);


ALTER TABLE public.neumatico OWNER TO const;

--
-- Name: pais; Type: TABLE; Schema: public; Owner: const
--

CREATE TABLE public.pais (
    codigopais character varying(3) NOT NULL,
    nompais character varying(30) NOT NULL
);


ALTER TABLE public.pais OWNER TO const;

--
-- Name: ppa; Type: TABLE; Schema: public; Owner: const
--

CREATE TABLE public.ppa (
    idproducto integer NOT NULL,
    descripcion character varying(50) NOT NULL,
    "UM" character varying(5) NOT NULL,
    marca character varying(30) NOT NULL
);


ALTER TABLE public.ppa OWNER TO const;

--
-- Name: proveedor; Type: TABLE; Schema: public; Owner: const
--

CREATE TABLE public.proveedor (
    codmincex character varying(8) NOT NULL,
    nomproveedor character varying(45) NOT NULL,
    clasificacion text NOT NULL,
    codigopais character varying(3) NOT NULL
);


ALTER TABLE public.proveedor OWNER TO const;

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
    codmincex_id character varying(8) NOT NULL,
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
    idproducto integer NOT NULL,
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
    codmincex_id character varying(8) NOT NULL,
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
    idproducto integer NOT NULL,
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
    codmincex_id character varying(8) NOT NULL,
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
    idproducto integer NOT NULL,
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
    idproducto integer NOT NULL,
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
    codmincex_id character varying(8) NOT NULL,
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
    idproducto integer NOT NULL,
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
    codmincex character varying(8) NOT NULL
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
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
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
25	Can add País	add_pais	7
26	Can change País	change_pais	7
27	Can delete País	delete_pais	7
28	Can view País	view_pais	7
29	Can add log entry	add_logentry	8
30	Can change log entry	change_logentry	8
31	Can delete log entry	delete_logentry	8
32	Can view log entry	view_logentry	8
33	Can add saved report	add_savedreport	9
34	Can change saved report	change_savedreport	9
35	Can delete saved report	delete_savedreport	9
36	Can view saved report	view_savedreport	9
37	Can add Batería	add_bateria	10
38	Can change Batería	change_bateria	10
39	Can delete Batería	delete_bateria	10
40	Can view Batería	view_bateria	10
41	Can add Equipo	add_equipo	11
42	Can change Equipo	change_equipo	11
43	Can delete Equipo	delete_equipo	11
44	Can view Equipo	view_equipo	11
45	Can add Neumático	add_neumatico	12
46	Can change Neumático	change_neumatico	12
47	Can delete Neumático	delete_neumatico	12
48	Can view Neumático	view_neumatico	12
49	Can add Pieza	add_ppa	13
50	Can change Pieza	change_ppa	13
51	Can delete Pieza	delete_ppa	13
52	Can view Pieza	view_ppa	13
53	Can add Proveedor	add_proveedor	14
54	Can change Proveedor	change_proveedor	14
55	Can delete Proveedor	delete_proveedor	14
56	Can view Proveedor	view_proveedor	14
57	Can add Provincia	add_provincia	15
58	Can change Provincia	change_provincia	15
59	Can delete Provincia	delete_provincia	15
60	Can view Provincia	view_provincia	15
61	Can add Sucursal en Cuba	add_sucursal_cuba	16
62	Can change Sucursal en Cuba	change_sucursal_cuba	16
63	Can delete Sucursal en Cuba	delete_sucursal_cuba	16
64	Can view Sucursal en Cuba	view_sucursal_cuba	16
65	Can add cliente	add_cliente	17
66	Can change cliente	change_cliente	17
67	Can delete cliente	delete_cliente	17
68	Can view cliente	view_cliente	17
69	Can add Casa Matriz	add_casa_matriz	18
70	Can change Casa Matriz	change_casa_matriz	18
71	Can delete Casa Matriz	delete_casa_matriz	18
72	Can view Casa Matriz	view_casa_matriz	18
73	Can add Neumático	add_solicitud_neumatico_proxy	19
74	Can change Neumático	change_solicitud_neumatico_proxy	19
75	Can delete Neumático	delete_solicitud_neumatico_proxy	19
76	Can view Neumático	view_solicitud_neumatico_proxy	19
77	Can add Proveedor	add_solicitud_equipo_proveedor	20
78	Can change Proveedor	change_solicitud_equipo_proveedor	20
79	Can delete Proveedor	delete_solicitud_equipo_proveedor	20
80	Can view Proveedor	view_solicitud_equipo_proveedor	20
81	Can add Proveedor	add_solicitud_neumatico_proveedor	21
82	Can change Proveedor	change_solicitud_neumatico_proveedor	21
83	Can delete Proveedor	delete_solicitud_neumatico_proveedor	21
84	Can view Proveedor	view_solicitud_neumatico_proveedor	21
85	Can add Proveedor	add_solicitud_bateria_proveedor	22
86	Can change Proveedor	change_solicitud_bateria_proveedor	22
87	Can delete Proveedor	delete_solicitud_bateria_proveedor	22
88	Can view Proveedor	view_solicitud_bateria_proveedor	22
89	Can add Batería	add_solicitud_bateria_proxy	23
90	Can change Batería	change_solicitud_bateria_proxy	23
91	Can delete Batería	delete_solicitud_bateria_proxy	23
92	Can view Batería	view_solicitud_bateria_proxy	23
93	Can add Solicitud de Neumático	add_solicitud_neumatico	24
94	Can change Solicitud de Neumático	change_solicitud_neumatico	24
95	Can delete Solicitud de Neumático	delete_solicitud_neumatico	24
96	Can view Solicitud de Neumático	view_solicitud_neumatico	24
97	Can add Proveedor	add_solicitud_ppa_proveedor	25
98	Can change Proveedor	change_solicitud_ppa_proveedor	25
99	Can delete Proveedor	delete_solicitud_ppa_proveedor	25
100	Can view Proveedor	view_solicitud_ppa_proveedor	25
101	Can add Solicitud de Equipo	add_solicitud_equipo	26
102	Can change Solicitud de Equipo	change_solicitud_equipo	26
103	Can delete Solicitud de Equipo	delete_solicitud_equipo	26
104	Can view Solicitud de Equipo	view_solicitud_equipo	26
105	Can add Solicitud de Partes, Piezas y Accesorios	add_solicitud_ppa	27
106	Can change Solicitud de Partes, Piezas y Accesorios	change_solicitud_ppa	27
107	Can delete Solicitud de Partes, Piezas y Accesorios	delete_solicitud_ppa	27
108	Can view Solicitud de Partes, Piezas y Accesorios	view_solicitud_ppa	27
109	Can add Equipo	add_solicitud_equipo_proxy	28
110	Can change Equipo	change_solicitud_equipo_proxy	28
111	Can delete Equipo	delete_solicitud_equipo_proxy	28
112	Can view Equipo	view_solicitud_equipo_proxy	28
113	Can add Partes, Piezas y Accesorios	add_solicitud_ppa_proxy	29
114	Can change Partes, Piezas y Accesorios	change_solicitud_ppa_proxy	29
115	Can delete Partes, Piezas y Accesorios	delete_solicitud_ppa_proxy	29
116	Can view Partes, Piezas y Accesorios	view_solicitud_ppa_proxy	29
117	Can add Solicitud de Batería	add_solicitud_bateria	30
118	Can change Solicitud de Batería	change_solicitud_bateria	30
119	Can delete Solicitud de Batería	delete_solicitud_bateria	30
120	Can view Solicitud de Batería	view_solicitud_bateria	30
121	Can add Especialista COMEX	add_especialistacomex	31
122	Can change Especialista COMEX	change_especialistacomex	31
123	Can delete Especialista COMEX	delete_especialistacomex	31
124	Can view Especialista COMEX	view_especialistacomex	31
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined, role) FROM stdin;
1	pbkdf2_sha256$320000$v98N9YZldWlFpfgU4SEogG$Fj16EHN6mzJvcq8Nax7uOknuphFyOXZ8J7mGMt0Ba/4=	2022-04-20 17:09:51.77415-04	t	admin				t	t	2022-04-20 07:43:27.84166-04	CONSULTOR
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

COPY public.bateria (idproducto, descripcion, "UM", marca, voltaje, amperaje) FROM stdin;
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
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2022-04-20 10:45:08.187929-04	CN	China	1	[{"added": {}}]	7	1
2	2022-04-20 10:45:56.983193-04	CN-0132	CHINA AUTO CAIEC  LTD	1	[{"added": {}}, {"added": {"name": "Sucursal en Cuba", "object": "Sucursal_Cuba object (1)"}}]	14	1
3	2022-04-20 10:46:15.187924-04	CN-0132	CHINA AUTO CAIEC  LTD	2	[{"added": {"name": "Casa Matriz", "object": "Casa_Matriz object (1)"}}]	14	1
4	2022-04-20 10:46:41.69436-04	CN-0132	CHINA AUTO CAIEC  LTD	2	[{"changed": {"name": "Sucursal en Cuba", "object": "Sucursal_Cuba object (1)", "fields": ["Tel\\u00e9fono"]}}]	14	1
5	2022-04-20 10:47:17.602868-04	PR	Pinar del Río	1	[{"added": {}}]	15	1
6	2022-04-20 10:47:32.21572-04	HB	La Habana	1	[{"added": {}}]	15	1
7	2022-04-20 10:47:45.93428-04	AT	Artemisa	1	[{"added": {}}]	15	1
8	2022-04-20 10:47:56.932889-04	MY	Mayabeque	1	[{"added": {}}]	15	1
9	2022-04-20 10:48:08.39278-04	MT	Matanzas	1	[{"added": {}}]	15	1
10	2022-04-20 10:48:19.925495-04	CF	Cienfuegos	1	[{"added": {}}]	15	1
11	2022-04-20 10:48:32.097662-04	VC	Villa Clara	1	[{"added": {}}]	15	1
12	2022-04-20 10:48:41.804692-04	SP	Sancti Spíritus	1	[{"added": {}}]	15	1
13	2022-04-20 10:48:59.427527-04	CA	Ciego de Ávila	1	[{"added": {}}]	15	1
14	2022-04-20 10:49:13.123957-04	CM	Camagüey	1	[{"added": {}}]	15	1
15	2022-04-20 10:49:23.997714-04	LT	Las Tunas	1	[{"added": {}}]	15	1
16	2022-04-20 10:49:32.287574-04	HL	Holguín	1	[{"added": {}}]	15	1
17	2022-04-20 10:49:41.61333-04	GM	Granma	1	[{"added": {}}]	15	1
18	2022-04-20 10:49:56.246811-04	SC	Santiago de Cuba	1	[{"added": {}}]	15	1
19	2022-04-20 10:50:08.91724-04	GT	Guantánamo	1	[{"added": {}}]	15	1
20	2022-04-20 10:55:46.029115-04	CN	China	3		7	1
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
7	Nomencladores	pais
8	Trazas	logentry
9	reports	savedreport
10	Nomencladores	bateria
11	Nomencladores	equipo
12	Nomencladores	neumatico
13	Nomencladores	ppa
14	Nomencladores	proveedor
15	Nomencladores	provincia
16	Nomencladores	sucursal_cuba
17	Nomencladores	cliente
18	Nomencladores	casa_matriz
19	Solicitudes	solicitud_neumatico_proxy
20	Solicitudes	solicitud_equipo_proveedor
21	Solicitudes	solicitud_neumatico_proveedor
22	Solicitudes	solicitud_bateria_proveedor
23	Solicitudes	solicitud_bateria_proxy
24	Solicitudes	solicitud_neumatico
25	Solicitudes	solicitud_ppa_proveedor
26	Solicitudes	solicitud_equipo
27	Solicitudes	solicitud_ppa
28	Solicitudes	solicitud_equipo_proxy
29	Solicitudes	solicitud_ppa_proxy
30	Solicitudes	solicitud_bateria
31	COMEX	especialistacomex
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	Nomencladores	0001_initial	2022-04-20 07:22:09.632993-04
2	Trazas	0001_initial	2022-04-20 07:22:09.641993-04
3	contenttypes	0001_initial	2022-04-20 07:22:09.656014-04
4	contenttypes	0002_remove_content_type_name	2022-04-20 07:22:09.668992-04
5	auth	0001_initial	2022-04-20 07:22:09.775457-04
6	admin	0001_initial	2022-04-20 07:22:09.802459-04
7	admin	0002_logentry_remove_auto_add	2022-04-20 07:22:09.810456-04
8	admin	0003_logentry_add_action_flag_choices	2022-04-20 07:22:09.817456-04
9	admin	0004_alter_logentry_options	2022-04-20 07:22:09.825458-04
10	notifications	0001_initial	2022-04-20 07:22:09.835457-04
11	notifications	0002_auto_20150224_1134	2022-04-20 07:22:09.849456-04
12	notifications	0003_notification_data	2022-04-20 07:22:09.858456-04
13	notifications	0004_auto_20150826_1508	2022-04-20 07:22:09.866474-04
14	notifications	0005_auto_20160504_1520	2022-04-20 07:22:09.874457-04
15	notifications	0006_indexes	2022-04-20 07:22:09.93246-04
16	notifications	0007_add_timestamp_index	2022-04-20 07:22:09.941481-04
17	notifications	0008_index_together_recipient_unread	2022-04-20 07:22:09.948479-04
18	notifications	0009_alter_notification_id	2022-04-20 07:22:09.956483-04
19	reports	0001_initial	2022-04-20 07:22:09.975461-04
20	sessions	0001_initial	2022-04-20 07:22:09.992457-04
21	Nomencladores	0002_bateria_equipo_neumatico_ppa_proveedor_provincia_and_more	2022-04-20 07:24:39.455809-04
22	COMEX	0001_initial	2022-04-20 07:31:11.014334-04
23	Solicitudes	0001_initial	2022-04-20 07:31:11.50023-04
24	Nomencladores	0003_alter_pais_nompais	2022-04-20 11:03:46.763874-04
25	Nomencladores	0004_pais_id	2022-04-20 12:39:33.943799-04
26	Nomencladores	0005_remove_pais_id	2022-04-20 12:42:10.877436-04
27	Nomencladores	0006_rename_codigopais_pais_id	2022-04-20 17:07:55.18921-04
28	Nomencladores	0007_rename_id_pais_codigopais	2022-04-20 17:10:54.120483-04
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
46ewjb8168u92r2j1frnz2ucov9h7i0d	.eJxVjDsOwjAQBe_iGln-rD9LSZ8zROu1TQIoluKkQtwdRUoB7ZuZ9xYj7ds07r2s45zFVWhx-d0S8bMsB8gPWu5Nclu2dU7yUORJuxxaLq_b6f4dTNSno3aRTFYQoCiMwNWwAutNtdF55wwiY_SYNABTgUAVqeigvbMqGdbi8wW_-zbs:1nhCUr:ruNurZ2qTRul1Z65yYhg2xxx_GOZcdOJCCw5LaigRgU	2022-05-04 07:44:01.928996-04
602k7r1l7aiucd9qit0edk4ufm69uvf4	.eJxVjDsOwjAQBe_iGln-rD9LSZ8zROu1TQIoluKkQtwdRUoB7ZuZ9xYj7ds07r2s45zFVWhx-d0S8bMsB8gPWu5Nclu2dU7yUORJuxxaLq_b6f4dTNSno3aRTFYQoCiMwNWwAutNtdF55wwiY_SYNABTgUAVqeigvbMqGdbi8wW_-zbs:1nhLJf:4ElPaCYBPvhqLsOjQZIjbiU2ON2pMZQuFXRKM3HFGEM	2022-05-04 17:09:03.821974-04
rcs6pnf1pr0u9kmh0iks9kqp3gywb6sz	.eJxVjDsOwjAQBe_iGln-rD9LSZ8zROu1TQIoluKkQtwdRUoB7ZuZ9xYj7ds07r2s45zFVWhx-d0S8bMsB8gPWu5Nclu2dU7yUORJuxxaLq_b6f4dTNSno3aRTFYQoCiMwNWwAutNtdF55wwiY_SYNABTgUAVqeigvbMqGdbi8wW_-zbs:1nhLKR:BaSQraTik7Jz2GFbYtV6RP-X5-XfrhJWuAUcJxEYi34	2022-05-04 17:09:51.822159-04
\.


--
-- Data for Name: equipo; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.equipo (idproducto, descripcion, "UM", marca, modelo) FROM stdin;
\.


--
-- Data for Name: especialista_comex; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.especialista_comex (idespecialista, categoria) FROM stdin;
\.


--
-- Data for Name: neumatico; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.neumatico (idproducto, descripcion, "UM", marca, diametro, grosor) FROM stdin;
\.


--
-- Data for Name: pais; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.pais (codigopais, nompais) FROM stdin;
\.


--
-- Data for Name: ppa; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.ppa (idproducto, descripcion, "UM", marca) FROM stdin;
\.


--
-- Data for Name: proveedor; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.proveedor (codmincex, nomproveedor, clasificacion, codigopais) FROM stdin;
\.


--
-- Data for Name: provincia; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.provincia (codigoprovincia, nombre, capital) FROM stdin;
PR	Pinar del Río	Pinar del Río
HB	La Habana	La Habana
AT	Artemisa	Artemisa
MY	Mayabeque	San José de las Lajas
MT	Matanzas	Matanzas
CF	Cienfuegos	Cienfuegos
VC	Villa Clara	Santa Clara
SP	Sancti Spíritus	Sancti Spíritus
CA	Ciego de Ávila	Ciego de Avila
CM	Camagüey	Camagüey
LT	Las Tunas	Las Tunas
HL	Holguín	Holguín
GM	Granma	Bayamo
SC	Santiago de Cuba	Santiago de Cuba
GT	Guantánamo	Guantánamo
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
\.


--
-- Data for Name: solicitud_equipo_poveedor; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.solicitud_equipo_poveedor (id, codmincex_id, numsolicitud) FROM stdin;
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

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 124, true);


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

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 20, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 31, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 28, true);


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

SELECT pg_catalog.setval('public.solicitud_equipo_numsolicitud_seq', 1, false);


--
-- Name: solicitud_equipo_poveedor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.solicitud_equipo_poveedor_id_seq', 1, false);


--
-- Name: solicitud_equipo_proxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.solicitud_equipo_proxy_id_seq', 1, false);


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
-- Name: pais_idpais_57157e63_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX pais_idpais_57157e63_like ON public.pais USING btree (codigopais varchar_pattern_ops);


--
-- Name: proveedor_codigopais_ba6f5c0d; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX proveedor_codigopais_ba6f5c0d ON public.proveedor USING btree (codigopais);


--
-- Name: proveedor_codigopais_ba6f5c0d_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX proveedor_codigopais_ba6f5c0d_like ON public.proveedor USING btree (codigopais varchar_pattern_ops);


--
-- Name: proveedor_codmincex_e9a8c16d_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX proveedor_codmincex_e9a8c16d_like ON public.proveedor USING btree (codmincex varchar_pattern_ops);


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
-- Name: casa_matriz casa_matriz_codmincex_bd5fc4f6_fk_proveedor_codmincex; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.casa_matriz
    ADD CONSTRAINT casa_matriz_codmincex_bd5fc4f6_fk_proveedor_codmincex FOREIGN KEY (codmincex) REFERENCES public.proveedor(codmincex) DEFERRABLE INITIALLY DEFERRED;


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
-- Name: especialista_comex especialista_comex_idespecialista_8fc5f862_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.especialista_comex
    ADD CONSTRAINT especialista_comex_idespecialista_8fc5f862_fk_auth_user_id FOREIGN KEY (idespecialista) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: proveedor proveedor_codigopais_ba6f5c0d_fk_pais_codigopais; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.proveedor
    ADD CONSTRAINT proveedor_codigopais_ba6f5c0d_fk_pais_codigopais FOREIGN KEY (codigopais) REFERENCES public.pais(codigopais) DEFERRABLE INITIALLY DEFERRED;


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
-- Name: solicitud_bateria_poveedor solicitud_bateria_po_codmincex_id_2d96a593_fk_proveedor; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_bateria_poveedor
    ADD CONSTRAINT solicitud_bateria_po_codmincex_id_2d96a593_fk_proveedor FOREIGN KEY (codmincex_id) REFERENCES public.proveedor(codmincex) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: solicitud_bateria_poveedor solicitud_bateria_po_numsolicitud_7d22a710_fk_solicitud; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_bateria_poveedor
    ADD CONSTRAINT solicitud_bateria_po_numsolicitud_7d22a710_fk_solicitud FOREIGN KEY (numsolicitud) REFERENCES public.solicitud_bateria(numsolicitud) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: solicitud_bateria_proxy solicitud_bateria_pr_idproducto_d16d2d8c_fk_bateria_i; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_bateria_proxy
    ADD CONSTRAINT solicitud_bateria_pr_idproducto_d16d2d8c_fk_bateria_i FOREIGN KEY (idproducto) REFERENCES public.bateria(idproducto) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: solicitud_bateria_proxy solicitud_bateria_pr_numsolicitud_94914016_fk_solicitud; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_bateria_proxy
    ADD CONSTRAINT solicitud_bateria_pr_numsolicitud_94914016_fk_solicitud FOREIGN KEY (numsolicitud) REFERENCES public.solicitud_bateria(numsolicitud) DEFERRABLE INITIALLY DEFERRED;


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
-- Name: solicitud_equipo_poveedor solicitud_equipo_pov_codmincex_id_1d17bb40_fk_proveedor; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_equipo_poveedor
    ADD CONSTRAINT solicitud_equipo_pov_codmincex_id_1d17bb40_fk_proveedor FOREIGN KEY (codmincex_id) REFERENCES public.proveedor(codmincex) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: solicitud_equipo_poveedor solicitud_equipo_pov_numsolicitud_a7fb9e8a_fk_solicitud; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_equipo_poveedor
    ADD CONSTRAINT solicitud_equipo_pov_numsolicitud_a7fb9e8a_fk_solicitud FOREIGN KEY (numsolicitud) REFERENCES public.solicitud_equipo(numsolicitud) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: solicitud_equipo_proxy solicitud_equipo_pro_numsolicitud_812d2e09_fk_solicitud; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_equipo_proxy
    ADD CONSTRAINT solicitud_equipo_pro_numsolicitud_812d2e09_fk_solicitud FOREIGN KEY (numsolicitud) REFERENCES public.solicitud_equipo(numsolicitud) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: solicitud_equipo_proxy solicitud_equipo_proxy_idproducto_08c7c6e0_fk_equipo_idproducto; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_equipo_proxy
    ADD CONSTRAINT solicitud_equipo_proxy_idproducto_08c7c6e0_fk_equipo_idproducto FOREIGN KEY (idproducto) REFERENCES public.equipo(idproducto) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: solicitud_neumatico_poveedor solicitud_neumatico__codmincex_id_32e9df78_fk_proveedor; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_neumatico_poveedor
    ADD CONSTRAINT solicitud_neumatico__codmincex_id_32e9df78_fk_proveedor FOREIGN KEY (codmincex_id) REFERENCES public.proveedor(codmincex) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: solicitud_neumatico_proxy solicitud_neumatico__idproducto_264bd634_fk_neumatico; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_neumatico_proxy
    ADD CONSTRAINT solicitud_neumatico__idproducto_264bd634_fk_neumatico FOREIGN KEY (idproducto) REFERENCES public.neumatico(idproducto) DEFERRABLE INITIALLY DEFERRED;


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
-- Name: solicitud_ppa solicitud_ppa_idespecialista_d2d1d2ea_fk_especiali; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_ppa
    ADD CONSTRAINT solicitud_ppa_idespecialista_d2d1d2ea_fk_especiali FOREIGN KEY (idespecialista) REFERENCES public.especialista_comex(idespecialista) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: solicitud_ppa solicitud_ppa_idproducto_5d5752e5_fk_equipo_idproducto; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_ppa
    ADD CONSTRAINT solicitud_ppa_idproducto_5d5752e5_fk_equipo_idproducto FOREIGN KEY (idproducto) REFERENCES public.equipo(idproducto) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: solicitud_ppa solicitud_ppa_numcontratocliente_cd73b766_fk_cliente_n; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_ppa
    ADD CONSTRAINT solicitud_ppa_numcontratocliente_cd73b766_fk_cliente_n FOREIGN KEY (numcontratocliente) REFERENCES public.cliente(numcontratocliente) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: solicitud_ppa_poveedor solicitud_ppa_poveed_codmincex_id_ff8ec5cf_fk_proveedor; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_ppa_poveedor
    ADD CONSTRAINT solicitud_ppa_poveed_codmincex_id_ff8ec5cf_fk_proveedor FOREIGN KEY (codmincex_id) REFERENCES public.proveedor(codmincex) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: solicitud_ppa_poveedor solicitud_ppa_poveed_numsolicitud_f4187e0d_fk_solicitud; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_ppa_poveedor
    ADD CONSTRAINT solicitud_ppa_poveed_numsolicitud_f4187e0d_fk_solicitud FOREIGN KEY (numsolicitud) REFERENCES public.solicitud_ppa(numsolicitud) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: solicitud_ppa_proxy solicitud_ppa_proxy_idproducto_efc8a761_fk_ppa_idproducto; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_ppa_proxy
    ADD CONSTRAINT solicitud_ppa_proxy_idproducto_efc8a761_fk_ppa_idproducto FOREIGN KEY (idproducto) REFERENCES public.ppa(idproducto) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: solicitud_ppa_proxy solicitud_ppa_proxy_numsolicitud_b3c4e117_fk_solicitud; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_ppa_proxy
    ADD CONSTRAINT solicitud_ppa_proxy_numsolicitud_b3c4e117_fk_solicitud FOREIGN KEY (numsolicitud) REFERENCES public.solicitud_ppa(numsolicitud) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: sucursal_cuba sucursal_cuba_codmincex_aa0b5234_fk_proveedor_codmincex; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.sucursal_cuba
    ADD CONSTRAINT sucursal_cuba_codmincex_aa0b5234_fk_proveedor_codmincex FOREIGN KEY (codmincex) REFERENCES public.proveedor(codmincex) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

