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
ALTER TABLE ONLY public.solicitud_ppa_proveedor DROP CONSTRAINT solicitud_ppa_provee_numsolicitud_61e29922_fk_solicitud;
ALTER TABLE ONLY public.solicitud_ppa_proveedor DROP CONSTRAINT solicitud_ppa_provee_codmincex_id_4cab253e_fk_proveedor;
ALTER TABLE ONLY public.solicitud_ppa DROP CONSTRAINT solicitud_ppa_numcontratocliente_cd73b766_fk_cliente_n;
ALTER TABLE ONLY public.solicitud_ppa DROP CONSTRAINT solicitud_ppa_idproducto_5d5752e5_fk_equipo_idproducto;
ALTER TABLE ONLY public.solicitud_ppa DROP CONSTRAINT solicitud_ppa_idespecialista_d2d1d2ea_fk_especiali;
ALTER TABLE ONLY public.solicitud_neumatico DROP CONSTRAINT solicitud_neumatico_numcontratocliente_e9e0724c_fk_cliente_n;
ALTER TABLE ONLY public.solicitud_neumatico DROP CONSTRAINT solicitud_neumatico_idespecialista_dfcda92c_fk_especiali;
ALTER TABLE ONLY public.solicitud_neumatico_proxy DROP CONSTRAINT solicitud_neumatico__numsolicitud_3ebfa720_fk_solicitud;
ALTER TABLE ONLY public.solicitud_neumatico_proveedor DROP CONSTRAINT solicitud_neumatico__numsolicitud_23890b23_fk_solicitud;
ALTER TABLE ONLY public.solicitud_neumatico_proxy DROP CONSTRAINT solicitud_neumatico__idproducto_264bd634_fk_neumatico;
ALTER TABLE ONLY public.solicitud_neumatico_proveedor DROP CONSTRAINT solicitud_neumatico__codmincex_id_920b25fe_fk_proveedor;
ALTER TABLE ONLY public.solicitud_equipo_proxy DROP CONSTRAINT solicitud_equipo_proxy_idproducto_08c7c6e0_fk_equipo_idproducto;
ALTER TABLE ONLY public.solicitud_equipo_proxy DROP CONSTRAINT solicitud_equipo_pro_numsolicitud_812d2e09_fk_solicitud;
ALTER TABLE ONLY public.solicitud_equipo_proveedor DROP CONSTRAINT solicitud_equipo_pro_numsolicitud_00805827_fk_solicitud;
ALTER TABLE ONLY public.solicitud_equipo_proveedor DROP CONSTRAINT solicitud_equipo_pro_codmincex_id_c8af2bac_fk_proveedor;
ALTER TABLE ONLY public.solicitud_equipo DROP CONSTRAINT solicitud_equipo_numcontratocliente_08e73429_fk_cliente_n;
ALTER TABLE ONLY public.solicitud_equipo DROP CONSTRAINT solicitud_equipo_idespecialista_ca55c049_fk_especiali;
ALTER TABLE ONLY public.solicitud_bateria_proxy DROP CONSTRAINT solicitud_bateria_pr_numsolicitud_94914016_fk_solicitud;
ALTER TABLE ONLY public.solicitud_bateria_proveedor DROP CONSTRAINT solicitud_bateria_pr_numsolicitud_6535162f_fk_solicitud;
ALTER TABLE ONLY public.solicitud_bateria_proxy DROP CONSTRAINT solicitud_bateria_pr_idproducto_d16d2d8c_fk_bateria_i;
ALTER TABLE ONLY public.solicitud_bateria_proveedor DROP CONSTRAINT solicitud_bateria_pr_codmincex_id_c9dc75e4_fk_proveedor;
ALTER TABLE ONLY public.solicitud_bateria DROP CONSTRAINT solicitud_bateria_numcontratocliente_726f79a5_fk_cliente_n;
ALTER TABLE ONLY public.solicitud_bateria DROP CONSTRAINT solicitud_bateria_idespecialista_868f4087_fk_especiali;
ALTER TABLE ONLY public.reports_savedreport DROP CONSTRAINT reports_savedreport_run_by_id_0e49a3ac_fk_auth_user_id;
ALTER TABLE ONLY public.proveedor_marca DROP CONSTRAINT proveedor_marca_proveedor_id_81518723_fk_proveedor_codmincex;
ALTER TABLE ONLY public.proveedor_marca DROP CONSTRAINT proveedor_marca_marca_id_ae2ad161_fk_marca_codigomarca;
ALTER TABLE ONLY public.proveedor DROP CONSTRAINT proveedor_codigopais_ba6f5c0d_fk_pais_codigopais;
ALTER TABLE ONLY public.ppa DROP CONSTRAINT ppa_marca_id_ce5f7e04_fk_marca_codigomarca;
ALTER TABLE ONLY public.ppa_equipo DROP CONSTRAINT ppa_equipo_ppa_id_323cec64_fk_ppa_idproducto;
ALTER TABLE ONLY public.ppa_equipo DROP CONSTRAINT ppa_equipo_equipo_id_c9d1cddb_fk_equipo_idproducto;
ALTER TABLE ONLY public.oferta_equipo_proxy DROP CONSTRAINT oferta_equipo_proxy_numsolicitud_3cc31e99_fk_oferta_eq;
ALTER TABLE ONLY public.oferta_equipo_proxy DROP CONSTRAINT oferta_equipo_proxy_idproducto_ff77c35c_fk_solicitud;
ALTER TABLE ONLY public.oferta_equipo DROP CONSTRAINT oferta_equipo_numsolicitud_cf512716_fk_solicitud;
ALTER TABLE ONLY public.oferta_equipo DROP CONSTRAINT oferta_equipo_idpais_25734604_fk_pais_codigopais;
ALTER TABLE ONLY public.oferta_equipo DROP CONSTRAINT oferta_equipo_idespecialista_ba0415b9_fk_especiali;
ALTER TABLE ONLY public.oferta_equipo DROP CONSTRAINT oferta_equipo_codmincex_2e6e45cf_fk_proveedor_codmincex;
ALTER TABLE ONLY public.neumatico DROP CONSTRAINT neumatico_marca_id_e2843a2d_fk_marca_codigomarca;
ALTER TABLE ONLY public.especialista_comex DROP CONSTRAINT especialista_comex_idespecialista_8fc5f862_fk_auth_user_id;
ALTER TABLE ONLY public.equipo DROP CONSTRAINT equipo_marca_id_aef47c38_fk_marca_codigomarca;
ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
ALTER TABLE ONLY public.cliente DROP CONSTRAINT cliente_provincia_478bfc63_fk;
ALTER TABLE ONLY public.casa_matriz DROP CONSTRAINT casa_matriz_codmincex_bd5fc4f6_fk_proveedor_codmincex;
ALTER TABLE ONLY public.bateria DROP CONSTRAINT bateria_marca_id_bff70813_fk_marca_codigomarca;
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
DROP INDEX public.solicitud_ppa_proxy_idproducto_efc8a761_like;
DROP INDEX public.solicitud_ppa_proxy_idproducto_efc8a761;
DROP INDEX public.solicitud_ppa_proveedor_numsolicitud_61e29922;
DROP INDEX public.solicitud_ppa_proveedor_codmincex_id_4cab253e_like;
DROP INDEX public.solicitud_ppa_proveedor_codmincex_id_4cab253e;
DROP INDEX public.solicitud_ppa_numcontratocliente_cd73b766;
DROP INDEX public.solicitud_ppa_idproducto_5d5752e5_like;
DROP INDEX public.solicitud_ppa_idproducto_5d5752e5;
DROP INDEX public.solicitud_ppa_idespecialista_d2d1d2ea;
DROP INDEX public.solicitud_neumatico_proxy_numsolicitud_3ebfa720;
DROP INDEX public.solicitud_neumatico_proxy_idproducto_264bd634_like;
DROP INDEX public.solicitud_neumatico_proxy_idproducto_264bd634;
DROP INDEX public.solicitud_neumatico_proveedor_numsolicitud_23890b23;
DROP INDEX public.solicitud_neumatico_proveedor_codmincex_id_920b25fe_like;
DROP INDEX public.solicitud_neumatico_proveedor_codmincex_id_920b25fe;
DROP INDEX public.solicitud_neumatico_numcontratocliente_e9e0724c;
DROP INDEX public.solicitud_neumatico_idespecialista_dfcda92c;
DROP INDEX public.solicitud_equipo_proxy_numsolicitud_812d2e09;
DROP INDEX public.solicitud_equipo_proxy_idproducto_08c7c6e0_like;
DROP INDEX public.solicitud_equipo_proxy_idproducto_08c7c6e0;
DROP INDEX public.solicitud_equipo_proveedor_numsolicitud_00805827;
DROP INDEX public.solicitud_equipo_proveedor_codmincex_id_c8af2bac_like;
DROP INDEX public.solicitud_equipo_proveedor_codmincex_id_c8af2bac;
DROP INDEX public.solicitud_equipo_numcontratocliente_08e73429;
DROP INDEX public.solicitud_equipo_idespecialista_ca55c049;
DROP INDEX public.solicitud_bateria_proxy_numsolicitud_94914016;
DROP INDEX public.solicitud_bateria_proxy_idproducto_d16d2d8c_like;
DROP INDEX public.solicitud_bateria_proxy_idproducto_d16d2d8c;
DROP INDEX public.solicitud_bateria_proveedor_numsolicitud_6535162f;
DROP INDEX public.solicitud_bateria_proveedor_codmincex_id_c9dc75e4_like;
DROP INDEX public.solicitud_bateria_proveedor_codmincex_id_c9dc75e4;
DROP INDEX public.solicitud_bateria_numcontratocliente_726f79a5;
DROP INDEX public.solicitud_bateria_idespecialista_868f4087;
DROP INDEX public.reports_savedreport_run_by_id_0e49a3ac;
DROP INDEX public.provincia_codigoprovincia_faf2e195_like;
DROP INDEX public.proveedor_marca_proveedor_id_81518723_like;
DROP INDEX public.proveedor_marca_proveedor_id_81518723;
DROP INDEX public.proveedor_marca_marca_id_ae2ad161_like;
DROP INDEX public.proveedor_marca_marca_id_ae2ad161;
DROP INDEX public.proveedor_codmincex_e9a8c16d_like;
DROP INDEX public.proveedor_codigopais_ba6f5c0d_like;
DROP INDEX public.proveedor_codigopais_ba6f5c0d;
DROP INDEX public.ppa_marca_id_ce5f7e04_like;
DROP INDEX public.ppa_marca_id_ce5f7e04;
DROP INDEX public.ppa_idproducto_ae8ec065_like;
DROP INDEX public.ppa_equipo_ppa_id_323cec64_like;
DROP INDEX public.ppa_equipo_ppa_id_323cec64;
DROP INDEX public.ppa_equipo_equipo_id_c9d1cddb_like;
DROP INDEX public.ppa_equipo_equipo_id_c9d1cddb;
DROP INDEX public.pais_codigopais_f394d5a9_like;
DROP INDEX public.oferta_equipo_proxy_numsolicitud_3cc31e99;
DROP INDEX public.oferta_equipo_proxy_idproducto_ff77c35c;
DROP INDEX public.oferta_equipo_numsolicitud_cf512716;
DROP INDEX public.oferta_equipo_idpais_25734604_like;
DROP INDEX public.oferta_equipo_idpais_25734604;
DROP INDEX public.oferta_equipo_idespecialista_ba0415b9;
DROP INDEX public.oferta_equipo_codmincex_2e6e45cf_like;
DROP INDEX public.oferta_equipo_codmincex_2e6e45cf;
DROP INDEX public.neumatico_marca_id_e2843a2d_like;
DROP INDEX public.neumatico_marca_id_e2843a2d;
DROP INDEX public.neumatico_idproducto_9eec9617_like;
DROP INDEX public.marca_codigomarca_5ec0b382_like;
DROP INDEX public.equipo_marca_id_aef47c38_like;
DROP INDEX public.equipo_marca_id_aef47c38;
DROP INDEX public.equipo_idproducto_712e52c4_like;
DROP INDEX public.django_session_session_key_c0390e0f_like;
DROP INDEX public.django_session_expire_date_a5c62663;
DROP INDEX public.django_admin_log_user_id_c564eba6;
DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
DROP INDEX public.cliente_provincia_478bfc63_like;
DROP INDEX public.cliente_provincia_478bfc63;
DROP INDEX public.casa_matriz_codmincex_bd5fc4f6_like;
DROP INDEX public.casa_matriz_codmincex_bd5fc4f6;
DROP INDEX public.bateria_marca_id_bff70813_like;
DROP INDEX public.bateria_marca_id_bff70813;
DROP INDEX public.bateria_idproducto_5736f2bb_like;
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
ALTER TABLE ONLY public.solicitud_ppa_proveedor DROP CONSTRAINT solicitud_ppa_proveedor_pkey;
ALTER TABLE ONLY public.solicitud_ppa DROP CONSTRAINT solicitud_ppa_pkey;
ALTER TABLE ONLY public.solicitud_neumatico_proxy DROP CONSTRAINT solicitud_neumatico_proxy_pkey;
ALTER TABLE ONLY public.solicitud_neumatico_proveedor DROP CONSTRAINT solicitud_neumatico_proveedor_pkey;
ALTER TABLE ONLY public.solicitud_neumatico DROP CONSTRAINT solicitud_neumatico_pkey;
ALTER TABLE ONLY public.solicitud_equipo_proxy DROP CONSTRAINT solicitud_equipo_proxy_pkey;
ALTER TABLE ONLY public.solicitud_equipo_proveedor DROP CONSTRAINT solicitud_equipo_proveedor_pkey;
ALTER TABLE ONLY public.solicitud_equipo DROP CONSTRAINT solicitud_equipo_pkey;
ALTER TABLE ONLY public.solicitud_bateria_proxy DROP CONSTRAINT solicitud_bateria_proxy_pkey;
ALTER TABLE ONLY public.solicitud_bateria_proveedor DROP CONSTRAINT solicitud_bateria_proveedor_pkey;
ALTER TABLE ONLY public.solicitud_bateria DROP CONSTRAINT solicitud_bateria_pkey;
ALTER TABLE ONLY public.reports_savedreport DROP CONSTRAINT reports_savedreport_pkey;
ALTER TABLE ONLY public.provincia DROP CONSTRAINT provincia_pkey;
ALTER TABLE ONLY public.proveedor DROP CONSTRAINT proveedor_pkey;
ALTER TABLE ONLY public.proveedor_marca DROP CONSTRAINT proveedor_marca_proveedor_id_marca_id_716b0f11_uniq;
ALTER TABLE ONLY public.proveedor_marca DROP CONSTRAINT proveedor_marca_pkey;
ALTER TABLE ONLY public.proveedor DROP CONSTRAINT proveedor_codmincex_codigopais_eea1226c_uniq;
ALTER TABLE ONLY public.ppa DROP CONSTRAINT ppa_pkey;
ALTER TABLE ONLY public.ppa_equipo DROP CONSTRAINT ppa_equipo_ppa_id_equipo_id_5db04d59_uniq;
ALTER TABLE ONLY public.ppa_equipo DROP CONSTRAINT ppa_equipo_pkey;
ALTER TABLE ONLY public.pais DROP CONSTRAINT pais_pkey;
ALTER TABLE ONLY public.oferta_equipo_proxy DROP CONSTRAINT oferta_equipo_proxy_pkey;
ALTER TABLE ONLY public.oferta_equipo DROP CONSTRAINT oferta_equipo_pkey;
ALTER TABLE ONLY public.neumatico DROP CONSTRAINT neumatico_pkey;
ALTER TABLE ONLY public.marca DROP CONSTRAINT marca_pkey;
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
ALTER TABLE public.solicitud_ppa_proveedor ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.solicitud_ppa ALTER COLUMN numsolicitud DROP DEFAULT;
ALTER TABLE public.solicitud_neumatico_proxy ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.solicitud_neumatico_proveedor ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.solicitud_neumatico ALTER COLUMN numsolicitud DROP DEFAULT;
ALTER TABLE public.solicitud_equipo_proxy ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.solicitud_equipo_proveedor ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.solicitud_equipo ALTER COLUMN numsolicitud DROP DEFAULT;
ALTER TABLE public.solicitud_bateria_proxy ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.solicitud_bateria_proveedor ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.solicitud_bateria ALTER COLUMN numsolicitud DROP DEFAULT;
ALTER TABLE public.reports_savedreport ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.proveedor_marca ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.ppa_equipo ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.oferta_equipo_proxy ALTER COLUMN id DROP DEFAULT;
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
DROP SEQUENCE public.solicitud_ppa_proveedor_id_seq;
DROP TABLE public.solicitud_ppa_proveedor;
DROP SEQUENCE public.solicitud_ppa_numsolicitud_seq;
DROP TABLE public.solicitud_ppa;
DROP SEQUENCE public.solicitud_neumatico_proxy_id_seq;
DROP TABLE public.solicitud_neumatico_proxy;
DROP SEQUENCE public.solicitud_neumatico_proveedor_id_seq;
DROP TABLE public.solicitud_neumatico_proveedor;
DROP SEQUENCE public.solicitud_neumatico_numsolicitud_seq;
DROP TABLE public.solicitud_neumatico;
DROP SEQUENCE public.solicitud_equipo_proxy_id_seq;
DROP TABLE public.solicitud_equipo_proxy;
DROP SEQUENCE public.solicitud_equipo_proveedor_id_seq;
DROP TABLE public.solicitud_equipo_proveedor;
DROP SEQUENCE public.solicitud_equipo_numsolicitud_seq;
DROP TABLE public.solicitud_equipo;
DROP SEQUENCE public.solicitud_bateria_proxy_id_seq;
DROP TABLE public.solicitud_bateria_proxy;
DROP SEQUENCE public.solicitud_bateria_proveedor_id_seq;
DROP TABLE public.solicitud_bateria_proveedor;
DROP SEQUENCE public.solicitud_bateria_numsolicitud_seq;
DROP TABLE public.solicitud_bateria;
DROP SEQUENCE public.reports_savedreport_id_seq;
DROP TABLE public.reports_savedreport;
DROP TABLE public.provincia;
DROP SEQUENCE public.proveedor_marca_id_seq;
DROP TABLE public.proveedor_marca;
DROP TABLE public.proveedor;
DROP SEQUENCE public.ppa_equipo_id_seq;
DROP TABLE public.ppa_equipo;
DROP TABLE public.ppa;
DROP TABLE public.pais;
DROP SEQUENCE public.oferta_equipo_proxy_id_seq;
DROP TABLE public.oferta_equipo_proxy;
DROP TABLE public.oferta_equipo;
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
    date_joined timestamp with time zone NOT NULL
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
    voltaje double precision NOT NULL,
    amperaje double precision NOT NULL,
    marca_id character varying(30) NOT NULL
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
    modelo character varying(30) NOT NULL,
    marca_id character varying(30) NOT NULL
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
    codigomarca character varying(30) NOT NULL,
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
    diametro double precision NOT NULL,
    grosor double precision NOT NULL,
    marca_id character varying(30) NOT NULL
);


