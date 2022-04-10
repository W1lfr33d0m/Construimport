--
-- PostgreSQL database dump
--

-- Dumped from database version 14.0
-- Dumped by pg_dump version 14.0

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

ALTER TABLE ONLY public.taggit_taggeditem DROP CONSTRAINT taggit_taggeditem_tag_id_f4f5b767_fk_taggit_tag_id;
ALTER TABLE ONLY public.taggit_taggeditem DROP CONSTRAINT taggit_taggeditem_content_type_id_9957a03c_fk_django_co;
ALTER TABLE ONLY public.solicitud_producto DROP CONSTRAINT solicitud_producto_numsolicitud_a0709dd6_fk_solicitud;
ALTER TABLE ONLY public.solicitud_producto DROP CONSTRAINT solicitud_producto_idproducto_a7faf533_fk_producto_idproducto;
ALTER TABLE ONLY public.reports_savedreport DROP CONSTRAINT reports_savedreport_run_by_id_0e49a3ac_fk_auth_user_id;
ALTER TABLE ONLY public.casa_matriz DROP CONSTRAINT proveedor;
ALTER TABLE ONLY public.solicitud DROP CONSTRAINT productos;
ALTER TABLE ONLY public.solicitud_oferta DROP CONSTRAINT productos;
ALTER TABLE ONLY public.notifications_notification DROP CONSTRAINT notifications_notifi_target_content_type__ccb24d88_fk_django_co;
ALTER TABLE ONLY public.notifications_notification DROP CONSTRAINT notifications_notifi_recipient_id_d055f3f0_fk_auth_user;
ALTER TABLE ONLY public.notifications_notification DROP CONSTRAINT notifications_notifi_actor_content_type_i_0c69d7b7_fk_django_co;
ALTER TABLE ONLY public.notifications_notification DROP CONSTRAINT notifications_notifi_action_object_conten_7d2b8ee9_fk_django_co;
ALTER TABLE ONLY public.proveedor_producto DROP CONSTRAINT idproducto;
ALTER TABLE ONLY public.especialista_comex DROP CONSTRAINT idespecialista;
ALTER TABLE ONLY public.proveedor_sucursal DROP CONSTRAINT identificador;
ALTER TABLE ONLY public.proveedor DROP CONSTRAINT fk_table1_pais1;
ALTER TABLE ONLY public.factura_proveedor DROP CONSTRAINT fk_proveedor_has_producto_producto1;
ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
ALTER TABLE ONLY public.solicitud_producto DROP CONSTRAINT codmincex;
ALTER TABLE ONLY public.proveedor_producto DROP CONSTRAINT codmincex;
ALTER TABLE ONLY public.proveedor_sucursal DROP CONSTRAINT codmincex;
ALTER TABLE ONLY public.solicitud DROP CONSTRAINT cliente;
ALTER TABLE ONLY public.casa_matriz DROP CONSTRAINT casa_matriz_codmincex_bd5fc4f6_fk_proveedor_codmincex;
ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
DROP INDEX public.taggit_taggeditem_tag_id_f4f5b767;
DROP INDEX public.taggit_taggeditem_object_id_e2d7d1df;
DROP INDEX public.taggit_taggeditem_content_type_id_object_id_196cc965_idx;
DROP INDEX public.taggit_taggeditem_content_type_id_9957a03c;
DROP INDEX public.taggit_tag_slug_6be58b2c_like;
DROP INDEX public.taggit_tag_name_58eb2ed9_like;
DROP INDEX public.reports_savedreport_run_by_id_0e49a3ac;
DROP INDEX public.provincia_idprovincia_aa96c8e0_like;
DROP INDEX public.notifications_notification_unread_cce4be30;
DROP INDEX public.notifications_notification_timestamp_6a797bad;
DROP INDEX public.notifications_notification_target_content_type_id_ccb24d88;
DROP INDEX public.notifications_notification_recipient_id_unread_253aadc9_idx;
DROP INDEX public.notifications_notification_recipient_id_d055f3f0;
DROP INDEX public.notifications_notification_public_1bc30b1c;
DROP INDEX public.notifications_notification_emailed_23a5ad81;
DROP INDEX public.notifications_notification_deleted_b32b69e6;
DROP INDEX public.notifications_notification_actor_content_type_id_0c69d7b7;
DROP INDEX public.notifications_notification_action_object_content_type_7d2b8ee9;
DROP INDEX public.idx_idhistorial;
DROP INDEX public.fki_numcontratoproveedor;
DROP INDEX public.fk_table1_pais1_idx;
DROP INDEX public.fk_proveedor_has_producto_producto1_idx;
DROP INDEX public.django_session_session_key_c0390e0f_like;
DROP INDEX public.django_session_expire_date_a5c62663;
DROP INDEX public.django_admin_log_user_id_c564eba6;
DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
DROP INDEX public.dashboard_stats_graph_title_99e6d271_like;
DROP INDEX public.dashboard_stats_graph_title_99e6d271;
DROP INDEX public.dashboard_stats_graph_key_4256e63f_like;
DROP INDEX public.dashboard_stats_default_multiseries_criteria_id_1c00740c;
DROP INDEX public.dash_stats_criteria_criteria_name_7fe7ae1e_like;
DROP INDEX public.dash_stats_criteria_criteria_name_7fe7ae1e;
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
DROP INDEX public.admin_interface_theme_name_30bda70f_like;
ALTER TABLE ONLY public.taggit_taggeditem DROP CONSTRAINT taggit_taggeditem_pkey;
ALTER TABLE ONLY public.taggit_taggeditem DROP CONSTRAINT taggit_taggeditem_content_type_id_object_i_4bb97a8e_uniq;
ALTER TABLE ONLY public.taggit_tag DROP CONSTRAINT taggit_tag_slug_key;
ALTER TABLE ONLY public.taggit_tag DROP CONSTRAINT taggit_tag_pkey;
ALTER TABLE ONLY public.taggit_tag DROP CONSTRAINT taggit_tag_name_key;
ALTER TABLE ONLY public.sucursal_cuba DROP CONSTRAINT sucursal_cuba_pkey;
ALTER TABLE ONLY public.solicitud_producto DROP CONSTRAINT solicitud_producto_pkey;
ALTER TABLE ONLY public.solicitud_producto DROP CONSTRAINT solicitud_producto_numsolicitud_a0709dd6_uniq;
ALTER TABLE ONLY public.solicitud_producto DROP CONSTRAINT solicitud_producto_idproducto_a7faf533_uniq;
ALTER TABLE ONLY public.solicitud DROP CONSTRAINT solicitud_pk;
ALTER TABLE ONLY public.solicitud_oferta DROP CONSTRAINT solicitud_oferta_pk;
ALTER TABLE ONLY public.solicitud_producto DROP CONSTRAINT soicitud_producto_unique;
ALTER TABLE ONLY public.reports_savedreport DROP CONSTRAINT reports_savedreport_pkey;
ALTER TABLE ONLY public.provincia DROP CONSTRAINT provincia_pkey;
ALTER TABLE ONLY public.proveedor_producto DROP CONSTRAINT proveedor_producto_pk;
ALTER TABLE ONLY public.proveedor DROP CONSTRAINT proveedor_pk;
ALTER TABLE ONLY public.usuarios DROP CONSTRAINT pk_usuarios;
ALTER TABLE ONLY public."user" DROP CONSTRAINT pk_user;
ALTER TABLE ONLY public.producto DROP CONSTRAINT pk_producto;
ALTER TABLE ONLY public.pais DROP CONSTRAINT pk_pais;
ALTER TABLE ONLY public.historial DROP CONSTRAINT pk_historial;
ALTER TABLE ONLY public.cliente DROP CONSTRAINT pk_cliente;
ALTER TABLE ONLY public.almacen DROP CONSTRAINT pk_almacen;
ALTER TABLE ONLY public.proveedor_sucursal DROP CONSTRAINT p_s_pk;
ALTER TABLE ONLY public.solicitud DROP CONSTRAINT numsolicitud;
ALTER TABLE ONLY public.solicitud_oferta DROP CONSTRAINT numoferta;
ALTER TABLE ONLY public.notifications_notification DROP CONSTRAINT notifications_notification_pkey;
ALTER TABLE ONLY public.proveedor DROP CONSTRAINT nomproveedor;
ALTER TABLE ONLY public.producto DROP CONSTRAINT nombreproducto;
ALTER TABLE ONLY public.especialista_comex DROP CONSTRAINT especialista_pk;
ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
ALTER TABLE ONLY public.dashboard_stats DROP CONSTRAINT dashboard_stats_pkey;
ALTER TABLE ONLY public.dashboard_stats DROP CONSTRAINT dashboard_stats_graph_key_key;
ALTER TABLE ONLY public.dash_stats_criteria DROP CONSTRAINT dash_stats_criteria_pkey;
ALTER TABLE ONLY public.datos DROP CONSTRAINT contacto_pk;
ALTER TABLE ONLY public.provincia DROP CONSTRAINT codigoprovincia;
ALTER TABLE ONLY public.casa_matriz DROP CONSTRAINT casa_matriz_pkey;
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
ALTER TABLE ONLY public.admin_interface_theme DROP CONSTRAINT admin_interface_theme_pkey;
ALTER TABLE ONLY public.admin_interface_theme DROP CONSTRAINT admin_interface_theme_name_30bda70f_uniq;
ALTER TABLE ONLY public."Trazas_logentry" DROP CONSTRAINT "Trazas_logentry_pkey";
ALTER TABLE ONLY public."Solicitudes_backupview" DROP CONSTRAINT "Solicitudes_backupview_pkey";
ALTER TABLE ONLY public."COMEX_solicitudoferta" DROP CONSTRAINT "COMEX_solicitudoferta_pkey";
ALTER TABLE public."user" ALTER COLUMN user_id DROP DEFAULT;
ALTER TABLE public.taggit_taggeditem ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.taggit_tag ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.reports_savedreport ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.notifications_notification ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.historial ALTER COLUMN idhistorial DROP DEFAULT;
ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.dashboard_stats ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.dash_stats_criteria ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.admin_interface_theme ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public."Trazas_logentry" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public."Solicitudes_backupview" ALTER COLUMN id DROP DEFAULT;
DROP TABLE public.valor;
DROP TABLE public.usuarios;
DROP SEQUENCE public.user_user_id_seq;
DROP TABLE public."user";
DROP SEQUENCE public.taggit_taggeditem_id_seq;
DROP TABLE public.taggit_taggeditem;
DROP SEQUENCE public.taggit_tag_id_seq;
DROP TABLE public.taggit_tag;
DROP TABLE public.sucursal_cuba;
DROP TABLE public.solicitud_producto;
DROP TABLE public.solicitud_oferta;
DROP TABLE public.solicitud;
DROP SEQUENCE public.reports_savedreport_id_seq;
DROP TABLE public.reports_savedreport;
DROP TABLE public.registro_control_solicitud;
DROP TABLE public.provincia;
DROP TABLE public.proveedor_sucursal;
DROP TABLE public.proveedor_producto;
DROP TABLE public.proveedor;
DROP TABLE public.producto;
DROP TABLE public.pais;
DROP SEQUENCE public.notifications_notification_id_seq;
DROP TABLE public.notifications_notification;
DROP SEQUENCE public.historial_idhistorial_seq;
DROP TABLE public.historial;
DROP TABLE public.factura_proveedor;
DROP TABLE public.especialista_comex;
DROP TABLE public.django_session;
DROP SEQUENCE public.django_migrations_id_seq;
DROP TABLE public.django_migrations;
DROP SEQUENCE public.django_content_type_id_seq;
DROP TABLE public.django_content_type;
DROP SEQUENCE public.django_admin_log_id_seq;
DROP TABLE public.django_admin_log;
DROP TABLE public.datos;
DROP SEQUENCE public.dashboard_stats_id_seq;
DROP TABLE public.dashboard_stats;
DROP SEQUENCE public.dash_stats_criteria_id_seq;
DROP TABLE public.dash_stats_criteria;
DROP TABLE public.cliente;
DROP TABLE public.casa_matriz;
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
DROP TABLE public.almacen;
DROP SEQUENCE public.admin_interface_theme_id_seq;
DROP TABLE public.admin_interface_theme;
DROP SEQUENCE public."Trazas_logentry_id_seq";
DROP TABLE public."Trazas_logentry";
DROP SEQUENCE public."Solicitudes_backupview_id_seq";
DROP TABLE public."Solicitudes_backupview";
DROP TABLE public."COMEX_solicitudoferta";
DROP FUNCTION public.decrement_numsolicitud();
--
-- Name: decrement_numsolicitud(); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.decrement_numsolicitud() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
DECLARE
valor integer := 0;
BEGIN
SELECT MAX( numsolicitud ) INTO valor FROM Solicitud;
valor := (valor - 1);
UPDATE Solicitud 
SET numsolicitud = valor;
RETURN NULL;
END
$$;


ALTER FUNCTION public.decrement_numsolicitud() OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: COMEX_solicitudoferta; Type: TABLE; Schema: public; Owner: const
--

CREATE TABLE public."COMEX_solicitudoferta" (
    idnumoferta integer NOT NULL
);


ALTER TABLE public."COMEX_solicitudoferta" OWNER TO const;

--
-- Name: Solicitudes_backupview; Type: TABLE; Schema: public; Owner: const
--

CREATE TABLE public."Solicitudes_backupview" (
    id bigint NOT NULL
);


ALTER TABLE public."Solicitudes_backupview" OWNER TO const;

--
-- Name: Solicitudes_backupview_id_seq; Type: SEQUENCE; Schema: public; Owner: const
--

CREATE SEQUENCE public."Solicitudes_backupview_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Solicitudes_backupview_id_seq" OWNER TO const;

--
-- Name: Solicitudes_backupview_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: const
--

ALTER SEQUENCE public."Solicitudes_backupview_id_seq" OWNED BY public."Solicitudes_backupview".id;


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
-- Name: admin_interface_theme; Type: TABLE; Schema: public; Owner: const
--

CREATE TABLE public.admin_interface_theme (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    active boolean NOT NULL,
    title character varying(50) NOT NULL,
    title_visible boolean NOT NULL,
    logo character varying(100) NOT NULL,
    logo_visible boolean NOT NULL,
    css_header_background_color character varying(10) NOT NULL,
    title_color character varying(10) NOT NULL,
    css_header_text_color character varying(10) NOT NULL,
    css_header_link_color character varying(10) NOT NULL,
    css_header_link_hover_color character varying(10) NOT NULL,
    css_module_background_color character varying(10) NOT NULL,
    css_module_text_color character varying(10) NOT NULL,
    css_module_link_color character varying(10) NOT NULL,
    css_module_link_hover_color character varying(10) NOT NULL,
    css_module_rounded_corners boolean NOT NULL,
    css_generic_link_color character varying(10) NOT NULL,
    css_generic_link_hover_color character varying(10) NOT NULL,
    css_save_button_background_color character varying(10) NOT NULL,
    css_save_button_background_hover_color character varying(10) NOT NULL,
    css_save_button_text_color character varying(10) NOT NULL,
    css_delete_button_background_color character varying(10) NOT NULL,
    css_delete_button_background_hover_color character varying(10) NOT NULL,
    css_delete_button_text_color character varying(10) NOT NULL,
    css text NOT NULL,
    list_filter_dropdown boolean NOT NULL,
    related_modal_active boolean NOT NULL,
    related_modal_background_color character varying(10) NOT NULL,
    related_modal_rounded_corners boolean NOT NULL,
    logo_color character varying(10) NOT NULL,
    recent_actions_visible boolean NOT NULL,
    favicon character varying(100) NOT NULL,
    related_modal_background_opacity character varying(5) NOT NULL,
    env_name character varying(50) NOT NULL,
    env_visible_in_header boolean NOT NULL,
    env_color character varying(10) NOT NULL,
    env_visible_in_favicon boolean NOT NULL,
    related_modal_close_button_visible boolean NOT NULL,
    language_chooser_active boolean NOT NULL,
    language_chooser_display character varying(10) NOT NULL,
    list_filter_sticky boolean NOT NULL,
    form_pagination_sticky boolean NOT NULL,
    form_submit_sticky boolean NOT NULL,
    css_module_background_selected_color character varying(10) NOT NULL,
    css_module_link_selected_color character varying(10) NOT NULL,
    logo_max_height smallint NOT NULL,
    logo_max_width smallint NOT NULL,
    CONSTRAINT admin_interface_theme_logo_max_height_check CHECK ((logo_max_height >= 0)),
    CONSTRAINT admin_interface_theme_logo_max_width_check CHECK ((logo_max_width >= 0))
);


ALTER TABLE public.admin_interface_theme OWNER TO const;

--
-- Name: admin_interface_theme_id_seq; Type: SEQUENCE; Schema: public; Owner: const
--

CREATE SEQUENCE public.admin_interface_theme_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_interface_theme_id_seq OWNER TO const;

--
-- Name: admin_interface_theme_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: const
--

ALTER SEQUENCE public.admin_interface_theme_id_seq OWNED BY public.admin_interface_theme.id;


--
-- Name: almacen; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.almacen (
    idalmacen bigint NOT NULL,
    tipoalmacen character varying(30) NOT NULL
);


ALTER TABLE public.almacen OWNER TO postgres;

--
-- Name: TABLE almacen; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.almacen IS 'TRIAL';


--
-- Name: COLUMN almacen.tipoalmacen; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.almacen.tipoalmacen IS 'TRIAL';


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
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
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
    username character varying NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    email character varying(70) NOT NULL,
    is_staff boolean DEFAULT true NOT NULL,
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
-- Name: casa_matriz; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.casa_matriz (
    identificador integer NOT NULL,
    direccion text NOT NULL,
    email text NOT NULL,
    telefono integer NOT NULL,
    contacto text NOT NULL,
    id integer,
    sitio_web character varying,
    proveedor character varying,
    codmincex character varying(8) NOT NULL
);


ALTER TABLE public.casa_matriz OWNER TO postgres;

--
-- Name: cliente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cliente (
    numcontratocliente bigint NOT NULL,
    nomcliente character varying(100) NOT NULL,
    "OSDE" character varying(45),
    idprovincia character varying
);


ALTER TABLE public.cliente OWNER TO postgres;

--
-- Name: TABLE cliente; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.cliente IS 'TRIAL';


--
-- Name: COLUMN cliente.numcontratocliente; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.cliente.numcontratocliente IS 'TRIAL';


--
-- Name: COLUMN cliente.nomcliente; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.cliente.nomcliente IS 'TRIAL';


--
-- Name: dash_stats_criteria; Type: TABLE; Schema: public; Owner: const
--

CREATE TABLE public.dash_stats_criteria (
    id bigint NOT NULL,
    criteria_name character varying(90) NOT NULL,
    criteria_fix_mapping jsonb,
    dynamic_criteria_field_name character varying(90),
    criteria_dynamic_mapping jsonb,
    created_date timestamp with time zone NOT NULL,
    updated_date timestamp with time zone NOT NULL
);


ALTER TABLE public.dash_stats_criteria OWNER TO const;

--
-- Name: dash_stats_criteria_id_seq; Type: SEQUENCE; Schema: public; Owner: const
--

CREATE SEQUENCE public.dash_stats_criteria_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dash_stats_criteria_id_seq OWNER TO const;

--
-- Name: dash_stats_criteria_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: const
--

