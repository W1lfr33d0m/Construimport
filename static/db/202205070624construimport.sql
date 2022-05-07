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
ALTER TABLE ONLY public.solicitud_ppa DROP CONSTRAINT solicitud_ppa_username_bda45af5_fk_auth_user_id;
ALTER TABLE ONLY public.solicitud_ppa_proxy DROP CONSTRAINT solicitud_ppa_proxy_numsolicitud_b3c4e117_fk_solicitud;
ALTER TABLE ONLY public.solicitud_ppa_proxy DROP CONSTRAINT solicitud_ppa_proxy_idproducto_efc8a761_fk_ppa_idproducto;
ALTER TABLE ONLY public.solicitud_ppa_proveedor DROP CONSTRAINT solicitud_ppa_provee_numsolicitud_61e29922_fk_solicitud;
ALTER TABLE ONLY public.solicitud_ppa_proveedor DROP CONSTRAINT solicitud_ppa_provee_codmincex_id_4cab253e_fk_proveedor;
ALTER TABLE ONLY public.solicitud_ppa DROP CONSTRAINT solicitud_ppa_numcontratocliente_cd73b766_fk;
ALTER TABLE ONLY public.solicitud_ppa DROP CONSTRAINT solicitud_ppa_idproducto_5d5752e5_fk_equipo_idproducto;
ALTER TABLE ONLY public.solicitud_neumatico DROP CONSTRAINT solicitud_neumatico_username_ce90dce5_fk_auth_user_id;
ALTER TABLE ONLY public.solicitud_neumatico DROP CONSTRAINT solicitud_neumatico_numcontratocliente_e9e0724c_fk;
ALTER TABLE ONLY public.solicitud_neumatico_proxy DROP CONSTRAINT solicitud_neumatico__numsolicitud_3ebfa720_fk_solicitud;
ALTER TABLE ONLY public.solicitud_neumatico_proveedor DROP CONSTRAINT solicitud_neumatico__numsolicitud_23890b23_fk_solicitud;
ALTER TABLE ONLY public.solicitud_neumatico_proxy DROP CONSTRAINT solicitud_neumatico__idproducto_264bd634_fk_neumatico;
ALTER TABLE ONLY public.solicitud_neumatico_proveedor DROP CONSTRAINT solicitud_neumatico__codmincex_id_920b25fe_fk_proveedor;
ALTER TABLE ONLY public.solicitud_equipo DROP CONSTRAINT solicitud_equipo_username_b32e7bdd_fk_auth_user_id;
ALTER TABLE ONLY public.solicitud_equipo_proxy DROP CONSTRAINT solicitud_equipo_proxy_idproducto_08c7c6e0_fk_equipo_idproducto;
ALTER TABLE ONLY public.solicitud_equipo_proxy DROP CONSTRAINT solicitud_equipo_pro_numsolicitud_812d2e09_fk_solicitud;
ALTER TABLE ONLY public.solicitud_equipo_proveedor DROP CONSTRAINT solicitud_equipo_pro_numsolicitud_00805827_fk_solicitud;
ALTER TABLE ONLY public.solicitud_equipo_proveedor DROP CONSTRAINT solicitud_equipo_pro_codmincex_187ce024_fk_proveedor;
ALTER TABLE ONLY public.solicitud_equipo DROP CONSTRAINT solicitud_equipo_numcontratocliente_08e73429_fk;
ALTER TABLE ONLY public.solicitud_bateria DROP CONSTRAINT solicitud_bateria_username_bf683e7b_fk_auth_user_id;
ALTER TABLE ONLY public.solicitud_bateria_proxy DROP CONSTRAINT solicitud_bateria_pr_numsolicitud_94914016_fk_solicitud;
ALTER TABLE ONLY public.solicitud_bateria_proveedor DROP CONSTRAINT solicitud_bateria_pr_numsolicitud_6535162f_fk_solicitud;
ALTER TABLE ONLY public.solicitud_bateria_proxy DROP CONSTRAINT solicitud_bateria_pr_idproducto_d16d2d8c_fk_bateria_i;
ALTER TABLE ONLY public.solicitud_bateria_proveedor DROP CONSTRAINT solicitud_bateria_pr_codmincex_id_c9dc75e4_fk_proveedor;
ALTER TABLE ONLY public.solicitud_bateria DROP CONSTRAINT solicitud_bateria_numcontratocliente_726f79a5_fk;
ALTER TABLE ONLY public.reports_savedreport DROP CONSTRAINT reports_savedreport_run_by_id_0e49a3ac_fk_auth_user_id;
ALTER TABLE ONLY public.proveedor_marca DROP CONSTRAINT proveedor_marca_proveedor_id_81518723_fk_proveedor_codmincex;
ALTER TABLE ONLY public.proveedor_marca DROP CONSTRAINT proveedor_marca_marca_id_ae2ad161_fk_marca_codigomarca;
ALTER TABLE ONLY public.proveedor DROP CONSTRAINT proveedor_codigopais_ba6f5c0d_fk_pais_codigopais;
ALTER TABLE ONLY public.ppa DROP CONSTRAINT ppa_marca_id_ce5f7e04_fk_marca_codigomarca;
ALTER TABLE ONLY public.ppa_equipo DROP CONSTRAINT ppa_equipo_ppa_id_323cec64_fk_ppa_idproducto;
ALTER TABLE ONLY public.ppa_equipo DROP CONSTRAINT ppa_equipo_equipo_id_c9d1cddb_fk_equipo_idproducto;
ALTER TABLE ONLY public.oferta_ppa DROP CONSTRAINT oferta_ppa_username_beaea642_fk_auth_user_id;
ALTER TABLE ONLY public.oferta_ppa_proxy DROP CONSTRAINT oferta_ppa_proxy_numsolicitud_2bc9954c_fk_oferta_ppa_numero;
ALTER TABLE ONLY public.oferta_ppa_proxy DROP CONSTRAINT oferta_ppa_proxy_idproducto_b1cd6301_fk_solicitud_ppa_proxy_id;
ALTER TABLE ONLY public.oferta_ppa DROP CONSTRAINT oferta_ppa_numsolicitud_f8ec6731_fk_solicitud_ppa_numsolicitud;
ALTER TABLE ONLY public.oferta_ppa DROP CONSTRAINT oferta_ppa_idpais_45485d9a_fk_pais_codigopais;
ALTER TABLE ONLY public.oferta_ppa DROP CONSTRAINT oferta_ppa_codmincex_f9672369_fk_proveedor_codmincex;
ALTER TABLE ONLY public.oferta_neumaticos DROP CONSTRAINT oferta_neumaticos_username_6bec8fee_fk_auth_user_id;
ALTER TABLE ONLY public.oferta_neumaticos DROP CONSTRAINT oferta_neumaticos_numsolicitud_a26052af_fk_solicitud;
ALTER TABLE ONLY public.oferta_neumaticos DROP CONSTRAINT oferta_neumaticos_idpais_3d47da7c_fk_pais_codigopais;
ALTER TABLE ONLY public.oferta_neumaticos DROP CONSTRAINT oferta_neumaticos_codmincex_23b3e25a_fk_proveedor_codmincex;
ALTER TABLE ONLY public.oferta_neumatico_proxy DROP CONSTRAINT oferta_neumatico_pro_numsolicitud_040373c2_fk_oferta_ne;
ALTER TABLE ONLY public.oferta_neumatico_proxy DROP CONSTRAINT oferta_neumatico_pro_idproducto_dc503917_fk_solicitud;
ALTER TABLE ONLY public.oferta_equipo DROP CONSTRAINT oferta_equipo_username_21a56f58_fk_auth_user_id;
ALTER TABLE ONLY public.oferta_equipo_proxy DROP CONSTRAINT oferta_equipo_proxy_idproducto_ff77c35c_fk_solicitud;
ALTER TABLE ONLY public.oferta_equipo DROP CONSTRAINT oferta_equipo_numsolicitud_cf512716_fk_solicitud;
ALTER TABLE ONLY public.oferta_equipo DROP CONSTRAINT oferta_equipo_idpais_25734604_fk_pais_codigopais;
ALTER TABLE ONLY public.oferta_equipo DROP CONSTRAINT oferta_equipo_codmincex_2e6e45cf_fk_proveedor_codmincex;
ALTER TABLE ONLY public.oferta_baterias DROP CONSTRAINT oferta_baterias_username_7302a0b5_fk_auth_user_id;
ALTER TABLE ONLY public.oferta_baterias DROP CONSTRAINT oferta_baterias_numsolicitud_3f328d51_fk_solicitud;
ALTER TABLE ONLY public.oferta_baterias DROP CONSTRAINT oferta_baterias_idpais_e53e2c7b_fk_pais_codigopais;
ALTER TABLE ONLY public.oferta_baterias DROP CONSTRAINT oferta_baterias_codmincex_9f1a49d3_fk_proveedor_codmincex;
ALTER TABLE ONLY public.oferta_bateria_proxy DROP CONSTRAINT oferta_bateria_proxy_numsolicitud_52a169f8_fk_oferta_ba;
ALTER TABLE ONLY public.oferta_bateria_proxy DROP CONSTRAINT oferta_bateria_proxy_idproducto_b69ad312_fk_solicitud;
ALTER TABLE ONLY public.neumatico DROP CONSTRAINT neumatico_marca_id_e2843a2d_fk_marca_codigomarca;
ALTER TABLE ONLY public.equipo DROP CONSTRAINT equipo_marca_id_aef47c38_fk_marca_codigomarca;
ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
ALTER TABLE ONLY public.cliente DROP CONSTRAINT cliente_codigoprovincia_2ef760d6_fk_provincia_codigoprovincia;
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
DROP INDEX public.solicitud_ppa_username_bda45af5;
DROP INDEX public.solicitud_ppa_proxy_numsolicitud_b3c4e117;
DROP INDEX public.solicitud_ppa_proxy_idproducto_efc8a761_like;
DROP INDEX public.solicitud_ppa_proxy_idproducto_efc8a761;
DROP INDEX public.solicitud_ppa_proveedor_numsolicitud_61e29922;
DROP INDEX public.solicitud_ppa_proveedor_codmincex_id_4cab253e_like;
DROP INDEX public.solicitud_ppa_proveedor_codmincex_id_4cab253e;
DROP INDEX public.solicitud_ppa_numcontratocliente_cd73b766;
DROP INDEX public.solicitud_ppa_idproducto_5d5752e5_like;
DROP INDEX public.solicitud_ppa_idproducto_5d5752e5;
DROP INDEX public.solicitud_neumatico_username_ce90dce5;
DROP INDEX public.solicitud_neumatico_proxy_numsolicitud_3ebfa720;
DROP INDEX public.solicitud_neumatico_proxy_idproducto_264bd634_like;
DROP INDEX public.solicitud_neumatico_proveedor_numsolicitud_23890b23;
DROP INDEX public.solicitud_neumatico_proveedor_codmincex_id_920b25fe_like;
DROP INDEX public.solicitud_neumatico_numcontratocliente_e9e0724c;
DROP INDEX public.solicitud_equipo_username_b32e7bdd;
DROP INDEX public.solicitud_equipo_proxy_numsolicitud_812d2e09;
DROP INDEX public.solicitud_equipo_proxy_idproducto_08c7c6e0_like;
DROP INDEX public.solicitud_equipo_proxy_idproducto_08c7c6e0;
DROP INDEX public.solicitud_equipo_proveedor_numsolicitud_00805827;
DROP INDEX public.solicitud_equipo_proveedor_codmincex_187ce024_like;
DROP INDEX public.solicitud_equipo_proveedor_codmincex_187ce024;
DROP INDEX public.solicitud_equipo_numcontratocliente_08e73429;
DROP INDEX public.solicitud_bateria_username_bf683e7b;
DROP INDEX public.solicitud_bateria_proxy_numsolicitud_94914016;
DROP INDEX public.solicitud_bateria_proxy_idproducto_d16d2d8c_like;
DROP INDEX public.solicitud_bateria_proveedor_numsolicitud_6535162f;
DROP INDEX public.solicitud_bateria_proveedor_codmincex_id_c9dc75e4_like;
DROP INDEX public.solicitud_bateria_numcontratocliente_726f79a5;
DROP INDEX public.reports_savedreport_run_by_id_0e49a3ac;
DROP INDEX public.provincia_codigoprovincia_faf2e195_like;
DROP INDEX public.proveedor_marca_proveedor_id_81518723_like;
DROP INDEX public.proveedor_marca_proveedor_id_81518723;
DROP INDEX public.proveedor_marca_marca_id_ae2ad161;
DROP INDEX public.proveedor_codmincex_e9a8c16d_like;
DROP INDEX public.proveedor_codigopais_ba6f5c0d_like;
DROP INDEX public.proveedor_codigopais_ba6f5c0d;
DROP INDEX public.ppa_marca_id_ce5f7e04;
DROP INDEX public.ppa_idproducto_ae8ec065_like;
DROP INDEX public.ppa_equipo_ppa_id_323cec64_like;
DROP INDEX public.ppa_equipo_ppa_id_323cec64;
DROP INDEX public.ppa_equipo_equipo_id_c9d1cddb_like;
DROP INDEX public.ppa_equipo_equipo_id_c9d1cddb;
DROP INDEX public.pais_codigopais_f394d5a9_like;
DROP INDEX public.oferta_ppa_proxy_numsolicitud_2bc9954c;
DROP INDEX public.oferta_ppa_proxy_idproducto_b1cd6301;
DROP INDEX public.oferta_ppa_numsolicitud_f8ec6731;
DROP INDEX public.oferta_ppa_idpais_45485d9a_like;
DROP INDEX public.oferta_ppa_idpais_45485d9a;
DROP INDEX public.oferta_ppa_idespecialista_18cc95cc;
DROP INDEX public.oferta_ppa_codmincex_f9672369_like;
DROP INDEX public.oferta_ppa_codmincex_f9672369;
DROP INDEX public.oferta_neumaticos_numsolicitud_a26052af;
DROP INDEX public.oferta_neumaticos_idpais_3d47da7c_like;
DROP INDEX public.oferta_neumaticos_idpais_3d47da7c;
DROP INDEX public.oferta_neumaticos_idespecialista_687bbd06;
DROP INDEX public.oferta_neumaticos_codmincex_23b3e25a_like;
DROP INDEX public.oferta_neumaticos_codmincex_23b3e25a;
DROP INDEX public.oferta_neumatico_proxy_numsolicitud_040373c2;
DROP INDEX public.oferta_neumatico_proxy_idproducto_dc503917;
DROP INDEX public.oferta_equipo_proxy_numsolicitud_3cc31e99;
DROP INDEX public.oferta_equipo_proxy_idproducto_ff77c35c;
DROP INDEX public.oferta_equipo_numsolicitud_cf512716;
DROP INDEX public.oferta_equipo_idpais_25734604_like;
DROP INDEX public.oferta_equipo_idpais_25734604;
DROP INDEX public.oferta_equipo_idespecialista_ba0415b9;
DROP INDEX public.oferta_equipo_codmincex_2e6e45cf_like;
DROP INDEX public.oferta_equipo_codmincex_2e6e45cf;
DROP INDEX public.oferta_baterias_numsolicitud_3f328d51;
DROP INDEX public.oferta_baterias_idpais_e53e2c7b_like;
DROP INDEX public.oferta_baterias_idpais_e53e2c7b;
DROP INDEX public.oferta_baterias_idespecialista_07f81b69;
DROP INDEX public.oferta_baterias_codmincex_9f1a49d3_like;
DROP INDEX public.oferta_baterias_codmincex_9f1a49d3;
DROP INDEX public.oferta_bateria_proxy_numsolicitud_52a169f8;
DROP INDEX public.oferta_bateria_proxy_idproducto_b69ad312;
DROP INDEX public.neumatico_marca_id_e2843a2d;
DROP INDEX public.neumatico_idproducto_9eec9617_like;
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
ALTER TABLE ONLY public.solicitud_neumatico_proxy DROP CONSTRAINT solicitud_neumatico_proxy_idproducto_264bd634_uniq;
ALTER TABLE ONLY public.solicitud_neumatico_proveedor DROP CONSTRAINT solicitud_neumatico_proveedor_pkey;
ALTER TABLE ONLY public.solicitud_neumatico_proveedor DROP CONSTRAINT solicitud_neumatico_proveedor_codmincex_id_920b25fe_uniq;
ALTER TABLE ONLY public.solicitud_neumatico DROP CONSTRAINT solicitud_neumatico_pkey;
ALTER TABLE ONLY public.solicitud_equipo_proxy DROP CONSTRAINT solicitud_equipo_proxy_pkey;
ALTER TABLE ONLY public.solicitud_equipo_proveedor DROP CONSTRAINT solicitud_equipo_proveedor_pkey;
ALTER TABLE ONLY public.solicitud_equipo DROP CONSTRAINT solicitud_equipo_pkey;
ALTER TABLE ONLY public.solicitud_bateria_proxy DROP CONSTRAINT solicitud_bateria_proxy_pkey;
ALTER TABLE ONLY public.solicitud_bateria_proxy DROP CONSTRAINT solicitud_bateria_proxy_idproducto_d16d2d8c_uniq;
ALTER TABLE ONLY public.solicitud_bateria_proveedor DROP CONSTRAINT solicitud_bateria_proveedor_pkey;
ALTER TABLE ONLY public.solicitud_bateria_proveedor DROP CONSTRAINT solicitud_bateria_proveedor_codmincex_id_c9dc75e4_uniq;
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
ALTER TABLE ONLY public.oferta_ppa_proxy DROP CONSTRAINT oferta_ppa_proxy_pkey;
ALTER TABLE ONLY public.oferta_ppa DROP CONSTRAINT oferta_ppa_pkey;
ALTER TABLE ONLY public.oferta_neumaticos DROP CONSTRAINT oferta_neumaticos_pkey;
ALTER TABLE ONLY public.oferta_neumatico_proxy DROP CONSTRAINT oferta_neumatico_proxy_pkey;
ALTER TABLE ONLY public.oferta_equipo_proxy DROP CONSTRAINT oferta_equipo_proxy_pkey;
ALTER TABLE ONLY public.oferta_equipo DROP CONSTRAINT oferta_equipo_pkey;
ALTER TABLE ONLY public.oferta_baterias DROP CONSTRAINT oferta_baterias_pkey;
ALTER TABLE ONLY public.oferta_bateria_proxy DROP CONSTRAINT oferta_bateria_proxy_pkey;
ALTER TABLE ONLY public.neumatico DROP CONSTRAINT neumatico_pkey;
ALTER TABLE ONLY public.marca DROP CONSTRAINT marca_pkey;
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
ALTER TABLE public.oferta_ppa_proxy ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.oferta_ppa ALTER COLUMN numero DROP DEFAULT;
ALTER TABLE public.oferta_neumaticos ALTER COLUMN numero DROP DEFAULT;
ALTER TABLE public.oferta_neumatico_proxy ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.oferta_equipo_proxy ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.oferta_equipo ALTER COLUMN numero DROP DEFAULT;
ALTER TABLE public.oferta_baterias ALTER COLUMN numero DROP DEFAULT;
ALTER TABLE public.oferta_bateria_proxy ALTER COLUMN id DROP DEFAULT;
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
DROP SEQUENCE public.oferta_ppa_proxy_id_seq;
DROP TABLE public.oferta_ppa_proxy;
DROP SEQUENCE public.oferta_ppa_numero_seq;
DROP TABLE public.oferta_ppa;
DROP SEQUENCE public.oferta_neumaticos_numero_seq;
DROP TABLE public.oferta_neumaticos;
DROP SEQUENCE public.oferta_neumatico_proxy_id_seq;
DROP TABLE public.oferta_neumatico_proxy;
DROP SEQUENCE public.oferta_equipo_proxy_id_seq;
DROP TABLE public.oferta_equipo_proxy;
DROP SEQUENCE public.oferta_equipo_numero_seq;
DROP TABLE public.oferta_equipo;
DROP SEQUENCE public.oferta_baterias_numero_seq;
DROP TABLE public.oferta_baterias;
DROP SEQUENCE public.oferta_bateria_proxy_id_seq;
DROP TABLE public.oferta_bateria_proxy;
DROP TABLE public.neumatico;
DROP SEQUENCE public.marca_codigomarca_seq;
DROP TABLE public.marca;
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
    marca_id integer NOT NULL
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
    numcontratocliente bigint NOT NULL,
    nomcliente character varying(100) NOT NULL,
    "OSDE" character varying(45) NOT NULL,
    codigoprovincia character varying(3) NOT NULL
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
    marca_id integer NOT NULL
);