ALTER TABLE public.neumatico OWNER TO const;

--
-- Name: oferta_equipo; Type: TABLE; Schema: public; Owner: const
--

CREATE TABLE public.oferta_equipo (
    numero integer NOT NULL,
    fecha date NOT NULL,
    validez date NOT NULL,
    tipo character varying(30) NOT NULL,
    idespecialista integer NOT NULL,
    idpais character varying(20) NOT NULL,
    codmincex character varying(16) NOT NULL,
    numsolicitud integer NOT NULL
);


ALTER TABLE public.oferta_equipo OWNER TO const;

--
-- Name: oferta_equipo_proxy; Type: TABLE; Schema: public; Owner: const
--

CREATE TABLE public.oferta_equipo_proxy (
    id bigint NOT NULL,
    cantidad integer NOT NULL,
    precio double precision NOT NULL,
    importe double precision NOT NULL,
    idproducto bigint NOT NULL,
    numsolicitud integer NOT NULL
);


ALTER TABLE public.oferta_equipo_proxy OWNER TO const;

--
-- Name: oferta_equipo_proxy_id_seq; Type: SEQUENCE; Schema: public; Owner: const
--

CREATE SEQUENCE public.oferta_equipo_proxy_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.oferta_equipo_proxy_id_seq OWNER TO const;