ALTER SEQUENCE public.dash_stats_criteria_id_seq OWNED BY public.dash_stats_criteria.id;


--
-- Name: dashboard_stats; Type: TABLE; Schema: public; Owner: const
--

CREATE TABLE public.dashboard_stats (
    id bigint NOT NULL,
    graph_key character varying(90) NOT NULL,
    graph_title character varying(90) NOT NULL,
    model_app_name character varying(90) NOT NULL,
    model_name character varying(90) NOT NULL,
    date_field_name character varying(90) NOT NULL,
    operation_field_name character varying(90),
    type_operation_field_name character varying(90),
    is_visible boolean NOT NULL,
    created_date timestamp with time zone NOT NULL,
    updated_date timestamp with time zone NOT NULL,
    user_field_name character varying(90),
    default_chart_type character varying(90) NOT NULL,
    default_time_period integer NOT NULL,
    default_time_scale character varying(90) NOT NULL,
    y_axis_format character varying(90),
    "distinct" boolean NOT NULL,
    default_multiseries_criteria_id bigint,
    CONSTRAINT dashboard_stats_default_time_period_check CHECK ((default_time_period >= 0))
);


ALTER TABLE public.dashboard_stats OWNER TO const;

--
-- Name: dashboard_stats_id_seq; Type: SEQUENCE; Schema: public; Owner: const
--

CREATE SEQUENCE public.dashboard_stats_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dashboard_stats_id_seq OWNER TO const;

--
-- Name: dashboard_stats_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: const
--

ALTER SEQUENCE public.dashboard_stats_id_seq OWNED BY public.dashboard_stats.id;


--
-- Name: datos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.datos (
    identificador integer NOT NULL,
    direccion text NOT NULL,
    email text NOT NULL,
    telefono integer NOT NULL,
    contacto text NOT NULL
);


ALTER TABLE public.datos OWNER TO postgres;

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
-- Name: especialista_comex; Type: TABLE; Schema: public; Owner: const
--

CREATE TABLE public.especialista_comex (
    categoria character varying(10) NOT NULL,
    idespecialista integer NOT NULL
);


ALTER TABLE public.especialista_comex OWNER TO const;

--
-- Name: factura_proveedor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.factura_proveedor (
    codfacturaprov integer NOT NULL,
    idproducto integer NOT NULL,
    precio real NOT NULL,
    cantidad integer NOT NULL,
    fechafacturaprov date NOT NULL
);


ALTER TABLE public.factura_proveedor OWNER TO postgres;

--
-- Name: TABLE factura_proveedor; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.factura_proveedor IS 'TRIAL';


--
-- Name: COLUMN factura_proveedor.codfacturaprov; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.factura_proveedor.codfacturaprov IS 'TRIAL';


--
-- Name: COLUMN factura_proveedor.idproducto; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.factura_proveedor.idproducto IS 'TRIAL';


--
-- Name: COLUMN factura_proveedor.precio; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.factura_proveedor.precio IS 'TRIAL';


--
-- Name: COLUMN factura_proveedor.cantidad; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.factura_proveedor.cantidad IS 'TRIAL';


--
-- Name: COLUMN factura_proveedor.fechafacturaprov; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.factura_proveedor.fechafacturaprov IS 'TRIAL';


--
-- Name: historial; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.historial (
    idhistorial integer NOT NULL,
    fecha date NOT NULL,
    codfacturaprov integer NOT NULL,
    idproducto integer NOT NULL
);


ALTER TABLE public.historial OWNER TO postgres;

--
-- Name: TABLE historial; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.historial IS 'TRIAL';


--
-- Name: COLUMN historial.idhistorial; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.historial.idhistorial IS 'TRIAL';


--
-- Name: COLUMN historial.fecha; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.historial.fecha IS 'TRIAL';


--
-- Name: COLUMN historial.codfacturaprov; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.historial.codfacturaprov IS 'TRIAL';


--
-- Name: COLUMN historial.idproducto; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.historial.idproducto IS 'TRIAL';


--
-- Name: historial_idhistorial_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.historial_idhistorial_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.historial_idhistorial_seq OWNER TO postgres;

--
-- Name: historial_idhistorial_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.historial_idhistorial_seq OWNED BY public.historial.idhistorial;


--
-- Name: notifications_notification; Type: TABLE; Schema: public; Owner: const
--

CREATE TABLE public.notifications_notification (
    id bigint NOT NULL,
    level character varying(20) NOT NULL,
    unread boolean NOT NULL,
    actor_object_id character varying(255) NOT NULL,
    verb character varying(255) NOT NULL,
    description text,
    target_object_id character varying(255),
    action_object_object_id character varying(255),
    "timestamp" timestamp with time zone NOT NULL,
    public boolean NOT NULL,
    action_object_content_type_id integer,
    actor_content_type_id integer NOT NULL,
    recipient_id integer NOT NULL,
    target_content_type_id integer,
    deleted boolean NOT NULL,
    emailed boolean NOT NULL,
    data text
);


ALTER TABLE public.notifications_notification OWNER TO const;

--
-- Name: notifications_notification_id_seq; Type: SEQUENCE; Schema: public; Owner: const
--

CREATE SEQUENCE public.notifications_notification_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.notifications_notification_id_seq OWNER TO const;

--
-- Name: notifications_notification_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: const
--

ALTER SEQUENCE public.notifications_notification_id_seq OWNED BY public.notifications_notification.id;


--
-- Name: pais; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pais (
    idpais character varying(3) NOT NULL,
    pais character varying(30) NOT NULL
);


ALTER TABLE public.pais OWNER TO postgres;

--
-- Name: TABLE pais; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.pais IS 'TRIAL';


--
-- Name: COLUMN pais.idpais; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.pais.idpais IS 'TRIAL';


--
-- Name: COLUMN pais.pais; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.pais.pais IS 'TRIAL';


--
-- Name: producto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.producto (
    idproducto integer NOT NULL,
    nombreproducto character varying(30) NOT NULL,
    tipo character varying(10),
    "UM" character varying
);


ALTER TABLE public.producto OWNER TO postgres;

--
-- Name: TABLE producto; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.producto IS 'TRIAL';


--
-- Name: COLUMN producto.idproducto; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.producto.idproducto IS 'TRIAL';


--
-- Name: COLUMN producto.nombreproducto; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.producto.nombreproducto IS 'TRIAL';


--
-- Name: proveedor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.proveedor (
    nomproveedor character varying(45) NOT NULL,
    idpais character varying(3) NOT NULL,
    codmincex character varying(8) NOT NULL,
    clasificacion text NOT NULL,
    productos integer
);


ALTER TABLE public.proveedor OWNER TO postgres;

--
-- Name: TABLE proveedor; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.proveedor IS 'TRIAL';


--
-- Name: COLUMN proveedor.nomproveedor; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.proveedor.nomproveedor IS 'TRIAL';


--
-- Name: COLUMN proveedor.idpais; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.proveedor.idpais IS 'TRIAL';


--
-- Name: proveedor_producto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.proveedor_producto (
    idproducto integer NOT NULL,
    codmincex character varying(8) NOT NULL,
    id integer
);


ALTER TABLE public.proveedor_producto OWNER TO postgres;

--
-- Name: proveedor_sucursal; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.proveedor_sucursal (
    identificador integer NOT NULL,
    codmincex character varying NOT NULL
);


ALTER TABLE public.proveedor_sucursal OWNER TO postgres;

--
-- Name: provincia; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.provincia (
    nombre character varying NOT NULL,
    capital character varying NOT NULL,
    codigoprovincia character varying(3) NOT NULL,
    id integer
);


ALTER TABLE public.provincia OWNER TO postgres;

--
-- Name: registro_control_solicitud; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.registro_control_solicitud (
    numsolicitud integer NOT NULL,
    fechasol date NOT NULL,
    numcontratocliente bigint NOT NULL,
    numcontratoproveedor bigint,
    idproducto integer NOT NULL,
    cantidad integer NOT NULL,
    estado character varying
);


ALTER TABLE public.registro_control_solicitud OWNER TO postgres;

--
-- Name: reports_savedreport; Type: TABLE; Schema: public; Owner: const
--

CREATE TABLE public.reports_savedreport (
    id bigint NOT NULL,
    date_modified timestamp with time zone NOT NULL,
    date_created timestamp with time zone NOT NULL,
    report character varying(255),
    report_file character varying(100) NOT NULL,
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
-- Name: solicitud; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.solicitud (
    numsolicitud integer NOT NULL,
    fechasol date NOT NULL,
    numcontratocliente bigint NOT NULL,
    estado character varying NOT NULL,
    idespecialista integer,
    observaciones text,
    valor_estimado money NOT NULL,
    productos integer
);


ALTER TABLE public.solicitud OWNER TO postgres;

--
-- Name: solicitud_numsolicitud_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.solicitud ALTER COLUMN numsolicitud ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.solicitud_numsolicitud_seq
    START WITH 220000
    INCREMENT BY 1
    MINVALUE 220000
    MAXVALUE 229999
    CACHE 3
    CYCLE
);


--
-- Name: solicitud_oferta; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.solicitud_oferta (
    numoferta integer NOT NULL,
    productos integer NOT NULL
);


ALTER TABLE public.solicitud_oferta OWNER TO postgres;

--
-- Name: solicitud_producto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.solicitud_producto (
    numsolicitud integer NOT NULL,
    idproducto integer NOT NULL,
    cantidad integer NOT NULL,
    codmincex character varying,
    id integer
);


ALTER TABLE public.solicitud_producto OWNER TO postgres;

--
-- Name: sucursal_cuba; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sucursal_cuba (
    identificador integer NOT NULL,
    direccion text NOT NULL,
    email text NOT NULL,
    telefono integer NOT NULL,
    contacto text NOT NULL,
    carnet_trabajo character varying NOT NULL,
    id integer
);


ALTER TABLE public.sucursal_cuba OWNER TO postgres;

--
-- Name: taggit_tag; Type: TABLE; Schema: public; Owner: const
--

CREATE TABLE public.taggit_tag (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    slug character varying(100) NOT NULL
);


ALTER TABLE public.taggit_tag OWNER TO const;

--
-- Name: taggit_tag_id_seq; Type: SEQUENCE; Schema: public; Owner: const
--

CREATE SEQUENCE public.taggit_tag_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.taggit_tag_id_seq OWNER TO const;

--
-- Name: taggit_tag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: const
--

ALTER SEQUENCE public.taggit_tag_id_seq OWNED BY public.taggit_tag.id;


--
-- Name: taggit_taggeditem; Type: TABLE; Schema: public; Owner: const
--

CREATE TABLE public.taggit_taggeditem (
    id integer NOT NULL,
    object_id integer NOT NULL,
    content_type_id integer NOT NULL,
    tag_id integer NOT NULL
);


ALTER TABLE public.taggit_taggeditem OWNER TO const;

--
-- Name: taggit_taggeditem_id_seq; Type: SEQUENCE; Schema: public; Owner: const
--

CREATE SEQUENCE public.taggit_taggeditem_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.taggit_taggeditem_id_seq OWNER TO const;

--
-- Name: taggit_taggeditem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: const
--

ALTER SEQUENCE public.taggit_taggeditem_id_seq OWNED BY public.taggit_taggeditem.id;


--
-- Name: user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."user" (
    user_id integer NOT NULL,
    user_title character varying(100) NOT NULL,
    user_description text
);


ALTER TABLE public."user" OWNER TO postgres;

--
-- Name: TABLE "user"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public."user" IS 'TRIAL';


--
-- Name: COLUMN "user".user_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."user".user_id IS 'TRIAL';


--
-- Name: COLUMN "user".user_title; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."user".user_title IS 'TRIAL';


--
-- Name: COLUMN "user".user_description; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."user".user_description IS 'TRIAL';


--
-- Name: user_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_user_id_seq OWNER TO postgres;

--
-- Name: user_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.user_user_id_seq OWNED BY public."user".user_id;


--
-- Name: usuarios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuarios (
    user_name character varying(50) NOT NULL,
    password character varying(32) NOT NULL
);


ALTER TABLE public.usuarios OWNER TO postgres;

--
-- Name: TABLE usuarios; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.usuarios IS 'TRIAL';


--
-- Name: COLUMN usuarios.user_name; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.usuarios.user_name IS 'TRIAL';


--
-- Name: COLUMN usuarios.password; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.usuarios.password IS 'TRIAL';


--
-- Name: valor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.valor (
    max integer
);


ALTER TABLE public.valor OWNER TO postgres;

--
-- Name: Solicitudes_backupview id; Type: DEFAULT; Schema: public; Owner: const
--

ALTER TABLE ONLY public."Solicitudes_backupview" ALTER COLUMN id SET DEFAULT nextval('public."Solicitudes_backupview_id_seq"'::regclass);


--
-- Name: Trazas_logentry id; Type: DEFAULT; Schema: public; Owner: const
--

ALTER TABLE ONLY public."Trazas_logentry" ALTER COLUMN id SET DEFAULT nextval('public."Trazas_logentry_id_seq"'::regclass);


--
-- Name: admin_interface_theme id; Type: DEFAULT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.admin_interface_theme ALTER COLUMN id SET DEFAULT nextval('public.admin_interface_theme_id_seq'::regclass);


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
-- Name: dash_stats_criteria id; Type: DEFAULT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.dash_stats_criteria ALTER COLUMN id SET DEFAULT nextval('public.dash_stats_criteria_id_seq'::regclass);


--
-- Name: dashboard_stats id; Type: DEFAULT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.dashboard_stats ALTER COLUMN id SET DEFAULT nextval('public.dashboard_stats_id_seq'::regclass);


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
-- Name: historial idhistorial; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.historial ALTER COLUMN idhistorial SET DEFAULT nextval('public.historial_idhistorial_seq'::regclass);


--
-- Name: notifications_notification id; Type: DEFAULT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.notifications_notification ALTER COLUMN id SET DEFAULT nextval('public.notifications_notification_id_seq'::regclass);


--
-- Name: reports_savedreport id; Type: DEFAULT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.reports_savedreport ALTER COLUMN id SET DEFAULT nextval('public.reports_savedreport_id_seq'::regclass);


--
-- Name: taggit_tag id; Type: DEFAULT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.taggit_tag ALTER COLUMN id SET DEFAULT nextval('public.taggit_tag_id_seq'::regclass);


--
-- Name: taggit_taggeditem id; Type: DEFAULT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.taggit_taggeditem ALTER COLUMN id SET DEFAULT nextval('public.taggit_taggeditem_id_seq'::regclass);


--
-- Name: user user_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."user" ALTER COLUMN user_id SET DEFAULT nextval('public.user_user_id_seq'::regclass);


--
-- Data for Name: COMEX_solicitudoferta; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public."COMEX_solicitudoferta" (idnumoferta) FROM stdin;
\.


--
-- Data for Name: Solicitudes_backupview; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public."Solicitudes_backupview" (id) FROM stdin;
\.


--
-- Data for Name: Trazas_logentry; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public."Trazas_logentry" (id) FROM stdin;
\.


--
-- Data for Name: admin_interface_theme; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.admin_interface_theme (id, name, active, title, title_visible, logo, logo_visible, css_header_background_color, title_color, css_header_text_color, css_header_link_color, css_header_link_hover_color, css_module_background_color, css_module_text_color, css_module_link_color, css_module_link_hover_color, css_module_rounded_corners, css_generic_link_color, css_generic_link_hover_color, css_save_button_background_color, css_save_button_background_hover_color, css_save_button_text_color, css_delete_button_background_color, css_delete_button_background_hover_color, css_delete_button_text_color, css, list_filter_dropdown, related_modal_active, related_modal_background_color, related_modal_rounded_corners, logo_color, recent_actions_visible, favicon, related_modal_background_opacity, env_name, env_visible_in_header, env_color, env_visible_in_favicon, related_modal_close_button_visible, language_chooser_active, language_chooser_display, list_filter_sticky, form_pagination_sticky, form_submit_sticky, css_module_background_selected_color, css_module_link_selected_color, logo_max_height, logo_max_width) FROM stdin;
1	Django	f	Django administration	t		t	#0C4B33	#F5DD5D	#44B78B	#FFFFFF	#C9F0DD	#44B78B	#FFFFFF	#FFFFFF	#C9F0DD	t	#0C3C26	#156641	#0C4B33	#0C3C26	#FFFFFF	#BA2121	#A41515	#FFFFFF		t	t	#000000	t	#FFFFFF	t		0.3		t	#E74C3C	t	t	t	code	t	f	f	#FFFFCC	#FFFFFF	100	400
2	Bootstrap	f	Django administration	f		t	#FFFFFF	#503873	#463265	#463265	#7351A6	#7351A6	#FFFFFF	#CDBFE3	#FFFFFF	t	#463265	#7351A6	#5CB85C	#449D44	#FFFFFF	#D9534F	#C9302C	#FFFFFF		f	t	#503873	t	#503873	t		0.2		t	#E74C3C	t	t	t	code	t	f	f	#FFFFCC	#FFFFFF	100	400
3	Foundation	f	Django administration	f		t	#2C3840	#DDDDDD	#FFFFFF	#FFFFFF	#DDDDDD	#074E68	#FFFFFF	#FFFFFF	#DDDDDD	t	#000000	#074E68	#2199E8	#1585CF	#FFFFFF	#CC4B37	#BF4634	#FFFFFF		f	t	#000000	t	#CCCCCC	t		0.2		t	#E74C3C	t	t	t	code	t	f	f	#FFFFCC	#FFFFFF	100	400
4	USWDS	f	Django administration	f		t	#112E51	#FFFFFF	#FFFFFF	#FFFFFF	#E1F3F8	#205493	#FFFFFF	#FFFFFF	#E1F3F8	t	#205493	#0071BC	#205493	#112E51	#FFFFFF	#CD2026	#981B1E	#FFFFFF		f	t	#000000	t	#FFFFFF	t		0.8		t	#E74C3C	t	t	t	code	t	f	f	#FFFFCC	#FFFFFF	100	400
5	Const	t	Administración de Django	t		t	#0C4B33	#F5DD5D	#44B78B	#FFFFFF	#C9F0DD	#44B78B	#FFFFFF	#FFFFFF	#C9F0DD	t	#0C3C26	#156641	#0C4B33	#0C3C26	#FFFFFF	#BA2121	#A41515	#FFFFFF		t	t	#000000	t	#FFFFFF	t		0.3		t	#E74C3C	t	t	t	code	t	f	f	#FFFFCC	#FFFFFF	100	400
\.