ALTER TABLE public.equipo OWNER TO const;

--
-- Name: marca; Type: TABLE; Schema: public; Owner: const
--

CREATE TABLE public.marca (
    codigomarca integer NOT NULL,
    nommarca character varying(30) NOT NULL
);


ALTER TABLE public.marca OWNER TO const;

--
-- Name: marca_codigomarca_seq; Type: SEQUENCE; Schema: public; Owner: const
--

CREATE SEQUENCE public.marca_codigomarca_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.marca_codigomarca_seq OWNER TO const;

--
-- Name: marca_codigomarca_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: const
--

ALTER SEQUENCE public.marca_codigomarca_seq OWNED BY public.marca.codigomarca;


--
-- Name: marca_codigomarca_seq1; Type: SEQUENCE; Schema: public; Owner: const
--

ALTER TABLE public.marca ALTER COLUMN codigomarca ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.marca_codigomarca_seq1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: neumatico; Type: TABLE; Schema: public; Owner: const
--

CREATE TABLE public.neumatico (
    idproducto character varying(30) NOT NULL,
    descripcion character varying(50) NOT NULL,
    "UM" character varying(15) NOT NULL,
    diametro double precision NOT NULL,
    grosor double precision NOT NULL,
    marca_id integer NOT NULL
);


ALTER TABLE public.neumatico OWNER TO const;

--
-- Name: oferta_bateria_proxy; Type: TABLE; Schema: public; Owner: const
--

CREATE TABLE public.oferta_bateria_proxy (
    id bigint NOT NULL,
    cantidad integer NOT NULL,
    precio double precision,
    importe double precision,
    idproducto bigint NOT NULL,
    numsolicitud integer NOT NULL
);


ALTER TABLE public.oferta_bateria_proxy OWNER TO const;

--
-- Name: oferta_bateria_proxy_id_seq; Type: SEQUENCE; Schema: public; Owner: const
--

CREATE SEQUENCE public.oferta_bateria_proxy_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.oferta_bateria_proxy_id_seq OWNER TO const;

--
-- Name: oferta_bateria_proxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: const
--

ALTER SEQUENCE public.oferta_bateria_proxy_id_seq OWNED BY public.oferta_bateria_proxy.id;


--
-- Name: oferta_baterias; Type: TABLE; Schema: public; Owner: const
--

CREATE TABLE public.oferta_baterias (
    numero integer NOT NULL,
    fecha date NOT NULL,
    validez character varying(30) NOT NULL,
    estado character varying(30) NOT NULL,
    valor_estimado double precision NOT NULL,
    username integer NOT NULL,
    idpais character varying(20),
    codmincex character varying(16) NOT NULL,
    numsolicitud integer NOT NULL,
    monto_total double precision
);


ALTER TABLE public.oferta_baterias OWNER TO const;

--
-- Name: oferta_baterias_numero_seq; Type: SEQUENCE; Schema: public; Owner: const
--

CREATE SEQUENCE public.oferta_baterias_numero_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.oferta_baterias_numero_seq OWNER TO const;

--
-- Name: oferta_baterias_numero_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: const
--

ALTER SEQUENCE public.oferta_baterias_numero_seq OWNED BY public.oferta_baterias.numero;


--
-- Name: oferta_equipo; Type: TABLE; Schema: public; Owner: const
--

CREATE TABLE public.oferta_equipo (
    numero integer NOT NULL,
    fecha date NOT NULL,
    validez character varying(30) NOT NULL,
    username integer NOT NULL,
    idpais character varying(20),
    codmincex character varying(16) NOT NULL,
    numsolicitud integer NOT NULL,
    estado character varying(30) NOT NULL,
    valor_estimado double precision NOT NULL,
    monto_total double precision
);


ALTER TABLE public.oferta_equipo OWNER TO const;

--
-- Name: oferta_equipo_numero_seq; Type: SEQUENCE; Schema: public; Owner: const
--

CREATE SEQUENCE public.oferta_equipo_numero_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.oferta_equipo_numero_seq OWNER TO const;

--
-- Name: oferta_equipo_numero_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: const
--

ALTER SEQUENCE public.oferta_equipo_numero_seq OWNED BY public.oferta_equipo.numero;


--
-- Name: oferta_equipo_proxy; Type: TABLE; Schema: public; Owner: const
--