--
-- Name: oferta_equipo_proxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: const
--

ALTER SEQUENCE public.oferta_equipo_proxy_id_seq OWNED BY public.oferta_equipo_proxy.id;


--
-- Name: pais; Type: TABLE; Schema: public; Owner: const
--

CREATE TABLE public.pais (
    codigopais character varying(20) NOT NULL,
    nompais character varying(100) NOT NULL
);


ALTER TABLE public.pais OWNER TO const;

--
-- Name: ppa; Type: TABLE; Schema: public; Owner: const
--

CREATE TABLE public.ppa (
    idproducto character varying(30) NOT NULL,
    descripcion character varying(50) NOT NULL,
    "UM" character varying(15) NOT NULL,
    marca_id character varying(30) NOT NULL
);


ALTER TABLE public.ppa OWNER TO const;

--
-- Name: ppa_equipo; Type: TABLE; Schema: public; Owner: const
--

CREATE TABLE public.ppa_equipo (
    id bigint NOT NULL,
    ppa_id character varying(30) NOT NULL,
    equipo_id character varying(30) NOT NULL
);


ALTER TABLE public.ppa_equipo OWNER TO const;

--
-- Name: ppa_equipo_id_seq; Type: SEQUENCE; Schema: public; Owner: const
--

CREATE SEQUENCE public.ppa_equipo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ppa_equipo_id_seq OWNER TO const;

--
-- Name: ppa_equipo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: const
--

ALTER SEQUENCE public.ppa_equipo_id_seq OWNED BY public.ppa_equipo.id;


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
    marca_id character varying(30) NOT NULL
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
-- Name: solicitud_bateria_proveedor; Type: TABLE; Schema: public; Owner: const
--

CREATE TABLE public.solicitud_bateria_proveedor (
    id bigint NOT NULL,
    codmincex_id character varying(16) NOT NULL,
    numsolicitud integer NOT NULL
);


ALTER TABLE public.solicitud_bateria_proveedor OWNER TO const;

--
-- Name: solicitud_bateria_proveedor_id_seq; Type: SEQUENCE; Schema: public; Owner: const
--

CREATE SEQUENCE public.solicitud_bateria_proveedor_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.solicitud_bateria_proveedor_id_seq OWNER TO const;

--
-- Name: solicitud_bateria_proveedor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: const
--

ALTER SEQUENCE public.solicitud_bateria_proveedor_id_seq OWNED BY public.solicitud_bateria_proveedor.id;


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
-- Name: solicitud_equipo_proveedor; Type: TABLE; Schema: public; Owner: const
--

CREATE TABLE public.solicitud_equipo_proveedor (
    id bigint NOT NULL,
    codmincex_id character varying(16) NOT NULL,
    numsolicitud integer NOT NULL
);


ALTER TABLE public.solicitud_equipo_proveedor OWNER TO const;

--
-- Name: solicitud_equipo_proveedor_id_seq; Type: SEQUENCE; Schema: public; Owner: const
--

CREATE SEQUENCE public.solicitud_equipo_proveedor_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.solicitud_equipo_proveedor_id_seq OWNER TO const;

--
-- Name: solicitud_equipo_proveedor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: const
--

ALTER SEQUENCE public.solicitud_equipo_proveedor_id_seq OWNED BY public.solicitud_equipo_proveedor.id;


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
-- Name: solicitud_neumatico_proveedor; Type: TABLE; Schema: public; Owner: const
--

CREATE TABLE public.solicitud_neumatico_proveedor (
    id bigint NOT NULL,
    codmincex_id character varying(16) NOT NULL,
    numsolicitud integer NOT NULL
);


ALTER TABLE public.solicitud_neumatico_proveedor OWNER TO const;

--
-- Name: solicitud_neumatico_proveedor_id_seq; Type: SEQUENCE; Schema: public; Owner: const
--

CREATE SEQUENCE public.solicitud_neumatico_proveedor_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.solicitud_neumatico_proveedor_id_seq OWNER TO const;

--
-- Name: solicitud_neumatico_proveedor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: const
--

ALTER SEQUENCE public.solicitud_neumatico_proveedor_id_seq OWNED BY public.solicitud_neumatico_proveedor.id;


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
-- Name: solicitud_ppa_proveedor; Type: TABLE; Schema: public; Owner: const
--

CREATE TABLE public.solicitud_ppa_proveedor (
    id bigint NOT NULL,
    codmincex_id character varying(16) NOT NULL,
    numsolicitud integer NOT NULL
);


ALTER TABLE public.solicitud_ppa_proveedor OWNER TO const;

--
-- Name: solicitud_ppa_proveedor_id_seq; Type: SEQUENCE; Schema: public; Owner: const
--

CREATE SEQUENCE public.solicitud_ppa_proveedor_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.solicitud_ppa_proveedor_id_seq OWNER TO const;

--
-- Name: solicitud_ppa_proveedor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: const
--

ALTER SEQUENCE public.solicitud_ppa_proveedor_id_seq OWNED BY public.solicitud_ppa_proveedor.id;


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
-- Name: oferta_equipo_proxy id; Type: DEFAULT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.oferta_equipo_proxy ALTER COLUMN id SET DEFAULT nextval('public.oferta_equipo_proxy_id_seq'::regclass);


--
-- Name: ppa_equipo id; Type: DEFAULT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.ppa_equipo ALTER COLUMN id SET DEFAULT nextval('public.ppa_equipo_id_seq'::regclass);


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
-- Name: solicitud_bateria_proveedor id; Type: DEFAULT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_bateria_proveedor ALTER COLUMN id SET DEFAULT nextval('public.solicitud_bateria_proveedor_id_seq'::regclass);


--
-- Name: solicitud_bateria_proxy id; Type: DEFAULT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_bateria_proxy ALTER COLUMN id SET DEFAULT nextval('public.solicitud_bateria_proxy_id_seq'::regclass);