--
-- Data for Name: almacen; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.almacen (idalmacen, tipoalmacen) FROM stdin;
1	Piezas Consignacion
2	Equipos Consignacion
3	Piezas comercial
4	Equipos comercial
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.auth_group (id, name) FROM stdin;
1	Lector
4	Director Desarrollo
8	Especialista COMEX
5	supervisor
3	Especialista Marketing
7	Director COMEX
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
1	1	128
2	1	100
3	1	136
4	1	112
5	1	116
6	1	85
7	1	92
11	3	112
12	3	109
13	3	110
498	4	108
15	4	112
18	1	4
19	1	200
20	1	204
21	1	16
22	1	176
23	1	208
24	1	180
25	1	28
31	3	128
32	3	132
33	3	121
34	3	122
35	3	124
36	3	125
37	3	126
38	3	96
40	5	5
41	5	6
42	5	7
43	5	8
44	5	9
45	5	10
46	5	11
47	5	12
48	5	13
49	5	14
50	5	15
51	5	16
52	5	145
53	5	146
54	5	147
55	5	148
56	5	153
57	5	154
58	5	155
59	5	156
60	5	157
61	5	158
62	5	159
63	5	160
64	5	161
65	5	162
66	5	163
67	5	164
68	5	165
69	5	166
70	5	167
71	5	168
75	5	4
76	5	256
77	5	257
78	5	258
79	5	259
80	5	260
81	5	261
82	5	262
83	5	263
503	7	216
504	3	328
89	5	45
90	5	46
91	5	47
92	5	48
93	5	49
94	5	50
95	5	51
96	5	52
97	5	53
98	5	54
99	5	55
100	5	56
101	5	57
102	5	58
103	5	59
104	5	60
105	5	61
106	5	62
107	5	63
108	5	64
109	5	65
110	5	66
111	5	67
112	5	68
117	5	73
118	5	74
119	5	75
120	5	76
121	5	77
122	5	78
123	5	79
124	5	80
125	5	81
126	5	82
127	5	83
134	5	253
135	5	254
136	5	255
507	5	323
508	5	324
509	5	332
510	3	336
511	3	333
515	7	296
517	7	304
518	7	336
519	7	280
520	7	284
521	8	304
522	8	112
523	5	137
524	5	138
525	5	139
526	5	140
527	7	345
528	7	346
529	7	347
530	7	348
165	4	110
166	3	304
167	3	296
168	3	280
169	3	284
170	3	293
171	3	295
172	3	301
173	3	303
174	3	277
175	3	279
176	3	281
177	3	283
534	3	341
535	3	337
536	3	353
537	3	361
538	3	349
539	7	108
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
253	Can add dashboard stats	64	add_dashboardstats
254	Can change dashboard stats	64	change_dashboardstats
255	Can delete dashboard stats	64	delete_dashboardstats
256	Can view dashboard stats	64	view_dashboardstats
257	Can add dash stats criteria	65	add_dashstatscriteria
258	Can change dash stats criteria	65	change_dashstatscriteria
259	Can delete dash stats criteria	65	delete_dashstatscriteria
260	Can view dash stats criteria	65	view_dashstatscriteria
261	Can add reports savedreport	66	add_reportssavedreport
262	Can change reports savedreport	66	change_reportssavedreport
263	Can delete reports savedreport	66	delete_reportssavedreport
264	Can view reports savedreport	66	view_reportssavedreport
265	Can add solicitudes backupview	67	add_solicitudesbackupview
266	Can change solicitudes backupview	67	change_solicitudesbackupview
267	Can delete solicitudes backupview	67	delete_solicitudesbackupview
268	Can view solicitudes backupview	67	view_solicitudesbackupview
269	Can add admin interface theme	68	add_admininterfacetheme
270	Can change admin interface theme	68	change_admininterfacetheme
271	Can delete admin interface theme	68	delete_admininterfacetheme
272	Can view admin interface theme	68	view_admininterfacetheme
273	Can add almacen	69	add_almacen
274	Can change almacen	69	change_almacen
275	Can delete almacen	69	delete_almacen
276	Can view almacen	69	view_almacen
277	Can add pais	70	add_pais
278	Can change pais	70	change_pais
279	Can delete pais	70	delete_pais
280	Can view pais	70	view_pais
281	Can add producto	71	add_producto
282	Can change producto	71	change_producto
283	Can delete producto	71	delete_producto
284	Can view producto	71	view_producto
285	Can add solicitudes backupview	72	add_solicitudesbackupview
286	Can change solicitudes backupview	72	change_solicitudesbackupview
287	Can delete solicitudes backupview	72	delete_solicitudesbackupview
288	Can view solicitudes backupview	72	view_solicitudesbackupview
289	Can add contrato cliente	73	add_contratocliente
290	Can change contrato cliente	73	change_contratocliente
291	Can delete contrato cliente	73	delete_contratocliente
57	Can add auth user	16	add_authuser
90	Can change factura proveedor	24	change_facturaproveedor
91	Can delete factura proveedor	24	delete_facturaproveedor
92	Can view factura proveedor	24	view_facturaproveedor
93	Can add historial	25	add_historial
94	Can change historial	25	change_historial
95	Can delete historial	25	delete_historial
96	Can view historial	25	view_historial
97	Can add pais	26	add_pais
98	Can change pais	26	change_pais
99	Can delete pais	26	delete_pais
100	Can view pais	26	view_pais
101	Can add producto	27	add_producto
102	Can change producto	27	change_producto
103	Can delete producto	27	delete_producto
104	Can view producto	27	view_producto
105	Can add registro control solicitud	28	add_registrocontrolsolicitud
106	Can change registro control solicitud	28	change_registrocontrolsolicitud
107	Can delete registro control solicitud	28	delete_registrocontrolsolicitud
108	Can view registro control solicitud	28	view_registrocontrolsolicitud
109	Can add solicitud	11	add_solicitud
110	Can change solicitud	11	change_solicitud
111	Can delete solicitud	11	delete_solicitud
112	Can view solicitud	11	view_solicitud
113	Can add user	29	add_user
114	Can change user	29	change_user
115	Can delete user	29	delete_user
116	Can view user	29	view_user
117	Can add usuarios	30	add_usuarios
118	Can change usuarios	30	change_usuarios
119	Can delete usuarios	30	delete_usuarios
292	Can view contrato cliente	73	view_contratocliente
293	Can add cliente	74	add_cliente
294	Can change cliente	74	change_cliente
295	Can delete cliente	74	delete_cliente
296	Can view cliente	74	view_cliente
297	Can add contrato proveedor	75	add_contratoproveedor
298	Can change contrato proveedor	75	change_contratoproveedor
299	Can delete contrato proveedor	75	delete_contratoproveedor
300	Can view contrato proveedor	75	view_contratoproveedor
301	Can add proveedor	76	add_proveedor
302	Can change proveedor	76	change_proveedor
303	Can delete proveedor	76	delete_proveedor
304	Can view proveedor	76	view_proveedor
49	Can add auth group permissions	14	add_authgrouppermissions
50	Can change auth group permissions	14	change_authgrouppermissions
51	Can delete auth group permissions	14	delete_authgrouppermissions
52	Can view auth group permissions	14	view_authgrouppermissions
53	Can add auth permission	15	add_authpermission
54	Can change auth permission	15	change_authpermission
55	Can delete auth permission	15	delete_authpermission
56	Can view auth permission	15	view_authpermission
58	Can change auth user	16	change_authuser
59	Can delete auth user	16	delete_authuser
60	Can view auth user	16	view_authuser
61	Can add auth user groups	17	add_authusergroups
62	Can change auth user groups	17	change_authusergroups
63	Can delete auth user groups	17	delete_authusergroups
64	Can view auth user groups	17	view_authusergroups
65	Can add auth user user permissions	18	add_authuseruserpermissions
66	Can change auth user user permissions	18	change_authuseruserpermissions
67	Can delete auth user user permissions	18	delete_authuseruserpermissions
68	Can view auth user user permissions	18	view_authuseruserpermissions
69	Can add django admin log	19	add_djangoadminlog
70	Can change django admin log	19	change_djangoadminlog
71	Can delete django admin log	19	delete_djangoadminlog
72	Can view django admin log	19	view_djangoadminlog
73	Can add django content type	20	add_djangocontenttype
74	Can change django content type	20	change_djangocontenttype
75	Can delete django content type	20	delete_djangocontenttype
76	Can view django content type	20	view_djangocontenttype
77	Can add django migrations	21	add_djangomigrations
78	Can change django migrations	21	change_djangomigrations
79	Can delete django migrations	21	delete_djangomigrations
80	Can view django migrations	21	view_djangomigrations
81	Can add django session	22	add_djangosession
82	Can change django session	22	change_djangosession
83	Can delete django session	22	delete_djangosession
84	Can view django session	22	view_djangosession
85	Can add factura cliente	23	add_facturacliente
86	Can change factura cliente	23	change_facturacliente
87	Can delete factura cliente	23	delete_facturacliente
88	Can view factura cliente	23	view_facturacliente
120	Can view usuarios	30	view_usuarios
121	Can add contrato cliente	31	add_contratocliente
122	Can change contrato cliente	31	change_contratocliente
123	Can delete contrato cliente	31	delete_contratocliente
124	Can view contrato cliente	31	view_contratocliente
125	Can add cliente	32	add_cliente
126	Can change cliente	32	change_cliente
127	Can delete cliente	32	delete_cliente
128	Can view cliente	32	view_cliente
129	Can add contrato proveedor	33	add_contratoproveedor
24	Can view session	6	view_session
26	Can change Cliente	7	change_cliente
27	Can delete Cliente	7	delete_cliente
28	Can view Cliente	7	view_cliente
29	Can add Producto	8	add_producto
30	Can change Producto	8	change_producto
31	Can delete Producto	8	delete_producto
32	Can view Producto	8	view_producto
33	Can add Proveedor	9	add_proveedor
34	Can change Proveedor	9	change_proveedor
35	Can delete Proveedor	9	delete_proveedor
36	Can view Proveedor	9	view_proveedor
37	Can add País	10	add_pais
38	Can change País	10	change_pais
39	Can delete País	10	delete_pais
40	Can view País	10	view_pais
41	Can add almacen	12	add_almacen
42	Can change almacen	12	change_almacen
43	Can delete almacen	12	delete_almacen
44	Can view almacen	12	view_almacen
45	Can add auth group	13	add_authgroup
46	Can change auth group	13	change_authgroup
47	Can delete auth group	13	delete_authgroup
48	Can view auth group	13	view_authgroup
89	Can add factura proveedor	24	add_facturaproveedor
130	Can change contrato proveedor	33	change_contratoproveedor
131	Can delete contrato proveedor	33	delete_contratoproveedor
132	Can view contrato proveedor	33	view_contratoproveedor
133	Can add proveedor	34	add_proveedor
134	Can change proveedor	34	change_proveedor
135	Can delete proveedor	34	delete_proveedor
136	Can view proveedor	34	view_proveedor
137	Can add Theme	35	add_theme
138	Can change Theme	35	change_theme
139	Can delete Theme	35	delete_theme
140	Can view Theme	35	view_theme
141	Can add almacen	36	add_almacen
196	Can view django session	49	view_djangosession
197	Can add factura cliente	50	add_facturacliente
198	Can change factura cliente	50	change_facturacliente
199	Can delete factura cliente	50	delete_facturacliente
200	Can view factura cliente	50	view_facturacliente
201	Can add factura proveedor	51	add_facturaproveedor
202	Can change factura proveedor	51	change_facturaproveedor
203	Can delete factura proveedor	51	delete_facturaproveedor
204	Can view factura proveedor	51	view_facturaproveedor
205	Can add historial	52	add_historial
206	Can change historial	52	change_historial
207	Can delete historial	52	delete_historial
208	Can view historial	52	view_historial
209	Can add migrations	53	add_migrations
210	Can change migrations	53	change_migrations
211	Can delete migrations	53	delete_migrations
142	Can change almacen	36	change_almacen
143	Can delete almacen	36	delete_almacen
144	Can view almacen	36	view_almacen
145	Can add auth group	37	add_authgroup
146	Can change auth group	37	change_authgroup
147	Can delete auth group	37	delete_authgroup
148	Can view auth group	37	view_authgroup
149	Can add auth group permissions	38	add_authgrouppermissions
150	Can change auth group permissions	38	change_authgrouppermissions
151	Can delete auth group permissions	38	delete_authgrouppermissions
152	Can view auth group permissions	38	view_authgrouppermissions
153	Can add auth permission	39	add_authpermission
154	Can change auth permission	39	change_authpermission
155	Can delete auth permission	39	delete_authpermission
156	Can view auth permission	39	view_authpermission
157	Can add auth user	40	add_authuser
158	Can change auth user	40	change_authuser
159	Can delete auth user	40	delete_authuser
160	Can view auth user	40	view_authuser
161	Can add auth user groups	41	add_authusergroups
162	Can change auth user groups	41	change_authusergroups
163	Can delete auth user groups	41	delete_authusergroups
164	Can view auth user groups	41	view_authusergroups
165	Can add auth user user permissions	42	add_authuseruserpermissions
166	Can change auth user user permissions	42	change_authuseruserpermissions
167	Can delete auth user user permissions	42	delete_authuseruserpermissions
168	Can view auth user user permissions	42	view_authuseruserpermissions
169	Can add blog	43	add_blog
170	Can change blog	43	change_blog
171	Can delete blog	43	delete_blog
172	Can view blog	43	view_blog
173	Can add contrato cliente	44	add_contratocliente
174	Can change contrato cliente	44	change_contratocliente
175	Can delete contrato cliente	44	delete_contratocliente
190	Can change django migrations	48	change_djangomigrations
191	Can delete django migrations	48	delete_djangomigrations
192	Can view django migrations	48	view_djangomigrations
194	Can change django session	49	change_djangosession
195	Can delete django session	49	delete_djangosession
212	Can view migrations	53	view_migrations
213	Can add registro control solicitud	54	add_registrocontrolsolicitud
214	Can change registro control solicitud	54	change_registrocontrolsolicitud
215	Can delete registro control solicitud	54	delete_registrocontrolsolicitud
216	Can view registro control solicitud	54	view_registrocontrolsolicitud
217	Can add solicitud	55	add_solicitud
218	Can change solicitud	55	change_solicitud
219	Can delete solicitud	55	delete_solicitud
220	Can view solicitud	55	view_solicitud
221	Can add user	56	add_user
222	Can change user	56	change_user
223	Can delete user	56	delete_user
224	Can view user	56	view_user
225	Can add usuarios	57	add_usuarios
226	Can change usuarios	57	change_usuarios
227	Can delete usuarios	57	delete_usuarios
228	Can view usuarios	57	view_usuarios
229	Can add admin interface theme	58	add_admininterfacetheme
230	Can change admin interface theme	58	change_admininterfacetheme
231	Can delete admin interface theme	58	delete_admininterfacetheme
232	Can view admin interface theme	58	view_admininterfacetheme
233	Can add saved report	59	add_savedreport
234	Can change saved report	59	change_savedreport
235	Can delete saved report	59	delete_savedreport
236	Can view saved report	59	view_savedreport
237	Can add dashboard stats	60	add_dashboardstats
238	Can change dashboard stats	60	change_dashboardstats
239	Can delete dashboard stats	60	delete_dashboardstats
240	Can view dashboard stats	60	view_dashboardstats
241	Can add dashboard stats criteria	61	add_dashboardstatscriteria
242	Can change dashboard stats criteria	61	change_dashboardstatscriteria
243	Can delete dashboard stats criteria	61	delete_dashboardstatscriteria
244	Can view dashboard stats criteria	61	view_dashboardstatscriteria
245	Can add criteria to stats m2m	62	add_criteriatostatsm2m
246	Can change criteria to stats m2m	62	change_criteriatostatsm2m
247	Can delete criteria to stats m2m	62	delete_criteriatostatsm2m
248	Can view criteria to stats m2m	62	view_criteriatostatsm2m
249	Can add Salva	63	add_backupview
250	Can change Salva	63	change_backupview
251	Can delete Salva	63	delete_backupview
252	Can view Salva	63	view_backupview
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
25	Can add Cliente	7	add_cliente
176	Can view contrato cliente	44	view_contratocliente
177	Can add contrato proveedor	45	add_contratoproveedor
178	Can change contrato proveedor	45	change_contratoproveedor
179	Can delete contrato proveedor	45	delete_contratoproveedor
180	Can view contrato proveedor	45	view_contratoproveedor
181	Can add django admin log	46	add_djangoadminlog
182	Can change django admin log	46	change_djangoadminlog
183	Can delete django admin log	46	delete_djangoadminlog
184	Can view django admin log	46	view_djangoadminlog
185	Can add django content type	47	add_djangocontenttype
186	Can change django content type	47	change_djangocontenttype
187	Can delete django content type	47	delete_djangocontenttype
188	Can view django content type	47	view_djangocontenttype
189	Can add django migrations	48	add_djangomigrations
193	Can add django session	49	add_djangosession
305	Can add log entry	77	add_logentry
306	Can change log entry	77	change_logentry
307	Can delete log entry	77	delete_logentry
308	Can view log entry	77	view_logentry
309	Can add tag	78	add_tag
310	Can change tag	78	change_tag
311	Can delete tag	78	delete_tag
312	Can view tag	78	view_tag
313	Can add tagged item	79	add_taggeditem
314	Can change tagged item	79	change_taggeditem
315	Can delete tagged item	79	delete_taggeditem
316	Can view tagged item	79	view_taggeditem
317	Can add notification	80	add_notification
318	Can change notification	80	change_notification
319	Can delete notification	80	delete_notification
320	Can view notification	80	view_notification
321	Can add Restaura	81	add_restauras
322	Can change Restaura	81	change_restauras
323	Can delete Restaura	81	delete_restauras
324	Can view Restaura	81	view_restauras
325	Can add Especialista COMEX	82	add_especialistacomex
326	Can change Especialista COMEX	82	change_especialistacomex
327	Can delete Especialista COMEX	82	delete_especialistacomex
328	Can view Especialista COMEX	82	view_especialistacomex
329	Can add Salva	83	add_salva
330	Can change Salva	83	change_salva
331	Can delete Salva	83	delete_salva
332	Can view Salva	83	view_salva
333	Can add Provincia	84	add_provincia
334	Can change Provincia	84	change_provincia
335	Can delete Provincia	84	delete_provincia
336	Can view Provincia	84	view_provincia
337	Can add proveedor_ producto	85	add_proveedor_producto
338	Can change proveedor_ producto	85	change_proveedor_producto
339	Can delete proveedor_ producto	85	delete_proveedor_producto
340	Can view proveedor_ producto	85	view_proveedor_producto
341	Can add solicitud_ producto	86	add_solicitud_producto
342	Can change solicitud_ producto	86	change_solicitud_producto
343	Can delete solicitud_ producto	86	delete_solicitud_producto
344	Can view solicitud_ producto	86	view_solicitud_producto
345	Can add Especialista COMEX	87	add_especialistacomex
346	Can change Especialista COMEX	87	change_especialistacomex
347	Can delete Especialista COMEX	87	delete_especialistacomex
348	Can view Especialista COMEX	87	view_especialistacomex
349	Can add Casa Matriz	88	add_casa_matriz
350	Can change Casa Matriz	88	change_casa_matriz
351	Can delete Casa Matriz	88	delete_casa_matriz
352	Can view Casa Matriz	88	view_casa_matriz
353	Can add Sucursal en Cuba	89	add_sucursal_cuba
354	Can change Sucursal en Cuba	89	change_sucursal_cuba
355	Can delete Sucursal en Cuba	89	delete_sucursal_cuba
356	Can view Sucursal en Cuba	89	view_sucursal_cuba
357	Can add solicitud oferta	90	add_solicitudoferta
358	Can change solicitud oferta	90	change_solicitudoferta
359	Can delete solicitud oferta	90	delete_solicitudoferta
360	Can view solicitud oferta	90	view_solicitudoferta
361	Can add proveedor_ sucursal	91	add_proveedor_sucursal
362	Can change proveedor_ sucursal	91	change_proveedor_sucursal
363	Can delete proveedor_ sucursal	91	delete_proveedor_sucursal
364	Can view proveedor_ sucursal	91	view_proveedor_sucursal
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
65	pbkdf2_sha256$320000$QA56N9hfcBXXiTfCu6kEPC$Co/wNAmQiHvQa664ewgWzfq6wkkxfv6yBzT2LS4BTTc=	2022-03-20 18:03:09.429783-04	f	cecilia.valdes	Cecilia	Valdes Rodriguez		t	t	2022-03-20 17:49:02.521352-04
66	pbkdf2_sha256$320000$pUhAEPeFfjFjboromojwno$L/jhxtNPixvZ4lUD2EqyMPVVUDzqjnKjAoWZ8ePDyS0=	\N	f	roberto.garcia	Roberto	García Marrero		t	t	2022-03-21 14:13:09.13163-04
61	pbkdf2_sha256$320000$y6b6IqgBHKHLbutJfmCDBN$k9DEXHZb0+o4o7UXtfW2qa7mJDjGmmRTqGMufQvYgac=	2022-04-09 10:11:31.628302-04	f	supervisor	Wilfredo	Ferreira Rabí		t	t	2022-02-08 23:36:02.741995-05
59	pbkdf2_sha256$320000$1XOywMPWL0xse2x6ePX1rk$LMuYbHso7Mmtyk0buoZs5MKVqsu/t2lXIdltqVgjxNY=	2022-04-07 15:48:22.676909-04	t	admin	Wilfredo	Ferreira Rabí	informatico@construimport.cu	t	t	2022-02-04 21:15:08.37-05
40	pbkdf2_sha256$320000$dW1yo6VBZFD6uzj9CErZn2$I3hpORHscXCmV7RxN1X6BYbpxB0/Jt6eTt3RbQiS2D0=	2022-04-09 05:20:55.747856-04	f	Marketing	Maria	Perez Fernandez		t	t	2022-01-28 09:05:38.381-05
60	pbkdf2_sha256$320000$H2Ukt52h45iphVouuie1hE$wgmHUJeZeDPLXKoNm3FXJZej/FLKoPRgKgnf9iHb+2k=	2022-04-09 09:52:57.45786-04	f	director_desarrollo	Ana	Rodriguez Perez		t	t	2022-02-05 12:35:55.86176-05
64	pbkdf2_sha256$320000$08xEuZ8lsMHksO5L316zkw$vYzDuvObRxTG4lxr7ryJxG2do6UJ5pAKb2X5TQ2Lhbc=	2022-04-09 09:54:59.52534-04	f	director_comex	Cecilia	Lopez Hernandez		t	t	2022-03-20 12:07:42.988552-04
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
29	40	3
30	60	4
31	59	5
32	61	5
35	64	7
36	65	8
37	66	8
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: casa_matriz; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.casa_matriz (identificador, direccion, email, telefono, contacto, id, sitio_web, proveedor, codmincex) FROM stdin;
\.