CREATE TABLE public.oferta_equipo_proxy (
    id bigint NOT NULL,
    cantidad integer NOT NULL,
    precio double precision,
    importe double precision,
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
-- Name: oferta_neumatico_proxy; Type: TABLE; Schema: public; Owner: const
--

CREATE TABLE public.oferta_neumatico_proxy (
    id bigint NOT NULL,
    cantidad integer NOT NULL,
    precio double precision,
    importe double precision,
    idproducto bigint NOT NULL,
    numsolicitud integer NOT NULL
);


ALTER TABLE public.oferta_neumatico_proxy OWNER TO const;

--
-- Name: oferta_neumatico_proxy_id_seq; Type: SEQUENCE; Schema: public; Owner: const
--

CREATE SEQUENCE public.oferta_neumatico_proxy_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.oferta_neumatico_proxy_id_seq OWNER TO const;

--
-- Name: oferta_neumatico_proxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: const
--

ALTER SEQUENCE public.oferta_neumatico_proxy_id_seq OWNED BY public.oferta_neumatico_proxy.id;


--
-- Name: oferta_neumaticos; Type: TABLE; Schema: public; Owner: const
--

CREATE TABLE public.oferta_neumaticos (
    numero integer NOT NULL,
    fecha date NOT NULL,
    validez character varying(30) NOT NULL,
    estado character varying(30) NOT NULL,
    valor_estimado double precision NOT NULL,
    username integer NOT NULL,
    idpais character varying(20),
    codmincex character varying(16) NOT NULL,
    numsolicitud integer NOT NULL,
    monto_total double precision
);


ALTER TABLE public.oferta_neumaticos OWNER TO const;

--
-- Name: oferta_neumaticos_numero_seq; Type: SEQUENCE; Schema: public; Owner: const
--

CREATE SEQUENCE public.oferta_neumaticos_numero_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.oferta_neumaticos_numero_seq OWNER TO const;

--
-- Name: oferta_neumaticos_numero_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: const
--

ALTER SEQUENCE public.oferta_neumaticos_numero_seq OWNED BY public.oferta_neumaticos.numero;


--
-- Name: oferta_ppa; Type: TABLE; Schema: public; Owner: const
--

CREATE TABLE public.oferta_ppa (
    numero integer NOT NULL,
    fecha date NOT NULL,
    validez character varying(30) NOT NULL,
    estado character varying(30) NOT NULL,
    valor_estimado double precision NOT NULL,
    username integer NOT NULL,
    idpais character varying(20),
    codmincex character varying(16) NOT NULL,
    numsolicitud integer NOT NULL,
    monto_total double precision
);


ALTER TABLE public.oferta_ppa OWNER TO const;

--
-- Name: oferta_ppa_numero_seq; Type: SEQUENCE; Schema: public; Owner: const
--

CREATE SEQUENCE public.oferta_ppa_numero_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.oferta_ppa_numero_seq OWNER TO const;

--
-- Name: oferta_ppa_numero_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: const
--

ALTER SEQUENCE public.oferta_ppa_numero_seq OWNED BY public.oferta_ppa.numero;


--
-- Name: oferta_ppa_proxy; Type: TABLE; Schema: public; Owner: const
--

CREATE TABLE public.oferta_ppa_proxy (
    id bigint NOT NULL,
    cantidad integer NOT NULL,
    precio double precision NOT NULL,
    importe double precision NOT NULL,
    idproducto bigint NOT NULL,
    numsolicitud integer NOT NULL
);


ALTER TABLE public.oferta_ppa_proxy OWNER TO const;

--
-- Name: oferta_ppa_proxy_id_seq; Type: SEQUENCE; Schema: public; Owner: const
--

CREATE SEQUENCE public.oferta_ppa_proxy_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.oferta_ppa_proxy_id_seq OWNER TO const;

--
-- Name: oferta_ppa_proxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: const
--

ALTER SEQUENCE public.oferta_ppa_proxy_id_seq OWNED BY public.oferta_ppa_proxy.id;


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
    marca_id integer NOT NULL
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
    marca_id integer NOT NULL
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
    numcontratocliente bigint NOT NULL,
    username integer
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
    numcontratocliente bigint NOT NULL,
    username integer
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
    codmincex character varying(16) NOT NULL,
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
    numcontratocliente bigint NOT NULL,
    username integer
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
    numcontratocliente bigint NOT NULL,
    username integer
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
-- Name: oferta_bateria_proxy id; Type: DEFAULT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.oferta_bateria_proxy ALTER COLUMN id SET DEFAULT nextval('public.oferta_bateria_proxy_id_seq'::regclass);


--
-- Name: oferta_baterias numero; Type: DEFAULT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.oferta_baterias ALTER COLUMN numero SET DEFAULT nextval('public.oferta_baterias_numero_seq'::regclass);


--
-- Name: oferta_equipo numero; Type: DEFAULT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.oferta_equipo ALTER COLUMN numero SET DEFAULT nextval('public.oferta_equipo_numero_seq'::regclass);


--
-- Name: oferta_equipo_proxy id; Type: DEFAULT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.oferta_equipo_proxy ALTER COLUMN id SET DEFAULT nextval('public.oferta_equipo_proxy_id_seq'::regclass);


--
-- Name: oferta_neumatico_proxy id; Type: DEFAULT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.oferta_neumatico_proxy ALTER COLUMN id SET DEFAULT nextval('public.oferta_neumatico_proxy_id_seq'::regclass);


--
-- Name: oferta_neumaticos numero; Type: DEFAULT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.oferta_neumaticos ALTER COLUMN numero SET DEFAULT nextval('public.oferta_neumaticos_numero_seq'::regclass);


--
-- Name: oferta_ppa numero; Type: DEFAULT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.oferta_ppa ALTER COLUMN numero SET DEFAULT nextval('public.oferta_ppa_numero_seq'::regclass);


--
-- Name: oferta_ppa_proxy id; Type: DEFAULT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.oferta_ppa_proxy ALTER COLUMN id SET DEFAULT nextval('public.oferta_ppa_proxy_id_seq'::regclass);


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
2	Director_Desarrollo
3	Especialista_COMEX_Equipo
7	Especialista_COMEX_Bateria
5	Especialista_COMEX_PPA
6	Especialista_COMEX_Neumatico
1	Director_COMEX
4	Marketing
8	Administrador
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
5	1	80
6	1	84
7	2	128
10	2	26
11	2	28
12	2	30
13	2	32
14	2	34
15	2	36
16	2	38
17	2	40
18	2	42
19	2	44
20	2	48
21	2	52
22	2	56
23	2	60
24	2	64
25	2	68
26	2	72
27	2	88
28	2	92
29	2	96
30	2	100
31	2	104
32	2	108
33	2	112
34	2	116
35	2	124
36	3	76
38	3	78
39	3	80
40	3	81
41	3	82
42	3	83
43	3	84
46	4	25
48	4	28
49	4	29
51	4	32
52	4	33
54	4	36
55	4	37
57	4	40
58	4	41
61	4	44
62	4	45
65	4	48
66	4	49
69	4	52
70	4	53
73	4	56
74	4	57
77	4	60
78	4	61
81	4	64
82	4	65
85	4	68
86	4	69
89	4	72
90	4	85
91	4	86
92	4	87
93	4	88
94	4	89
95	4	90
96	4	91
97	4	92
98	4	96
99	4	97
100	4	98
101	4	99
102	4	100
103	4	104
104	4	105
105	4	106
106	4	107
107	4	108
108	4	109
109	4	110
110	4	111
111	4	112
112	4	113
113	4	114
114	4	115
115	4	116
116	4	117
117	4	118
118	4	119
119	4	120
120	4	121
121	4	122
122	4	123
123	4	124
124	4	125
125	4	126
126	4	127
127	4	128
128	5	137
129	5	138
130	5	76
131	5	140
132	6	145
133	6	146
134	6	76
135	6	148
136	7	160
137	7	76
138	7	149
139	7	150
140	7	151
141	7	152
142	7	157
143	7	158
144	5	144
145	5	141
146	5	142
147	5	143
148	6	153
149	6	154
150	6	155
151	6	156
152	1	160
153	1	1
154	1	138
155	1	140
156	1	78
157	1	144
158	1	146
159	1	148
160	1	152
161	1	156
162	1	158
163	8	4
164	8	132
165	8	9
166	8	12
167	8	13
168	8	14
169	8	15
170	8	16
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
137	Can add Oferta de Partes y Piezas	add_oferta_ppa	35
138	Can change Oferta de Partes y Piezas	change_oferta_ppa	35
139	Can delete Oferta de Partes y Piezas	delete_oferta_ppa	35
140	Can view Oferta de Partes y Piezas	view_oferta_ppa	35
141	Can add Partes y Piezas	add_oferta_ppa_proxy	36
142	Can change Partes y Piezas	change_oferta_ppa_proxy	36
143	Can delete Partes y Piezas	delete_oferta_ppa_proxy	36
144	Can view Partes y Piezas	view_oferta_ppa_proxy	36
145	Can add Oferta de Neumáticos	add_oferta_neumatico	37
146	Can change Oferta de Neumáticos	change_oferta_neumatico	37
147	Can delete Oferta de Neumáticos	delete_oferta_neumatico	37
148	Can view Oferta de Neumáticos	view_oferta_neumatico	37
149	Can add Batería	add_oferta_bateria_proxy	38
150	Can change Batería	change_oferta_bateria_proxy	38
151	Can delete Batería	delete_oferta_bateria_proxy	38
152	Can view Batería	view_oferta_bateria_proxy	38
153	Can add Neumático	add_oferta_neumatico_proxy	39
154	Can change Neumático	change_oferta_neumatico_proxy	39
155	Can delete Neumático	delete_oferta_neumatico_proxy	39
156	Can view Neumático	view_oferta_neumatico_proxy	39
157	Can add Oferta de Baterías	add_oferta_bateria	40
158	Can change Oferta de Baterías	change_oferta_bateria	40
159	Can delete Oferta de Baterías	delete_oferta_bateria	40
160	Can view Oferta de Baterías	view_oferta_bateria	40
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
9	pbkdf2_sha256$320000$8Q1Sp8oV3V0vPA0JCGa6sW$pHt+w2XWXPicHKqd/nbWqjfNK8SQLgFlO539CwWCh80=	2022-05-07 02:23:50.282682-04	f	administrador	Wilfredo	Ferreira Rabí	informatico@construimport.cu	t	t	2022-05-07 02:23:28.192872-04
6	pbkdf2_sha256$320000$7owazJS4lRudbFD2heZddm$/KpS4rqGTwsqf4yt2KNllXKtvo0MKnsGrMKS7orodtE=	2022-05-06 01:45:48.715036-04	f	regina.ms	Regina	Martínez Suárez	regina@construimport.cu	t	t	2022-05-06 01:45:05.062039-04
7	pbkdf2_sha256$320000$VOWXzkjOaXtJD1PNQP0jSx$kfiQ3zg1iv1RG72BS4UDnBXyTWARj6L+S9DuJE8jg+8=	\N	f	jose.luis	José Luis	García Hernández	jose.luis@construimport.cu	t	t	2022-05-06 01:52:15.675036-04
8	pbkdf2_sha256$320000$idikVvFMhdaE6np39F8sa8$8pNPeEsF0EFGE6VXcyxbbW84QudiXIjN+qCNnJtIhcg=	2022-05-06 01:54:00.810238-04	f	armando.tellez	Armando	Téllez Mesa	armando.tellez@construimport.cu	t	t	2022-05-06 01:53:45.115393-04
5	pbkdf2_sha256$320000$DTERCJcMatk2LUfd2rw2Ao$oznDJKIHvpZVi61mHAoCehvBxHvgU5JS8g2DtQ8xz0Y=	2022-05-06 04:51:54.531699-04	f	comex1	Maria	Valdes Rodriguez	comex1@construimport.cu	t	t	2022-04-28 10:39:06.1783-04
2	pbkdf2_sha256$320000$6itfcQdOsiwen7H29ns2yi$HzkZRdx2Fv1pwW+bmXkyaJ0oJl+dvItEg9AdYXxAboY=	2022-05-06 05:53:52.442044-04	f	director_desarrollo	Maria	García Marrero	didrdesarrollo@construimport.cu	t	t	2022-04-28 10:29:16.889474-04
4	pbkdf2_sha256$320000$DLZ5BZ0lvVpSZJDKjish7V$0HJD2J23W2r2ZDKYy+7Xeiuc1a59LBaaHTKwEzupzQs=	2022-05-06 18:08:06.083009-04	f	director_comex	Roberto	Perez Fernandez	dircomex@construimport.cu	t	t	2022-04-28 10:38:33.023523-04
1	pbkdf2_sha256$320000$qQC09mdwPUwi73eDhymxw3$LWT3dHYrxOrgS/3FfamAi5IKcS9PM/s0C91Q/zVLF/U=	2022-05-07 02:18:23.322448-04	t	admin			informatico@construimport.cu	t	t	2022-04-28 10:18:48.074706-04
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
1	2	2
3	4	1
4	5	3
6	6	5
7	7	6
8	8	7
9	9	8
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
﻿34552005	Bateria humeda 12 V Ah-4	U	12	4	15
34552006	Bateria humeda 12 V Ah 5	U	12	5	15
34552007	Bateria humeda 12 V-9 Ah	U	12	9	15
34552008	Bateria humeda 12 V -12Ah	U	12	12	15
34552009	Bateria humeda 12 V Ah-14	U	12	14	15
34552010	Bateria humeda 12 V Ah-60	U	12	60	15
34552011	Bateria humeda 12 V Ah-75	U	12	75	15
34552012	Bateria humeda 12 V Ah-95	U	12	95	15
34552013	Bateria humeda 12 V Ah-110	U	12	110	15
34552014	Bateria humeda 12 V Ah-155	U	12	155	15
34552015	Bateria humeda 12 V Ah-200	U	12	200	15
34552016	Bateria humeda12 V X 185 	U	12	185	15
\.


--
-- Data for Name: casa_matriz; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.casa_matriz (id, direccion, email, telefono, contacto, sitio_web, codmincex) FROM stdin;
\.


--
-- Data for Name: cliente; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.cliente (numcontratocliente, nomcliente, "OSDE", codigoprovincia) FROM stdin;
20190805	CIDC	GEDIC	HB
20161125	EMCC Camilo Cienfuegos	GEDIC	HB
2180423	DINVAI	GEDIC	HB
20170506	ECOCEM	GECONS	MT
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2022-04-28 10:25:39.869916-04	1	Director_COMEX	1	[{"added": {}}]	3	1
2	2022-04-28 10:26:49.229829-04	2	Director_Desarrollo	1	[{"added": {}}]	3	1
3	2022-04-28 10:27:14.837993-04	3	Especialista_COMEX	1	[{"added": {}}]	3	1
4	2022-04-28 10:28:44.474332-04	4	Marketing	1	[{"added": {}}]	3	1
5	2022-04-28 10:29:17.00948-04	2	director_desarrollo	1	[{"added": {}}]	4	1
6	2022-04-28 10:37:28.533303-04	2	director_desarrollo	2	[{"changed": {"fields": ["Roles"]}}]	4	1
7	2022-04-28 10:37:53.308691-04	3	marketing	1	[{"added": {}}]	4	1
8	2022-04-28 10:37:58.768629-04	3	marketing	2	[{"changed": {"fields": ["Roles"]}}]	4	1
9	2022-04-28 10:38:33.138428-04	4	director_comex	1	[{"added": {}}]	4	1
10	2022-04-28 10:38:37.693453-04	4	director_comex	2	[{"changed": {"fields": ["Roles"]}}]	4	1
11	2022-04-28 10:39:06.3462-04	5	comex1	1	[{"added": {}}]	4	1
12	2022-04-28 10:39:11.243317-04	5	comex1	2	[{"changed": {"fields": ["Roles"]}}]	4	1
13	2022-04-28 10:45:36.117747-04	﻿codigopais	pais	3		24	1
785	2022-05-07 02:22:52.378014-04	8	Administrador	1	[{"added": {}}]	3	1
23	2022-04-28 16:50:23.123843-04	20180609	Empresa de Inversiones de la Construcción	3		30	1
24	2022-04-29 03:42:16.654375-04	4	Marketing	2	[{"changed": {"fields": ["Permissions"]}}]	3	1
45	2022-04-29 03:55:21.0105-04	2	Director_Desarrollo	2	[{"changed": {"fields": ["Permissions"]}}]	3	1
46	2022-04-29 03:55:25.199034-04	1	Director_COMEX	2	[]	3	1
47	2022-04-29 03:55:29.741372-04	3	Especialista_COMEX	2	[]	3	1
48	2022-04-29 03:56:10.987632-04	5	comex1	1	[{"added": {}}]	19	4
49	2022-04-29 03:56:42.148102-04	1	1	2	[{"changed": {"fields": ["Estado", "Especialista COMEX"]}}]	8	2
50	2022-04-29 05:38:33.110916-04	1	1	2	[]	8	2
52	2022-04-29 05:39:37.451642-04	2	2	2	[{"changed": {"fields": ["Estado", "Especialista COMEX"]}}]	8	2
53	2022-04-29 05:40:21.675108-04	2	2	2	[]	8	2
54	2022-04-29 05:48:02.929881-04	2	2	2	[]	8	2
55	2022-04-29 05:51:33.187788-04	2	2	2	[]	8	2
56	2022-04-29 05:51:38.052-04	1	1	2	[]	8	2
58	2022-04-29 05:58:50.825545-04	3	3	2	[{"changed": {"fields": ["Estado", "Especialista COMEX"]}}]	8	2
60	2022-04-29 06:05:19.549103-04	4	4	2	[{"changed": {"fields": ["Especialista COMEX"]}}]	8	2
61	2022-04-29 06:05:27.271741-04	4	4	2	[{"changed": {"fields": ["Estado"]}}]	8	2
62	2022-04-29 06:23:31.908374-04	4	4	2	[]	8	2
63	2022-04-29 06:48:37.81634-04	4	4	2	[]	8	2
64	2022-04-29 06:48:41.657488-04	3	3	2	[]	8	2
65	2022-04-29 06:48:44.547622-04	2	2	2	[]	8	2
66	2022-04-29 07:51:56.050151-04	4	4	2	[]	8	2
67	2022-04-29 07:53:48.58016-04	4	4	2	[]	8	2
68	2022-04-29 07:53:51.72226-04	3	3	2	[]	8	2
69	2022-04-29 07:55:33.882899-04	4	4	2	[]	8	2
70	2022-04-29 07:56:09.559811-04	4	4	2	[]	8	2
71	2022-04-29 08:05:21.373834-04	1	1	2	[]	8	2
72	2022-04-29 08:07:34.678368-04	4	4	2	[]	8	2
73	2022-04-29 08:07:37.688576-04	3	3	2	[]	8	2
74	2022-04-29 08:15:02.302745-04	4	4	2	[]	8	2
75	2022-04-29 09:35:48.027444-04	4	4	2	[]	8	2
76	2022-04-29 09:35:58.605927-04	3	3	2	[]	8	2
77	2022-04-29 11:17:20.36923-04	4	4	2	[]	8	2
78	2022-04-29 11:22:03.093643-04	4	4	2	[]	8	2
79	2022-04-29 11:22:06.193281-04	3	3	2	[]	8	2
80	2022-04-29 11:22:31.493321-04	4	4	2	[]	8	2
165	2022-04-30 18:00:53.704142-04	4	4	2	[]	8	2
166	2022-04-30 18:01:10.760012-04	4	4	2	[]	8	2
167	2022-04-30 18:01:35.897416-04	4	4	2	[]	8	2
168	2022-04-30 18:02:00.21885-04	4	4	2	[]	8	2
169	2022-04-30 18:02:53.694106-04	4	4	2	[]	8	2
284	2022-05-01 11:24:42.383377-04	4	4	2	[]	8	2
786	2022-05-07 02:23:28.32816-04	9	administrador	1	[{"added": {}}]	4	1
173	2022-04-30 19:05:29.325039-04	4	4	2	[]	8	2
174	2022-04-30 19:06:31.84959-04	4	4	2	[]	8	2
175	2022-04-30 19:07:19.896163-04	4	4	2	[]	8	2
176	2022-04-30 19:09:14.500819-04	4	4	2	[]	8	2
177	2022-04-30 19:09:54.220887-04	4	4	2	[]	8	2
178	2022-04-30 19:12:07.750606-04	4	4	2	[]	8	2
179	2022-04-30 19:19:40.02605-04	4	4	2	[]	8	2
96	2022-04-29 14:00:54.193116-04	4	4	2	[]	8	2
180	2022-04-30 19:20:16.487511-04	4	4	2	[]	8	2
181	2022-04-30 19:21:17.288-04	4	4	2	[]	8	2
183	2022-04-30 19:27:07.802706-04	4	4	2	[]	8	2
184	2022-04-30 19:28:35.033264-04	4	4	2	[]	8	2
186	2022-04-30 19:29:58.410576-04	4	4	2	[]	8	2
426	2022-05-02 04:51:34.188781-04	4	4	2	[]	8	2
189	2022-04-30 19:33:02.469768-04	4	4	2	[]	8	2
190	2022-04-30 19:33:43.254347-04	4	4	2	[]	8	2
191	2022-04-30 19:34:14.484338-04	4	4	2	[]	8	2
109	2022-04-29 14:10:21.164165-04	4	4	2	[]	8	2
110	2022-04-29 14:11:57.014115-04	4	4	2	[]	8	2
111	2022-04-29 14:12:21.453898-04	4	4	2	[{"changed": {"fields": ["Estado"]}}]	8	2
112	2022-04-29 14:12:28.313918-04	4	4	2	[{"changed": {"fields": ["Estado"]}}]	8	2
192	2022-04-30 19:36:40.443103-04	4	4	2	[]	8	2
193	2022-05-01 04:17:21.511969-04	4	4	2	[]	8	2
194	2022-05-01 04:17:55.551223-04	4	4	2	[]	8	2
195	2022-05-01 04:18:34.361042-04	4	4	2	[]	8	2
428	2022-05-02 04:52:31.163579-04	4	4	2	[]	8	2
200	2022-05-01 04:48:38.792475-04	4	4	2	[]	8	2
201	2022-05-01 04:49:06.511604-04	4	4	2	[]	8	2
202	2022-05-01 04:49:23.760345-04	4	4	2	[]	8	2
124	2022-04-29 15:10:09.647413-04	4	4	2	[]	8	2
125	2022-04-29 15:10:40.232837-04	4	4	2	[]	8	2
126	2022-04-29 15:19:15.681211-04	4	4	2	[]	8	2
127	2022-04-29 15:19:40.14838-04	3	3	2	[]	8	2
128	2022-04-29 15:20:00.523301-04	4	4	2	[]	8	2
203	2022-05-01 04:50:11.856323-04	4	4	2	[]	8	2
130	2022-04-29 15:22:38.208116-04	4	4	2	[]	8	2
436	2022-05-02 05:45:10.822132-04	4	4	2	[]	8	2
438	2022-05-02 05:52:08.789108-04	4	4	2	[]	8	2
133	2022-04-29 15:23:50.600753-04	4	4	2	[]	8	2
134	2022-04-29 15:24:05.367585-04	3	3	2	[]	8	2
135	2022-04-29 15:28:46.871748-04	4	4	2	[]	8	2
136	2022-04-29 15:29:18.625181-04	4	4	2	[]	8	2
440	2022-05-03 17:24:34.31077-04	4	4	2	[]	8	2
138	2022-04-29 15:31:53.019861-04	4	4	2	[]	8	2
139	2022-04-29 16:05:10.131941-04	4	4	2	[]	8	2
442	2022-05-03 17:55:13.263564-04	4	4	2	[]	8	2
142	2022-04-29 16:33:23.347572-04	4	4	2	[]	8	2
143	2022-04-30 15:42:37.456513-04	4	4	2	[]	8	2
144	2022-04-30 15:44:15.460393-04	4	4	2	[]	8	2
553	2022-05-05 16:39:23.901115-04	4	4	2	[]	8	2
211	2022-05-01 05:03:53.88986-04	4	4	2	[]	8	2
450	2022-05-03 18:30:27.488192-04	4	4	2	[]	8	2
452	2022-05-03 18:31:28.148317-04	4	4	2	[]	8	2
214	2022-05-01 05:05:05.354542-04	4	4	2	[]	8	2
324	2022-05-01 12:22:48.169551-04	4	4	2	[{"changed": {"fields": ["Estado"]}}]	8	2
326	2022-05-01 12:26:38.973526-04	4	4	2	[]	8	2
153	2022-04-30 17:52:35.371766-04	4	4	2	[]	8	2
328	2022-05-01 12:51:31.237732-04	3	Especialista_COMEX	2	[{"changed": {"fields": ["Permissions"]}}]	3	1
330	2022-05-01 13:32:27.598429-04	4	4	2	[]	8	2
332	2022-05-01 13:40:08.982323-04	1	1	2	[]	8	2
334	2022-05-01 13:42:24.143683-04	3	3	2	[]	8	2
222	2022-05-01 05:21:26.951526-04	4	4	2	[]	8	2
223	2022-05-01 05:21:45.771447-04	4	4	2	[]	8	2
224	2022-05-01 05:24:20.620938-04	4	4	2	[]	8	2
456	2022-05-05 04:57:09.539336-04	3	3	2	[]	8	2
163	2022-04-30 17:59:57.060697-04	4	4	2	[]	8	2
164	2022-04-30 18:00:23.238111-04	4	4	2	[]	8	2
718	2022-05-06 16:29:27.354172-04	10	10	2	[]	8	2
464	2022-05-05 07:14:48.267918-04	4	4	2	[]	8	2
565	2022-05-05 17:56:02.339042-04	3	3	2	[]	8	2
231	2022-05-01 05:31:05.995705-04	4	4	2	[]	8	2
232	2022-05-01 05:31:36.700002-04	4	4	2	[]	8	2
468	2022-05-05 07:17:20.323484-04	4	4	2	[]	8	2
234	2022-05-01 05:32:04.989721-04	4	4	2	[]	8	2
470	2022-05-05 07:25:53.119553-04	4	4	2	[]	8	2
567	2022-05-05 17:57:20.028523-04	4	4	2	[]	8	2
356	2022-05-01 14:23:23.995383-04	3	3	2	[]	8	2
238	2022-05-01 05:39:11.463657-04	4	4	2	[]	8	2
239	2022-05-01 05:39:36.473502-04	4	4	2	[]	8	2
569	2022-05-05 17:58:32.773331-04	4	4	2	[]	8	2
360	2022-05-01 15:31:31.594838-04	4	4	2	[]	8	2
362	2022-05-01 15:33:10.866253-04	4	4	2	[]	8	2
364	2022-05-01 15:34:14.48418-04	3	3	2	[]	8	2
244	2022-05-01 10:08:24.188237-04	4	4	2	[]	8	2
245	2022-05-01 10:08:51.91102-04	4	4	2	[]	8	2
734	2022-05-06 17:21:25.559572-04	9	9	2	[]	8	2
250	2022-05-01 10:11:16.900735-04	4	4	2	[]	8	2
253	2022-05-01 10:13:26.124573-04	4	4	2	[]	8	2
259	2022-05-01 10:21:03.568322-04	4	4	2	[]	8	2
260	2022-05-01 10:21:31.568187-04	4	4	2	[]	8	2
261	2022-05-01 10:25:28.737479-04	4	4	2	[]	8	2
787	2022-05-07 02:23:36.792833-04	9	administrador	2	[{"changed": {"fields": ["Roles"]}}]	4	1
425	2022-05-02 04:51:05.23906-04	4	4	2	[]	8	2
429	2022-05-02 04:53:03.468427-04	4	4	2	[]	8	2
439	2022-05-02 05:54:09.118768-04	4	4	2	[]	8	2
441	2022-05-03 17:54:03.244669-04	4	4	2	[]	8	2
719	2022-05-06 16:33:00.068499-04	10	10	2	[]	8	2
451	2022-05-03 18:31:04.748224-04	4	4	2	[]	8	2
564	2022-05-05 17:55:26.174041-04	3	3	2	[]	8	2
282	2022-05-01 11:23:46.553805-04	4	4	2	[{"changed": {"fields": ["Estado"]}}]	8	2
325	2022-05-01 12:23:51.566592-04	4	4	2	[]	8	2
327	2022-05-01 12:28:09.686127-04	4	4	2	[]	8	2
329	2022-05-01 13:31:24.203461-04	4	4	2	[]	8	2
331	2022-05-01 13:32:53.093618-04	4	4	2	[]	8	2
333	2022-05-01 13:41:38.554193-04	3	3	2	[]	8	2
457	2022-05-05 04:57:55.941798-04	4	4	2	[]	8	2
566	2022-05-05 17:57:05.298765-04	4	4	2	[]	8	2
461	2022-05-05 06:54:12.788334-04	4	4	2	[]	8	2
465	2022-05-05 07:15:11.743661-04	4	4	2	[]	8	2
467	2022-05-05 07:16:43.169889-04	4	4	2	[]	8	2
469	2022-05-05 07:25:20.791414-04	4	4	2	[]	8	2
735	2022-05-06 17:23:34.100797-04	9	9	2	[]	8	2
355	2022-05-01 14:22:40.379525-04	3	3	2	[]	8	2
357	2022-05-01 14:24:02.970182-04	4	4	2	[]	8	2
359	2022-05-01 14:31:26.939358-04	4	4	2	[]	8	2
361	2022-05-01 15:32:07.649159-04	4	4	2	[]	8	2
363	2022-05-01 15:33:46.438688-04	4	4	2	[]	8	2
365	2022-05-01 16:12:49.108206-04	4	4	2	[]	8	2
366	2022-05-01 16:13:10.148519-04	4	4	2	[]	8	2
367	2022-05-01 16:13:34.533684-04	3	3	2	[]	8	2
368	2022-05-01 16:14:03.063132-04	4	4	2	[]	8	2
369	2022-05-01 16:15:48.137862-04	4	4	2	[]	8	2
371	2022-05-01 16:16:17.79209-04	4	4	2	[]	8	2
374	2022-05-01 16:44:10.823466-04	4	4	2	[]	8	2
375	2022-05-01 18:35:10.256007-04	4	4	2	[]	8	2
377	2022-05-01 18:36:20.10578-04	4	4	2	[]	8	2
379	2022-05-01 18:38:47.537685-04	4	4	2	[]	8	2
380	2022-05-01 18:39:11.998376-04	4	4	2	[]	8	2
381	2022-05-01 18:39:29.225208-04	4	4	2	[]	8	2
769	2022-05-06 18:09:05.000699-04	1	Director_COMEX	2	[{"changed": {"fields": ["Permissions"]}}]	3	1
588	2022-05-05 18:22:26.748186-04	4	4	2	[]	8	2
589	2022-05-06 01:45:05.194317-04	6	regina.ms	1	[{"added": {}}]	4	1
590	2022-05-06 01:45:14.133166-04	6	regina.ms	2	[{"changed": {"fields": ["Roles"]}}]	4	1
387	2022-05-01 18:57:16.799238-04	126	3	1	[{"added": {}}]	20	1
388	2022-05-01 18:58:04.972531-04	120	4	2	[]	20	1
591	2022-05-06 01:45:38.896835-04	6	regina.ms	1	[{"added": {}}]	19	4
390	2022-05-01 18:58:47.222707-04	128	4	1	[{"added": {}}]	20	1
391	2022-05-01 19:02:28.176692-04	128	4	2	[{"changed": {"fields": ["Pa\\u00eds de Origen de la carga"]}}]	20	1
392	2022-05-01 19:03:47.506694-04	4	4	2	[]	8	1
393	2022-05-01 19:04:33.086813-04	4	4	2	[]	8	2
394	2022-05-01 19:05:46.381203-04	130	4	2	[]	20	5
592	2022-05-06 01:48:06.612434-04	3	Especialista_COMEX_Equipo	2	[{"changed": {"fields": ["Name"]}}]	3	1
396	2022-05-01 19:06:30.363803-04	130	4	2	[]	20	5
397	2022-05-02 03:43:45.833764-04	130	4	2	[]	20	5
398	2022-05-02 03:44:58.902947-04	130	4	2	[]	20	5
593	2022-05-06 01:48:39.305508-04	5	Especialista_COMEX_PPA	1	[{"added": {}}]	3	1
594	2022-05-06 01:49:37.726502-04	6	Especialista_COMEX_Neumatico	1	[{"added": {}}]	3	1
595	2022-05-06 01:50:12.402126-04	7	Especialista_COMEX_Bateria	1	[{"added": {}}]	3	1
596	2022-05-06 01:50:24.756792-04	5	Especialista_COMEX_PPA	2	[{"changed": {"fields": ["Permissions"]}}]	3	1
597	2022-05-06 01:50:33.955924-04	6	Especialista_COMEX_Neumatico	2	[{"changed": {"fields": ["Permissions"]}}]	3	1
598	2022-05-06 01:51:05.516227-04	6	regina.ms	2	[{"changed": {"fields": ["Roles"]}}]	4	1
599	2022-05-06 01:51:14.962563-04	5	comex1	2	[]	4	1
600	2022-05-06 01:52:15.799034-04	7	jose.luis	1	[{"added": {}}]	4	1
601	2022-05-06 01:52:23.348396-04	7	jose.luis	2	[{"changed": {"fields": ["Roles"]}}]	4	1
408	2022-05-02 03:55:45.75751-04	4	4	2	[]	8	2
409	2022-05-02 03:56:24.807467-04	4	4	2	[]	8	2
410	2022-05-02 03:59:02.592171-04	4	4	2	[]	8	2
602	2022-05-06 01:53:45.244425-04	8	armando.tellez	1	[{"added": {}}]	4	1
507	2022-05-05 09:44:03.914735-04	3	3	2	[]	8	2
508	2022-05-05 11:24:48.279596-04	4	4	2	[]	8	2
509	2022-05-05 11:25:34.243903-04	4	4	2	[]	8	2
603	2022-05-06 01:53:50.801316-04	8	armando.tellez	2	[{"changed": {"fields": ["Roles"]}}]	4	1
720	2022-05-06 16:36:35.557909-04	10	10	2	[]	8	2
609	2022-05-06 04:51:43.536235-04	9	9	2	[{"changed": {"fields": ["Especialista COMEX"]}}]	8	2
612	2022-05-06 05:46:45.885074-04	10	10	2	[{"changed": {"fields": ["Especialista COMEX"]}}]	8	2
613	2022-05-06 05:53:59.336891-04	10	10	2	[{"changed": {"fields": ["Especialista COMEX"]}}]	8	2
614	2022-05-06 06:20:41.144952-04	10	10	2	[{"changed": {"fields": ["Especialista COMEX"]}}]	8	2
615	2022-05-06 06:21:16.042632-04	10	10	2	[]	8	2
616	2022-05-06 06:21:22.900738-04	10	10	2	[]	8	2
623	2022-05-06 06:44:56.054444-04	10	10	2	[]	8	2
624	2022-05-06 06:46:13.836434-04	9	9	2	[]	8	2
625	2022-05-06 06:46:46.25116-04	9	9	2	[]	8	2
626	2022-05-06 06:47:18.673423-04	10	10	2	[]	8	2
627	2022-05-06 06:54:34.517689-04	10	10	2	[]	8	2
633	2022-05-06 07:28:54.934169-04	10	10	2	[]	8	2
733	2022-05-06 17:20:48.16767-04	10	10	2	[]	8	2
639	2022-05-06 13:25:11.284937-04	10	10	2	[]	8	2
780	2022-05-07 02:08:49.300131-04	4	Marketing	2	[{"changed": {"fields": ["Permissions"]}}]	3	1
784	2022-05-07 02:18:49.150663-04	3	marketing	3		4	1
662	2022-05-06 13:52:11.824675-04	10	10	2	[{"changed": {"fields": ["Estado"]}}]	8	2
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
35	COMEX	oferta_ppa
36	COMEX	oferta_ppa_proxy
37	COMEX	oferta_neumatico
38	COMEX	oferta_bateria_proxy
39	COMEX	oferta_neumatico_proxy
40	COMEX	oferta_bateria
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	Nomencladores	0001_initial	2022-04-28 09:36:37.272659-04
2	contenttypes	0001_initial	2022-04-28 09:36:37.288329-04
3	contenttypes	0002_remove_content_type_name	2022-04-28 09:36:37.304332-04
4	auth	0001_initial	2022-04-28 09:36:37.407334-04
5	auth	0002_remove_user_role	2022-04-28 09:36:37.414664-04
6	COMEX	0001_initial	2022-04-28 09:36:37.440664-04
7	Solicitudes	0001_initial	2022-04-28 09:36:37.975301-04
8	COMEX	0002_initial	2022-04-28 09:36:38.13026-04
9	Trazas	0001_initial	2022-04-28 09:36:38.138923-04
10	admin	0001_initial	2022-04-28 09:36:38.180923-04
11	notifications	0001_initial	2022-04-28 09:36:38.202926-04
12	notifications	0002_auto_20150224_1134	2022-04-28 09:36:38.219923-04
13	notifications	0003_notification_data	2022-04-28 09:36:38.228928-04
14	notifications	0004_auto_20150826_1508	2022-04-28 09:36:38.238921-04
15	notifications	0005_auto_20160504_1520	2022-04-28 09:36:38.247948-04
16	notifications	0006_indexes	2022-04-28 09:36:38.330025-04
17	notifications	0007_add_timestamp_index	2022-04-28 09:36:38.343504-04
18	notifications	0008_index_together_recipient_unread	2022-04-28 09:36:38.352526-04
19	notifications	0009_alter_notification_id	2022-04-28 09:36:38.362504-04
20	reports	0001_initial	2022-04-28 09:36:38.396502-04
21	sessions	0001_initial	2022-04-28 09:36:38.4155-04
22	COMEX	0003_remove_oferta_equipo_tipo_oferta_equipo_estado	2022-04-28 10:43:11.158165-04
23	Nomencladores	0002_alter_cliente_provincia	2022-04-28 15:20:42.901168-04
24	Nomencladores	0003_alter_cliente_provincia	2022-04-28 15:20:42.947165-04
25	Nomencladores	0004_rename_provincia_cliente_codigoprovincia	2022-04-28 15:26:53.128446-04
26	Nomencladores	0005_alter_cliente_numcontratocliente	2022-04-28 15:41:34.338862-04
27	Nomencladores	0006_alter_cliente_numcontratocliente	2022-04-28 15:42:55.571007-04
28	COMEX	0004_alter_oferta_equipo_validez	2022-04-28 18:31:39.678506-04
29	COMEX	0005_alter_oferta_equipo_fecha_alter_oferta_equipo_numero	2022-04-29 04:07:11.536456-04
30	Solicitudes	0002_alter_solicitud_bateria_fechasol_and_more	2022-04-29 04:07:11.63089-04
31	COMEX	0006_alter_oferta_equipo_proxy_cantidad_and_more	2022-04-29 14:38:27.380151-04
32	COMEX	0007_alter_oferta_equipo_fecha	2022-05-01 10:12:34.607316-04
33	Solicitudes	0003_alter_solicitud_bateria_fechasol_and_more	2022-05-01 10:12:34.717338-04
34	COMEX	0008_alter_oferta_equipo_pais	2022-05-01 11:33:22.609419-04
35	COMEX	0009_alter_oferta_equipo_proveedor	2022-05-01 11:36:54.377615-04
36	COMEX	0010_alter_oferta_equipo_proveedor	2022-05-01 11:37:26.40935-04
37	Nomencladores	0007_alter_marca_codigomarca	2022-05-01 18:55:16.069412-04
38	COMEX	0011_oferta_equipo_valor_estimado_and_more	2022-05-02 04:21:53.194467-04
39	Solicitudes	0004_alter_solicitud_bateria_fechasol_and_more	2022-05-02 04:21:53.269478-04
40	Solicitudes	0005_alter_solicitud_bateria_fechasol_and_more	2022-05-05 04:25:35.414961-04
41	COMEX	0012_oferta_ppa_alter_oferta_equipo_fecha_and_more	2022-05-05 04:25:35.619475-04
42	COMEX	0013_alter_oferta_equipo_proxy_importe_and_more	2022-05-05 07:49:42.578629-04
43	Solicitudes	0006_alter_solicitud_equipo_equipo_and_more	2022-05-05 07:49:42.625785-04
44	COMEX	0014_alter_oferta_equipo_proxy_importe_and_more	2022-05-05 17:37:53.891705-04
45	COMEX	0015_rename_equipos_oferta_ppa_idproducto_and_more	2022-05-06 01:25:36.868195-04
46	Solicitudes	0007_alter_solicitud_bateria_fechasol_and_more	2022-05-06 01:25:36.930291-04
47	COMEX	0016_oferta_bateria_oferta_neumatico_and_more	2022-05-06 01:32:53.51788-04
48	Solicitudes	0008_remove_solicitud_bateria_idespecialista_and_more	2022-05-06 04:38:19.093701-04
49	Solicitudes	0009_alter_solicitud_equipo_proveedor_codmincex	2022-05-06 04:43:43.27483-04
50	Solicitudes	0010_alter_solicitud_equipo_proveedor_codmincex	2022-05-06 05:38:52.075508-04
51	COMEX	0017_alter_oferta_bateria_especialista_and_more	2022-05-06 05:45:45.073245-04
52	COMEX	0018_alter_oferta_equipo_proxy_solicitud	2022-05-06 07:28:34.220784-04
53	COMEX	0019_oferta_bateria_monto_total_oferta_equipo_monto_total_and_more	2022-05-06 16:00:45.636636-04
54	COMEX	0020_alter_oferta_bateria_fecha_alter_oferta_equipo_fecha_and_more	2022-05-07 01:51:57.282716-04
55	Solicitudes	0011_alter_solicitud_bateria_fechasol_and_more	2022-05-07 01:51:57.360114-04
56	Solicitudes	0012_alter_solicitud_neumatico_proxy_idproducto	2022-05-07 02:02:54.392289-04
57	Solicitudes	0013_alter_solicitud_neumatico_proveedor_codmincex	2022-05-07 02:05:34.838451-04
58	Solicitudes	0014_alter_solicitud_bateria_proveedor_codmincex_and_more	2022-05-07 02:16:05.944891-04
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
nsvhebbyo9jy6w3wj1oxkws6rsebjyq6	.eJxVjMsOwiAUBf-FtSGFghSX7vsNzX1wpWogKe3K-O_apAvdnpk5LzXBtuZpa2mZZlYXFdXpd0OgRyo74DuUW9VUy7rMqHdFH7TpsXJ6Xg_37yBDy99aYhR0BMAefO8cdZLIWUY5Y-eMiLEBe_HCxCYMXfRoAxNFy2yGHtT7Ax4gOSI:1nnHbK:ntO-xL0vWhD-I1tj6_C99XmTzXAo15hunmY3l5deLMM	2022-05-21 02:23:50.282682-04
\.


--
-- Data for Name: equipo; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.equipo (idproducto, descripcion, "UM", modelo, marca_id) FROM stdin;
59428400360	Camión KAMAZ 53212	Unidad	KM-53212	1
647386-00-563	BULLDOZER KOMATSU D-155-A-1	Unidad	D-155-A-1	10
647386-00-570	Grúa KAMAZ KM-1632	Unidad	KM-1632	1
59428400325	Camión KAMAZ 5511	Unidad	KM-5511	1
\.


--
-- Data for Name: marca; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.marca (codigomarca, nommarca) FROM stdin;
1	KAMAZ
2	DOOSAN
3	SANY
4	CATERPILLAR
5	DAEWOO
6	FORD
7	GEELY
8	HITACHI
9	ISUZU
10	KOMATSU
11	LADA
12	MERCEDES BENZ
13	NEW HOLLAND
14	NISSAN
15	APC
16	MICHELIN
17	SUPERTIRE
\.


--
-- Data for Name: neumatico; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.neumatico (idproducto, descripcion, "UM", diametro, grosor, marca_id) FROM stdin;
﻿594284001	8.25R20 14PR F/C	U	20	8.25	17
594284002	10.00R20 16PR All pos.	U	20	10	17
594284003	11.00R20 18PR	U	20	11	17
594284004	12.00R20 18PR	U	20	12	16
594284005	295/70 R 22,5 cuerdas de acero	U	70	22.5	16
594284006	11R22.5 16PR All Pos. cuerdas de acero	U	22.5	16	16
594284007	12R22.5 16PR All pos. cuerdas de acero	U	22.5	16	16
594284008	275/70/22,5 cuerdas de acero	U	70	22.5	16
594284009	12-16.5 12PR 10PR	U	16	12	16
594284010	14.00-25 (385/95 R25)	U	95	25	16
594284011	18.00-25 32PR E-3 TL	U	32	25	17
594284012	29.5/25 32PR 	U	25	20	17
594284013	20.5-25 20PR	U	25	28	17
594284014	26.5-25 28PR	U	25	10	17
594284015	6.00-9  12PR	U	12	5	17
594284016	6.00-9 súper elástico	U	9	3	16
594284017	7.00-12 	U	12	7	16
594284018	7.00-12 súper elástico	U	12	7	16
\.


--
-- Data for Name: oferta_bateria_proxy; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.oferta_bateria_proxy (id, cantidad, precio, importe, idproducto, numsolicitud) FROM stdin;
\.


--
-- Data for Name: oferta_baterias; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.oferta_baterias (numero, fecha, validez, estado, valor_estimado, username, idpais, codmincex, numsolicitud, monto_total) FROM stdin;
\.


--
-- Data for Name: oferta_equipo; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.oferta_equipo (numero, fecha, validez, username, idpais, codmincex, numsolicitud, estado, valor_estimado, monto_total) FROM stdin;
\.


--
-- Data for Name: oferta_equipo_proxy; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.oferta_equipo_proxy (id, cantidad, precio, importe, idproducto, numsolicitud) FROM stdin;
\.


--
-- Data for Name: oferta_neumatico_proxy; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.oferta_neumatico_proxy (id, cantidad, precio, importe, idproducto, numsolicitud) FROM stdin;
\.


--
-- Data for Name: oferta_neumaticos; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.oferta_neumaticos (numero, fecha, validez, estado, valor_estimado, username, idpais, codmincex, numsolicitud, monto_total) FROM stdin;
\.


--
-- Data for Name: oferta_ppa; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.oferta_ppa (numero, fecha, validez, estado, valor_estimado, username, idpais, codmincex, numsolicitud, monto_total) FROM stdin;
\.


--
-- Data for Name: oferta_ppa_proxy; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.oferta_ppa_proxy (id, cantidad, precio, importe, idproducto, numsolicitud) FROM stdin;
\.


--
-- Data for Name: pais; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.pais (codigopais, nompais) FROM stdin;
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
﻿600-821-5170	Alternador 24V	U	10
07145-02146\n	ANILLO GOMA\n	U	10
07155-01535\n	ANILLO\n	U	10
01643-31645\n	ARANDELA\n	U	10
01010-31640\n	ARANDELA\n	U	10
01602-02060\n	ARANDELA\n	U	10
01602-01236\n	ARANDELA\n	U	10
01643-31232\n	ARANDELA\n	U	10
01602-01648\n	ARANDELA\n	U	10
154-15-22811\n	ARO SELLO T\n	U	10
154-13-42710\n	ARO SELLO TEFLON\n	U	10
154-15-22821\n	ARO SELLO\n	U	10
155-15--12811\n	ARO SELLO\n	U	10
155-15-12820\n	ARO SELLO\n	U	10
154-15-22831	ARO SELLO\n	U	10
175-22-21190\n	ARO SELLO\n	U	10
175-13-21720\n	ARO SELO HIERRO\n	U	10
154 33 11131\n	BANDAS\n	U	10
07432-71203	Bomba caja velocidad completa	U	10
07436-72202\n	Bomba de Marcha	U	10
07444-66200	Bomba organos de trabajo completa	U	10
07444-66102\n	Bomba Principal	U	10
154 33 21320\n	BUJES\n	U	10
154 33 21330\n	BUJES\n	U	10
154-63-42320\n	BUJES\n	U	10
07177-07015\n	BUJES\n	U	10
07177-07030\n	BUJES\n	U	10
154-63-12340\n	BUJES\n	U	10
07177-07105\n	BUJES\n	U	10
154-32-03004	Cadenas completas	jgo	10
154-20-01000	Cardàn completo	U	10
154 63 19400\n	C. HCO DE LA CUCHILLA\n	U	10
154 63 19300\n	C.HCO DE LA CUCHILLA\n	U	10
155-43-15240	CABLE DE EMERGENCIA\n	U	10
154-32-03004\n	CADENA CON TEJAS\n	U	10
154 63 12540\n	CAMISA DE LA CUCHILLA\n	U	10
154 63 42741\n	CAMISA\n	U	10
154 63 42841\n	CAMISA\n	U	10
154 20 01000\n	CARDAN COMPLETO\n	U	10
175-78-31230\n	CASQUILLO RUSTER\n	U	10
08086-01000	Chucho de arranque	U	10
150-06-12120\n	CHUCHO DE LUZ\n	U	10
08661-00000\n	CHUCHO PRECALENTAMIENTO\n	U	10
154 63 42503\n	CILINDRO HCO RIPPER\n	U	10
154 63 42603\n	CILINDRO HCO RIPPER\n	U	10
150 30 11141\n	CILINDRO\n	U	10
154 40 00020\n	CONTROL DE LOS MANDOS\n	U	10
07020 00000\n	COPILLA DE ENGRASE\n	U	10
07020 00675\n	COPILLA DE ENGRASE\n	U	10
07020 00900\n	COPILLA DE ENGRASE\n	U	10
154 13 41660\n	COPLING\n	U	10
154 21 12121\n	CORONA\n	U	10
154 20 00020\n	CRUCETA\n	U	10
19M.15.12721	DISCO\n	U	10
175-30-00425	Diagonales	U	10
154.13.41652	EJE DEJ CONVERTIDOR\n	U	10
154 15 32510\n	EJES\n	U	10
154 15 32530\n	EJES\n	U	10
175.49.11222	FILTRO	U	10
175-49-11231\n	FILTRO	U	10
175-49-11580\n	FILTRO	U	10
706301100	FILTRO	U	10
150-30-13441\n	FILTRO	U	10
154-21-22211\n	FILTRO	U	10
707-42-15012(155-63-\n	FILTRO	U	10
154-06-36770\n	FAROLES\n	U	10
175.4911.580	Filtro aceite convertidor	U	10
195-13.3420	Filtro aceite convertidor	U	10
O7114-OO609	Filtro aceite convertidor	U	10
150-70-21346	Gavilán derecho	U	10
150-70-21356	Gavilán izquierdo	U	10
24I-81-00002	Gavilanes derecho	U	10
24Y-81-00001	Gavilanes izquierdo	U	10
155-15-05020\n	JGO REP. CAJA VELOCIDAD\n	U	10
6711-81-9510	Junta del turbo	U	10
6710-11-1811	Junta tapa block	jgo	10
154-13-05010\n	KIT REP. CONVERTIDOR\n	U	10
08128 32400\n	LAMPARA TRASERA\n	U	10
154 06 36780\n	LAMPARA\n	U	10
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
CN-0132	CHINA AUTO CAIEC  LTD(CAIEC)	COMERCIALIZADOR	CHN
CN-1287	(CAMCE) CHINA NATIONAL CONSTRUCTION & AGRICULTURAL MACHINARY IMPOT AND EXPORT CORPORATION	COMERCIALIZADOR	CHN
ES-4425-8	CICLAUTO AUTOMOCION S.L 	COMERCIALIZADOR	ESP
PA-1439	EL ESTABLO S.A	PRODUCTOR	PAN
VG-0008	FOREGO INTERNATIONAL LTD	COMERCIALIZADOR	GBR
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

COPY public.solicitud_bateria (numsolicitud, fechasol, estado, observaciones, valor_estimado, numcontratocliente, username) FROM stdin;
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

COPY public.solicitud_equipo (numsolicitud, fechasol, estado, observaciones, valor_estimado, numcontratocliente, username) FROM stdin;
10	2022-05-06	Aprobada	wd2ed	45000	20161125	5
9	2022-05-06	Pendiente	2e2sqs2q	45000	20161125	5
\.


--
-- Data for Name: solicitud_equipo_proveedor; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.solicitud_equipo_proveedor (id, codmincex, numsolicitud) FROM stdin;
19	CN-0132	9
20	ES-4425-8	9
21	PA-1439	9
22	CN-1287	10
23	CN-0132	10
\.


--
-- Data for Name: solicitud_equipo_proxy; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.solicitud_equipo_proxy (id, cantidad, idproducto, numsolicitud) FROM stdin;
9	1	59428400360	9
10	1	647386-00-563	10
\.


--
-- Data for Name: solicitud_neumatico; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.solicitud_neumatico (numsolicitud, fechasol, estado, observaciones, valor_estimado, numcontratocliente, username) FROM stdin;
5	2022-05-07	Pendiente	qwerty	900000	20170506	\N
\.


--
-- Data for Name: solicitud_neumatico_proveedor; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.solicitud_neumatico_proveedor (id, codmincex_id, numsolicitud) FROM stdin;
9	CN-0132	5
10	PA-1439	5
\.


--
-- Data for Name: solicitud_neumatico_proxy; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.solicitud_neumatico_proxy (id, cantidad, idproducto, numsolicitud) FROM stdin;
9	100	﻿594284001	5
10	100	594284003	5
11	100	594284004	5
\.


--
-- Data for Name: solicitud_ppa; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.solicitud_ppa (numsolicitud, fechasol, estado, observaciones, valor_estimado, idproducto, numcontratocliente, username) FROM stdin;
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

SELECT pg_catalog.setval('public.auth_group_id_seq', 8, true);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 170, true);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 160, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 9, true);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 9, true);


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

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 787, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 40, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 58, true);