--
-- Name: solicitud_equipo numsolicitud; Type: DEFAULT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_equipo ALTER COLUMN numsolicitud SET DEFAULT nextval('public.solicitud_equipo_numsolicitud_seq'::regclass);


--
-- Name: solicitud_equipo_proveedor id; Type: DEFAULT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_equipo_proveedor ALTER COLUMN id SET DEFAULT nextval('public.solicitud_equipo_proveedor_id_seq'::regclass);


--
-- Name: solicitud_equipo_proxy id; Type: DEFAULT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_equipo_proxy ALTER COLUMN id SET DEFAULT nextval('public.solicitud_equipo_proxy_id_seq'::regclass);


--
-- Name: solicitud_neumatico numsolicitud; Type: DEFAULT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_neumatico ALTER COLUMN numsolicitud SET DEFAULT nextval('public.solicitud_neumatico_numsolicitud_seq'::regclass);


--
-- Name: solicitud_neumatico_proveedor id; Type: DEFAULT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_neumatico_proveedor ALTER COLUMN id SET DEFAULT nextval('public.solicitud_neumatico_proveedor_id_seq'::regclass);


--
-- Name: solicitud_neumatico_proxy id; Type: DEFAULT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_neumatico_proxy ALTER COLUMN id SET DEFAULT nextval('public.solicitud_neumatico_proxy_id_seq'::regclass);


--
-- Name: solicitud_ppa numsolicitud; Type: DEFAULT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_ppa ALTER COLUMN numsolicitud SET DEFAULT nextval('public.solicitud_ppa_numsolicitud_seq'::regclass);


--
-- Name: solicitud_ppa_proveedor id; Type: DEFAULT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_ppa_proveedor ALTER COLUMN id SET DEFAULT nextval('public.solicitud_ppa_proveedor_id_seq'::regclass);


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
1	Marketing
2	Director_Desarrollo
3	Director_COMEX
4	Especialista_COMEX
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
1	1	25
2	1	26
3	1	28
4	1	29
5	1	30
6	1	32
7	1	33
8	1	34
9	1	36
10	1	37
11	1	38
12	1	40
13	1	41
14	1	42
15	1	43
16	1	44
17	1	45
18	1	46
19	1	47
20	1	48
21	1	49
22	1	50
23	1	51
24	1	52
25	1	53
26	1	54
27	1	55
28	1	56
29	1	57
30	1	58
31	1	59
32	1	60
33	1	61
34	1	62
35	1	63
36	1	64
37	1	65
38	1	66
39	1	67
40	1	68
41	1	69
42	1	70
43	1	71
44	1	72
45	1	85
46	1	86
47	1	87
48	1	88
49	1	89
50	1	90
51	1	91
52	1	92
53	1	96
54	1	97
55	1	98
56	1	99
57	1	100
58	1	104
59	1	105
60	1	106
61	1	107
62	1	108
63	1	109
64	1	110
65	1	111
66	1	112
67	1	113
68	1	114
69	1	115
70	1	116
71	1	117
72	1	118
73	1	119
74	1	120
75	1	121
76	1	122
77	1	123
78	1	124
79	1	125
80	1	126
81	1	127
82	1	128
83	2	128
84	2	25
85	2	26
86	2	28
87	2	30
88	2	32
89	2	34
90	2	36
91	2	38
92	2	40
93	2	44
94	2	48
95	2	52
96	2	56
97	2	60
98	2	64
99	2	68
100	2	72
101	2	88
102	2	92
103	2	96
104	2	100
105	2	104
106	2	108
107	2	112
108	2	116
109	2	120
110	2	124
111	2	125
112	3	128
113	3	25
114	3	28
115	3	32
116	3	36
117	3	40
118	3	44
119	3	48
120	3	52
121	3	56
122	3	60
123	3	64
124	3	68
125	3	72
126	3	73
127	3	74
128	3	75
129	3	76
130	3	80
131	3	84
132	3	88
133	3	92
134	3	96
135	3	100
136	3	104
137	3	108
138	3	112
139	3	116
140	3	120
141	3	124
142	4	1
143	4	28
144	4	32
145	4	36
146	4	44
147	4	48
148	4	52
149	4	56
150	4	60
151	4	64
152	4	68
153	4	72
154	4	73
155	4	76
156	4	77
157	4	78
158	4	80
159	4	81
160	4	82
161	4	83
162	4	84
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
77	Can add Oferta de Equipo	add_oferta_equipo	20
78	Can change Oferta de Equipo	change_oferta_equipo	20
79	Can delete Oferta de Equipo	delete_oferta_equipo	20
80	Can view Oferta de Equipo	view_oferta_equipo	20
81	Can add Equipo	add_oferta_equipo_proxy	21
82	Can change Equipo	change_oferta_equipo_proxy	21
83	Can delete Equipo	delete_oferta_equipo_proxy	21
84	Can view Equipo	view_oferta_equipo_proxy	21
85	Can add Equipo	add_equipo	22
86	Can change Equipo	change_equipo	22
87	Can delete Equipo	delete_equipo	22
88	Can view Equipo	view_equipo	22
89	Can add Marca	add_marca	23
90	Can change Marca	change_marca	23
91	Can delete Marca	delete_marca	23
92	Can view Marca	view_marca	23
93	Can add País	add_pais	24
94	Can change País	change_pais	24
95	Can delete País	delete_pais	24
96	Can view País	view_pais	24
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
109	Can add Pieza	add_ppa	28
110	Can change Pieza	change_ppa	28
111	Can delete Pieza	delete_ppa	28
112	Can view Pieza	view_ppa	28
113	Can add Neumático	add_neumatico	29
114	Can change Neumático	change_neumatico	29
115	Can delete Neumático	delete_neumatico	29
116	Can view Neumático	view_neumatico	29
117	Can add cliente	add_cliente	30
118	Can change cliente	change_cliente	30
119	Can delete cliente	delete_cliente	30
120	Can view cliente	view_cliente	30
121	Can add Casa Matriz	add_casa_matriz	31
122	Can change Casa Matriz	change_casa_matriz	31
123	Can delete Casa Matriz	delete_casa_matriz	31
124	Can view Casa Matriz	view_casa_matriz	31
125	Can add Batería	add_bateria	32
126	Can change Batería	change_bateria	32
127	Can delete Batería	delete_bateria	32
128	Can view Batería	view_bateria	32
129	Can add log entry	add_logentry	33
130	Can change log entry	change_logentry	33
131	Can delete log entry	delete_logentry	33
132	Can view log entry	view_logentry	33
133	Can add saved report	add_savedreport	34
134	Can change saved report	change_savedreport	34
135	Can delete saved report	delete_savedreport	34
136	Can view saved report	view_savedreport	34
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$320000$r2D9Df4BnvHfuUNFdtjsno$TWVJB4sviLLQeiDGjpXlowFJ3DexPphisOikxTpkfnY=	2022-04-28 07:00:13.39824-04	t	admin			informatico@construimport.cu	t	t	2022-04-28 06:10:48.707894-04
2	pbkdf2_sha256$320000$XT4r26jP5xqDMLr7nenaLb$LZhpzPvOY8VRncq1oD/Eo2w2dYWvH5fwKx/kORThyi4=	\N	f	marketing	Roberto	Valdes Rodriguez	marketing@construimport.cu	t	t	2022-04-28 07:25:34.255421-04
3	pbkdf2_sha256$320000$BexMvDvkdm96Pd1gjfmn87$Km9arrL0ox3ChJykOI3VCjRTzfZjjPAuYjBPoWHiGlc=	\N	f	director_desarrollo	Maria	Rodriguez Perez	didrdesarrollo@construimport.cu	t	t	2022-04-28 07:26:16.880496-04
4	pbkdf2_sha256$320000$QKG72wg8XQcSi2gsHDewiP$l3LDx7BRzz2HQq+eEAdVRGXtuhVWgMd774SfDLWop+g=	\N	f	director_comex	Ana	García Marrero	dircomex@construimport.cu	t	t	2022-04-28 07:26:51.400273-04
5	pbkdf2_sha256$320000$v13FWVQqQiRPMXfMlFqj8B$p8bfwSYLWppHfaEI8TvuD5kZP3zTMD4f11wnZmWcris=	\N	f	comex1	John	Doe	comex1@construimport.cu	t	t	2022-04-28 07:27:33.555147-04
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
1	2	1
2	3	2
3	4	3
4	5	4
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: bateria; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.bateria (idproducto, descripcion, "UM", voltaje, amperaje, marca_id) FROM stdin;
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
1	2022-04-28 07:16:50.320292-04	1	Marketing	1	[{"added": {}}]	3	1
2	2022-04-28 07:18:16.796322-04	2	Director_Desarrollo	1	[{"added": {}}]	3	1
3	2022-04-28 07:19:28.176218-04	3	Director_COMEX	1	[{"added": {}}]	3	1
4	2022-04-28 07:20:26.386009-04	4	Especialista_COMEX	1	[{"added": {}}]	3	1
5	2022-04-28 07:25:34.374262-04	2	marketing	1	[{"added": {}}]	4	1
6	2022-04-28 07:25:40.921967-04	2	marketing	2	[{"changed": {"fields": ["Roles"]}}]	4	1
7	2022-04-28 07:26:16.995567-04	3	director_desarrollo	1	[{"added": {}}]	4	1
8	2022-04-28 07:26:21.602778-04	3	director_desarrollo	2	[{"changed": {"fields": ["Roles"]}}]	4	1
9	2022-04-28 07:26:51.515138-04	4	director_comex	1	[{"added": {}}]	4	1
10	2022-04-28 07:26:57.86035-04	4	director_comex	2	[{"changed": {"fields": ["Roles"]}}]	4	1
11	2022-04-28 07:27:33.675113-04	5	comex1	1	[{"added": {}}]	4	1
12	2022-04-28 07:27:39.640594-04	5	comex1	2	[{"changed": {"fields": ["Roles"]}}]	4	1
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
20	COMEX	oferta_equipo
21	COMEX	oferta_equipo_proxy
22	Nomencladores	equipo
23	Nomencladores	marca
24	Nomencladores	pais
25	Nomencladores	proveedor
26	Nomencladores	provincia
27	Nomencladores	sucursal_cuba
28	Nomencladores	ppa
29	Nomencladores	neumatico
30	Nomencladores	cliente
31	Nomencladores	casa_matriz
32	Nomencladores	bateria
33	Trazas	logentry
34	reports	savedreport
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	Nomencladores	0001_initial	2022-04-28 06:01:51.319963-04
2	contenttypes	0001_initial	2022-04-28 06:01:51.339847-04
3	contenttypes	0002_remove_content_type_name	2022-04-28 06:01:51.355844-04
4	auth	0001_initial	2022-04-28 06:01:51.449927-04
5	auth	0002_remove_user_role	2022-04-28 06:01:51.461245-04
6	COMEX	0001_initial	2022-04-28 06:01:51.488246-04
7	Solicitudes	0001_initial	2022-04-28 06:01:52.060139-04
8	COMEX	0002_initial	2022-04-28 06:01:52.219991-04
9	Trazas	0001_initial	2022-04-28 06:01:52.237252-04
10	admin	0001_initial	2022-04-28 06:01:52.281251-04
11	notifications	0001_initial	2022-04-28 06:01:52.304257-04
12	notifications	0002_auto_20150224_1134	2022-04-28 06:01:52.322428-04
13	notifications	0003_notification_data	2022-04-28 06:01:52.333429-04
14	notifications	0004_auto_20150826_1508	2022-04-28 06:01:52.342428-04
15	notifications	0005_auto_20160504_1520	2022-04-28 06:01:52.352434-04
16	notifications	0006_indexes	2022-04-28 06:01:52.442478-04
17	notifications	0007_add_timestamp_index	2022-04-28 06:01:52.452283-04
18	notifications	0008_index_together_recipient_unread	2022-04-28 06:01:52.462315-04
19	notifications	0009_alter_notification_id	2022-04-28 06:01:52.472279-04
20	reports	0001_initial	2022-04-28 06:01:52.509614-04
21	sessions	0001_initial	2022-04-28 06:01:52.527609-04
22	Nomencladores	0002_alter_provincia_codigoprovincia	2022-04-28 06:05:56.605396-04
23	Nomencladores	0003_alter_provincia_codigoprovincia	2022-04-28 06:06:59.399962-04
24	Nomencladores	0004_alter_provincia_codigoprovincia	2022-04-28 06:07:44.843052-04
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
84fn6qwao51izpssoatscvmv1dtms2fx	.eJxVjEEOwiAURO_C2hApgv0u3XsGMvwPUjU0Ke3KeHfbpAtdzGbem3mrgGUuYWlpCoOoizLq8NtF8DPVDcgD9T5qHus8DVFvit5p07dR0uu6u38HBa2s6z5SljV8IoBjZDo7WAdj2GWTrPWeOhjIkcXm3tkEDwGZjhJJ9urzBRleOSU:1nk5cr:ZtZKwN_ApJutuaAXhE1tA11by4Fw_uy52MkEQGOTu2w	2022-05-12 07:00:13.39824-04
\.