--
-- Data for Name: cliente; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cliente (numcontratocliente, nomcliente, "OSDE", idprovincia) FROM stdin;
20220001	DINVAI	GEDIC	\N
20220002	EMCC Camilo Cienfuegos	GEDIC	\N
20220003	Empresa de Inversiones de la Construcción	GEICON	\N
20220004	ECOING 25	GEDIC	\N
20220005	IMECO	GEDIC	\N
\.


--
-- Data for Name: dash_stats_criteria; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.dash_stats_criteria (id, criteria_name, criteria_fix_mapping, dynamic_criteria_field_name, criteria_dynamic_mapping, created_date, updated_date) FROM stdin;
\.


--
-- Data for Name: dashboard_stats; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.dashboard_stats (id, graph_key, graph_title, model_app_name, model_name, date_field_name, operation_field_name, type_operation_field_name, is_visible, created_date, updated_date, user_field_name, default_chart_type, default_time_period, default_time_scale, y_axis_format, "distinct", default_multiseries_criteria_id) FROM stdin;
\.


--
-- Data for Name: datos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.datos (identificador, direccion, email, telefono, contacto) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
413	2022-02-11 12:51:57.222185-05	220014	Solicitud object (220014)	1	[{"added": {}}]	11	59
414	2022-02-11 12:52:29.226705-05	220015	Solicitud object (220015)	1	[{"added": {}}]	11	59
415	2022-02-11 12:52:35.437306-05	220015	Solicitud object (220015)	3		11	59
416	2022-02-11 12:59:17.686103-05	220016	Solicitud object (220016)	1	[{"added": {}}]	11	59
417	2022-02-11 12:59:24.051172-05	220016	Solicitud object (220016)	3		11	59
418	2022-02-11 12:59:59.591198-05	220017	Solicitud object (220017)	1	[{"added": {}}]	11	59
419	2022-02-11 13:00:16.306018-05	220017	Solicitud object (220017)	3		11	59
420	2022-02-11 13:00:34.678582-05	220017	Solicitud object (220017)	3		11	59
421	2022-02-11 13:04:39.970364-05	220018	Solicitud object (220018)	1	[{"added": {}}]	11	59
422	2022-02-11 13:04:44.369462-05	220018	Solicitud object (220018)	3		11	59
423	2022-02-11 13:06:39.819177-05	220019	Solicitud object (220019)	1	[{"added": {}}]	11	59
424	2022-02-11 13:06:48.725205-05	220019	Solicitud object (220019)	3		11	59
425	2022-02-11 13:11:35.927966-05	220020	Solicitud object (220020)	1	[{"added": {}}]	11	59
436	2022-02-11 13:20:14.48289-05	220000	Solicitud object (220000)	1	[{"added": {}}]	11	59
437	2022-02-11 13:20:45.893198-05	220020	Solicitud object (220020)	3		11	59
438	2022-02-11 13:20:45.897728-05	220000	Solicitud object (220000)	3		11	59
439	2022-02-11 14:31:29.541872-05	20220001	20220001	1	[{"added": {}}]	73	59
440	2022-02-11 14:31:47.331967-05	20220002	20220002	1	[{"added": {}}]	73	59
441	2022-02-11 14:31:56.497091-05	20220003	20220003	1	[{"added": {}}]	73	59
442	2022-02-11 14:32:15.481899-05	20210531	CAMCE	1	[{"added": {}}]	76	59
443	2022-02-11 14:32:29.111875-05	20210607	WOMY	1	[{"added": {}}]	76	59
444	2022-02-11 14:32:42.55179-05	20210609	CAIEC	1	[{"added": {}}]	76	59
445	2022-02-11 14:36:30.484617-05	20220000	20220000	2	[{"changed": {"fields": ["Contrato"]}}]	75	59
446	2022-02-11 14:36:40.051362-05	20220001	20220001	2	[{"changed": {"fields": ["Contrato"]}}]	75	59
447	2022-02-11 14:36:48.801395-05	20220003	20220003	2	[{"changed": {"fields": ["Contrato"]}}]	75	59
448	2022-02-11 14:36:55.200861-05	0	0	1	[{"added": {}}]	75	59
449	2022-02-11 14:37:02.370855-05	0	0	3		75	59
450	2022-02-11 14:39:45.570734-05	0	0	1	[{"added": {}}]	75	59
451	2022-02-11 14:40:58.100335-05	0	0	2	[]	75	59
452	2022-02-11 14:41:04.135689-05	0	0	3		75	59
453	2022-02-11 14:43:54.300164-05	201902	201902	3		75	59
454	2022-02-11 14:43:58.370124-05	201901	201901	3		75	59
455	2022-02-11 14:44:02.874997-05	4	4	1	[{"added": {}}]	75	59
456	2022-02-11 14:44:26.622906-05	4	4	2	[]	75	59
457	2022-02-11 14:46:12.154818-05	4	4	3		75	59
458	2022-02-11 14:46:40.529399-05	20220000	El Establo	1	[{"added": {}}]	76	59
459	2022-02-11 14:50:52.802896-05	20220001	DINVAI	1	[{"added": {}}]	74	59
460	2022-02-11 14:51:18.203868-05	20220002	EMCC Camilo Cienfuegos	1	[{"added": {}}]	74	59
461	2022-02-11 14:54:28.201149-05	20220003	Empresa de Inversiones de la Construcción	1	[{"added": {}}]	74	59
462	2022-02-11 15:02:47.582083-05	220012	Solicitud object (220012)	1	[{"added": {}}]	11	40
463	2022-02-11 15:02:52.356823-05	220012	Solicitud object (220012)	3		11	40
464	2022-02-11 15:40:42.256003-05	220021	Solicitud object (220021)	1	[{"added": {}}]	11	40
465	2022-02-11 15:42:02.299163-05	220021	Solicitud object (220021)	2	[]	11	40
466	2022-02-11 15:44:44.200437-05	220021	Solicitud object (220021)	2	[]	11	40
467	2022-02-11 15:45:01.700376-05	220021	Solicitud object (220021)	2	[{"changed": {"fields": ["Aprobada"]}}]	11	40
468	2022-02-11 15:45:05.705671-05	220021	Solicitud object (220021)	2	[{"changed": {"fields": ["Aprobada"]}}]	11	40
469	2022-02-11 15:48:44.954771-05	220021	Solicitud object (220021)	2	[]	11	40
470	2022-02-11 18:07:27.15711-05	220021	Solicitud object (220021)	2	[]	11	40
471	2022-02-11 18:07:55.767306-05	220021	Solicitud object (220021)	2	[]	11	40
472	2022-02-11 18:08:02.807268-05	220021	Solicitud object (220021)	2	[]	11	40
473	2022-02-11 18:22:10.950049-05	220021	Solicitud object (220021)	3		11	40
474	2022-02-11 18:30:36.127267-05	220024	Solicitud object (220024)	1	[{"added": {}}]	11	40
475	2022-02-11 21:16:29.427892-05	4	Director Desarrollo	2	[{"changed": {"fields": ["Permissions"]}}]	3	61
476	2022-02-11 21:17:21.579119-05	220024	Solicitud object (220024)	2	[{"changed": {"fields": ["Aprobada"]}}]	11	60
477	2022-02-11 21:17:49.357765-05	220024	Solicitud object (220024)	2	[]	11	60
478	2022-02-11 21:17:55.263947-05	220024	Solicitud object (220024)	2	[{"changed": {"fields": ["Aprobada"]}}]	11	60
479	2022-02-11 21:20:47.186619-05	220024	Solicitud object (220024)	2	[{"changed": {"fields": ["Aprobada"]}}]	11	60
480	2022-02-11 23:01:46.261446-05	220024	Solicitud object (220024)	2	[{"changed": {"fields": ["Aprobada"]}}]	11	60
481	2022-02-11 23:01:50.041444-05	220024	Solicitud object (220024)	2	[{"changed": {"fields": ["Aprobada"]}}]	11	60
482	2022-02-12 07:13:58.846674-05	9	None Tiene solicitudes pendientes a aprobar 9 minutes ago	1	[{"added": {}}]	80	59
483	2022-02-12 07:14:24.336411-05	220024	Solicitud object (220024)	2	[{"changed": {"fields": ["Aprobada"]}}]	11	60
484	2022-02-12 07:21:25.560536-05	220024	Solicitud object (220024)	3		11	40
485	2022-02-12 07:22:58.908328-05	220033	Solicitud object (220033)	1	[{"added": {}}]	11	40
486	2022-02-12 07:29:43.938426-05	220033	Solicitud object (220033)	2	[{"changed": {"fields": ["Aprobada"]}}]	11	60
487	2022-02-12 07:30:00.099336-05	220033	Solicitud object (220033)	2	[{"changed": {"fields": ["Aprobada"]}}]	11	40
488	2022-02-12 07:41:00.610555-05	220033	Solicitud object (220033)	2	[]	11	59
489	2022-02-12 07:58:22.979537-05	594284002	Motoniveladora KAMZA	2	[{"changed": {"fields": ["C\\u00f3digo"]}}]	71	61
490	2022-02-12 07:58:29.959394-05	654284009	Motoniveladora KAMZA	2	[{"changed": {"fields": ["C\\u00f3digo"]}}]	71	61
491	2022-02-12 07:58:37.624395-05	654	Motoniveladora KAMZA	3		71	61
492	2022-02-12 07:58:50.404583-05	594284002	Motoniveladora KAMAZ	2	[{"changed": {"fields": ["Descripci\\u00f3n"]}}]	71	61
493	2022-02-12 07:59:22.549249-05	594284002	Baterías Camión	2	[{"changed": {"fields": ["Descripci\\u00f3n", "Tipo"]}}]	71	61
494	2022-02-12 07:59:41.795604-05	647386004	Neumáticos R16	2	[{"changed": {"fields": ["C\\u00f3digo", "Tipo"]}}]	71	61
496	2022-02-12 08:01:01.919264-05	220033	Solicitud object (220033)	3		11	40
497	2022-02-12 08:01:28.291094-05	55	Neumáticos R16	3		71	61
498	2022-02-12 08:01:39.664301-05	654284009	Motoniveladora KAMAZ	2	[{"changed": {"fields": ["Descripci\\u00f3n"]}}]	71	61
499	2022-02-12 08:01:54.469318-05	647386006	Grua Kamaz	2	[{"changed": {"fields": ["C\\u00f3digo"]}}]	71	61
500	2022-02-12 08:01:59.629026-05	1	Grua Kamaz	3		71	61
501	2022-02-12 08:02:27.404046-05	60	director_desarrollo	2	[{"changed": {"fields": ["First name"]}}]	4	61
502	2022-02-12 08:02:39.038824-05	60	director_desarrollo	2	[]	4	61
503	2022-02-12 08:03:44.983659-05	220036	Solicitud object (220036)	1	[{"added": {}}]	11	40
504	2022-02-12 08:03:58.298856-05	220039	Solicitud object (220039)	1	[{"added": {}}]	11	40
505	2022-02-12 08:04:16.008839-05	220042	Solicitud object (220042)	1	[{"added": {}}]	11	40
508	2022-02-12 10:32:05.725645-05	220042	Solicitud object (220042)	2	[{"changed": {"fields": ["Aprobada"]}}]	11	60
509	2022-02-12 10:47:36.162681-05	220042	Solicitud object (220042)	3		11	40
510	2022-02-12 10:47:42.843553-05	220042	Solicitud object (220042)	3		11	40
511	2022-02-12 10:47:59.688189-05	220042	Solicitud object (220042)	3		11	40
512	2022-02-12 10:48:03.703619-05	220042	Solicitud object (220042)	3		11	40
513	2022-02-12 10:48:08.603445-05	220042	Solicitud object (220042)	3		11	40
514	2022-02-12 10:48:25.438171-05	220042	Solicitud object (220042)	3		11	40
515	2022-02-12 10:48:32.463289-05	220042	Solicitud object (220042)	2	[{"changed": {"fields": ["Cliente"]}}]	11	40
516	2022-02-12 10:48:39.688483-05	220042	Solicitud object (220042)	2	[{"changed": {"fields": ["Cliente"]}}]	11	40
517	2022-02-12 10:49:13.283201-05	220042	Solicitud object (220042)	2	[{"changed": {"fields": ["Cliente"]}}]	11	40
518	2022-02-12 10:49:18.733462-05	220042	Solicitud object (220042)	2	[{"changed": {"fields": ["Cliente"]}}]	11	40
519	2022-02-12 10:50:03.768232-05	220042	Solicitud object (220042)	2	[]	11	60
520	2022-02-12 12:18:30.906514-05	220042	Solicitud object (220042)	3		11	40
521	2022-02-12 12:19:03.373604-05	220045	Solicitud object (220045)	1	[{"added": {}}]	11	40
522	2022-02-12 12:19:29.389118-05	220045	Solicitud object (220045)	2	[{"changed": {"fields": ["Aprobada"]}}]	11	60
523	2022-02-12 12:20:21.348958-05	61	supervisor	2	[{"changed": {"fields": ["Active"]}}]	4	61
524	2022-02-12 12:20:39.723906-05	61	supervisor	2	[{"changed": {"fields": ["Active"]}}]	4	61
525	2022-02-12 12:33:55.706-05	220045	Solicitud object (220045)	3		11	40
527	2022-02-12 12:34:31.499635-05	220036	Solicitud object (220036)	3		11	40
528	2022-02-12 12:34:36.21522-05	220045	Solicitud object (220045)	3		11	40
529	2022-02-12 13:12:07.285427-05	220045	Solicitud object (220045)	2	[]	11	60
530	2022-02-12 13:12:23.425536-05	220045	Solicitud object (220045)	2	[]	11	60
531	2022-02-12 13:13:50.55013-05	220039	Solicitud object (220039)	2	[]	11	60
532	2022-02-12 13:15:32.580527-05	220045	Solicitud object (220045)	3		11	40
533	2022-02-12 13:15:52.439438-05	220045	Solicitud object (220045)	3		11	40
534	2022-02-12 13:16:03.089504-05	220045	Solicitud object (220045)	3		11	40
547	2022-02-13 17:01:03.395087-05	220039	Solicitud object (220039)	3		11	40
562	2022-02-16 22:27:55.686371-05	20210531	20210531	3		75	61
565	2022-02-20 13:08:30.322414-05	3	Especialista Marketing	2	[{"changed": {"fields": ["Permissions"]}}]	3	61
566	2022-02-20 15:46:38.062208-05	20220004	ECOING 25	1	new through import_export	74	61
567	2022-02-20 15:46:38.062208-05	20220005	IMECO	1	new through import_export	74	61
568	2022-02-20 15:57:33.15934-05	202200001	CAMCE	1	[{"added": {}}]	76	61
569	2022-02-20 17:40:07.523453-05	20220001	CAMCE	1	new through import_export	76	61
570	2022-02-20 17:40:07.527449-05	20220002	WOMY	1	new through import_export	76	61
571	2022-02-20 17:40:07.52945-05	20220003	WEL Establo	1	new through import_export	76	61
572	2022-02-20 17:40:18.418371-05	202200001	CAMCE	3		76	61
573	2022-02-20 18:02:08.939725-05	3	Especialista Marketing	2	[{"changed": {"fields": ["Permissions"]}}]	3	61
574	2022-02-22 18:15:34.652852-05	5	supervisor	2	[{"changed": {"fields": ["Permissions"]}}]	3	61
575	2022-02-23 13:08:39.063641-05	3	Especialista Marketing	2	[{"changed": {"fields": ["Permissions"]}}]	3	61
576	2022-02-23 13:35:32.302492-05	220051	220051	1	new through import_export	11	40
577	2022-02-23 13:36:15.206774-05	220003	220003	1	new through import_export	11	40
578	2022-02-23 15:06:40.427598-05	220055	220055	1	new through import_export	11	40
579	2022-02-23 15:16:46.331943-05	220055	220055	2	update through import_export	11	60
580	2022-02-23 15:16:46.336947-05	220051	220051	2	update through import_export	11	60
581	2022-02-23 15:16:46.338942-05	220003	220003	2	update through import_export	11	60
582	2022-02-23 15:21:00.313055-05	220055	220055	2	update through import_export	11	60
583	2022-02-23 15:21:00.317056-05	220051	220051	2	update through import_export	11	60
584	2022-02-23 15:21:00.319056-05	220003	220003	2	update through import_export	11	60
585	2022-02-23 17:51:15.476484-05	220055	220055	2	[{"changed": {"fields": ["Cliente", "Estado"]}}]	11	60
586	2022-02-23 17:51:28.63673-05	220055	220055	2	[{"changed": {"fields": ["Cliente", "Estado"]}}]	11	60
587	2022-02-23 20:43:51.602238-05	220055	220055	2	[]	11	40
588	2022-02-23 20:44:10.422864-05	220056	220056	1	[{"added": {}}]	11	40
589	2022-02-23 21:08:27.509231-05	3	Especialista Marketing	2	[{"changed": {"fields": ["Permissions"]}}]	3	61
590	2022-02-23 21:09:48.32274-05	220059	220059	1	[{"added": {}}]	11	40
591	2022-02-23 21:10:00.537892-05	220059	220059	2	[]	11	40
592	2022-02-23 21:11:13.483588-05	3	Especialista Marketing	2	[{"changed": {"fields": ["Permissions"]}}]	3	61
593	2022-02-23 21:12:36.193618-05	220059	220059	2	[{"changed": {"fields": ["Estado"]}}]	11	60
594	2022-02-23 21:12:46.243488-05	220059	220059	2	[{"changed": {"fields": ["Estado"]}}]	11	60
595	2022-02-23 21:13:58.907558-05	220051	220051	2	[{"changed": {"fields": ["Estado"]}}]	11	60
596	2022-02-23 21:15:00.173302-05	594284301	Barrenadora	1	[{"added": {}}]	71	40
597	2022-02-23 21:26:00.711535-05	220059	220059	2	[]	11	40
598	2022-02-23 21:26:47.555279-05	220059	220059	2	[]	11	40
599	2022-02-23 21:35:20.161372-05	220059	220059	2	[{"changed": {"fields": ["Estado"]}}]	11	60
600	2022-02-23 21:37:29.344928-05	220059	220059	2	[{"changed": {"fields": ["Estado"]}}]	11	60
601	2022-02-24 09:52:32.915702-05	220062	220062	1	[{"added": {}}]	11	40
602	2022-02-24 09:55:21.492534-05	220055	220055	1	new through import_export	11	40
603	2022-02-24 09:55:21.496529-05	220051	220051	2	update through import_export	11	40
604	2022-02-24 09:55:21.496529-05	220003	220003	2	update through import_export	11	40
605	2022-03-02 18:35:55.692527-05	220062	220062	2	[{"changed": {"fields": ["Estado"]}}]	11	60
606	2022-03-05 08:13:44.970112-05	220056	220056	2	[]	11	40
607	2022-03-05 08:30:26.891479-05	6	test	1	[{"added": {}}]	3	61
608	2022-03-05 08:30:36.782619-05	61	supervisor	2	[{"changed": {"fields": ["Groups"]}}]	4	61
609	2022-03-05 08:37:57.971737-05	6	test	2	[]	3	61
610	2022-03-05 08:51:51.639667-05	6	test	2	[]	3	61
611	2022-03-05 08:53:53.93547-05	6	test	3		3	61
612	2022-03-05 08:58:37.189449-05	220059	220059	2	[]	11	60
613	2022-03-05 08:59:43.200175-05	220056	220056	2	[{"changed": {"fields": ["Estado"]}}]	11	60
615	2022-03-05 10:15:08.738954-05	220062	220062	2	[]	11	40
699	2022-03-25 11:28:00.06651-04	CF	Cienfuegos	1	new through import_export	84	40
616	2022-03-13 17:29:17.595139-04	4	Director Desarrollo	2	[{"changed": {"fields": ["Permissions"]}}]	3	61
617	2022-03-13 17:29:31.945415-04	5	supervisor	2	[{"changed": {"fields": ["Permissions"]}}]	3	61
618	2022-03-13 18:03:49.403499-04	220062	220062	2	[]	11	60
619	2022-03-13 18:10:05.910287-04	220059	220059	2	[]	11	60
620	2022-03-15 13:57:34.707695-04	220062	220062	2	[]	11	40
621	2022-03-16 10:39:45.305455-04	654284009	Motoniveladora KAMAZ	1	new through import_export	71	40
622	2022-03-16 10:39:45.310494-04	647386006	Grua Kamaz	1	new through import_export	71	40
623	2022-03-16 10:39:45.310494-04	647386004	Neumáticos R16	1	new through import_export	71	40
624	2022-03-16 10:39:45.310494-04	594284002	Baterías Camión	1	new through import_export	71	40
625	2022-03-16 10:54:47.245507-04	7	Director COMEX	1	[{"added": {}}]	3	61
626	2022-03-16 10:55:01.391304-04	3	Especialista Marketing	2	[{"changed": {"fields": ["Permissions"]}}]	3	61
627	2022-03-16 11:18:31.365654-04	5	supervisor	2	[{"changed": {"fields": ["Permissions"]}}]	3	61
628	2022-03-16 11:33:46.248135-04	5	supervisor	2	[{"changed": {"fields": ["Permissions"]}}]	3	61
629	2022-03-16 11:34:24.922672-04	5	supervisor	2	[{"changed": {"fields": ["Permissions"]}}]	3	61
630	2022-03-17 08:55:17.719096-04	HL	Holanda	1	[{"added": {}}]	70	40
631	2022-03-17 09:27:36.823987-04	3	Especialista Marketing	2	[{"changed": {"fields": ["Permissions"]}}]	3	61
632	2022-03-17 09:28:18.156368-04	7	Director COMEX	2	[{"changed": {"fields": ["Permissions"]}}]	3	61
633	2022-03-18 12:48:09.253115-04	20190305	KAMAZ	1	[{"added": {}}]	76	40
634	2022-03-18 12:48:51.678018-04	20190305	KAMAZ	3		76	40
635	2022-03-20 12:07:43.483647-04	64	director_comex	1	[{"added": {}}]	4	61
636	2022-03-20 12:07:53.168492-04	64	director_comex	2	[{"changed": {"fields": ["Groups"]}}]	4	61
637	2022-03-20 12:17:44.097208-04	1	Alberto	1	[{"added": {}}]	82	64
638	2022-03-20 12:18:23.403386-04	1	Alberto	2	[{"changed": {"fields": ["Nombre", "Apellidos", "Categoria"]}}]	82	64
639	2022-03-20 12:18:31.763818-04	1	A	3		82	64
640	2022-03-20 12:18:38.732068-04	1	Alberto	1	[{"added": {}}]	82	64
641	2022-03-20 12:20:21.461921-04	1	Alberto	2	[{"changed": {"fields": ["Nombre", "Apellidos", "Categoria"]}}]	82	64
642	2022-03-20 12:21:53.318443-04	1	A	3		82	64
643	2022-03-20 15:29:29.205802-04	1	Alberto	1	[{"added": {}}]	82	64
644	2022-03-20 15:29:52.583539-04	1	A	3		82	64
645	2022-03-20 15:30:07.44617-04	2	Cecilia	1	[{"added": {}}]	82	64
646	2022-03-20 15:31:20.553126-04	2	C	2	[{"changed": {"fields": ["Categoria"]}}]	82	64
647	2022-03-20 15:32:15.123048-04	2	Cecilia	2	[{"changed": {"fields": ["Nombre", "Apellidos", "Categoria"]}}]	82	64
648	2022-03-20 17:49:02.697834-04	65	cecilia.valdes	1	[{"added": {}}]	4	61
649	2022-03-20 17:49:20.291306-04	65	cecilia.valdes	2	[]	4	61
650	2022-03-21 14:07:19.784178-04	65	cecilia.valdes	1	[{"added": {}}]	82	64
651	2022-03-21 14:09:19.232516-04	8	Especialis COMEX	1	[{"added": {}}]	3	61
652	2022-03-21 14:09:39.577184-04	8	Especialista COMEX	2	[{"changed": {"fields": ["Name"]}}]	3	61
653	2022-03-21 14:09:47.013019-04	65	cecilia.valdes	2	[{"changed": {"fields": ["Groups"]}}]	4	61
654	2022-03-21 14:13:09.291525-04	66	roberto.garcia	1	[{"added": {}}]	4	61
655	2022-03-21 14:13:16.602623-04	66	roberto.garcia	2	[{"changed": {"fields": ["Groups"]}}]	4	61
656	2022-03-21 14:14:02.206788-04	66	roberto.garcia	1	[{"added": {}}]	82	64
657	2022-03-22 22:13:58.690132-04	220069	220069	1	[{"added": {}}]	11	40
658	2022-03-22 22:14:18.117154-04	220072	220072	1	[{"added": {}}]	11	40
659	2022-03-24 07:34:48.296859-04	5	supervisor	2	[{"changed": {"fields": ["Permissions"]}}]	3	61
660	2022-03-24 07:36:19.079374-04	5	supervisor	2	[{"changed": {"fields": ["Permissions"]}}]	3	61
661	2022-03-25 11:20:41.782675-04	220075	220075	1	[{"added": {}}]	11	40
662	2022-03-25 11:25:43.656044-04		Pinar del Rio	1	new through import_export	84	40
663	2022-03-25 11:25:43.657056-04		Artemisa	1	new through import_export	84	40
664	2022-03-25 11:25:43.657056-04		La Habana	1	new through import_export	84	40
665	2022-03-25 11:25:43.657056-04		Mayabeque	1	new through import_export	84	40
666	2022-03-25 11:25:43.657056-04		Matanzas	1	new through import_export	84	40
667	2022-03-25 11:25:43.657056-04		Cienfuegos	1	new through import_export	84	40
668	2022-03-25 11:25:43.66212-04		Villa Clara	1	new through import_export	84	40
669	2022-03-25 11:25:43.66212-04		Sancti Spiritus	1	new through import_export	84	40
670	2022-03-25 11:25:43.66212-04		Ciego de Avila	1	new through import_export	84	40
671	2022-03-25 11:25:43.66212-04		Camaguey	1	new through import_export	84	40
672	2022-03-25 11:25:43.66212-04		Las Tunas	1	new through import_export	84	40
673	2022-03-25 11:25:43.66212-04		Holguin	1	new through import_export	84	40
674	2022-03-25 11:25:43.66212-04		Granma	1	new through import_export	84	40
675	2022-03-25 11:25:43.66212-04		Santiago de Cuba	1	new through import_export	84	40
676	2022-03-25 11:25:43.666635-04		Guantanmo	1	new through import_export	84	40
677	2022-03-25 11:25:43.666635-04		Isa de la Juventud	1	new through import_export	84	40
678	2022-03-25 11:26:38.666961-04	PR	Pinar del Rio	1	new through import_export	84	40
679	2022-03-25 11:26:38.67151-04	AT	Artemisa	1	new through import_export	84	40
680	2022-03-25 11:26:38.67151-04	HB	La Habana	1	new through import_export	84	40
681	2022-03-25 11:26:38.67151-04	MY	Mayabeque	1	new through import_export	84	40
682	2022-03-25 11:26:38.67151-04	MT	Matanzas	1	new through import_export	84	40
683	2022-03-25 11:26:38.67151-04	CF	Cienfuegos	1	new through import_export	84	40
684	2022-03-25 11:26:38.67151-04	VC	Villa Clara	1	new through import_export	84	40
685	2022-03-25 11:26:38.676543-04	SP	Sancti Spiritus	1	new through import_export	84	40
686	2022-03-25 11:26:38.676543-04	CA	Ciego de Avila	1	new through import_export	84	40
687	2022-03-25 11:26:38.676543-04	CM	Camaguey	1	new through import_export	84	40
688	2022-03-25 11:26:38.676543-04	LT	Las Tunas	1	new through import_export	84	40
689	2022-03-25 11:26:38.678583-04	HL	Holguin	1	new through import_export	84	40
690	2022-03-25 11:26:38.678583-04	GR	Granma	1	new through import_export	84	40
691	2022-03-25 11:26:38.678583-04	SC	Santiago de Cuba	1	new through import_export	84	40
692	2022-03-25 11:26:38.678583-04	GT	Guantanmo	1	new through import_export	84	40
693	2022-03-25 11:26:38.678583-04	IJ	Isa de la Juventud	1	new through import_export	84	40
694	2022-03-25 11:28:00.05663-04	PR	Pinar del Rio	1	new through import_export	84	40
695	2022-03-25 11:28:00.062447-04	AT	Artemisa	1	new through import_export	84	40
696	2022-03-25 11:28:00.062447-04	HB	La Habana	1	new through import_export	84	40
697	2022-03-25 11:28:00.062447-04	MY	Mayabeque	1	new through import_export	84	40
698	2022-03-25 11:28:00.06651-04	MT	Matanzas	1	new through import_export	84	40
700	2022-03-25 11:28:00.06651-04	VC	Villa Clara	1	new through import_export	84	40
701	2022-03-25 11:28:00.06651-04	SP	Sancti Spiritus	1	new through import_export	84	40
702	2022-03-25 11:28:00.06651-04	CA	Ciego de Avila	1	new through import_export	84	40
703	2022-03-25 11:28:00.06651-04	CM	Camaguey	1	new through import_export	84	40
704	2022-03-25 11:28:00.06651-04	LT	Las Tunas	1	new through import_export	84	40
705	2022-03-25 11:28:00.06651-04	HL	Holguin	1	new through import_export	84	40
706	2022-03-25 11:28:00.06651-04	GR	Granma	1	new through import_export	84	40
707	2022-03-25 11:28:00.06651-04	SC	Santiago de Cuba	1	new through import_export	84	40
708	2022-03-25 11:28:00.06651-04	GT	Guantanmo	1	new through import_export	84	40
709	2022-03-25 11:28:00.071577-04	IJ	Isa de la Juventud	1	new through import_export	84	40
710	2022-03-25 22:30:56.712665-04	PR	Pinar del Rio	1	new through import_export	84	40
711	2022-03-25 22:30:56.715661-04	AT	Artemisa	1	new through import_export	84	40
712	2022-03-25 22:30:56.716661-04	HB	La Habana	1	new through import_export	84	40
713	2022-03-25 22:30:56.717661-04	MY	Mayabeque	1	new through import_export	84	40
714	2022-03-25 22:30:56.717661-04	MT	Matanzas	1	new through import_export	84	40
715	2022-03-25 22:30:56.718663-04	CF	Cienfuegos	1	new through import_export	84	40
716	2022-03-25 22:30:56.719661-04	VC	Villa Clara	1	new through import_export	84	40
717	2022-03-25 22:30:56.720665-04	SP	Sancti Spiritus	1	new through import_export	84	40
718	2022-03-25 22:30:56.722663-04	CA	Ciego de Avila	1	new through import_export	84	40
719	2022-03-25 22:30:56.723663-04	CM	Camaguey	1	new through import_export	84	40
720	2022-03-25 22:30:56.724667-04	LT	Las Tunas	1	new through import_export	84	40
721	2022-03-25 22:30:56.725661-04	HL	Holguin	1	new through import_export	84	40
722	2022-03-25 22:30:56.726661-04	GR	Granma	1	new through import_export	84	40
723	2022-03-25 22:30:56.726661-04	SC	Santiago de Cuba	1	new through import_export	84	40
724	2022-03-25 22:30:56.727664-04	GT	Guantanmo	1	new through import_export	84	40
725	2022-03-25 22:30:56.728662-04	IJ	Isla de la Juventud	1	new through import_export	84	40
726	2022-03-26 11:45:33.6826-04	VC	Villa Clara	2	update through import_export	84	40
727	2022-03-26 11:45:33.688052-04	SP	Sancti Spiritus	2	update through import_export	84	40
728	2022-03-26 11:45:33.688052-04	SC	Santiago de Cuba	2	update through import_export	84	40
729	2022-03-26 11:45:33.688052-04	PR	Pinar del Rio	2	update through import_export	84	40
730	2022-03-26 11:45:33.694194-04	MY	Mayabeque	2	update through import_export	84	40
731	2022-03-26 11:45:33.697789-04	MT	Matanzas	2	update through import_export	84	40
732	2022-03-26 11:45:33.697789-04	LT	Las Tunas	2	update through import_export	84	40
733	2022-03-26 11:45:33.697789-04	IJ	Isla de la Juventud	2	update through import_export	84	40
734	2022-03-26 11:45:33.702951-04	HL	Holguin	2	update through import_export	84	40
735	2022-03-26 11:45:33.702951-04	HB	La Habana	2	update through import_export	84	40
736	2022-03-26 11:45:33.707563-04	GT	Guantanmo	2	update through import_export	84	40
737	2022-03-26 11:45:33.709993-04	GR	Granma	2	update through import_export	84	40
738	2022-03-26 11:45:33.712609-04	CM	Camaguey	2	update through import_export	84	40
739	2022-03-26 11:45:33.712609-04	CF	Cienfuegos	2	update through import_export	84	40
740	2022-03-26 11:45:33.712609-04	CA	Ciego de Avila	2	update through import_export	84	40
741	2022-03-26 11:45:33.717626-04	AT	Artemisa	2	update through import_export	84	40
742	2022-03-26 11:45:33.720291-04	LV	Las Villas	1	new through import_export	84	40
743	2022-03-30 09:25:29.77269-04	64	director_comex	1	[{"added": {}}]	82	64
744	2022-03-30 09:25:37.738129-04	64	director_comex	3		82	64
745	2022-03-30 09:25:50.517759-04	65	cecilia.valdes	3		82	64
746	2022-03-30 09:27:08.167438-04	65	cecilia.valdes	1	[{"added": {}}]	82	64
747	2022-03-30 14:55:29.873765-04	220078	220078	1	[{"added": {}}]	11	40
748	2022-03-30 14:55:48.882174-04	220081	220081	1	[{"added": {}}]	11	40
749	2022-03-31 12:58:42.501409-04	220084	220084	1	[{"added": {}}]	11	40
750	2022-03-31 12:58:52.65649-04	220084	220084	2	[]	11	40
751	2022-03-31 22:32:51.10321-04	220087	220087	1	[{"added": {}}]	11	40
752	2022-04-01 09:52:34.43914-04	7	Director COMEX	2	[{"changed": {"fields": ["Permissions"]}}]	3	61
753	2022-04-02 12:56:07.021891-04	PR	Pinar del Río	1	[{"added": {}}]	84	40
754	2022-04-02 16:16:43.624548-04	67	qwerty	1	[{"added": {}}]	4	61
755	2022-04-02 16:17:05.886671-04	67	qwerty	3		4	61
756	2022-04-02 21:34:00.294732-04	3	Especialista Marketing	2	[{"changed": {"fields": ["Permissions"]}}]	3	61
757	2022-04-02 21:41:32.67422-04	3	Especialista Marketing	2	[{"changed": {"fields": ["Permissions"]}}]	3	61
758	2022-04-02 21:42:21.759422-04	3	Especialista Marketing	2	[{"changed": {"fields": ["Permissions"]}}]	3	61
759	2022-04-02 21:43:23.629582-04	3	Especialista Marketing	2	[{"changed": {"fields": ["Permissions"]}}]	3	61
760	2022-04-02 21:44:08.54939-04	3	Especialista Marketing	2	[{"changed": {"fields": ["Permissions"]}}]	3	61
761	2022-04-04 10:51:30.897837-04	3	Especialista Marketing	2	[{"changed": {"fields": ["Permissions"]}}]	3	61
762	2022-04-07 10:39:05.124807-04	3	Especialista Marketing	2	[{"changed": {"fields": ["Permissions"]}}]	3	61
763	2022-04-07 10:42:24.831405-04	3	Especialista Marketing	2	[{"changed": {"fields": ["Permissions"]}}]	3	61
764	2022-04-07 14:17:24.810141-04	68	john_doe	1	[{"added": {}}]	4	61
765	2022-04-07 14:23:49.79344-04	68	john_doe	3		4	61
766	2022-04-07 14:24:51.548047-04	594284043	Neumáticos R18	1	[{"added": {}}]	71	40
767	2022-04-07 21:44:36.291383-04	220123	220123	1	[{"added": {}}, {"added": {"name": "Producto", "object": "Neum\\u00e1ticos R16"}}]	11	40
768	2022-04-08 21:00:44.93514-04	220126	220126	1	[{"added": {}}, {"added": {"name": "Producto", "object": "Grua Kamaz"}}]	11	40
769	2022-04-09 05:20:48.296936-04	3	Especialista Marketing	2	[{"changed": {"fields": ["Permissions"]}}]	3	61
770	2022-04-09 06:31:56.23292-04	65	cecilia.valdes	1	[{"added": {}}]	87	64
771	2022-04-09 06:32:05.152476-04	66	roberto.garcia	1	[{"added": {}}]	87	64
772	2022-04-09 09:54:48.878612-04	7	Director COMEX	2	[{"changed": {"fields": ["Permissions"]}}]	3	61
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
64	Solicitudes	dashboardstats
65	Solicitudes	dashstatscriteria
66	Solicitudes	reportssavedreport
67	Solicitudes	solicitudesbackupview
68	Nomencladores	admininterfacetheme
69	Nomencladores	almacen
70	Nomencladores	pais
71	Nomencladores	producto
72	Nomencladores	solicitudesbackupview
73	Nomencladores	contratocliente
74	Nomencladores	cliente
75	Nomencladores	contratoproveedor
76	Nomencladores	proveedor
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	ImportApp	cliente
8	ImportApp	producto
9	ImportApp	proveedor
37	ImportApp	authgroup
38	ImportApp	authgrouppermissions
39	ImportApp	authpermission
40	ImportApp	authuser
41	ImportApp	authusergroups
42	ImportApp	authuseruserpermissions
43	ImportApp	blog
44	ImportApp	contratocliente
45	ImportApp	contratoproveedor
46	ImportApp	djangoadminlog
47	ImportApp	djangocontenttype
48	ImportApp	djangomigrations
49	ImportApp	djangosession
50	ImportApp	facturacliente
51	ImportApp	facturaproveedor
52	ImportApp	historial
53	ImportApp	migrations
54	ImportApp	registrocontrolsolicitud
55	ImportApp	solicitud
56	ImportApp	user
57	ImportApp	usuarios
58	Solicitudes	admininterfacetheme
59	reports	savedreport
60	admin_tools_stats	dashboardstats
61	admin_tools_stats	dashboardstatscriteria
62	admin_tools_stats	criteriatostatsm2m
63	Solicitudes	backupview
10	ImportApp	pais
11	Solicitudes	solicitud
12	Solicitudes	almacen
13	Solicitudes	authgroup
14	Solicitudes	authgrouppermissions
15	Solicitudes	authpermission
16	Solicitudes	authuser
17	Solicitudes	authusergroups
18	Solicitudes	authuseruserpermissions
19	Solicitudes	djangoadminlog
20	Solicitudes	djangocontenttype
21	Solicitudes	djangomigrations
22	Solicitudes	djangosession
23	Solicitudes	facturacliente
24	Solicitudes	facturaproveedor
25	Solicitudes	historial
26	Solicitudes	pais
27	Solicitudes	producto
28	Solicitudes	registrocontrolsolicitud
29	Solicitudes	user
30	Solicitudes	usuarios
31	Solicitudes	contratocliente
32	Solicitudes	cliente
33	Solicitudes	contratoproveedor
34	Solicitudes	proveedor
35	admin_interface	theme
36	ImportApp	almacen
77	Trazas	logentry
78	taggit	tag
79	taggit	taggeditem
80	notifications	notification
81	Información	restauras
82	Nomencladores	especialistacomex
83	Información	salva
84	Nomencladores	provincia
85	Nomencladores	proveedor_producto
86	Solicitudes	solicitud_producto
87	COMEX	especialistacomex
88	Nomencladores	casa_matriz
89	Nomencladores	sucursal_cuba
90	COMEX	solicitudoferta
91	Nomencladores	proveedor_sucursal
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	ImportApp	0001_initial	2021-11-05 11:36:44.088-04
2	ImportApp	0002_auto_20211104_1141	2021-11-05 11:36:44.107-04
3	ImportApp	0003_auto_20211104_1204	2021-11-05 11:36:44.132-04
4	ImportApp	0004_alter_producto_cantidad	2021-11-05 11:36:44.147-04
5	contenttypes	0001_initial	2021-11-05 11:36:44.163-04
6	auth	0001_initial	2021-11-05 11:36:44.266-04
7	admin	0001_initial	2021-11-05 11:36:44.294-04
8	admin	0002_logentry_remove_auto_add	2021-11-05 11:36:44.301-04
9	admin	0003_logentry_add_action_flag_choices	2021-11-05 11:36:44.311-04
10	contenttypes	0002_remove_content_type_name	2021-11-05 11:36:44.329-04
11	auth	0002_alter_permission_name_max_length	2021-11-05 11:36:44.339-04
12	auth	0003_alter_user_email_max_length	2021-11-05 11:36:44.347-04
67	Solicitudes	0002_alter_solicitud_cantidad_alter_solicitud_fechasol_and_more	2022-02-06 08:39:17.199567-05
69	Nomencladores	0002_alter_proveedor_options	2022-02-06 09:23:50.50007-05
70	Solicitudes	0003_delete_almacen_remove_cliente_numcontratocliente_and_more	2022-02-06 09:23:50.581222-05
13	auth	0004_alter_user_username_opts	2021-11-05 11:36:44.359-04
14	auth	0005_alter_user_last_login_null	2021-11-05 11:36:44.367-04
15	auth	0006_require_contenttypes_0002	2021-11-05 11:36:44.37-04
16	auth	0007_alter_validators_add_error_messages	2021-11-05 11:36:44.379-04
17	auth	0008_alter_user_username_max_length	2021-11-05 11:36:44.393-04
18	auth	0009_alter_user_last_name_max_length	2021-11-05 11:36:44.402-04
19	auth	0010_alter_group_name_max_length	2021-11-05 11:36:44.412-04
20	auth	0011_update_proxy_permissions	2021-11-05 11:36:44.424-04
21	auth	0012_alter_user_first_name_max_length	2021-11-05 11:36:44.432-04
22	sessions	0001_initial	2021-11-05 11:36:44.453-04
23	Solicitudes	0001_initial	2021-11-13 06:28:30.109-05
24	admin_interface	0001_initial	2021-11-13 13:00:01.189-05
25	admin_interface	0002_add_related_modal	2021-11-13 13:00:01.217-05
26	admin_interface	0003_add_logo_color	2021-11-13 13:00:01.228-05
27	admin_interface	0004_rename_title_color	2021-11-13 13:00:01.234-05
28	admin_interface	0005_add_recent_actions_visible	2021-11-13 13:00:01.241-05
29	admin_interface	0006_bytes_to_str	2021-11-13 13:00:01.312-05
30	admin_interface	0007_add_favicon	2021-11-13 13:00:01.318-05
51	reports	0001_initial	2021-12-10 04:33:36.827-05
65	Solicitudes	0002_backupview	2022-02-04 11:52:16.109-05
66	auth	0013_alter_group_options_alter_user_first_name_and_more	2022-02-04 11:52:16.155-05
31	admin_interface	0008_change_related_modal_background_opacity_type	2021-11-13 13:00:01.328-05
32	admin_interface	0009_add_enviroment	2021-11-13 13:00:01.338-05
33	admin_interface	0010_add_localization	2021-11-13 13:00:01.358-05
34	admin_interface	0011_add_environment_options	2021-11-13 13:00:01.378-05
35	admin_interface	0012_update_verbose_names	2021-11-13 13:00:01.385-05
36	admin_interface	0013_add_related_modal_close_button	2021-11-13 13:00:01.392-05
37	admin_interface	0014_name_unique	2021-11-13 13:00:01.407-05
38	admin_interface	0015_add_language_chooser_active	2021-11-13 13:00:01.413-05
39	admin_interface	0016_add_language_chooser_display	2021-11-13 13:00:01.418-05
40	admin_interface	0017_change_list_filter_dropdown	2021-11-13 13:00:01.425-05
41	admin_interface	0018_theme_list_filter_sticky	2021-11-13 13:00:01.433-05
42	admin_interface	0019_add_form_sticky	2021-11-13 13:00:01.443-05
43	admin_interface	0020_module_selected_colors	2021-11-13 13:00:01.467-05
44	admin_interface	0021_file_extension_validator	2021-11-13 13:00:01.477-05
45	admin_interface	0022_add_logo_max_width_and_height	2021-11-13 13:00:01.489-05
46	Solicitudes	0002_alter_solicitud_options	2021-11-17 17:52:05.217-05
47	Solicitudes	0003_alter_registrocontrolsolicitud_options	2021-11-20 12:34:03.372-05
48	Solicitudes	0004_alter_registrocontrolsolicitud_options	2021-11-20 12:34:30.038-05
49	Solicitudes	0005_auto_20211120_1235	2021-11-20 12:35:40.486-05
50	Solicitudes	0006_alter_solicitud_options	2021-12-10 04:33:36.753-05
68	Nomencladores	0001_initial	2022-02-06 09:09:27.446684-05
52	reports	0002_auto_20210206_1635	2021-12-10 04:33:36.842-05
53	reports	0003_alter_savedreport_id	2021-12-10 04:33:36.871-05
54	Solicitudes	0002_solicitud	2021-12-27 22:41:57.359-05
55	admin_tools_stats	0001_initial	2021-12-27 22:41:57.47-05
56	admin_tools_stats	0002_auto_20190920_1058	2021-12-27 22:41:57.494-05
57	admin_tools_stats	0003_auto_20191007_0950	2021-12-27 22:41:57.521-05
58	admin_tools_stats	0004_dashboardstats_y_tick_format	2021-12-27 22:41:57.527-05
59	admin_tools_stats	0005_auto_20200203_1537	2021-12-27 22:41:57.563-05
60	admin_tools_stats	0006_auto_20200205_0944	2021-12-27 22:41:57.614-05
61	admin_tools_stats	0007_auto_20200205_1054	2021-12-27 22:41:57.646-05
62	admin_tools_stats	0008_auto_20200911_1400	2021-12-27 22:41:57.669-05
63	admin_tools_stats	0009_auto_20200928_1003	2021-12-27 22:41:57.681-05
64	admin_tools_stats	0010_auto_20211214_1546	2021-12-27 22:41:57.845-05
71	Nomencladores	0002_alter_contratocliente_options_and_more	2022-02-07 09:12:13.556044-05
72	Solicitudes	0002_solicitud_observaciones_alter_solicitud_fechasol	2022-02-07 09:12:42.90996-05
73	Nomencladores	0002_alter_producto_options	2022-02-07 11:45:41.96953-05
74	Solicitudes	0002_alter_solicitud_fechasol	2022-02-08 22:17:58.388846-05
75	Solicitudes	0003_alter_solicitud_fechasol	2022-02-09 07:04:14.091671-05
76	Trazas	0001_initial	2022-02-09 19:50:50.203711-05
77	admin	0004_alter_logentry_options	2022-02-09 19:50:50.214188-05
78	Solicitudes	0004_alter_solicitud_fechasol	2022-02-10 11:41:35.030019-05
79	Nomencladores	0003_alter_producto_options	2022-02-10 12:00:22.938063-05
80	Nomencladores	0002_alter_producto_idproducto	2022-02-10 12:40:53.17543-05
81	taggit	0001_initial	2022-02-10 19:33:27.945072-05
82	taggit	0002_auto_20150616_2121	2022-02-10 19:33:27.959072-05
83	taggit	0003_taggeditem_add_unique_index	2022-02-10 19:33:27.970072-05
84	taggit	0004_alter_taggeditem_content_type_alter_taggeditem_tag	2022-02-10 19:33:28.017072-05
85	Nomencladores	0003_alter_producto_tipo	2022-02-11 14:10:37.527184-05
86	Nomencladores	0004_alter_contratocliente_options_and_more	2022-02-11 15:05:58.62818-05
87	notifications	0001_initial	2022-02-12 06:58:14.720829-05
88	notifications	0002_auto_20150224_1134	2022-02-12 06:58:14.742825-05
89	notifications	0003_notification_data	2022-02-12 06:58:14.753828-05
90	notifications	0004_auto_20150826_1508	2022-02-12 06:58:14.762826-05
91	notifications	0005_auto_20160504_1520	2022-02-12 06:58:14.773825-05
92	notifications	0006_indexes	2022-02-12 06:58:14.815825-05
93	notifications	0007_add_timestamp_index	2022-02-12 06:58:14.831095-05
94	notifications	0008_index_together_recipient_unread	2022-02-12 06:58:14.844107-05
95	notifications	0009_alter_notification_id	2022-02-12 06:58:14.89811-05
96	Nomencladores	0005_alter_producto_idproducto_and_more	2022-02-16 22:24:08.847044-05
97	Nomencladores	0006_delete_admininterfacetheme_delete_contratocliente_and_more	2022-02-20 12:52:48.844712-05
98	Solicitudes	0003_delete_admininterfacetheme_delete_authgroup_and_more	2022-02-20 12:52:48.862689-05
99	Información	0001_initial	2022-03-13 12:20:30.461405-04
100	Información	0002_salva	2022-03-16 11:33:18.812404-04
101	Información	0003_alter_restauras_options_alter_salva_options	2022-03-17 09:24:21.31483-04
102	Nomencladores	0002_alter_provincia_nombre	2022-03-17 15:12:35.462552-04
103	Nomencladores	0003_remove_proveedor_idproducto_proveedor_productos	2022-03-18 13:02:30.818514-04
104	Nomencladores	0002_rename_usuario_especialistacomex_username	2022-03-20 18:02:02.401086-04
105	Nomencladores	0003_alter_especialistacomex_managers_and_more	2022-03-21 13:50:32.311984-04
106	Nomencladores	0004_alter_especialistacomex_managers_and_more	2022-03-21 14:03:29.399923-04
107	Nomencladores	0005_alter_especialistacomex_id	2022-03-21 14:04:31.758853-04
108	Solicitudes	0002_solicitud_producto_numcontratoproveedor	2022-03-22 22:04:02.996545-04
109	Solicitudes	0003_alter_solicitud_options	2022-03-22 22:27:22.68186-04
110	Nomencladores	0006_alter_proveedor_productos_and_more	2022-03-24 20:01:56.815756-04
111	Solicitudes	0004_alter_solicitud_producto_options	2022-03-24 20:01:56.827756-04
112	Nomencladores	0007_rename_idprovincia_provincia_id	2022-03-25 11:25:05.325006-04
113	Nomencladores	0008_rename_id_especialistacomex_idespecialista_and_more	2022-03-25 11:57:20.055536-04
114	Nomencladores	0009_alter_provincia_idprovincia	2022-03-25 14:36:02.618782-04
115	Nomencladores	0007_rename_id_especialistacomex_idespecialista_and_more	2022-03-25 14:44:51.076579-04
116	Nomencladores	0008_rename_idprovincia_provincia_codprovincia	2022-03-25 19:59:57.624868-04
117	Nomencladores	0009_rename_codprovincia_provincia_id	2022-03-25 22:29:49.39381-04
118	Nomencladores	0010_rename_id_provincia_idprovincia	2022-03-25 22:47:46.238505-04
119	Nomencladores	0011_alter_cliente_options_and_more	2022-03-26 11:44:34.158021-04
120	Nomencladores	0012_alter_cliente_options_and_more	2022-03-28 15:40:35.21871-04
121	Nomencladores	0002_delete_especialistacomex	2022-04-01 09:44:44.04587-04
122	COMEX	0001_initial	2022-04-01 09:48:59.982569-04
123	COMEX	0002_alter_especialistacomex_managers_and_more	2022-04-01 10:17:33.101636-04
124	COMEX	0003_remove_especialistacomex_idespecialista_and_more	2022-04-01 10:56:37.972391-04
125	Nomencladores	0003_rename_idprovincia_provincia_codigoprovincia	2022-04-01 20:55:44.086462-04
126	Solicitudes	0002_alter_solicitud_producto_idproducto	2022-04-07 05:32:40.146465-04
127	COMEX	0002_solicitudoferta	2022-04-07 05:48:42.569563-04
128	Nomencladores	0002_casa_matriz_proveedor	2022-04-08 05:11:31.967889-04
129	Solicitudes	0002_alter_solicitud_producto_idproducto_and_more	2022-04-08 19:38:53.581345-04
130	Solicitudes	0002_alter_solicitud_producto_codmincex	2022-04-08 22:02:57.277275-04
131	Nomencladores	0002_alter_proveedor_productos	2022-04-09 05:59:46.505777-04
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
2pf50n51fdyec5t4mw87exw5qhnog17r	.eJxVjDsOwjAQBe_iGllxYrNZSnrOEO3POIAcKZ8KcXcUKQW0b2be2w20rWXYFpuHUd3FJXSn35FJnlZ3og-q98nLVNd5ZL8r_qCLv01qr-vh_h0UWspec0xNJ02SqNgpCmbjCALhnHtlCUFyaHsFAmAWBDAJEVPbmxFQdp8vKL85EA:1nGQVz:SKFvQ-C7cFVwg__M65hPZWVa888cElQoCB6jFGhe2Lg	2022-02-19 14:14:31.541135-05
3qbp919b4fsupbrzng97k9p0b0nb33bm	.eJxVjEEOwiAQRe_C2hBgmEJduvcMZIBBqoYmpV0Z765NutDtf-_9lwi0rTVsnZcwZXEWVonT7xgpPbjtJN-p3WaZ5rYuU5S7Ig_a5XXO_Lwc7t9BpV6_tcYSHfpCbCIqHNDGTOiTS0DKFwejVoYASBu2NCTI1jEwWTuyB6XF-wMGTjfE:1nEIu4:jCXbzyp5OzHhGq8sI9TTFx9nbX1MGDSBOYbCvN9P72w	2022-02-13 17:42:36.183-05
6soidq7r1h3yth48fbedko76ocf1klsb	.eJxVjMsOwiAQRf-FtSG0PAou3fsNZGBmpGogKe3K-O_apAvd3nPOfYkI21ri1mmJM4qzmMTpd0uQH1R3gHeotyZzq-syJ7kr8qBdXhvS83K4fwcFevnW2hkEQ0or8AEGMBMPFtjnwIwuoSXOrNQYyJuE7Cg7hxzGZMmhSVq8Pwg3OTM:1n4U5U:AS4uL-RacB7nk42M2Hgotlbtpov0RzUtpIe3N-VFQmc	2022-01-17 15:37:48.796-05
8j1am5l2cvavcvuctaayznv79w5binao	.eJxVjMsOwiAQRf-FtSG0PAou3fsNZGBmpGogKe3K-O_apAvd3nPOfYkI21ri1mmJM4qzmMTpd0uQH1R3gHeotyZzq-syJ7kr8qBdXhvS83K4fwcFevnW2hkEQ0or8AEGMBMPFtjnwIwuoSXOrNQYyJuE7Cg7hxzGZMmhSVq8Pwg3OTM:1n4VmE:fFWwJ8z-aruKEif2tCXIC91afU_ebUxmhT1NziYEPuo	2022-01-17 17:26:02.813-05
uh2t48visfvspebw9pd4ex9gdr735ts3	.eJxVjDsOwjAQBe_iGlmx4_hDSZ8zWLvrNQ4gR4qTCnF3EikFtG_mzVtE2NYSt8ZLnJK4CiUuvxsCPbkeID2g3mdJc12XCeWhyJM2Oc6JX7fT_QsUaGV_e9IBAjGy11ln0AqCGyxnTw4DGp1xSJR7Zs5EPXZ72iarjDOd9cTi8wUftjmN:1mkEei:ue5an6kqk4xLh5DktCbNAqQSHkpVFi3J2k9hjK8SLrM	2021-11-22 19:06:28.434-05
891yrfjb57ebzdcrzryocqqebolnya8w	.eJxVjDsOwjAQBe_iGllxYrNZSnrOEO3POIAcKZ8KcXcUKQW0b2be2w20rWXYFpuHUd3FJXSn35FJnlZ3og-q98nLVNd5ZL8r_qCLv01qr-vh_h0UWspec0xNJ02SqNgpCmbjCALhnHtlCUFyaHsFAmAWBDAJEVPbmxFQdp8vKL85EA:1nGUPj:H-L951BxnkYucNbG8P-8W5PnrNGIL8E9lkGUvciJ-4k	2022-02-19 18:24:19.862999-05
cqajljotrfz9rr3zxiq53cfx4fj8yb58	.eJxVjMsOwiAQRf-FtSG0PAou3fsNZGBmpGogKe3K-O_apAvd3nPOfYkI21ri1mmJM4qzmMTpd0uQH1R3gHeotyZzq-syJ7kr8qBdXhvS83K4fwcFevnW2hkEQ0or8AEGMBMPFtjnwIwuoSXOrNQYyJuE7Cg7hxzGZMmhSVq8Pwg3OTM:1n8DWc:EEYjne5HyaUS8h3Ljo5Mu3tJP8L5kQ2PWe_zp4-8qEk	2022-01-27 22:45:14.25-05
ds2c9q0yqz03aqw9852zrgsr088qw8wa	.eJxVjMsOwiAQRf-FtSG8BopL934DgWGQqoGktCvjv2uTLnR7zzn3xULc1hq2QUuYMzszsOz0O6aID2o7yffYbp1jb-syJ74r_KCDX3um5-Vw_w5qHPVb6-h0kWAhOSSXnTDThMaTt1pbYcB7JZT3MhVUWZHNkiSiAglFp1gMe38A6gc3hw:1nFoxI:W1IBpCbu8iIt0PRSin5awDkuaTO5dTwVPRgJVUT7DRo	2022-02-17 22:08:12.466-05
dx9pkgetxtsizx38tin789enrz33cq3i	.eJxVjMsOwiAQRf-FtSG0PAou3fsNZGBmpGogKe3K-O_apAvd3nPOfYkI21ri1mmJM4qzmMTpd0uQH1R3gHeotyZzq-syJ7kr8qBdXhvS83K4fwcFevnW2hkEQ0or8AEGMBMPFtjnwIwuoSXOrNQYyJuE7Cg7hxzGZMmhSVq8Pwg3OTM:1n4Vkr:s6afa0zk8kSIYK4Geww5CwpC7O5yePK_33uUg8ygB7o	2022-01-17 17:24:37.274-05
fsliin2j1nr8sg1fjkb46651vvhk4b92	.eJxVjDsOwjAQBe_iGlmx4_hDSZ8zWLvrNQ4gR4qTCnF3EikFtG_mzVtE2NYSt8ZLnJK4CiUuvxsCPbkeID2g3mdJc12XCeWhyJM2Oc6JX7fT_QsUaGV_e9IBAjGy11ln0AqCGyxnTw4DGp1xSJR7Zs5EPXZ72iarjDOd9cTi8wUftjmN:1mt78O:ZBVGQh5ZH35jY9jPx8ilwEXRNuAITgG_IP26Pigv1Q0	2021-12-17 06:53:48.901-05
gg0kzdv9um6q4nrdocvuj10vnue991b8	.eJxVjMsOwiAQRf-FtSG0PAou3fsNZGBmpGogKe3K-O_apAvd3nPOfYkI21ri1mmJM4qzmMTpd0uQH1R3gHeotyZzq-syJ7kr8qBdXhvS83K4fwcFevnW2hkEQ0or8AEGMBMPFtjnwIwuoSXOrNQYyJuE7Cg7hxzGZMmhSVq8Pwg3OTM:1n4pqO:d7xmauQ2S5raCfrFh0wKfFZ-WdnCRoGZynJTnwGoF5g	2022-01-18 14:51:40.803-05
h7umfkgqfcdypun58bpbialsckhf1fws	.eJxVjMsOwiAQRf-FtSG0PAou3fsNZGBmpGogKe3K-O_apAvd3nPOfYkI21ri1mmJM4qzmMTpd0uQH1R3gHeotyZzq-syJ7kr8qBdXhvS83K4fwcFevnW2hkEQ0or8AEGMBMPFtjnwIwuoSXOrNQYyJuE7Cg7hxzGZMmhSVq8Pwg3OTM:1n4VlY:QDBfUcwXLl93szoYmrdEigS9OxmyDXAmYBwS_Yzuc5k	2022-01-17 17:25:20.002-05
mq25dk7jhly5e0xzszazzeip3ulg2g3v	.eJxVjMsOwiAQRf-FtSG0PAou3fsNZGBmpGogKe3K-O_apAvd3nPOfYkI21ri1mmJM4qzmMTpd0uQH1R3gHeotyZzq-syJ7kr8qBdXhvS83K4fwcFevnW2hkEQ0or8AEGMBMPFtjnwIwuoSXOrNQYyJuE7Cg7hxzGZMmhSVq8Pwg3OTM:1n4Uo8:BNWg8z9EhRb3X2m1bJkeDIXXrEY8WkNfVjBWr9iSW9s	2022-01-17 16:23:56.311-05
jlonigbxzfxzpx2pnqwtplt2vdiizw55	.eJxVjDsOwjAQBe_iGllxYrNZSnrOEO3POIAcKZ8KcXcUKQW0b2be2w20rWXYFpuHUd3FJXSn35FJnlZ3og-q98nLVNd5ZL8r_qCLv01qr-vh_h0UWspec0xNJ02SqNgpCmbjCALhnHtlCUFyaHsFAmAWBDAJEVPbmxFQdp8vKL85EA:1nGonZ:wdkn8zuVRWG9pqn5na5m8geANPQCVqrg70Qa55GnOtg	2022-02-20 16:10:17.406886-05
71os7ipprl83q316tz3j3u8ji3ph4tjn	.eJxVjDsOwjAQBe_iGllxYrNZSnrOEO3POIAcKZ8KcXcUKQW0b2be2w20rWXYFpuHUd3FJXSn35FJnlZ3og-q98nLVNd5ZL8r_qCLv01qr-vh_h0UWspec0xNJ02SqNgpCmbjCALhnHtlCUFyaHsFAmAWBDAJEVPbmxFQdp8vKL85EA:1nHQzI:j_hbe9ljCYfXw2q9VBK2szVmJb8A_BaBNPPxLol8Rg4	2022-02-22 08:56:56.823499-05
zhg8a3fjhch4shckbs2ksdmbp2x947yc	.eJxVjDsOwjAQBe_iGllxYrNZSnrOEO3POIAcKZ8KcXcUKQW0b2be2w20rWXYFpuHUd3FJXSn35FJnlZ3og-q98nLVNd5ZL8r_qCLv01qr-vh_h0UWspec0xNJ02SqNgpCmbjCALhnHtlCUFyaHsFAmAWBDAJEVPbmxFQdp8vKL85EA:1nHdEE:An4nqkqbqu3JKUq2ZFpXHgKv9f_ei11UHiQCVxLQfE8	2022-02-22 22:01:10.988353-05
u3ipshxm8vp1bnc5z1ppe8lcw0qa5jgk	.eJxVjDsOwjAQBe_iGllxYrNZSnrOEO3POIAcKZ8KcXcUKQW0b2be2w20rWXYFpuHUd3FJXSn35FJnlZ3og-q98nLVNd5ZL8r_qCLv01qr-vh_h0UWspec0xNJ02SqNgpCmbjCALhnHtlCUFyaHsFAmAWBDAJEVPbmxFQdp8vKL85EA:1nIKZn:p6X32t3DJButWfi6Iq9k5ibqGBorAjlXSWc711BI6LQ	2022-02-24 20:18:19.253669-05
g7j6c52pbjzs8rmbjya6cm5qadu3tqwb	.eJxVjEEOwiAQRe_C2hBgmEJduvcMZIBBqoYmpV0Z765NutDtf-_9lwi0rTVsnZcwZXEWVonT7xgpPbjtJN-p3WaZ5rYuU5S7Ig_a5XXO_Lwc7t9BpV6_tcYSHfpCbCIqHNDGTOiTS0DKFwejVoYASBu2NCTI1jEwWTuyB6XF-wMGTjfE:1nMegG:pW7ZfnfrUBw_meWNshoupRqg01inTOQKz7Sru6AGiN4	2022-03-08 18:34:52.779651-05
01blehe4i1po7hwkdsjlk7wx72i0yl1a	.eJxVjEEOwiAQRe_C2hBgmEJduvcMZIBBqoYmpV0Z765NutDtf-_9lwi0rTVsnZcwZXEWVonT7xgpPbjtJN-p3WaZ5rYuU5S7Ig_a5XXO_Lwc7t9BpV6_tcYSHfpCbCIqHNDGTOiTS0DKFwejVoYASBu2NCTI1jEwWTuyB6XF-wMGTjfE:1nMw4E:SX4EkbyTHTooatngUrfeDq5IUsQaCMl2JpEYDMYOwDg	2022-03-09 13:08:46.311238-05
v6st4vqhlz7kj6uc3xl971mmsl4bfyln	.eJxVjEEOwiAQRe_C2hBgmEJduvcMZIBBqoYmpV0Z765NutDtf-_9lwi0rTVsnZcwZXEWVonT7xgpPbjtJN-p3WaZ5rYuU5S7Ig_a5XXO_Lwc7t9BpV6_tcYSHfpCbCIqHNDGTOiTS0DKFwejVoYASBu2NCTI1jEwWTuyB6XF-wMGTjfE:1nWoOA:fdpqcdOI1Wk83wfKxrefELt9VokdC6HEUvcvl_CYh0o	2022-04-05 19:58:10.882352-04
iisx3eftlekk48aulzg09keqxf7x389h	.eJxVjEEOwiAQRe_C2hBgmEJduvcMZIBBqoYmpV0Z765NutDtf-_9lwi0rTVsnZcwZXEWVonT7xgpPbjtJN-p3WaZ5rYuU5S7Ig_a5XXO_Lwc7t9BpV6_tcYSHfpCbCIqHNDGTOiTS0DKFwejVoYASBu2NCTI1jEwWTuyB6XF-wMGTjfE:1nUBGq:lesZ8slHb-K3KinQHKW2Do5wC1MLqSpqxrWxagZKUYo	2022-03-29 13:47:44.428043-04
2aendy71rh1rtanc0pccmyiiio27cnr8	.eJxVjEEOwiAQRe_C2hBgmEJduvcMZIBBqoYmpV0Z765NutDtf-_9lwi0rTVsnZcwZXEWVonT7xgpPbjtJN-p3WaZ5rYuU5S7Ig_a5XXO_Lwc7t9BpV6_tcYSHfpCbCIqHNDGTOiTS0DKFwejVoYASBu2NCTI1jEwWTuyB6XF-wMGTjfE:1nUUjn:ytV1JyrOQ3NPtNv1tPB2EcZL60zlhFEzISDsOGZGnnQ	2022-03-30 10:34:55.348731-04
ejsi5xaz6tcs26rdnnj7ll7vlcv3u371	e30:1nUWsH:3CClIeu6ki3gmK2j7CUOfSfFB6nyY6vaRW_eUcCzyUo	2022-03-30 12:51:49.309038-04
ogxsghf4vajfjhardkltizhf05lt2xnz	e30:1nUZQk:62gOP5mWPxXOHR0qLHC9tzfOQzG6zPYXmcY7BljWqsU	2022-03-30 15:35:34.050718-04
75db0oi62814o5kddmgkdm4g9uujut26	e30:1nUezZ:gvJLnXvteXhyQXBOxlVHHG9xaK0ZM8V46FcS6OIXlSw	2022-03-30 21:31:53.789051-04
11skeslh4l1hya8d2g6dz4y6phgn1als	e30:1nUpl7:mterSMl6fW3MqUnsgbeJB6c3ThzOPe2cVc5rsSmC4Ck	2022-03-31 09:01:41.507187-04
wj9nf6bwsf7859r0q80xvd6m63sfyhgg	.eJxVjDEOwjAQBP_iGlmOz44JJT1viPZ8Bw6gRIqTCvF3iJQC2p2ZfZke61L6tercD2JOpm3M4Xdk5IeOG5E7xttk8zQu88B2U-xOq71Mos_z7v4dFNTyreEjOgTK_iiBk7hMLkbqOlbNPhGHDK-UHJwkCIhbcIA2_poCUTDvDxYYOHI:1nUq9W:MIpun3KryCLgTrZPVZVwWVbfRLJBYH8Z_LqIHasy7lw	2022-03-31 09:26:54.069492-04
u5fz3nnwveyza7t1i7jqstpntyfh3hch	.eJxVjEEOwiAQRe_C2hBgmEJduvcMZIBBqoYmpV0Z765NutDtf-_9lwi0rTVsnZcwZXEWVonT7xgpPbjtJN-p3WaZ5rYuU5S7Ig_a5XXO_Lwc7t9BpV6_tcYSHfpCbCIqHNDGTOiTS0DKFwejVoYASBu2NCTI1jEwWTuyB6XF-wMGTjfE:1nZYNf:XeFAgKFkTDzL7xtoKDPY9_dvtOC-_mrQKQ1Li2kLak0	2022-04-13 09:28:59.797343-04
kpa736tvfdr5b4g8yc4zhpu86hskin2h	.eJxVjEEOwiAQRe_C2hBgmEJduvcMZIBBqoYmpV0Z765NutDtf-_9lwi0rTVsnZcwZXEWVonT7xgpPbjtJN-p3WaZ5rYuU5S7Ig_a5XXO_Lwc7t9BpV6_tcYSHfpCbCIqHNDGTOiTS0DKFwejVoYASBu2NCTI1jEwWTuyB6XF-wMGTjfE:1nUwKE:yBdsoRHMsy50F4HeJr2M3dhtSuR8H6dcxa6lgnjaS-A	2022-03-31 16:02:22.709735-04
vwi42w6vksozi221548k3nnyhoqa2c80	.eJxVjDsOwjAQBe_iGlmxN3YcSvqcIdr1W3AAJVI-FeLuECkFtG9m3sv0vK2l3xad-wHmbGJtTr-jcH7ouBPcebxNNk_jOg9id8UedLHdBH1eDvfvoPBSvvW1CtAQfQPS5KllUNUgChITfE21sFBWrsh759pIoW0AZBUXXGJv3h8O-jgl:1naJOE:jg93dKJJBmyOmIE4hDFueKlDCmloMnGy38kIKj4nBwY	2022-04-15 11:40:42.992178-04
mrrxqqi68x3h7lwv1iowua81k80v6fcg	.eJxVjEEOwiAQRe_C2hBgmEJduvcMZIBBqoYmpV0Z765NutDtf-_9lwi0rTVsnZcwZXEWVonT7xgpPbjtJN-p3WaZ5rYuU5S7Ig_a5XXO_Lwc7t9BpV6_tcYSHfpCbCIqHNDGTOiTS0DKFwejVoYASBu2NCTI1jEwWTuyB6XF-wMGTjfE:1nXLmL:ipAKd_-aIbDVNnbDscJI9J6qVCGn61k768Rc0nf4eYE	2022-04-07 07:37:21.199439-04
sgunhycw27qj2vydiptxa4t1fszpi3pw	.eJxVjDEOwjAQBP_iGlmOz44JJT1viPZ8Bw6gRIqTCvF3iJQC2p2ZfZke61L6tercD2JOpm3M4Xdk5IeOG5E7xttk8zQu88B2U-xOq71Mos_z7v4dFNTyreEjOgTK_iiBk7hMLkbqOlbNPhGHDK-UHJwkCIhbcIA2_poCUTDvDxYYOHI:1ndBoJ:u-P8sy3okeVio7Qf1G2VcgosueYsMjjD8nQKb31EBnI	2022-04-23 10:11:31.628302-04
\.