--
-- Name: marca_codigomarca_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.marca_codigomarca_seq', 1, false);


--
-- Name: marca_codigomarca_seq1; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.marca_codigomarca_seq1', 17, true);


--
-- Name: oferta_bateria_proxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.oferta_bateria_proxy_id_seq', 1, false);


--
-- Name: oferta_baterias_numero_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.oferta_baterias_numero_seq', 1, false);


--
-- Name: oferta_equipo_numero_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.oferta_equipo_numero_seq', 8910, true);


--
-- Name: oferta_equipo_proxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.oferta_equipo_proxy_id_seq', 8481, true);


--
-- Name: oferta_neumatico_proxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.oferta_neumatico_proxy_id_seq', 1, false);


--
-- Name: oferta_neumaticos_numero_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.oferta_neumaticos_numero_seq', 1, false);


--
-- Name: oferta_ppa_numero_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.oferta_ppa_numero_seq', 1, false);


--
-- Name: oferta_ppa_proxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.oferta_ppa_proxy_id_seq', 1, false);


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

SELECT pg_catalog.setval('public.solicitud_bateria_numsolicitud_seq', 3, true);


--
-- Name: solicitud_bateria_proveedor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.solicitud_bateria_proveedor_id_seq', 2, true);


--
-- Name: solicitud_bateria_proxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.solicitud_bateria_proxy_id_seq', 1, false);