--
-- Data for Name: equipo; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.equipo (idproducto, descripcion, "UM", modelo, marca_id) FROM stdin;
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
\.


--
-- Data for Name: neumatico; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.neumatico (idproducto, descripcion, "UM", diametro, grosor, marca_id) FROM stdin;
\.


--
-- Data for Name: oferta_equipo; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.oferta_equipo (numero, fecha, validez, tipo, idespecialista, idpais, codmincex, numsolicitud) FROM stdin;
\.


--
-- Data for Name: oferta_equipo_proxy; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.oferta_equipo_proxy (id, cantidad, precio, importe, idproducto, numsolicitud) FROM stdin;
\.


--
-- Data for Name: pais; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.pais (codigopais, nompais) FROM stdin;
﻿codigopais	pais
AFG	Afganistán (el)
ALB	Albania
DEU	Alemania
AND	Andorra
AGO	Angola
ATG	Antigua y Barbuda
SAU	Arabia Saudita (la)
DZA	Argelia
ARG	Argentina (la)
ARM	Armenia
AUS	Australia
AUT	Austria
AZE	Azerbaiyán
BHS	Bahamas (las)
BHR	Bahrein
BGD	Bangladesh
BRB	Barbados
BLR	Belarús
BEL	Bélgica
BLZ	Belice
BEN	Benin
BTN	Bhután
BOL	Bolivia (Estado Plurinacional de)
BIH	Bosnia y Herzegovina
BWA	Botswana
BRA	Brasil (el)
BRN	Brunei Darussalam
BGR	Bulgaria
BFA	Burkina Faso
BDI	Burundi
CPV	Cabo Verde
KHM	Camboya
CMR	Camerún (el)
CAN	Canadá (el)
TCD	Chad (el)
 CZE	Chequia
CHL	Chile
CHN	China
CYP	Chipre
COL	Colombia
COM	Comoras (las)
COG	Congo (el)
CRI	Costa Rica
CIV	Côte d’Ivoire
HRV	Croacia
CUB	Cuba
DNK	Dinamarca
DJI	Djibouti
DMA	Dominica
ECU	Ecuador (el)
EGY	Egipto
SLV	El Salvador
ARE	Emiratos Árabes Unidos (los)
ERI	Eritrea
SVK	Eslovaquia
SVN	Eslovenia
ESP	España
USA	Estados Unidos de América (los)
EST	Estonia
SWZ	Eswatini
ETH	Etiopía
RUS	Federación de Rusia (la)
FJI	Fiji
PHL	Filipinas
FIN	Finlandia
FRA	Francia
GAB	Gabón (el)
GMB	Gambia
GEO	Georgia
GHA	Ghana
GRD	Granada
GRC	Grecia
GTM	Guatemala
GIN	Guinea
GNQ	Guinea Ecuatorial
GNB	Guinea-Bissau
GUY	Guyana
HTI	Haití
HND	Honduras
HUN	Hungría
IND	India (la)
IDN	Indonesia
IRN	Irán (República Islámica del)
IRQ	Iraq (el)
IRL	Irlanda
ISL	Islandia
 COK	Islas Cook (las)
MHL	Islas Marshall (las)
SLB	Islas Salomón (las)
ISR	Israel
ITA	Italia
JAM	Jamaica
JPN	Japón (el)
JOR	Jordania
KAZ	Kazajstán
KEN	Kenya
KGZ	Kirguistán
KIR	Kiribati
KWT	Kuwait
LSO	Lesotho
LVA	Letonia
LBN	Líbano (el)
LBR	Liberia
LBY	Libia
LIE	Liechtenstein
LTU	Lituania
LUX	Luxemburgo
MDG	Madagascar
MYS	Malasia
MWI	Malawi
MDV	Maldivas
MLI	Malí
MLT	Malta
MAR	Marruecos
MUS	Mauricio
MRT	Mauritania
MEX	México
FSM	Micronesia (Estados Federados de)
MCO	Mónaco
MNG	Mongolia
MNE	Montenegro
MOZ	Mozambique
MMR	Myanmar
NAM	Namibia
NRU	Nauru
NPL	Nepal
NIC	Nicaragua
NER	Níger (el)
NGA	Nigeria
 NIU	Niue