--
-- Data for Name: especialista_comex; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.especialista_comex (categoria, idespecialista) FROM stdin;
EQ	65
PZ	66
\.


--
-- Data for Name: factura_proveedor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.factura_proveedor (codfacturaprov, idproducto, precio, cantidad, fechafacturaprov) FROM stdin;
\.


--
-- Data for Name: historial; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.historial (idhistorial, fecha, codfacturaprov, idproducto) FROM stdin;
\.


--
-- Data for Name: notifications_notification; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.notifications_notification (id, level, unread, actor_object_id, verb, description, target_object_id, action_object_object_id, "timestamp", public, action_object_content_type_id, actor_content_type_id, recipient_id, target_content_type_id, deleted, emailed, data) FROM stdin;
9	info	t	1	Tiene solicitudes pendientes a aprobar		\N	\N	2022-02-12 07:04:23-05	t	\N	11	60	\N	f	f	\N
\.


--
-- Data for Name: pais; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pais (idpais, pais) FROM stdin;
AL	Alemania
CA	Canadá
CH	China
ES	España
FR	Francia
IT	Italia
JP	Japón
RU	Rusia
HL	Holanda
\.


--
-- Data for Name: producto; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.producto (idproducto, nombreproducto, tipo, "UM") FROM stdin;
654284009	Motoniveladora KAMAZ	EQ	U
647386006	Grua Kamaz	EQ	U
647386004	Neumáticos R16	Neumático	U
594284002	Baterías Camión	Batería	U
\.