--
-- Name: solicitud_equipo_numsolicitud_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.solicitud_equipo_numsolicitud_seq', 10, true);


--
-- Name: solicitud_equipo_proveedor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.solicitud_equipo_proveedor_id_seq', 23, true);


--
-- Name: solicitud_equipo_proxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.solicitud_equipo_proxy_id_seq', 23, true);


--
-- Name: solicitud_neumatico_numsolicitud_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.solicitud_neumatico_numsolicitud_seq', 5, true);


--
-- Name: solicitud_neumatico_proveedor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.solicitud_neumatico_proveedor_id_seq', 10, true);


--
-- Name: solicitud_neumatico_proxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.solicitud_neumatico_proxy_id_seq', 11, true);


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
-- Name: oferta_bateria_proxy oferta_bateria_proxy_pkey; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.oferta_bateria_proxy
    ADD CONSTRAINT oferta_bateria_proxy_pkey PRIMARY KEY (id);


--
-- Name: oferta_baterias oferta_baterias_pkey; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.oferta_baterias
    ADD CONSTRAINT oferta_baterias_pkey PRIMARY KEY (numero);


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
-- Name: oferta_neumatico_proxy oferta_neumatico_proxy_pkey; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.oferta_neumatico_proxy
    ADD CONSTRAINT oferta_neumatico_proxy_pkey PRIMARY KEY (id);