NOR	Noruega
NZL	Nueva Zelandia
OMN	Omán
NLD	Países Bajos (los)
PAK	Pakistán (el)
PLW	Palau
PAN	Panamá
PNG	Papua Nueva Guinea
PRY	Paraguay (el)
PER	Perú (el)
POL	Polonia
PRT	Portugal
QAT	Qatar
GBR	Reino Unido de Gran Bretaña e Irlanda del Norte (el)
SYR	República Árabe Siria (la)
CAF	República Centroafricana (la)
KOR	República de Corea (la)
MKD	República de Macedonia del Norte (la)
MDA	República de Moldova(la)
COD	República Democrática del Congo (la)
LAO	República Democrática Popular Lao (la)
DOM	República Dominicana (la)
PRK	República Popular Democrática de Corea(la)
TZA	República Unida de Tanzanía (la)
ROU	Rumania
RWA	Rwanda
KNA	Saint Kitts y Nevis
WSM	Samoa
SMR	San Marino
VCT	San Vicente y las Granadinas
LCA	Santa Lucía
 VAT	Santa Sede (la)
STP	Santo Tomé y Príncipe
SEN	Senegal (el)
SRB	Serbia
SYC	Seychelles
SLE	Sierra Leona
SGP	Singapur
SOM	Somalia
LKA	Sri Lanka
ZAF	Sudáfrica
SDN	Sudán (el)
 SSD	Sudán del Sur
SWE	Suecia
CHE	Suiza
SUR	Suriname
THA	Tailandia
TJK	Tayikistán
TLS	Timor-Leste
TGO	Togo (el)
TON	Tonga
TTO	Trinidad y Tabago
TUN	Túnez
TKM	Turkmenistán
TUR	Turquía
TUV	Tuvalu
UKR	Ucrania
UGA	Uganda
URY	Uruguay (el)
UZB	Uzbekistán
VUT	Vanuatu
VEN	Venezuela (República Bolivariana de)
VNM	Viet Nam
YEM	Yemen (el)
ZMB	Zambia
ZWE	Zimbabwe
\.


--
-- Data for Name: ppa; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.ppa (idproducto, descripcion, "UM", marca_id) FROM stdin;
\.


--
-- Data for Name: ppa_equipo; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.ppa_equipo (id, ppa_id, equipo_id) FROM stdin;
\.


--
-- Data for Name: proveedor; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.proveedor (codmincex, nomproveedor, clasificacion, codigopais) FROM stdin;
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
﻿VC	Villa Clara	Santa Clara
SP	Sancti Spíritus	Sancti Spíritus
SC	Santiago de Cuba	Santiago
PR	Pinar del Río	Pinar del Río
MT	Matanzas	Matanzas
MB	Mayabeque	San José
LT	Las Tunas	Las Tunas
IJ	Isla de la Juventud	Nueva Gerona
HL	Holguín	Holguín
HB	La Habana	La Habana
GT	Guantánamo	Guantánamo
GR	Granma	Bayamo
CM	Camaguey	Camaguey
CF	Cienfuegos	Cienfuegos
CA	Ciego de Ávila	Ciego de Ávila
AT	Artemisa	Artemisa
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
-- Data for Name: solicitud_bateria_proveedor; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.solicitud_bateria_proveedor (id, codmincex_id, numsolicitud) FROM stdin;
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
-- Data for Name: solicitud_equipo_proveedor; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.solicitud_equipo_proveedor (id, codmincex_id, numsolicitud) FROM stdin;
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
-- Data for Name: solicitud_neumatico_proveedor; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.solicitud_neumatico_proveedor (id, codmincex_id, numsolicitud) FROM stdin;
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
-- Data for Name: solicitud_ppa_proveedor; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.solicitud_ppa_proveedor (id, codmincex_id, numsolicitud) FROM stdin;
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

SELECT pg_catalog.setval('public.auth_group_id_seq', 4, true);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 162, true);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 136, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 4, true);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 5, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: casa_matriz_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.casa_matriz_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 12, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 34, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 24, true);


--
-- Name: oferta_equipo_proxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.oferta_equipo_proxy_id_seq', 1, false);


--
-- Name: ppa_equipo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.ppa_equipo_id_seq', 1, false);


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
-- Name: solicitud_bateria_proveedor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.solicitud_bateria_proveedor_id_seq', 1, false);


--
-- Name: solicitud_bateria_proxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.solicitud_bateria_proxy_id_seq', 1, false);


--
-- Name: solicitud_equipo_numsolicitud_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.solicitud_equipo_numsolicitud_seq', 1, false);


--
-- Name: solicitud_equipo_proveedor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.solicitud_equipo_proveedor_id_seq', 1, false);


--
-- Name: solicitud_equipo_proxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.solicitud_equipo_proxy_id_seq', 1, false);


--
-- Name: solicitud_neumatico_numsolicitud_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.solicitud_neumatico_numsolicitud_seq', 1, false);


--
-- Name: solicitud_neumatico_proveedor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.solicitud_neumatico_proveedor_id_seq', 1, false);


--
-- Name: solicitud_neumatico_proxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.solicitud_neumatico_proxy_id_seq', 1, false);


--
-- Name: solicitud_ppa_numsolicitud_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.solicitud_ppa_numsolicitud_seq', 1, false);


--
-- Name: solicitud_ppa_proveedor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.solicitud_ppa_proveedor_id_seq', 1, false);


--
-- Name: solicitud_ppa_proxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.solicitud_ppa_proxy_id_seq', 1, false);


--
-- Name: sucursal_cuba_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.sucursal_cuba_id_seq', 1, false);


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
-- Name: marca marca_pkey; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.marca
    ADD CONSTRAINT marca_pkey PRIMARY KEY (codigomarca);


--
-- Name: neumatico neumatico_pkey; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.neumatico
    ADD CONSTRAINT neumatico_pkey PRIMARY KEY (idproducto);


--
-- Name: oferta_equipo oferta_equipo_pkey; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.oferta_equipo
    ADD CONSTRAINT oferta_equipo_pkey PRIMARY KEY (numero);


--
-- Name: oferta_equipo_proxy oferta_equipo_proxy_pkey; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.oferta_equipo_proxy
    ADD CONSTRAINT oferta_equipo_proxy_pkey PRIMARY KEY (id);


--
-- Name: pais pais_pkey; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.pais
    ADD CONSTRAINT pais_pkey PRIMARY KEY (codigopais);


--
-- Name: ppa_equipo ppa_equipo_pkey; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.ppa_equipo
    ADD CONSTRAINT ppa_equipo_pkey PRIMARY KEY (id);


--
-- Name: ppa_equipo ppa_equipo_ppa_id_equipo_id_5db04d59_uniq; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.ppa_equipo
    ADD CONSTRAINT ppa_equipo_ppa_id_equipo_id_5db04d59_uniq UNIQUE (ppa_id, equipo_id);


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
-- Name: solicitud_bateria_proveedor solicitud_bateria_proveedor_pkey; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_bateria_proveedor
    ADD CONSTRAINT solicitud_bateria_proveedor_pkey PRIMARY KEY (id);


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
-- Name: solicitud_equipo_proveedor solicitud_equipo_proveedor_pkey; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_equipo_proveedor
    ADD CONSTRAINT solicitud_equipo_proveedor_pkey PRIMARY KEY (id);


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
-- Name: solicitud_neumatico_proveedor solicitud_neumatico_proveedor_pkey; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_neumatico_proveedor
    ADD CONSTRAINT solicitud_neumatico_proveedor_pkey PRIMARY KEY (id);


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
-- Name: solicitud_ppa_proveedor solicitud_ppa_proveedor_pkey; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_ppa_proveedor
    ADD CONSTRAINT solicitud_ppa_proveedor_pkey PRIMARY KEY (id);


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
-- Name: bateria_idproducto_5736f2bb_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX bateria_idproducto_5736f2bb_like ON public.bateria USING btree (idproducto varchar_pattern_ops);


--
-- Name: bateria_marca_id_bff70813; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX bateria_marca_id_bff70813 ON public.bateria USING btree (marca_id);


--
-- Name: bateria_marca_id_bff70813_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX bateria_marca_id_bff70813_like ON public.bateria USING btree (marca_id varchar_pattern_ops);


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
-- Name: equipo_idproducto_712e52c4_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX equipo_idproducto_712e52c4_like ON public.equipo USING btree (idproducto varchar_pattern_ops);


--
-- Name: equipo_marca_id_aef47c38; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX equipo_marca_id_aef47c38 ON public.equipo USING btree (marca_id);


--
-- Name: equipo_marca_id_aef47c38_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX equipo_marca_id_aef47c38_like ON public.equipo USING btree (marca_id varchar_pattern_ops);


--
-- Name: marca_codigomarca_5ec0b382_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX marca_codigomarca_5ec0b382_like ON public.marca USING btree (codigomarca varchar_pattern_ops);


--
-- Name: neumatico_idproducto_9eec9617_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX neumatico_idproducto_9eec9617_like ON public.neumatico USING btree (idproducto varchar_pattern_ops);


--
-- Name: neumatico_marca_id_e2843a2d; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX neumatico_marca_id_e2843a2d ON public.neumatico USING btree (marca_id);


--
-- Name: neumatico_marca_id_e2843a2d_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX neumatico_marca_id_e2843a2d_like ON public.neumatico USING btree (marca_id varchar_pattern_ops);