--
-- Data for Name: proveedor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.proveedor (nomproveedor, idpais, codmincex, clasificacion, productos) FROM stdin;
\.


--
-- Data for Name: proveedor_producto; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.proveedor_producto (idproducto, codmincex, id) FROM stdin;
\.


--
-- Data for Name: proveedor_sucursal; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.proveedor_sucursal (identificador, codmincex) FROM stdin;
\.


--
-- Data for Name: provincia; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.provincia (nombre, capital, codigoprovincia, id) FROM stdin;
Pinar del Río	Pinar del Río	PR	\N
\.


--
-- Data for Name: registro_control_solicitud; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.registro_control_solicitud (numsolicitud, fechasol, numcontratocliente, numcontratoproveedor, idproducto, cantidad, estado) FROM stdin;
\.


--
-- Data for Name: reports_savedreport; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.reports_savedreport (id, date_modified, date_created, report, report_file, run_by_id) FROM stdin;
\.


--
-- Data for Name: solicitud; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.solicitud (numsolicitud, fechasol, numcontratocliente, estado, idespecialista, observaciones, valor_estimado, productos) FROM stdin;
220126	2022-04-08	20220001	Pendiente	\N	qwss22s	$50,000.00	\N
\.


--
-- Data for Name: solicitud_oferta; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.solicitud_oferta (numoferta, productos) FROM stdin;
\.