--
-- Name: oferta_neumaticos oferta_neumaticos_pkey; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.oferta_neumaticos
    ADD CONSTRAINT oferta_neumaticos_pkey PRIMARY KEY (numero);


--
-- Name: oferta_ppa oferta_ppa_pkey; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.oferta_ppa
    ADD CONSTRAINT oferta_ppa_pkey PRIMARY KEY (numero);


--
-- Name: oferta_ppa_proxy oferta_ppa_proxy_pkey; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.oferta_ppa_proxy
    ADD CONSTRAINT oferta_ppa_proxy_pkey PRIMARY KEY (id);


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
-- Name: solicitud_bateria_proveedor solicitud_bateria_proveedor_codmincex_id_c9dc75e4_uniq; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_bateria_proveedor
    ADD CONSTRAINT solicitud_bateria_proveedor_codmincex_id_c9dc75e4_uniq UNIQUE (codmincex_id);


--
-- Name: solicitud_bateria_proveedor solicitud_bateria_proveedor_pkey; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_bateria_proveedor
    ADD CONSTRAINT solicitud_bateria_proveedor_pkey PRIMARY KEY (id);


--
-- Name: solicitud_bateria_proxy solicitud_bateria_proxy_idproducto_d16d2d8c_uniq; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_bateria_proxy
    ADD CONSTRAINT solicitud_bateria_proxy_idproducto_d16d2d8c_uniq UNIQUE (idproducto);


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
-- Name: solicitud_neumatico_proveedor solicitud_neumatico_proveedor_codmincex_id_920b25fe_uniq; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_neumatico_proveedor
    ADD CONSTRAINT solicitud_neumatico_proveedor_codmincex_id_920b25fe_uniq UNIQUE (codmincex_id);