--
-- Name: oferta_equipo_codmincex_2e6e45cf; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX oferta_equipo_codmincex_2e6e45cf ON public.oferta_equipo USING btree (codmincex);


--
-- Name: oferta_equipo_codmincex_2e6e45cf_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX oferta_equipo_codmincex_2e6e45cf_like ON public.oferta_equipo USING btree (codmincex varchar_pattern_ops);


--
-- Name: oferta_equipo_idespecialista_ba0415b9; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX oferta_equipo_idespecialista_ba0415b9 ON public.oferta_equipo USING btree (idespecialista);


--
-- Name: oferta_equipo_idpais_25734604; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX oferta_equipo_idpais_25734604 ON public.oferta_equipo USING btree (idpais);


--
-- Name: oferta_equipo_idpais_25734604_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX oferta_equipo_idpais_25734604_like ON public.oferta_equipo USING btree (idpais varchar_pattern_ops);


--
-- Name: oferta_equipo_numsolicitud_cf512716; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX oferta_equipo_numsolicitud_cf512716 ON public.oferta_equipo USING btree (numsolicitud);


--
-- Name: oferta_equipo_proxy_idproducto_ff77c35c; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX oferta_equipo_proxy_idproducto_ff77c35c ON public.oferta_equipo_proxy USING btree (idproducto);


--
-- Name: oferta_equipo_proxy_numsolicitud_3cc31e99; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX oferta_equipo_proxy_numsolicitud_3cc31e99 ON public.oferta_equipo_proxy USING btree (numsolicitud);


--
-- Name: pais_codigopais_f394d5a9_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX pais_codigopais_f394d5a9_like ON public.pais USING btree (codigopais varchar_pattern_ops);


--
-- Name: ppa_equipo_equipo_id_c9d1cddb; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX ppa_equipo_equipo_id_c9d1cddb ON public.ppa_equipo USING btree (equipo_id);


--
-- Name: ppa_equipo_equipo_id_c9d1cddb_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX ppa_equipo_equipo_id_c9d1cddb_like ON public.ppa_equipo USING btree (equipo_id varchar_pattern_ops);


--
-- Name: ppa_equipo_ppa_id_323cec64; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX ppa_equipo_ppa_id_323cec64 ON public.ppa_equipo USING btree (ppa_id);


--
-- Name: ppa_equipo_ppa_id_323cec64_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX ppa_equipo_ppa_id_323cec64_like ON public.ppa_equipo USING btree (ppa_id varchar_pattern_ops);


--
-- Name: ppa_idproducto_ae8ec065_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX ppa_idproducto_ae8ec065_like ON public.ppa USING btree (idproducto varchar_pattern_ops);


--
-- Name: ppa_marca_id_ce5f7e04; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX ppa_marca_id_ce5f7e04 ON public.ppa USING btree (marca_id);


--
-- Name: ppa_marca_id_ce5f7e04_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX ppa_marca_id_ce5f7e04_like ON public.ppa USING btree (marca_id varchar_pattern_ops);


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
-- Name: proveedor_marca_marca_id_ae2ad161; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX proveedor_marca_marca_id_ae2ad161 ON public.proveedor_marca USING btree (marca_id);


--
-- Name: proveedor_marca_marca_id_ae2ad161_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX proveedor_marca_marca_id_ae2ad161_like ON public.proveedor_marca USING btree (marca_id varchar_pattern_ops);


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
-- Name: solicitud_bateria_proveedor_codmincex_id_c9dc75e4; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX solicitud_bateria_proveedor_codmincex_id_c9dc75e4 ON public.solicitud_bateria_proveedor USING btree (codmincex_id);


--
-- Name: solicitud_bateria_proveedor_codmincex_id_c9dc75e4_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX solicitud_bateria_proveedor_codmincex_id_c9dc75e4_like ON public.solicitud_bateria_proveedor USING btree (codmincex_id varchar_pattern_ops);


--
-- Name: solicitud_bateria_proveedor_numsolicitud_6535162f; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX solicitud_bateria_proveedor_numsolicitud_6535162f ON public.solicitud_bateria_proveedor USING btree (numsolicitud);


--
-- Name: solicitud_bateria_proxy_idproducto_d16d2d8c; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX solicitud_bateria_proxy_idproducto_d16d2d8c ON public.solicitud_bateria_proxy USING btree (idproducto);


--
-- Name: solicitud_bateria_proxy_idproducto_d16d2d8c_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX solicitud_bateria_proxy_idproducto_d16d2d8c_like ON public.solicitud_bateria_proxy USING btree (idproducto varchar_pattern_ops);


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
-- Name: solicitud_equipo_proveedor_codmincex_id_c8af2bac; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX solicitud_equipo_proveedor_codmincex_id_c8af2bac ON public.solicitud_equipo_proveedor USING btree (codmincex_id);


--
-- Name: solicitud_equipo_proveedor_codmincex_id_c8af2bac_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX solicitud_equipo_proveedor_codmincex_id_c8af2bac_like ON public.solicitud_equipo_proveedor USING btree (codmincex_id varchar_pattern_ops);


--
-- Name: solicitud_equipo_proveedor_numsolicitud_00805827; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX solicitud_equipo_proveedor_numsolicitud_00805827 ON public.solicitud_equipo_proveedor USING btree (numsolicitud);


--
-- Name: solicitud_equipo_proxy_idproducto_08c7c6e0; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX solicitud_equipo_proxy_idproducto_08c7c6e0 ON public.solicitud_equipo_proxy USING btree (idproducto);


--
-- Name: solicitud_equipo_proxy_idproducto_08c7c6e0_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX solicitud_equipo_proxy_idproducto_08c7c6e0_like ON public.solicitud_equipo_proxy USING btree (idproducto varchar_pattern_ops);


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
-- Name: solicitud_neumatico_proveedor_codmincex_id_920b25fe; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX solicitud_neumatico_proveedor_codmincex_id_920b25fe ON public.solicitud_neumatico_proveedor USING btree (codmincex_id);


--
-- Name: solicitud_neumatico_proveedor_codmincex_id_920b25fe_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX solicitud_neumatico_proveedor_codmincex_id_920b25fe_like ON public.solicitud_neumatico_proveedor USING btree (codmincex_id varchar_pattern_ops);


--
-- Name: solicitud_neumatico_proveedor_numsolicitud_23890b23; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX solicitud_neumatico_proveedor_numsolicitud_23890b23 ON public.solicitud_neumatico_proveedor USING btree (numsolicitud);


--
-- Name: solicitud_neumatico_proxy_idproducto_264bd634; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX solicitud_neumatico_proxy_idproducto_264bd634 ON public.solicitud_neumatico_proxy USING btree (idproducto);


--
-- Name: solicitud_neumatico_proxy_idproducto_264bd634_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX solicitud_neumatico_proxy_idproducto_264bd634_like ON public.solicitud_neumatico_proxy USING btree (idproducto varchar_pattern_ops);


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
-- Name: solicitud_ppa_idproducto_5d5752e5_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX solicitud_ppa_idproducto_5d5752e5_like ON public.solicitud_ppa USING btree (idproducto varchar_pattern_ops);


--
-- Name: solicitud_ppa_numcontratocliente_cd73b766; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX solicitud_ppa_numcontratocliente_cd73b766 ON public.solicitud_ppa USING btree (numcontratocliente);


--
-- Name: solicitud_ppa_proveedor_codmincex_id_4cab253e; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX solicitud_ppa_proveedor_codmincex_id_4cab253e ON public.solicitud_ppa_proveedor USING btree (codmincex_id);


--
-- Name: solicitud_ppa_proveedor_codmincex_id_4cab253e_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX solicitud_ppa_proveedor_codmincex_id_4cab253e_like ON public.solicitud_ppa_proveedor USING btree (codmincex_id varchar_pattern_ops);


--
-- Name: solicitud_ppa_proveedor_numsolicitud_61e29922; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX solicitud_ppa_proveedor_numsolicitud_61e29922 ON public.solicitud_ppa_proveedor USING btree (numsolicitud);


--
-- Name: solicitud_ppa_proxy_idproducto_efc8a761; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX solicitud_ppa_proxy_idproducto_efc8a761 ON public.solicitud_ppa_proxy USING btree (idproducto);