--
-- Data for Name: solicitud_producto; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.solicitud_producto (numsolicitud, idproducto, cantidad, codmincex, id) FROM stdin;
220126	647386006	5	\N	\N
\.


--
-- Data for Name: sucursal_cuba; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sucursal_cuba (identificador, direccion, email, telefono, contacto, carnet_trabajo, id) FROM stdin;
\.


--
-- Data for Name: taggit_tag; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.taggit_tag (id, name, slug) FROM stdin;
\.


--
-- Data for Name: taggit_taggeditem; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.taggit_taggeditem (id, object_id, content_type_id, tag_id) FROM stdin;
\.


--
-- Data for Name: user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."user" (user_id, user_title, user_description) FROM stdin;
\.


--
-- Data for Name: usuarios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuarios (user_name, password) FROM stdin;
admin	admin
\.


--
-- Data for Name: valor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.valor (max) FROM stdin;
220006
\.


--
-- Name: Solicitudes_backupview_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public."Solicitudes_backupview_id_seq"', 1, false);


--
-- Name: Trazas_logentry_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public."Trazas_logentry_id_seq"', 1, false);


--
-- Name: admin_interface_theme_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.admin_interface_theme_id_seq', 5, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 8, true);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 539, true);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 364, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 37, true);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 68, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 65, true);