--
-- Name: solicitud_neumatico_proveedor solicitud_neumatico_proveedor_pkey; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_neumatico_proveedor
    ADD CONSTRAINT solicitud_neumatico_proveedor_pkey PRIMARY KEY (id);


--
-- Name: solicitud_neumatico_proxy solicitud_neumatico_proxy_idproducto_264bd634_uniq; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_neumatico_proxy
    ADD CONSTRAINT solicitud_neumatico_proxy_idproducto_264bd634_uniq UNIQUE (idproducto);


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

CREATE INDEX cliente_provincia_478bfc63 ON public.cliente USING btree (codigoprovincia);


--
-- Name: cliente_provincia_478bfc63_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX cliente_provincia_478bfc63_like ON public.cliente USING btree (codigoprovincia varchar_pattern_ops);


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
-- Name: neumatico_idproducto_9eec9617_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX neumatico_idproducto_9eec9617_like ON public.neumatico USING btree (idproducto varchar_pattern_ops);


--
-- Name: neumatico_marca_id_e2843a2d; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX neumatico_marca_id_e2843a2d ON public.neumatico USING btree (marca_id);


--
-- Name: oferta_bateria_proxy_idproducto_b69ad312; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX oferta_bateria_proxy_idproducto_b69ad312 ON public.oferta_bateria_proxy USING btree (idproducto);


--
-- Name: oferta_bateria_proxy_numsolicitud_52a169f8; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX oferta_bateria_proxy_numsolicitud_52a169f8 ON public.oferta_bateria_proxy USING btree (numsolicitud);


--
-- Name: oferta_baterias_codmincex_9f1a49d3; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX oferta_baterias_codmincex_9f1a49d3 ON public.oferta_baterias USING btree (codmincex);


--
-- Name: oferta_baterias_codmincex_9f1a49d3_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX oferta_baterias_codmincex_9f1a49d3_like ON public.oferta_baterias USING btree (codmincex varchar_pattern_ops);


--
-- Name: oferta_baterias_idespecialista_07f81b69; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX oferta_baterias_idespecialista_07f81b69 ON public.oferta_baterias USING btree (username);


--
-- Name: oferta_baterias_idpais_e53e2c7b; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX oferta_baterias_idpais_e53e2c7b ON public.oferta_baterias USING btree (idpais);


--
-- Name: oferta_baterias_idpais_e53e2c7b_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX oferta_baterias_idpais_e53e2c7b_like ON public.oferta_baterias USING btree (idpais varchar_pattern_ops);


--
-- Name: oferta_baterias_numsolicitud_3f328d51; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX oferta_baterias_numsolicitud_3f328d51 ON public.oferta_baterias USING btree (numsolicitud);


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

CREATE INDEX oferta_equipo_idespecialista_ba0415b9 ON public.oferta_equipo USING btree (username);


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
-- Name: oferta_neumatico_proxy_idproducto_dc503917; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX oferta_neumatico_proxy_idproducto_dc503917 ON public.oferta_neumatico_proxy USING btree (idproducto);


--
-- Name: oferta_neumatico_proxy_numsolicitud_040373c2; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX oferta_neumatico_proxy_numsolicitud_040373c2 ON public.oferta_neumatico_proxy USING btree (numsolicitud);


--
-- Name: oferta_neumaticos_codmincex_23b3e25a; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX oferta_neumaticos_codmincex_23b3e25a ON public.oferta_neumaticos USING btree (codmincex);


--
-- Name: oferta_neumaticos_codmincex_23b3e25a_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX oferta_neumaticos_codmincex_23b3e25a_like ON public.oferta_neumaticos USING btree (codmincex varchar_pattern_ops);


--
-- Name: oferta_neumaticos_idespecialista_687bbd06; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX oferta_neumaticos_idespecialista_687bbd06 ON public.oferta_neumaticos USING btree (username);


--
-- Name: oferta_neumaticos_idpais_3d47da7c; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX oferta_neumaticos_idpais_3d47da7c ON public.oferta_neumaticos USING btree (idpais);


--
-- Name: oferta_neumaticos_idpais_3d47da7c_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX oferta_neumaticos_idpais_3d47da7c_like ON public.oferta_neumaticos USING btree (idpais varchar_pattern_ops);


--
-- Name: oferta_neumaticos_numsolicitud_a26052af; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX oferta_neumaticos_numsolicitud_a26052af ON public.oferta_neumaticos USING btree (numsolicitud);


--
-- Name: oferta_ppa_codmincex_f9672369; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX oferta_ppa_codmincex_f9672369 ON public.oferta_ppa USING btree (codmincex);


--
-- Name: oferta_ppa_codmincex_f9672369_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX oferta_ppa_codmincex_f9672369_like ON public.oferta_ppa USING btree (codmincex varchar_pattern_ops);


--
-- Name: oferta_ppa_idespecialista_18cc95cc; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX oferta_ppa_idespecialista_18cc95cc ON public.oferta_ppa USING btree (username);


--
-- Name: oferta_ppa_idpais_45485d9a; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX oferta_ppa_idpais_45485d9a ON public.oferta_ppa USING btree (idpais);


--
-- Name: oferta_ppa_idpais_45485d9a_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX oferta_ppa_idpais_45485d9a_like ON public.oferta_ppa USING btree (idpais varchar_pattern_ops);


--
-- Name: oferta_ppa_numsolicitud_f8ec6731; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX oferta_ppa_numsolicitud_f8ec6731 ON public.oferta_ppa USING btree (numsolicitud);


--
-- Name: oferta_ppa_proxy_idproducto_b1cd6301; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX oferta_ppa_proxy_idproducto_b1cd6301 ON public.oferta_ppa_proxy USING btree (idproducto);


--
-- Name: oferta_ppa_proxy_numsolicitud_2bc9954c; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX oferta_ppa_proxy_numsolicitud_2bc9954c ON public.oferta_ppa_proxy USING btree (numsolicitud);


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
-- Name: solicitud_bateria_numcontratocliente_726f79a5; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX solicitud_bateria_numcontratocliente_726f79a5 ON public.solicitud_bateria USING btree (numcontratocliente);


--
-- Name: solicitud_bateria_proveedor_codmincex_id_c9dc75e4_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX solicitud_bateria_proveedor_codmincex_id_c9dc75e4_like ON public.solicitud_bateria_proveedor USING btree (codmincex_id varchar_pattern_ops);


--
-- Name: solicitud_bateria_proveedor_numsolicitud_6535162f; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX solicitud_bateria_proveedor_numsolicitud_6535162f ON public.solicitud_bateria_proveedor USING btree (numsolicitud);