--
-- Name: solicitud_ppa_proxy_idproducto_efc8a761_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX solicitud_ppa_proxy_idproducto_efc8a761_like ON public.solicitud_ppa_proxy USING btree (idproducto varchar_pattern_ops);


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
-- Name: bateria bateria_marca_id_bff70813_fk_marca_codigomarca; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.bateria
    ADD CONSTRAINT bateria_marca_id_bff70813_fk_marca_codigomarca FOREIGN KEY (marca_id) REFERENCES public.marca(codigomarca) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: casa_matriz casa_matriz_codmincex_bd5fc4f6_fk_proveedor_codmincex; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.casa_matriz
    ADD CONSTRAINT casa_matriz_codmincex_bd5fc4f6_fk_proveedor_codmincex FOREIGN KEY (codmincex) REFERENCES public.proveedor(codmincex) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cliente cliente_provincia_478bfc63_fk; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_provincia_478bfc63_fk FOREIGN KEY (provincia) REFERENCES public.provincia(codigoprovincia) DEFERRABLE INITIALLY DEFERRED;


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
-- Name: equipo equipo_marca_id_aef47c38_fk_marca_codigomarca; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.equipo
    ADD CONSTRAINT equipo_marca_id_aef47c38_fk_marca_codigomarca FOREIGN KEY (marca_id) REFERENCES public.marca(codigomarca) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: especialista_comex especialista_comex_idespecialista_8fc5f862_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.especialista_comex
    ADD CONSTRAINT especialista_comex_idespecialista_8fc5f862_fk_auth_user_id FOREIGN KEY (idespecialista) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: neumatico neumatico_marca_id_e2843a2d_fk_marca_codigomarca; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.neumatico
    ADD CONSTRAINT neumatico_marca_id_e2843a2d_fk_marca_codigomarca FOREIGN KEY (marca_id) REFERENCES public.marca(codigomarca) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: oferta_equipo oferta_equipo_codmincex_2e6e45cf_fk_proveedor_codmincex; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.oferta_equipo
    ADD CONSTRAINT oferta_equipo_codmincex_2e6e45cf_fk_proveedor_codmincex FOREIGN KEY (codmincex) REFERENCES public.proveedor(codmincex) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: oferta_equipo oferta_equipo_idespecialista_ba0415b9_fk_especiali; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.oferta_equipo
    ADD CONSTRAINT oferta_equipo_idespecialista_ba0415b9_fk_especiali FOREIGN KEY (idespecialista) REFERENCES public.especialista_comex(idespecialista) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: oferta_equipo oferta_equipo_idpais_25734604_fk_pais_codigopais; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.oferta_equipo
    ADD CONSTRAINT oferta_equipo_idpais_25734604_fk_pais_codigopais FOREIGN KEY (idpais) REFERENCES public.pais(codigopais) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: oferta_equipo oferta_equipo_numsolicitud_cf512716_fk_solicitud; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.oferta_equipo
    ADD CONSTRAINT oferta_equipo_numsolicitud_cf512716_fk_solicitud FOREIGN KEY (numsolicitud) REFERENCES public.solicitud_equipo(numsolicitud) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: oferta_equipo_proxy oferta_equipo_proxy_idproducto_ff77c35c_fk_solicitud; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.oferta_equipo_proxy
    ADD CONSTRAINT oferta_equipo_proxy_idproducto_ff77c35c_fk_solicitud FOREIGN KEY (idproducto) REFERENCES public.solicitud_equipo_proxy(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: oferta_equipo_proxy oferta_equipo_proxy_numsolicitud_3cc31e99_fk_oferta_eq; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.oferta_equipo_proxy
    ADD CONSTRAINT oferta_equipo_proxy_numsolicitud_3cc31e99_fk_oferta_eq FOREIGN KEY (numsolicitud) REFERENCES public.oferta_equipo(numero) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ppa_equipo ppa_equipo_equipo_id_c9d1cddb_fk_equipo_idproducto; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.ppa_equipo
    ADD CONSTRAINT ppa_equipo_equipo_id_c9d1cddb_fk_equipo_idproducto FOREIGN KEY (equipo_id) REFERENCES public.equipo(idproducto) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ppa_equipo ppa_equipo_ppa_id_323cec64_fk_ppa_idproducto; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.ppa_equipo
    ADD CONSTRAINT ppa_equipo_ppa_id_323cec64_fk_ppa_idproducto FOREIGN KEY (ppa_id) REFERENCES public.ppa(idproducto) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ppa ppa_marca_id_ce5f7e04_fk_marca_codigomarca; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.ppa
    ADD CONSTRAINT ppa_marca_id_ce5f7e04_fk_marca_codigomarca FOREIGN KEY (marca_id) REFERENCES public.marca(codigomarca) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: proveedor proveedor_codigopais_ba6f5c0d_fk_pais_codigopais; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.proveedor
    ADD CONSTRAINT proveedor_codigopais_ba6f5c0d_fk_pais_codigopais FOREIGN KEY (codigopais) REFERENCES public.pais(codigopais) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: proveedor_marca proveedor_marca_marca_id_ae2ad161_fk_marca_codigomarca; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.proveedor_marca
    ADD CONSTRAINT proveedor_marca_marca_id_ae2ad161_fk_marca_codigomarca FOREIGN KEY (marca_id) REFERENCES public.marca(codigomarca) DEFERRABLE INITIALLY DEFERRED;


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
-- Name: solicitud_bateria_proveedor solicitud_bateria_pr_codmincex_id_c9dc75e4_fk_proveedor; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_bateria_proveedor
    ADD CONSTRAINT solicitud_bateria_pr_codmincex_id_c9dc75e4_fk_proveedor FOREIGN KEY (codmincex_id) REFERENCES public.proveedor(codmincex) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: solicitud_bateria_proxy solicitud_bateria_pr_idproducto_d16d2d8c_fk_bateria_i; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_bateria_proxy
    ADD CONSTRAINT solicitud_bateria_pr_idproducto_d16d2d8c_fk_bateria_i FOREIGN KEY (idproducto) REFERENCES public.bateria(idproducto) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: solicitud_bateria_proveedor solicitud_bateria_pr_numsolicitud_6535162f_fk_solicitud; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_bateria_proveedor
    ADD CONSTRAINT solicitud_bateria_pr_numsolicitud_6535162f_fk_solicitud FOREIGN KEY (numsolicitud) REFERENCES public.solicitud_bateria(numsolicitud) DEFERRABLE INITIALLY DEFERRED;


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
-- Name: solicitud_equipo_proveedor solicitud_equipo_pro_codmincex_id_c8af2bac_fk_proveedor; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_equipo_proveedor
    ADD CONSTRAINT solicitud_equipo_pro_codmincex_id_c8af2bac_fk_proveedor FOREIGN KEY (codmincex_id) REFERENCES public.proveedor(codmincex) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: solicitud_equipo_proveedor solicitud_equipo_pro_numsolicitud_00805827_fk_solicitud; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_equipo_proveedor
    ADD CONSTRAINT solicitud_equipo_pro_numsolicitud_00805827_fk_solicitud FOREIGN KEY (numsolicitud) REFERENCES public.solicitud_equipo(numsolicitud) DEFERRABLE INITIALLY DEFERRED;


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
-- Name: solicitud_neumatico_proveedor solicitud_neumatico__codmincex_id_920b25fe_fk_proveedor; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_neumatico_proveedor
    ADD CONSTRAINT solicitud_neumatico__codmincex_id_920b25fe_fk_proveedor FOREIGN KEY (codmincex_id) REFERENCES public.proveedor(codmincex) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: solicitud_neumatico_proxy solicitud_neumatico__idproducto_264bd634_fk_neumatico; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_neumatico_proxy
    ADD CONSTRAINT solicitud_neumatico__idproducto_264bd634_fk_neumatico FOREIGN KEY (idproducto) REFERENCES public.neumatico(idproducto) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: solicitud_neumatico_proveedor solicitud_neumatico__numsolicitud_23890b23_fk_solicitud; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_neumatico_proveedor
    ADD CONSTRAINT solicitud_neumatico__numsolicitud_23890b23_fk_solicitud FOREIGN KEY (numsolicitud) REFERENCES public.solicitud_neumatico(numsolicitud) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: solicitud_neumatico_proxy solicitud_neumatico__numsolicitud_3ebfa720_fk_solicitud; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_neumatico_proxy
    ADD CONSTRAINT solicitud_neumatico__numsolicitud_3ebfa720_fk_solicitud FOREIGN KEY (numsolicitud) REFERENCES public.solicitud_neumatico(numsolicitud) DEFERRABLE INITIALLY DEFERRED;


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
-- Name: solicitud_ppa_proveedor solicitud_ppa_provee_codmincex_id_4cab253e_fk_proveedor; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_ppa_proveedor
    ADD CONSTRAINT solicitud_ppa_provee_codmincex_id_4cab253e_fk_proveedor FOREIGN KEY (codmincex_id) REFERENCES public.proveedor(codmincex) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: solicitud_ppa_proveedor solicitud_ppa_provee_numsolicitud_61e29922_fk_solicitud; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_ppa_proveedor
    ADD CONSTRAINT solicitud_ppa_provee_numsolicitud_61e29922_fk_solicitud FOREIGN KEY (numsolicitud) REFERENCES public.solicitud_ppa(numsolicitud) DEFERRABLE INITIALLY DEFERRED;


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