--
-- Name: dash_stats_criteria_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.dash_stats_criteria_id_seq', 1, false);


--
-- Name: dashboard_stats_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.dashboard_stats_id_seq', 2, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 772, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 91, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 131, true);


--
-- Name: historial_idhistorial_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.historial_idhistorial_seq', 1, false);


--
-- Name: notifications_notification_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.notifications_notification_id_seq', 9, true);


--
-- Name: reports_savedreport_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.reports_savedreport_id_seq', 1, true);


--
-- Name: solicitud_numsolicitud_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.solicitud_numsolicitud_seq', 220128, true);


--
-- Name: taggit_tag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.taggit_tag_id_seq', 1, false);


--
-- Name: taggit_taggeditem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.taggit_taggeditem_id_seq', 1, false);


--
-- Name: user_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_user_id_seq', 1, false);


--
-- Name: COMEX_solicitudoferta COMEX_solicitudoferta_pkey; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public."COMEX_solicitudoferta"
    ADD CONSTRAINT "COMEX_solicitudoferta_pkey" PRIMARY KEY (idnumoferta);


--
-- Name: Solicitudes_backupview Solicitudes_backupview_pkey; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public."Solicitudes_backupview"
    ADD CONSTRAINT "Solicitudes_backupview_pkey" PRIMARY KEY (id);


--
-- Name: Trazas_logentry Trazas_logentry_pkey; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public."Trazas_logentry"
    ADD CONSTRAINT "Trazas_logentry_pkey" PRIMARY KEY (id);


--
-- Name: admin_interface_theme admin_interface_theme_name_30bda70f_uniq; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.admin_interface_theme
    ADD CONSTRAINT admin_interface_theme_name_30bda70f_uniq UNIQUE (name);


--
-- Name: admin_interface_theme admin_interface_theme_pkey; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.admin_interface_theme
    ADD CONSTRAINT admin_interface_theme_pkey PRIMARY KEY (id);


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
-- Name: casa_matriz casa_matriz_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.casa_matriz
    ADD CONSTRAINT casa_matriz_pkey PRIMARY KEY (identificador);


--
-- Name: provincia codigoprovincia; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.provincia
    ADD CONSTRAINT codigoprovincia UNIQUE (codigoprovincia);


--
-- Name: datos contacto_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.datos
    ADD CONSTRAINT contacto_pk PRIMARY KEY (identificador);


--
-- Name: dash_stats_criteria dash_stats_criteria_pkey; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.dash_stats_criteria
    ADD CONSTRAINT dash_stats_criteria_pkey PRIMARY KEY (id);


--
-- Name: dashboard_stats dashboard_stats_graph_key_key; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.dashboard_stats
    ADD CONSTRAINT dashboard_stats_graph_key_key UNIQUE (graph_key);


--
-- Name: dashboard_stats dashboard_stats_pkey; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.dashboard_stats
    ADD CONSTRAINT dashboard_stats_pkey PRIMARY KEY (id);


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
-- Name: especialista_comex especialista_pk; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.especialista_comex
    ADD CONSTRAINT especialista_pk PRIMARY KEY (idespecialista);


--
-- Name: producto nombreproducto; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.producto
    ADD CONSTRAINT nombreproducto UNIQUE (nombreproducto);


--
-- Name: proveedor nomproveedor; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.proveedor
    ADD CONSTRAINT nomproveedor UNIQUE (nomproveedor);


--
-- Name: notifications_notification notifications_notification_pkey; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.notifications_notification
    ADD CONSTRAINT notifications_notification_pkey PRIMARY KEY (id);


--
-- Name: solicitud_oferta numoferta; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.solicitud_oferta
    ADD CONSTRAINT numoferta UNIQUE (numoferta);


--
-- Name: solicitud numsolicitud; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.solicitud
    ADD CONSTRAINT numsolicitud UNIQUE (numsolicitud);


--
-- Name: proveedor_sucursal p_s_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.proveedor_sucursal
    ADD CONSTRAINT p_s_pk PRIMARY KEY (identificador, codmincex);


--
-- Name: almacen pk_almacen; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.almacen
    ADD CONSTRAINT pk_almacen PRIMARY KEY (idalmacen);


--
-- Name: cliente pk_cliente; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT pk_cliente PRIMARY KEY (numcontratocliente);


--
-- Name: historial pk_historial; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.historial
    ADD CONSTRAINT pk_historial PRIMARY KEY (idhistorial, codfacturaprov);


--
-- Name: pais pk_pais; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pais
    ADD CONSTRAINT pk_pais PRIMARY KEY (idpais);


--
-- Name: producto pk_producto; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.producto
    ADD CONSTRAINT pk_producto PRIMARY KEY (idproducto);


--
-- Name: user pk_user; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."user"
    ADD CONSTRAINT pk_user PRIMARY KEY (user_id);


--
-- Name: usuarios pk_usuarios; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT pk_usuarios PRIMARY KEY (user_name);


--
-- Name: proveedor proveedor_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.proveedor
    ADD CONSTRAINT proveedor_pk PRIMARY KEY (codmincex);


--
-- Name: proveedor_producto proveedor_producto_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.proveedor_producto
    ADD CONSTRAINT proveedor_producto_pk PRIMARY KEY (codmincex, idproducto);


--
-- Name: provincia provincia_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.provincia
    ADD CONSTRAINT provincia_pkey PRIMARY KEY (codigoprovincia);


--
-- Name: reports_savedreport reports_savedreport_pkey; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.reports_savedreport
    ADD CONSTRAINT reports_savedreport_pkey PRIMARY KEY (id);


--
-- Name: solicitud_producto soicitud_producto_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.solicitud_producto
    ADD CONSTRAINT soicitud_producto_unique UNIQUE (idproducto) INCLUDE (numsolicitud);


--
-- Name: solicitud_oferta solicitud_oferta_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.solicitud_oferta
    ADD CONSTRAINT solicitud_oferta_pk PRIMARY KEY (numoferta);


--
-- Name: solicitud solicitud_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.solicitud
    ADD CONSTRAINT solicitud_pk PRIMARY KEY (numsolicitud, numcontratocliente);


--
-- Name: solicitud_producto solicitud_producto_idproducto_a7faf533_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.solicitud_producto
    ADD CONSTRAINT solicitud_producto_idproducto_a7faf533_uniq UNIQUE (idproducto);


--
-- Name: solicitud_producto solicitud_producto_numsolicitud_a0709dd6_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.solicitud_producto
    ADD CONSTRAINT solicitud_producto_numsolicitud_a0709dd6_uniq UNIQUE (numsolicitud);


--
-- Name: solicitud_producto solicitud_producto_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.solicitud_producto
    ADD CONSTRAINT solicitud_producto_pkey PRIMARY KEY (numsolicitud, idproducto);


--
-- Name: sucursal_cuba sucursal_cuba_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sucursal_cuba
    ADD CONSTRAINT sucursal_cuba_pkey PRIMARY KEY (identificador);


--
-- Name: taggit_tag taggit_tag_name_key; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.taggit_tag
    ADD CONSTRAINT taggit_tag_name_key UNIQUE (name);


--
-- Name: taggit_tag taggit_tag_pkey; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.taggit_tag
    ADD CONSTRAINT taggit_tag_pkey PRIMARY KEY (id);


--
-- Name: taggit_tag taggit_tag_slug_key; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.taggit_tag
    ADD CONSTRAINT taggit_tag_slug_key UNIQUE (slug);


--
-- Name: taggit_taggeditem taggit_taggeditem_content_type_id_object_i_4bb97a8e_uniq; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_content_type_id_object_i_4bb97a8e_uniq UNIQUE (content_type_id, object_id, tag_id);


--
-- Name: taggit_taggeditem taggit_taggeditem_pkey; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_pkey PRIMARY KEY (id);


--
-- Name: admin_interface_theme_name_30bda70f_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX admin_interface_theme_name_30bda70f_like ON public.admin_interface_theme USING btree (name varchar_pattern_ops);


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
-- Name: casa_matriz_codmincex_bd5fc4f6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX casa_matriz_codmincex_bd5fc4f6 ON public.casa_matriz USING btree (codmincex);


--
-- Name: casa_matriz_codmincex_bd5fc4f6_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX casa_matriz_codmincex_bd5fc4f6_like ON public.casa_matriz USING btree (codmincex varchar_pattern_ops);


--
-- Name: dash_stats_criteria_criteria_name_7fe7ae1e; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX dash_stats_criteria_criteria_name_7fe7ae1e ON public.dash_stats_criteria USING btree (criteria_name);


--
-- Name: dash_stats_criteria_criteria_name_7fe7ae1e_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX dash_stats_criteria_criteria_name_7fe7ae1e_like ON public.dash_stats_criteria USING btree (criteria_name varchar_pattern_ops);


--
-- Name: dashboard_stats_default_multiseries_criteria_id_1c00740c; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX dashboard_stats_default_multiseries_criteria_id_1c00740c ON public.dashboard_stats USING btree (default_multiseries_criteria_id);


--
-- Name: dashboard_stats_graph_key_4256e63f_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX dashboard_stats_graph_key_4256e63f_like ON public.dashboard_stats USING btree (graph_key varchar_pattern_ops);


--
-- Name: dashboard_stats_graph_title_99e6d271; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX dashboard_stats_graph_title_99e6d271 ON public.dashboard_stats USING btree (graph_title);


--
-- Name: dashboard_stats_graph_title_99e6d271_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX dashboard_stats_graph_title_99e6d271_like ON public.dashboard_stats USING btree (graph_title varchar_pattern_ops);


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
-- Name: fk_proveedor_has_producto_producto1_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fk_proveedor_has_producto_producto1_idx ON public.factura_proveedor USING btree (idproducto);


--
-- Name: fk_table1_pais1_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fk_table1_pais1_idx ON public.proveedor USING btree (idpais);


--
-- Name: fki_numcontratoproveedor; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_numcontratoproveedor ON public.solicitud USING btree (numsolicitud);


--
-- Name: idx_idhistorial; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX idx_idhistorial ON public.historial USING btree (idhistorial);


--
-- Name: notifications_notification_action_object_content_type_7d2b8ee9; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX notifications_notification_action_object_content_type_7d2b8ee9 ON public.notifications_notification USING btree (action_object_content_type_id);


--
-- Name: notifications_notification_actor_content_type_id_0c69d7b7; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX notifications_notification_actor_content_type_id_0c69d7b7 ON public.notifications_notification USING btree (actor_content_type_id);


--
-- Name: notifications_notification_deleted_b32b69e6; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX notifications_notification_deleted_b32b69e6 ON public.notifications_notification USING btree (deleted);


--
-- Name: notifications_notification_emailed_23a5ad81; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX notifications_notification_emailed_23a5ad81 ON public.notifications_notification USING btree (emailed);


--
-- Name: notifications_notification_public_1bc30b1c; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX notifications_notification_public_1bc30b1c ON public.notifications_notification USING btree (public);


--
-- Name: notifications_notification_recipient_id_d055f3f0; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX notifications_notification_recipient_id_d055f3f0 ON public.notifications_notification USING btree (recipient_id);


--
-- Name: notifications_notification_recipient_id_unread_253aadc9_idx; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX notifications_notification_recipient_id_unread_253aadc9_idx ON public.notifications_notification USING btree (recipient_id, unread);


--
-- Name: notifications_notification_target_content_type_id_ccb24d88; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX notifications_notification_target_content_type_id_ccb24d88 ON public.notifications_notification USING btree (target_content_type_id);


--
-- Name: notifications_notification_timestamp_6a797bad; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX notifications_notification_timestamp_6a797bad ON public.notifications_notification USING btree ("timestamp");


--
-- Name: notifications_notification_unread_cce4be30; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX notifications_notification_unread_cce4be30 ON public.notifications_notification USING btree (unread);


--
-- Name: provincia_idprovincia_aa96c8e0_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX provincia_idprovincia_aa96c8e0_like ON public.provincia USING btree (codigoprovincia varchar_pattern_ops);


--
-- Name: reports_savedreport_run_by_id_0e49a3ac; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX reports_savedreport_run_by_id_0e49a3ac ON public.reports_savedreport USING btree (run_by_id);


--
-- Name: taggit_tag_name_58eb2ed9_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX taggit_tag_name_58eb2ed9_like ON public.taggit_tag USING btree (name varchar_pattern_ops);


--
-- Name: taggit_tag_slug_6be58b2c_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX taggit_tag_slug_6be58b2c_like ON public.taggit_tag USING btree (slug varchar_pattern_ops);


--
-- Name: taggit_taggeditem_content_type_id_9957a03c; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX taggit_taggeditem_content_type_id_9957a03c ON public.taggit_taggeditem USING btree (content_type_id);


--
-- Name: taggit_taggeditem_content_type_id_object_id_196cc965_idx; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX taggit_taggeditem_content_type_id_object_id_196cc965_idx ON public.taggit_taggeditem USING btree (content_type_id, object_id);


--
-- Name: taggit_taggeditem_object_id_e2d7d1df; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX taggit_taggeditem_object_id_e2d7d1df ON public.taggit_taggeditem USING btree (object_id);


--
-- Name: taggit_taggeditem_tag_id_f4f5b767; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX taggit_taggeditem_tag_id_f4f5b767 ON public.taggit_taggeditem USING btree (tag_id);


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
-- Name: casa_matriz casa_matriz_codmincex_bd5fc4f6_fk_proveedor_codmincex; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.casa_matriz
    ADD CONSTRAINT casa_matriz_codmincex_bd5fc4f6_fk_proveedor_codmincex FOREIGN KEY (codmincex) REFERENCES public.proveedor(codmincex) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: solicitud cliente; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.solicitud
    ADD CONSTRAINT cliente FOREIGN KEY (numcontratocliente) REFERENCES public.cliente(numcontratocliente) DEFERRABLE;


--
-- Name: proveedor_sucursal codmincex; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.proveedor_sucursal
    ADD CONSTRAINT codmincex FOREIGN KEY (codmincex) REFERENCES public.proveedor(codmincex);


--
-- Name: proveedor_producto codmincex; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.proveedor_producto
    ADD CONSTRAINT codmincex FOREIGN KEY (codmincex) REFERENCES public.proveedor(codmincex);


--
-- Name: solicitud_producto codmincex; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.solicitud_producto
    ADD CONSTRAINT codmincex FOREIGN KEY (codmincex) REFERENCES public.proveedor(codmincex);


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
-- Name: factura_proveedor fk_proveedor_has_producto_producto1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.factura_proveedor
    ADD CONSTRAINT fk_proveedor_has_producto_producto1 FOREIGN KEY (idproducto) REFERENCES public.producto(idproducto) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: proveedor fk_table1_pais1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.proveedor
    ADD CONSTRAINT fk_table1_pais1 FOREIGN KEY (idpais) REFERENCES public.pais(idpais);


--
-- Name: proveedor_sucursal identificador; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.proveedor_sucursal
    ADD CONSTRAINT identificador FOREIGN KEY (identificador) REFERENCES public.sucursal_cuba(identificador);


--
-- Name: especialista_comex idespecialista; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.especialista_comex
    ADD CONSTRAINT idespecialista FOREIGN KEY (idespecialista) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: proveedor_producto idproducto; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.proveedor_producto
    ADD CONSTRAINT idproducto FOREIGN KEY (idproducto) REFERENCES public.producto(idproducto);


--
-- Name: notifications_notification notifications_notifi_action_object_conten_7d2b8ee9_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.notifications_notification
    ADD CONSTRAINT notifications_notifi_action_object_conten_7d2b8ee9_fk_django_co FOREIGN KEY (action_object_content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: notifications_notification notifications_notifi_actor_content_type_i_0c69d7b7_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.notifications_notification
    ADD CONSTRAINT notifications_notifi_actor_content_type_i_0c69d7b7_fk_django_co FOREIGN KEY (actor_content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: notifications_notification notifications_notifi_recipient_id_d055f3f0_fk_auth_user; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.notifications_notification
    ADD CONSTRAINT notifications_notifi_recipient_id_d055f3f0_fk_auth_user FOREIGN KEY (recipient_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: notifications_notification notifications_notifi_target_content_type__ccb24d88_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.notifications_notification
    ADD CONSTRAINT notifications_notifi_target_content_type__ccb24d88_fk_django_co FOREIGN KEY (target_content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: solicitud_oferta productos; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.solicitud_oferta
    ADD CONSTRAINT productos FOREIGN KEY (productos) REFERENCES public.solicitud_producto(idproducto);


--
-- Name: solicitud productos; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.solicitud
    ADD CONSTRAINT productos FOREIGN KEY (productos) REFERENCES public.solicitud_producto(idproducto);


--
-- Name: casa_matriz proveedor; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.casa_matriz
    ADD CONSTRAINT proveedor FOREIGN KEY (proveedor) REFERENCES public.proveedor(codmincex);


--
-- Name: reports_savedreport reports_savedreport_run_by_id_0e49a3ac_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.reports_savedreport
    ADD CONSTRAINT reports_savedreport_run_by_id_0e49a3ac_fk_auth_user_id FOREIGN KEY (run_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: solicitud_producto solicitud_producto_idproducto_a7faf533_fk_producto_idproducto; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.solicitud_producto
    ADD CONSTRAINT solicitud_producto_idproducto_a7faf533_fk_producto_idproducto FOREIGN KEY (idproducto) REFERENCES public.producto(idproducto) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: solicitud_producto solicitud_producto_numsolicitud_a0709dd6_fk_solicitud; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.solicitud_producto
    ADD CONSTRAINT solicitud_producto_numsolicitud_a0709dd6_fk_solicitud FOREIGN KEY (numsolicitud) REFERENCES public.solicitud(numsolicitud) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: taggit_taggeditem taggit_taggeditem_content_type_id_9957a03c_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_content_type_id_9957a03c_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: taggit_taggeditem taggit_taggeditem_tag_id_f4f5b767_fk_taggit_tag_id; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_tag_id_f4f5b767_fk_taggit_tag_id FOREIGN KEY (tag_id) REFERENCES public.taggit_tag(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