--
-- Name: solicitud_bateria_proxy_idproducto_d16d2d8c_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX solicitud_bateria_proxy_idproducto_d16d2d8c_like ON public.solicitud_bateria_proxy USING btree (idproducto varchar_pattern_ops);


--
-- Name: solicitud_bateria_proxy_numsolicitud_94914016; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX solicitud_bateria_proxy_numsolicitud_94914016 ON public.solicitud_bateria_proxy USING btree (numsolicitud);


--
-- Name: solicitud_bateria_username_bf683e7b; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX solicitud_bateria_username_bf683e7b ON public.solicitud_bateria USING btree (username);


--
-- Name: solicitud_equipo_numcontratocliente_08e73429; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX solicitud_equipo_numcontratocliente_08e73429 ON public.solicitud_equipo USING btree (numcontratocliente);


--
-- Name: solicitud_equipo_proveedor_codmincex_187ce024; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX solicitud_equipo_proveedor_codmincex_187ce024 ON public.solicitud_equipo_proveedor USING btree (codmincex);


--
-- Name: solicitud_equipo_proveedor_codmincex_187ce024_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX solicitud_equipo_proveedor_codmincex_187ce024_like ON public.solicitud_equipo_proveedor USING btree (codmincex varchar_pattern_ops);


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
-- Name: solicitud_equipo_username_b32e7bdd; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX solicitud_equipo_username_b32e7bdd ON public.solicitud_equipo USING btree (username);


--
-- Name: solicitud_neumatico_numcontratocliente_e9e0724c; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX solicitud_neumatico_numcontratocliente_e9e0724c ON public.solicitud_neumatico USING btree (numcontratocliente);


--
-- Name: solicitud_neumatico_proveedor_codmincex_id_920b25fe_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX solicitud_neumatico_proveedor_codmincex_id_920b25fe_like ON public.solicitud_neumatico_proveedor USING btree (codmincex_id varchar_pattern_ops);


--
-- Name: solicitud_neumatico_proveedor_numsolicitud_23890b23; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX solicitud_neumatico_proveedor_numsolicitud_23890b23 ON public.solicitud_neumatico_proveedor USING btree (numsolicitud);


--
-- Name: solicitud_neumatico_proxy_idproducto_264bd634_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX solicitud_neumatico_proxy_idproducto_264bd634_like ON public.solicitud_neumatico_proxy USING btree (idproducto varchar_pattern_ops);


--
-- Name: solicitud_neumatico_proxy_numsolicitud_3ebfa720; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX solicitud_neumatico_proxy_numsolicitud_3ebfa720 ON public.solicitud_neumatico_proxy USING btree (numsolicitud);


--
-- Name: solicitud_neumatico_username_ce90dce5; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX solicitud_neumatico_username_ce90dce5 ON public.solicitud_neumatico USING btree (username);


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
-- Name: solicitud_ppa_username_bda45af5; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX solicitud_ppa_username_bda45af5 ON public.solicitud_ppa USING btree (username);


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
-- Name: cliente cliente_codigoprovincia_2ef760d6_fk_provincia_codigoprovincia; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_codigoprovincia_2ef760d6_fk_provincia_codigoprovincia FOREIGN KEY (codigoprovincia) REFERENCES public.provincia(codigoprovincia) DEFERRABLE INITIALLY DEFERRED;


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
-- Name: neumatico neumatico_marca_id_e2843a2d_fk_marca_codigomarca; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.neumatico
    ADD CONSTRAINT neumatico_marca_id_e2843a2d_fk_marca_codigomarca FOREIGN KEY (marca_id) REFERENCES public.marca(codigomarca) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: oferta_bateria_proxy oferta_bateria_proxy_idproducto_b69ad312_fk_solicitud; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.oferta_bateria_proxy
    ADD CONSTRAINT oferta_bateria_proxy_idproducto_b69ad312_fk_solicitud FOREIGN KEY (idproducto) REFERENCES public.solicitud_bateria_proxy(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: oferta_bateria_proxy oferta_bateria_proxy_numsolicitud_52a169f8_fk_oferta_ba; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.oferta_bateria_proxy
    ADD CONSTRAINT oferta_bateria_proxy_numsolicitud_52a169f8_fk_oferta_ba FOREIGN KEY (numsolicitud) REFERENCES public.oferta_baterias(numero) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: oferta_baterias oferta_baterias_codmincex_9f1a49d3_fk_proveedor_codmincex; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.oferta_baterias
    ADD CONSTRAINT oferta_baterias_codmincex_9f1a49d3_fk_proveedor_codmincex FOREIGN KEY (codmincex) REFERENCES public.proveedor(codmincex) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: oferta_baterias oferta_baterias_idpais_e53e2c7b_fk_pais_codigopais; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.oferta_baterias
    ADD CONSTRAINT oferta_baterias_idpais_e53e2c7b_fk_pais_codigopais FOREIGN KEY (idpais) REFERENCES public.pais(codigopais) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: oferta_baterias oferta_baterias_numsolicitud_3f328d51_fk_solicitud; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.oferta_baterias
    ADD CONSTRAINT oferta_baterias_numsolicitud_3f328d51_fk_solicitud FOREIGN KEY (numsolicitud) REFERENCES public.solicitud_bateria(numsolicitud) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: oferta_baterias oferta_baterias_username_7302a0b5_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.oferta_baterias
    ADD CONSTRAINT oferta_baterias_username_7302a0b5_fk_auth_user_id FOREIGN KEY (username) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: oferta_equipo oferta_equipo_codmincex_2e6e45cf_fk_proveedor_codmincex; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.oferta_equipo
    ADD CONSTRAINT oferta_equipo_codmincex_2e6e45cf_fk_proveedor_codmincex FOREIGN KEY (codmincex) REFERENCES public.proveedor(codmincex) DEFERRABLE INITIALLY DEFERRED;


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
-- Name: oferta_equipo oferta_equipo_username_21a56f58_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.oferta_equipo
    ADD CONSTRAINT oferta_equipo_username_21a56f58_fk_auth_user_id FOREIGN KEY (username) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: oferta_neumatico_proxy oferta_neumatico_pro_idproducto_dc503917_fk_solicitud; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.oferta_neumatico_proxy
    ADD CONSTRAINT oferta_neumatico_pro_idproducto_dc503917_fk_solicitud FOREIGN KEY (idproducto) REFERENCES public.solicitud_neumatico_proxy(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: oferta_neumatico_proxy oferta_neumatico_pro_numsolicitud_040373c2_fk_oferta_ne; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.oferta_neumatico_proxy
    ADD CONSTRAINT oferta_neumatico_pro_numsolicitud_040373c2_fk_oferta_ne FOREIGN KEY (numsolicitud) REFERENCES public.oferta_neumaticos(numero) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: oferta_neumaticos oferta_neumaticos_codmincex_23b3e25a_fk_proveedor_codmincex; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.oferta_neumaticos
    ADD CONSTRAINT oferta_neumaticos_codmincex_23b3e25a_fk_proveedor_codmincex FOREIGN KEY (codmincex) REFERENCES public.proveedor(codmincex) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: oferta_neumaticos oferta_neumaticos_idpais_3d47da7c_fk_pais_codigopais; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.oferta_neumaticos
    ADD CONSTRAINT oferta_neumaticos_idpais_3d47da7c_fk_pais_codigopais FOREIGN KEY (idpais) REFERENCES public.pais(codigopais) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: oferta_neumaticos oferta_neumaticos_numsolicitud_a26052af_fk_solicitud; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.oferta_neumaticos
    ADD CONSTRAINT oferta_neumaticos_numsolicitud_a26052af_fk_solicitud FOREIGN KEY (numsolicitud) REFERENCES public.solicitud_neumatico(numsolicitud) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: oferta_neumaticos oferta_neumaticos_username_6bec8fee_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.oferta_neumaticos
    ADD CONSTRAINT oferta_neumaticos_username_6bec8fee_fk_auth_user_id FOREIGN KEY (username) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: oferta_ppa oferta_ppa_codmincex_f9672369_fk_proveedor_codmincex; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.oferta_ppa
    ADD CONSTRAINT oferta_ppa_codmincex_f9672369_fk_proveedor_codmincex FOREIGN KEY (codmincex) REFERENCES public.proveedor(codmincex) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: oferta_ppa oferta_ppa_idpais_45485d9a_fk_pais_codigopais; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.oferta_ppa
    ADD CONSTRAINT oferta_ppa_idpais_45485d9a_fk_pais_codigopais FOREIGN KEY (idpais) REFERENCES public.pais(codigopais) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: oferta_ppa oferta_ppa_numsolicitud_f8ec6731_fk_solicitud_ppa_numsolicitud; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.oferta_ppa
    ADD CONSTRAINT oferta_ppa_numsolicitud_f8ec6731_fk_solicitud_ppa_numsolicitud FOREIGN KEY (numsolicitud) REFERENCES public.solicitud_ppa(numsolicitud) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: oferta_ppa_proxy oferta_ppa_proxy_idproducto_b1cd6301_fk_solicitud_ppa_proxy_id; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.oferta_ppa_proxy
    ADD CONSTRAINT oferta_ppa_proxy_idproducto_b1cd6301_fk_solicitud_ppa_proxy_id FOREIGN KEY (idproducto) REFERENCES public.solicitud_ppa_proxy(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: oferta_ppa_proxy oferta_ppa_proxy_numsolicitud_2bc9954c_fk_oferta_ppa_numero; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.oferta_ppa_proxy
    ADD CONSTRAINT oferta_ppa_proxy_numsolicitud_2bc9954c_fk_oferta_ppa_numero FOREIGN KEY (numsolicitud) REFERENCES public.oferta_ppa(numero) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: oferta_ppa oferta_ppa_username_beaea642_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.oferta_ppa
    ADD CONSTRAINT oferta_ppa_username_beaea642_fk_auth_user_id FOREIGN KEY (username) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


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
-- Name: solicitud_bateria solicitud_bateria_numcontratocliente_726f79a5_fk; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_bateria
    ADD CONSTRAINT solicitud_bateria_numcontratocliente_726f79a5_fk FOREIGN KEY (numcontratocliente) REFERENCES public.cliente(numcontratocliente) DEFERRABLE INITIALLY DEFERRED;


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
-- Name: solicitud_bateria solicitud_bateria_username_bf683e7b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_bateria
    ADD CONSTRAINT solicitud_bateria_username_bf683e7b_fk_auth_user_id FOREIGN KEY (username) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: solicitud_equipo solicitud_equipo_numcontratocliente_08e73429_fk; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_equipo
    ADD CONSTRAINT solicitud_equipo_numcontratocliente_08e73429_fk FOREIGN KEY (numcontratocliente) REFERENCES public.cliente(numcontratocliente) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: solicitud_equipo_proveedor solicitud_equipo_pro_codmincex_187ce024_fk_proveedor; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_equipo_proveedor
    ADD CONSTRAINT solicitud_equipo_pro_codmincex_187ce024_fk_proveedor FOREIGN KEY (codmincex) REFERENCES public.proveedor(codmincex) DEFERRABLE INITIALLY DEFERRED;


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
-- Name: solicitud_equipo solicitud_equipo_username_b32e7bdd_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_equipo
    ADD CONSTRAINT solicitud_equipo_username_b32e7bdd_fk_auth_user_id FOREIGN KEY (username) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


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
-- Name: solicitud_neumatico solicitud_neumatico_numcontratocliente_e9e0724c_fk; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_neumatico
    ADD CONSTRAINT solicitud_neumatico_numcontratocliente_e9e0724c_fk FOREIGN KEY (numcontratocliente) REFERENCES public.cliente(numcontratocliente) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: solicitud_neumatico solicitud_neumatico_username_ce90dce5_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_neumatico
    ADD CONSTRAINT solicitud_neumatico_username_ce90dce5_fk_auth_user_id FOREIGN KEY (username) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: solicitud_ppa solicitud_ppa_idproducto_5d5752e5_fk_equipo_idproducto; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_ppa
    ADD CONSTRAINT solicitud_ppa_idproducto_5d5752e5_fk_equipo_idproducto FOREIGN KEY (idproducto) REFERENCES public.equipo(idproducto) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: solicitud_ppa solicitud_ppa_numcontratocliente_cd73b766_fk; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_ppa
    ADD CONSTRAINT solicitud_ppa_numcontratocliente_cd73b766_fk FOREIGN KEY (numcontratocliente) REFERENCES public.cliente(numcontratocliente) DEFERRABLE INITIALLY DEFERRED;


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
-- Name: solicitud_ppa solicitud_ppa_username_bda45af5_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_ppa
    ADD CONSTRAINT solicitud_ppa_username_bda45af5_fk_auth_user_id FOREIGN KEY (username) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: sucursal_cuba sucursal_cuba_codmincex_aa0b5234_fk_proveedor_codmincex; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.sucursal_cuba
    ADD CONSTRAINT sucursal_cuba_codmincex_aa0b5234_fk_proveedor_codmincex FOREIGN KEY (codmincex) REFERENCES public.proveedor(codmincex) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

