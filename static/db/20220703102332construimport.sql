--
-- PostgreSQL database dump
--

-- Dumped from database version 14.4
-- Dumped by pg_dump version 14.4

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
ALTER TABLE ONLY public.solicitud_ppa DROP CONSTRAINT solicitud_ppa_reeup_f85449dc_fk_cliente_reeup;
ALTER TABLE ONLY public.solicitud_ppa_proxy DROP CONSTRAINT solicitud_ppa_proxy_numsolicitud_b3c4e117_fk_solicitud;
ALTER TABLE ONLY public.solicitud_ppa_proxy DROP CONSTRAINT solicitud_ppa_proxy_idproducto_efc8a761_fk_ppa_idproducto;
ALTER TABLE ONLY public.solicitud_ppa_proveedor DROP CONSTRAINT solicitud_ppa_provee_numsolicitud_61e29922_fk_solicitud;
ALTER TABLE ONLY public.solicitud_ppa_proveedor DROP CONSTRAINT solicitud_ppa_provee_codmincex_id_4cab253e_fk_proveedor;
ALTER TABLE ONLY public.solicitud_neumatico DROP CONSTRAINT solicitud_neumatico_username_ce90dce5_fk_auth_user_id;
ALTER TABLE ONLY public.solicitud_neumatico DROP CONSTRAINT solicitud_neumatico_reeup_568efbf9_fk_cliente_reeup;
ALTER TABLE ONLY public.solicitud_neumatico_proxy DROP CONSTRAINT solicitud_neumatico__numsolicitud_3ebfa720_fk_solicitud;
ALTER TABLE ONLY public.solicitud_neumatico_proveedor DROP CONSTRAINT solicitud_neumatico__numsolicitud_23890b23_fk_solicitud;
ALTER TABLE ONLY public.solicitud_neumatico_proxy DROP CONSTRAINT solicitud_neumatico__idproducto_264bd634_fk_neumatico;
ALTER TABLE ONLY public.solicitud_neumatico_proveedor DROP CONSTRAINT solicitud_neumatico__codmincex_id_920b25fe_fk_proveedor;
ALTER TABLE ONLY public.solicitud_equipo DROP CONSTRAINT solicitud_equipo_username_b32e7bdd_fk_auth_user_id;
ALTER TABLE ONLY public.solicitud_equipo DROP CONSTRAINT solicitud_equipo_reeup_07bd2083_fk_cliente_reeup;
ALTER TABLE ONLY public.solicitud_equipo_proxy DROP CONSTRAINT solicitud_equipo_proxy_idproducto_08c7c6e0_fk_equipo_idproducto;
ALTER TABLE ONLY public.solicitud_equipo_proxy DROP CONSTRAINT solicitud_equipo_pro_numsolicitud_812d2e09_fk_solicitud;
ALTER TABLE ONLY public.solicitud_equipo_proveedor DROP CONSTRAINT solicitud_equipo_pro_numsolicitud_00805827_fk_solicitud;
ALTER TABLE ONLY public.solicitud_equipo_proveedor DROP CONSTRAINT solicitud_equipo_pro_codmincex_187ce024_fk_proveedor;
ALTER TABLE ONLY public.solicitud_bateria DROP CONSTRAINT solicitud_bateria_username_bf683e7b_fk_auth_user_id;
ALTER TABLE ONLY public.solicitud_bateria DROP CONSTRAINT solicitud_bateria_reeup_7a94b57f_fk_cliente_reeup;
ALTER TABLE ONLY public.solicitud_bateria_proxy DROP CONSTRAINT solicitud_bateria_pr_numsolicitud_94914016_fk_solicitud;
ALTER TABLE ONLY public.solicitud_bateria_proveedor DROP CONSTRAINT solicitud_bateria_pr_numsolicitud_6535162f_fk_solicitud;
ALTER TABLE ONLY public.solicitud_bateria_proxy DROP CONSTRAINT solicitud_bateria_pr_idproducto_d16d2d8c_fk_bateria_i;
ALTER TABLE ONLY public.solicitud_bateria_proveedor DROP CONSTRAINT solicitud_bateria_pr_codmincex_id_c9dc75e4_fk_proveedor;
ALTER TABLE ONLY public.reports_savedreport DROP CONSTRAINT reports_savedreport_run_by_id_0e49a3ac_fk_auth_user_id;
ALTER TABLE ONLY public.proveedor_ppa DROP CONSTRAINT proveedor_ppa_proveedor_id_c93b5138_fk_proveedor_codmincex;
ALTER TABLE ONLY public.proveedor_ppa DROP CONSTRAINT proveedor_ppa_ppa_id_7a94b08a_fk_ppa_idproducto;
ALTER TABLE ONLY public.proveedor_neumaticos DROP CONSTRAINT proveedor_neumaticos_proveedor_id_d2c0a18b_fk_proveedor;
ALTER TABLE ONLY public.proveedor_neumaticos DROP CONSTRAINT proveedor_neumaticos_neumatico_id_07963775_fk_neumatico;
ALTER TABLE ONLY public.proveedor_marca DROP CONSTRAINT proveedor_marca_proveedor_id_81518723_fk_proveedor_codmincex;
ALTER TABLE ONLY public.proveedor_marca DROP CONSTRAINT proveedor_marca_marca_id_ae2ad161_fk_marca_codigomarca;
ALTER TABLE ONLY public.proveedor_equipos DROP CONSTRAINT proveedor_equipos_proveedor_id_5e09ac79_fk_proveedor_codmincex;
ALTER TABLE ONLY public.proveedor_equipos DROP CONSTRAINT proveedor_equipos_equipo_id_5cd273e5_fk_equipo_idproducto;
ALTER TABLE ONLY public.proveedor DROP CONSTRAINT proveedor_codigopais_ba6f5c0d_fk_pais_codigopais;
ALTER TABLE ONLY public.proveedor_baterias DROP CONSTRAINT proveedor_baterias_proveedor_id_9adc346c_fk_proveedor_codmincex;
ALTER TABLE ONLY public.proveedor_baterias DROP CONSTRAINT proveedor_baterias_bateria_id_bda82610_fk_bateria_idproducto;
ALTER TABLE ONLY public.ppa_equipo DROP CONSTRAINT ppa_equipo_ppa_id_323cec64_fk_ppa_idproducto;
ALTER TABLE ONLY public.ppa_equipo DROP CONSTRAINT ppa_equipo_equipo_id_c9d1cddb_fk_equipo_idproducto;
ALTER TABLE ONLY public.ppa DROP CONSTRAINT ppa_codigoum_7b48f85c_fk_um_codigoum;
ALTER TABLE ONLY public.ppa DROP CONSTRAINT ppa_codigomarca_fde9bf8b_fk_marca_codigomarca;
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
ALTER TABLE ONLY public.neumatico DROP CONSTRAINT neumatico_codigoum_40edba2b_fk_um_codigoum;
ALTER TABLE ONLY public.neumatico DROP CONSTRAINT neumatico_codigomarca_2da28965_fk_marca_codigomarca;
ALTER TABLE ONLY public.marca DROP CONSTRAINT marca_codigopais_a5f8ede9_fk_pais_codigopais;
ALTER TABLE ONLY public.equipo DROP CONSTRAINT equipo_codigoum_0cef5e26_fk_um_codigoum;
ALTER TABLE ONLY public.equipo DROP CONSTRAINT equipo_codigomarca_33aa6296_fk_marca_codigomarca;
ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
ALTER TABLE ONLY public.cliente DROP CONSTRAINT cliente_codigoprovincia_2ef760d6_fk_provincia_codigoprovincia;
ALTER TABLE ONLY public.cliente DROP CONSTRAINT "cliente_OSDE_id_e62a283b_fk_OSDE_reeup";
ALTER TABLE ONLY public.casa_matriz DROP CONSTRAINT casa_matriz_codmincex_bd5fc4f6_fk_proveedor_codmincex;
ALTER TABLE ONLY public.bateria DROP CONSTRAINT bateria_codigoum_3eef7d96_fk_um_codigoum;
ALTER TABLE ONLY public.bateria DROP CONSTRAINT bateria_codigomarca_277a3733_fk_marca_codigomarca;
ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
ALTER TABLE ONLY public.account_signupcoderesult DROP CONSTRAINT account_signupcoderesult_user_id_c10dc604_fk_auth_user_id;
ALTER TABLE ONLY public.account_signupcoderesult DROP CONSTRAINT account_signupcoderesult_signup_code_id_1adc486e_fk;
ALTER TABLE ONLY public.account_signupcode DROP CONSTRAINT account_signupcode_inviter_id_9706983e_fk_auth_user_id;
ALTER TABLE ONLY public.account_passwordhistory DROP CONSTRAINT account_passwordhistory_user_id_dc325181_fk_auth_user_id;
ALTER TABLE ONLY public.account_passwordexpiry DROP CONSTRAINT account_passwordexpiry_user_id_905230ec_fk_auth_user_id;
ALTER TABLE ONLY public.account_emailconfirmation DROP CONSTRAINT account_emailconfirmation_email_address_id_5b7f8c58_fk;
ALTER TABLE ONLY public.account_emailaddress DROP CONSTRAINT account_emailaddress_user_id_2c513194_fk_auth_user_id;
ALTER TABLE ONLY public.account_accountdeletion DROP CONSTRAINT account_accountdeletion_user_id_c205475f_fk_auth_user_id;
ALTER TABLE ONLY public.account_account DROP CONSTRAINT account_account_user_id_8d4f4816_fk_auth_user_id;
ALTER TABLE ONLY public."OSDE" DROP CONSTRAINT "OSDE_ministerio_id_dd8f8290_fk_ministerio_reeup";
DROP INDEX public.um_descripcionum_4582a47e_like;
DROP INDEX public.um_codigoum_8b14f118_like;
DROP INDEX public.sucursal_cuba_codmincex_aa0b5234_like;
DROP INDEX public.sucursal_cuba_codmincex_aa0b5234;
DROP INDEX public.solicitud_ppa_username_bda45af5;
DROP INDEX public.solicitud_ppa_reeup_f85449dc_like;
DROP INDEX public.solicitud_ppa_reeup_f85449dc;
DROP INDEX public.solicitud_ppa_proxy_numsolicitud_b3c4e117;
DROP INDEX public.solicitud_ppa_proxy_idproducto_efc8a761_like;
DROP INDEX public.solicitud_ppa_proxy_idproducto_efc8a761;
DROP INDEX public.solicitud_ppa_proveedor_numsolicitud_61e29922;
DROP INDEX public.solicitud_ppa_proveedor_codmincex_id_4cab253e_like;
DROP INDEX public.solicitud_ppa_proveedor_codmincex_id_4cab253e;
DROP INDEX public.solicitud_neumatico_username_ce90dce5;
DROP INDEX public.solicitud_neumatico_reeup_568efbf9_like;
DROP INDEX public.solicitud_neumatico_reeup_568efbf9;
DROP INDEX public.solicitud_neumatico_proxy_numsolicitud_3ebfa720;
DROP INDEX public.solicitud_neumatico_proxy_idproducto_264bd634_like;
DROP INDEX public.solicitud_neumatico_proxy_idproducto_264bd634;
DROP INDEX public.solicitud_neumatico_proveedor_numsolicitud_23890b23;
DROP INDEX public.solicitud_neumatico_proveedor_codmincex_id_920b25fe_like;
DROP INDEX public.solicitud_neumatico_proveedor_codmincex_id_920b25fe;
DROP INDEX public.solicitud_equipo_username_b32e7bdd;
DROP INDEX public.solicitud_equipo_reeup_07bd2083_like;
DROP INDEX public.solicitud_equipo_reeup_07bd2083;
DROP INDEX public.solicitud_equipo_proxy_numsolicitud_812d2e09;
DROP INDEX public.solicitud_equipo_proxy_idproducto_08c7c6e0_like;
DROP INDEX public.solicitud_equipo_proxy_idproducto_08c7c6e0;
DROP INDEX public.solicitud_equipo_proveedor_numsolicitud_00805827;
DROP INDEX public.solicitud_equipo_proveedor_codmincex_187ce024_like;
DROP INDEX public.solicitud_equipo_proveedor_codmincex_187ce024;
DROP INDEX public.solicitud_bateria_username_bf683e7b;
DROP INDEX public.solicitud_bateria_reeup_7a94b57f_like;
DROP INDEX public.solicitud_bateria_reeup_7a94b57f;
DROP INDEX public.solicitud_bateria_proxy_numsolicitud_94914016;
DROP INDEX public.solicitud_bateria_proxy_idproducto_d16d2d8c_like;
DROP INDEX public.solicitud_bateria_proxy_idproducto_d16d2d8c;
DROP INDEX public.solicitud_bateria_proveedor_numsolicitud_6535162f;
DROP INDEX public.solicitud_bateria_proveedor_codmincex_id_c9dc75e4_like;
DROP INDEX public.solicitud_bateria_proveedor_codmincex_id_c9dc75e4;
DROP INDEX public.reports_savedreport_run_by_id_0e49a3ac;
DROP INDEX public.provincia_codigoprovincia_faf2e195_like;
DROP INDEX public.proveedor_ppa_proveedor_id_c93b5138_like;
DROP INDEX public.proveedor_ppa_proveedor_id_c93b5138;
DROP INDEX public.proveedor_ppa_ppa_id_7a94b08a_like;
DROP INDEX public.proveedor_ppa_ppa_id_7a94b08a;
DROP INDEX public.proveedor_nomproveedor_a0b35d39_like;
DROP INDEX public.proveedor_neumaticos_proveedor_id_d2c0a18b_like;
DROP INDEX public.proveedor_neumaticos_proveedor_id_d2c0a18b;
DROP INDEX public.proveedor_neumaticos_neumatico_id_07963775_like;
DROP INDEX public.proveedor_neumaticos_neumatico_id_07963775;
DROP INDEX public.proveedor_marca_proveedor_id_81518723_like;
DROP INDEX public.proveedor_marca_proveedor_id_81518723;
DROP INDEX public.proveedor_marca_marca_id_ae2ad161;
DROP INDEX public.proveedor_equipos_proveedor_id_5e09ac79_like;
DROP INDEX public.proveedor_equipos_proveedor_id_5e09ac79;
DROP INDEX public.proveedor_equipos_equipo_id_5cd273e5_like;
DROP INDEX public.proveedor_equipos_equipo_id_5cd273e5;
DROP INDEX public.proveedor_codmincex_e9a8c16d_like;
DROP INDEX public.proveedor_codigopais_ba6f5c0d_like;
DROP INDEX public.proveedor_codigopais_ba6f5c0d;
DROP INDEX public.proveedor_baterias_proveedor_id_9adc346c_like;
DROP INDEX public.proveedor_baterias_proveedor_id_9adc346c;
DROP INDEX public.proveedor_baterias_bateria_id_bda82610_like;
DROP INDEX public.proveedor_baterias_bateria_id_bda82610;
DROP INDEX public.ppa_idproducto_ae8ec065_like;
DROP INDEX public.ppa_equipo_ppa_id_323cec64_like;
DROP INDEX public.ppa_equipo_ppa_id_323cec64;
DROP INDEX public.ppa_equipo_equipo_id_c9d1cddb_like;
DROP INDEX public.ppa_equipo_equipo_id_c9d1cddb;
DROP INDEX public.ppa_codigoum_7b48f85c_like;
DROP INDEX public.ppa_codigoum_7b48f85c;
DROP INDEX public.ppa_codigomarca_fde9bf8b;
DROP INDEX public.pais_codigopais_f394d5a9_like;
DROP INDEX public.oferta_ppa_username_beaea642;
DROP INDEX public.oferta_ppa_proxy_numsolicitud_2bc9954c;
DROP INDEX public.oferta_ppa_proxy_idproducto_b1cd6301;
DROP INDEX public.oferta_ppa_numsolicitud_f8ec6731;
DROP INDEX public.oferta_ppa_idpais_45485d9a_like;
DROP INDEX public.oferta_ppa_idpais_45485d9a;
DROP INDEX public.oferta_ppa_codmincex_f9672369_like;
DROP INDEX public.oferta_ppa_codmincex_f9672369;
DROP INDEX public.oferta_neumaticos_username_6bec8fee;
DROP INDEX public.oferta_neumaticos_numsolicitud_a26052af;
DROP INDEX public.oferta_neumaticos_idpais_3d47da7c_like;
DROP INDEX public.oferta_neumaticos_idpais_3d47da7c;
DROP INDEX public.oferta_neumaticos_codmincex_23b3e25a_like;
DROP INDEX public.oferta_neumaticos_codmincex_23b3e25a;
DROP INDEX public.oferta_neumatico_proxy_numsolicitud_040373c2;
DROP INDEX public.oferta_neumatico_proxy_idproducto_dc503917;
DROP INDEX public.oferta_equipo_username_21a56f58;
DROP INDEX public.oferta_equipo_proxy_numero_0993bc47;
DROP INDEX public.oferta_equipo_proxy_idproducto_ff77c35c;
DROP INDEX public.oferta_equipo_numsolicitud_cf512716;
DROP INDEX public.oferta_equipo_idpais_25734604_like;
DROP INDEX public.oferta_equipo_idpais_25734604;
DROP INDEX public.oferta_equipo_codmincex_2e6e45cf_like;
DROP INDEX public.oferta_equipo_codmincex_2e6e45cf;
DROP INDEX public.oferta_baterias_username_7302a0b5;
DROP INDEX public.oferta_baterias_numsolicitud_3f328d51;
DROP INDEX public.oferta_baterias_idpais_e53e2c7b_like;
DROP INDEX public.oferta_baterias_idpais_e53e2c7b;
DROP INDEX public.oferta_baterias_codmincex_9f1a49d3_like;
DROP INDEX public.oferta_baterias_codmincex_9f1a49d3;
DROP INDEX public.oferta_bateria_proxy_numsolicitud_52a169f8;
DROP INDEX public.oferta_bateria_proxy_idproducto_b69ad312;
DROP INDEX public.neumatico_idproducto_9eec9617_like;
DROP INDEX public.neumatico_codigoum_40edba2b_like;
DROP INDEX public.neumatico_codigoum_40edba2b;
DROP INDEX public.neumatico_codigomarca_2da28965;
DROP INDEX public.ministerio_siglas_885a106d_like;
DROP INDEX public.ministerio_reeup_ab665d77_like;
DROP INDEX public.ministerio_nombre_21bb2048_like;
DROP INDEX public.ministerio_correo_2ae9841a_like;
DROP INDEX public.marca_nommarca_2d378c86_like;
DROP INDEX public.marca_codigopais_a5f8ede9_like;
DROP INDEX public.marca_codigopais_a5f8ede9;
DROP INDEX public.equipo_idproducto_712e52c4_like;
DROP INDEX public.equipo_codigoum_0cef5e26_like;
DROP INDEX public.equipo_codigoum_0cef5e26;
DROP INDEX public.equipo_codigomarca_33aa6296;
DROP INDEX public.django_site_domain_a2e37b91_like;
DROP INDEX public.django_session_session_key_c0390e0f_like;
DROP INDEX public.django_session_expire_date_a5c62663;
DROP INDEX public.django_admin_log_user_id_c564eba6;
DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
DROP INDEX public.cliente_siglas_4bfff53e_like;
DROP INDEX public.cliente_reeup_30874119_like;
DROP INDEX public.cliente_nombre_8fc2f80f_like;
DROP INDEX public.cliente_correo_4271a189_like;
DROP INDEX public.cliente_codigoprovincia_2ef760d6_like;
DROP INDEX public.cliente_codigoprovincia_2ef760d6;
DROP INDEX public."cliente_OSDE_id_e62a283b_like";
DROP INDEX public."cliente_OSDE_id_e62a283b";
DROP INDEX public.casa_matriz_codmincex_bd5fc4f6_like;
DROP INDEX public.casa_matriz_codmincex_bd5fc4f6;
DROP INDEX public.bateria_idproducto_5736f2bb_like;
DROP INDEX public.bateria_codigoum_3eef7d96_like;
DROP INDEX public.bateria_codigoum_3eef7d96;
DROP INDEX public.bateria_codigomarca_277a3733;
DROP INDEX public.auth_user_username_6821ab7c_like;
DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
DROP INDEX public.auth_user_groups_group_id_97559544;
DROP INDEX public.auth_permission_content_type_id_2f476e4b;
DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
DROP INDEX public.auth_group_name_a6ea08ec_like;
DROP INDEX public.account_signupcoderesult_user_id_c10dc604;
DROP INDEX public.account_signupcoderesult_signup_code_id_1adc486e;
DROP INDEX public.account_signupcode_inviter_id_9706983e;
DROP INDEX public.account_signupcode_code_e34edcf8_like;
DROP INDEX public.account_passwordhistory_user_id_dc325181;
DROP INDEX public.account_emailconfirmation_key_f43612bd_like;
DROP INDEX public.account_emailconfirmation_email_address_id_5b7f8c58;
DROP INDEX public.account_emailaddress_user_id_2c513194;
DROP INDEX public.account_emailaddress_email_03be32b2_like;
DROP INDEX public.account_accountdeletion_user_id_c205475f;
DROP INDEX public."OSDE_siglas_bd5d3498_like";
DROP INDEX public."OSDE_reeup_77593f2d_like";
DROP INDEX public."OSDE_nombre_4efd2961_like";
DROP INDEX public."OSDE_ministerio_id_dd8f8290_like";
DROP INDEX public."OSDE_ministerio_id_dd8f8290";
DROP INDEX public."OSDE_correo_e0bd4ae5_like";
ALTER TABLE ONLY public.um DROP CONSTRAINT um_pkey;
ALTER TABLE ONLY public.um DROP CONSTRAINT um_descripcionum_key;
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
ALTER TABLE ONLY public.proveedor_ppa DROP CONSTRAINT proveedor_ppa_proveedor_id_ppa_id_f91e8716_uniq;
ALTER TABLE ONLY public.proveedor_ppa DROP CONSTRAINT proveedor_ppa_pkey;
ALTER TABLE ONLY public.proveedor DROP CONSTRAINT proveedor_pkey;
ALTER TABLE ONLY public.proveedor DROP CONSTRAINT proveedor_nomproveedor_key;
ALTER TABLE ONLY public.proveedor_neumaticos DROP CONSTRAINT proveedor_neumaticos_proveedor_id_neumatico_id_5fb62953_uniq;
ALTER TABLE ONLY public.proveedor_neumaticos DROP CONSTRAINT proveedor_neumaticos_pkey;
ALTER TABLE ONLY public.proveedor_marca DROP CONSTRAINT proveedor_marca_proveedor_id_marca_id_716b0f11_uniq;
ALTER TABLE ONLY public.proveedor_marca DROP CONSTRAINT proveedor_marca_pkey;
ALTER TABLE ONLY public.proveedor_equipos DROP CONSTRAINT proveedor_equipos_proveedor_id_equipo_id_aba7e50c_uniq;
ALTER TABLE ONLY public.proveedor_equipos DROP CONSTRAINT proveedor_equipos_pkey;
ALTER TABLE ONLY public.proveedor DROP CONSTRAINT proveedor_codmincex_codigopais_eea1226c_uniq;
ALTER TABLE ONLY public.proveedor_baterias DROP CONSTRAINT proveedor_baterias_proveedor_id_bateria_id_16bdd139_uniq;
ALTER TABLE ONLY public.proveedor_baterias DROP CONSTRAINT proveedor_baterias_pkey;
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
ALTER TABLE ONLY public.ministerio DROP CONSTRAINT ministerio_telefono_key;
ALTER TABLE ONLY public.ministerio DROP CONSTRAINT ministerio_siglas_key;
ALTER TABLE ONLY public.ministerio DROP CONSTRAINT ministerio_pkey;
ALTER TABLE ONLY public.ministerio DROP CONSTRAINT ministerio_nombre_key;
ALTER TABLE ONLY public.ministerio DROP CONSTRAINT ministerio_correo_key;
ALTER TABLE ONLY public.marca DROP CONSTRAINT marca_pkey;
ALTER TABLE ONLY public.marca DROP CONSTRAINT marca_nommarca_key;
ALTER TABLE ONLY public.equipo DROP CONSTRAINT equipo_pkey;
ALTER TABLE ONLY public.django_site DROP CONSTRAINT django_site_pkey;
ALTER TABLE ONLY public.django_site DROP CONSTRAINT django_site_domain_a2e37b91_uniq;
ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
ALTER TABLE ONLY public.cliente DROP CONSTRAINT cliente_telefono_key;
ALTER TABLE ONLY public.cliente DROP CONSTRAINT cliente_siglas_key;
ALTER TABLE ONLY public.cliente DROP CONSTRAINT cliente_pkey;
ALTER TABLE ONLY public.cliente DROP CONSTRAINT cliente_nombre_key;
ALTER TABLE ONLY public.cliente DROP CONSTRAINT cliente_correo_key;
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
ALTER TABLE ONLY public.account_signupcoderesult DROP CONSTRAINT account_signupcoderesult_pkey;
ALTER TABLE ONLY public.account_signupcode DROP CONSTRAINT account_signupcode_pkey;
ALTER TABLE ONLY public.account_signupcode DROP CONSTRAINT account_signupcode_code_key;
ALTER TABLE ONLY public.account_passwordhistory DROP CONSTRAINT account_passwordhistory_pkey;
ALTER TABLE ONLY public.account_passwordexpiry DROP CONSTRAINT account_passwordexpiry_user_id_key;
ALTER TABLE ONLY public.account_passwordexpiry DROP CONSTRAINT account_passwordexpiry_pkey;
ALTER TABLE ONLY public.account_emailconfirmation DROP CONSTRAINT account_emailconfirmation_pkey;
ALTER TABLE ONLY public.account_emailconfirmation DROP CONSTRAINT account_emailconfirmation_key_key;
ALTER TABLE ONLY public.account_emailaddress DROP CONSTRAINT account_emailaddress_pkey;
ALTER TABLE ONLY public.account_emailaddress DROP CONSTRAINT account_emailaddress_email_key;
ALTER TABLE ONLY public.account_accountdeletion DROP CONSTRAINT account_accountdeletion_pkey;
ALTER TABLE ONLY public.account_account DROP CONSTRAINT account_account_user_id_key;
ALTER TABLE ONLY public.account_account DROP CONSTRAINT account_account_pkey;
ALTER TABLE ONLY public."Trazas_logentry" DROP CONSTRAINT "Trazas_logentry_pkey";
ALTER TABLE ONLY public."Salvas_salvas" DROP CONSTRAINT "Salvas_salvas_pkey";
ALTER TABLE ONLY public."Reportes_reporte_solicitud" DROP CONSTRAINT "Reportes_reporte_solicitud_pkey";
ALTER TABLE ONLY public."Reportes_reporte_proveedor" DROP CONSTRAINT "Reportes_reporte_proveedor_pkey";
ALTER TABLE ONLY public."OSDE" DROP CONSTRAINT "OSDE_telefono_key";
ALTER TABLE ONLY public."OSDE" DROP CONSTRAINT "OSDE_siglas_key";
ALTER TABLE ONLY public."OSDE" DROP CONSTRAINT "OSDE_pkey";
ALTER TABLE ONLY public."OSDE" DROP CONSTRAINT "OSDE_nombre_key";
ALTER TABLE ONLY public."OSDE" DROP CONSTRAINT "OSDE_correo_key";
ALTER TABLE ONLY public."Dashboard_order" DROP CONSTRAINT "Dashboard_order_pkey";
ALTER TABLE ONLY public."Dashboard_dashboard" DROP CONSTRAINT "Dashboard_dashboard_pkey";
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
ALTER TABLE public.proveedor_ppa ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.proveedor_neumaticos ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.proveedor_marca ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.proveedor_equipos ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.proveedor_baterias ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.ppa_equipo ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.oferta_ppa_proxy ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.oferta_ppa ALTER COLUMN numero DROP DEFAULT;
ALTER TABLE public.oferta_neumaticos ALTER COLUMN numero DROP DEFAULT;
ALTER TABLE public.oferta_neumatico_proxy ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.oferta_equipo_proxy ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.oferta_equipo ALTER COLUMN numero DROP DEFAULT;
ALTER TABLE public.oferta_baterias ALTER COLUMN numero DROP DEFAULT;
ALTER TABLE public.oferta_bateria_proxy ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.marca ALTER COLUMN codigomarca DROP DEFAULT;
ALTER TABLE public.django_site ALTER COLUMN id DROP DEFAULT;
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
ALTER TABLE public.account_signupcoderesult ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.account_signupcode ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.account_passwordhistory ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.account_passwordexpiry ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.account_emailconfirmation ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.account_emailaddress ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.account_accountdeletion ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.account_account ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public."Trazas_logentry" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public."Salvas_salvas" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public."Reportes_reporte_solicitud" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public."Reportes_reporte_proveedor" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public."Dashboard_order" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public."Dashboard_dashboard" ALTER COLUMN id DROP DEFAULT;
DROP TABLE public.um;
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
DROP SEQUENCE public.proveedor_ppa_id_seq;
DROP TABLE public.proveedor_ppa;
DROP SEQUENCE public.proveedor_neumaticos_id_seq;
DROP TABLE public.proveedor_neumaticos;
DROP SEQUENCE public.proveedor_marca_id_seq;
DROP TABLE public.proveedor_marca;
DROP SEQUENCE public.proveedor_equipos_id_seq;
DROP TABLE public.proveedor_equipos;
DROP SEQUENCE public.proveedor_baterias_id_seq;
DROP TABLE public.proveedor_baterias;
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
DROP TABLE public.ministerio;
DROP SEQUENCE public.marca_codigomarca_seq;
DROP TABLE public.marca;
DROP TABLE public.equipo;
DROP SEQUENCE public.django_site_id_seq;
DROP TABLE public.django_site;
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
DROP SEQUENCE public.account_signupcoderesult_id_seq;
DROP TABLE public.account_signupcoderesult;
DROP SEQUENCE public.account_signupcode_id_seq;
DROP TABLE public.account_signupcode;
DROP SEQUENCE public.account_passwordhistory_id_seq;
DROP TABLE public.account_passwordhistory;
DROP SEQUENCE public.account_passwordexpiry_id_seq;
DROP TABLE public.account_passwordexpiry;
DROP SEQUENCE public.account_emailconfirmation_id_seq;
DROP TABLE public.account_emailconfirmation;
DROP SEQUENCE public.account_emailaddress_id_seq;
DROP TABLE public.account_emailaddress;
DROP SEQUENCE public.account_accountdeletion_id_seq;
DROP TABLE public.account_accountdeletion;
DROP SEQUENCE public.account_account_id_seq;
DROP TABLE public.account_account;
DROP SEQUENCE public."Trazas_logentry_id_seq";
DROP TABLE public."Trazas_logentry";
DROP SEQUENCE public."Salvas_salvas_id_seq";
DROP TABLE public."Salvas_salvas";
DROP SEQUENCE public."Reportes_reporte_solicitud_id_seq";
DROP TABLE public."Reportes_reporte_solicitud";
DROP SEQUENCE public."Reportes_reporte_proveedor_id_seq";
DROP TABLE public."Reportes_reporte_proveedor";
DROP TABLE public."OSDE";
DROP SEQUENCE public."Dashboard_order_id_seq";
DROP TABLE public."Dashboard_order";
DROP SEQUENCE public."Dashboard_dashboard_id_seq";
DROP TABLE public."Dashboard_dashboard";
SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: Dashboard_dashboard; Type: TABLE; Schema: public; Owner: const
--

CREATE TABLE public."Dashboard_dashboard" (
    id bigint NOT NULL
);


ALTER TABLE public."Dashboard_dashboard" OWNER TO const;

--
-- Name: Dashboard_dashboard_id_seq; Type: SEQUENCE; Schema: public; Owner: const
--

CREATE SEQUENCE public."Dashboard_dashboard_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Dashboard_dashboard_id_seq" OWNER TO const;

--
-- Name: Dashboard_dashboard_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: const
--

ALTER SEQUENCE public."Dashboard_dashboard_id_seq" OWNED BY public."Dashboard_dashboard".id;


--
-- Name: Dashboard_order; Type: TABLE; Schema: public; Owner: const
--

CREATE TABLE public."Dashboard_order" (
    id bigint NOT NULL,
    product_category character varying(20) NOT NULL,
    payment_method character varying(50) NOT NULL,
    shipping_cost character varying(50) NOT NULL,
    unit_price numeric(5,2) NOT NULL
);


ALTER TABLE public."Dashboard_order" OWNER TO const;

--
-- Name: Dashboard_order_id_seq; Type: SEQUENCE; Schema: public; Owner: const
--

CREATE SEQUENCE public."Dashboard_order_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Dashboard_order_id_seq" OWNER TO const;

--
-- Name: Dashboard_order_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: const
--

ALTER SEQUENCE public."Dashboard_order_id_seq" OWNED BY public."Dashboard_order".id;


--
-- Name: OSDE; Type: TABLE; Schema: public; Owner: const
--

CREATE TABLE public."OSDE" (
    reeup character varying(11) NOT NULL,
    nombre character varying(100) NOT NULL,
    siglas character varying(15) NOT NULL,
    direccion character varying(100) NOT NULL,
    correo character varying(254) NOT NULL,
    telefono integer NOT NULL,
    ministerio_id character varying(11) NOT NULL
);


ALTER TABLE public."OSDE" OWNER TO const;

--
-- Name: Reportes_reporte_proveedor; Type: TABLE; Schema: public; Owner: const
--

CREATE TABLE public."Reportes_reporte_proveedor" (
    id bigint NOT NULL
);


ALTER TABLE public."Reportes_reporte_proveedor" OWNER TO const;

--
-- Name: Reportes_reporte_proveedor_id_seq; Type: SEQUENCE; Schema: public; Owner: const
--

CREATE SEQUENCE public."Reportes_reporte_proveedor_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Reportes_reporte_proveedor_id_seq" OWNER TO const;

--
-- Name: Reportes_reporte_proveedor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: const
--

ALTER SEQUENCE public."Reportes_reporte_proveedor_id_seq" OWNED BY public."Reportes_reporte_proveedor".id;


--
-- Name: Reportes_reporte_solicitud; Type: TABLE; Schema: public; Owner: const
--

CREATE TABLE public."Reportes_reporte_solicitud" (
    id bigint NOT NULL
);


ALTER TABLE public."Reportes_reporte_solicitud" OWNER TO const;

--
-- Name: Reportes_reporte_solicitud_id_seq; Type: SEQUENCE; Schema: public; Owner: const
--

CREATE SEQUENCE public."Reportes_reporte_solicitud_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Reportes_reporte_solicitud_id_seq" OWNER TO const;

--
-- Name: Reportes_reporte_solicitud_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: const
--

ALTER SEQUENCE public."Reportes_reporte_solicitud_id_seq" OWNED BY public."Reportes_reporte_solicitud".id;


--
-- Name: Salvas_salvas; Type: TABLE; Schema: public; Owner: const
--

CREATE TABLE public."Salvas_salvas" (
    id bigint NOT NULL
);


ALTER TABLE public."Salvas_salvas" OWNER TO const;

--
-- Name: Salvas_salvas_id_seq; Type: SEQUENCE; Schema: public; Owner: const
--

CREATE SEQUENCE public."Salvas_salvas_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Salvas_salvas_id_seq" OWNER TO const;

--
-- Name: Salvas_salvas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: const
--

ALTER SEQUENCE public."Salvas_salvas_id_seq" OWNED BY public."Salvas_salvas".id;


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
-- Name: account_account; Type: TABLE; Schema: public; Owner: const
--

CREATE TABLE public.account_account (
    id bigint NOT NULL,
    timezone character varying(100) NOT NULL,
    language character varying(10) NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.account_account OWNER TO const;

--
-- Name: account_account_id_seq; Type: SEQUENCE; Schema: public; Owner: const
--

CREATE SEQUENCE public.account_account_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_account_id_seq OWNER TO const;

--
-- Name: account_account_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: const
--

ALTER SEQUENCE public.account_account_id_seq OWNED BY public.account_account.id;


--
-- Name: account_accountdeletion; Type: TABLE; Schema: public; Owner: const
--

CREATE TABLE public.account_accountdeletion (
    id bigint NOT NULL,
    email character varying(254) NOT NULL,
    date_requested timestamp with time zone NOT NULL,
    date_expunged timestamp with time zone,
    user_id integer
);


ALTER TABLE public.account_accountdeletion OWNER TO const;

--
-- Name: account_accountdeletion_id_seq; Type: SEQUENCE; Schema: public; Owner: const
--

CREATE SEQUENCE public.account_accountdeletion_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_accountdeletion_id_seq OWNER TO const;

--
-- Name: account_accountdeletion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: const
--

ALTER SEQUENCE public.account_accountdeletion_id_seq OWNED BY public.account_accountdeletion.id;


--
-- Name: account_emailaddress; Type: TABLE; Schema: public; Owner: const
--

CREATE TABLE public.account_emailaddress (
    id bigint NOT NULL,
    email character varying(254) NOT NULL,
    verified boolean NOT NULL,
    "primary" boolean NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.account_emailaddress OWNER TO const;

--
-- Name: account_emailaddress_id_seq; Type: SEQUENCE; Schema: public; Owner: const
--

CREATE SEQUENCE public.account_emailaddress_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_emailaddress_id_seq OWNER TO const;

--
-- Name: account_emailaddress_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: const
--

ALTER SEQUENCE public.account_emailaddress_id_seq OWNED BY public.account_emailaddress.id;


--
-- Name: account_emailconfirmation; Type: TABLE; Schema: public; Owner: const
--

CREATE TABLE public.account_emailconfirmation (
    id bigint NOT NULL,
    created timestamp with time zone NOT NULL,
    sent timestamp with time zone,
    key character varying(64) NOT NULL,
    email_address_id bigint NOT NULL
);


ALTER TABLE public.account_emailconfirmation OWNER TO const;

--
-- Name: account_emailconfirmation_id_seq; Type: SEQUENCE; Schema: public; Owner: const
--

CREATE SEQUENCE public.account_emailconfirmation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_emailconfirmation_id_seq OWNER TO const;

--
-- Name: account_emailconfirmation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: const
--

ALTER SEQUENCE public.account_emailconfirmation_id_seq OWNED BY public.account_emailconfirmation.id;


--
-- Name: account_passwordexpiry; Type: TABLE; Schema: public; Owner: const
--

CREATE TABLE public.account_passwordexpiry (
    id bigint NOT NULL,
    expiry integer NOT NULL,
    user_id integer NOT NULL,
    CONSTRAINT account_passwordexpiry_expiry_check CHECK ((expiry >= 0))
);


ALTER TABLE public.account_passwordexpiry OWNER TO const;

--
-- Name: account_passwordexpiry_id_seq; Type: SEQUENCE; Schema: public; Owner: const
--

CREATE SEQUENCE public.account_passwordexpiry_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_passwordexpiry_id_seq OWNER TO const;

--
-- Name: account_passwordexpiry_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: const
--

ALTER SEQUENCE public.account_passwordexpiry_id_seq OWNED BY public.account_passwordexpiry.id;


--
-- Name: account_passwordhistory; Type: TABLE; Schema: public; Owner: const
--

CREATE TABLE public.account_passwordhistory (
    id bigint NOT NULL,
    password character varying(255) NOT NULL,
    "timestamp" timestamp with time zone NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.account_passwordhistory OWNER TO const;

--
-- Name: account_passwordhistory_id_seq; Type: SEQUENCE; Schema: public; Owner: const
--

CREATE SEQUENCE public.account_passwordhistory_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_passwordhistory_id_seq OWNER TO const;

--
-- Name: account_passwordhistory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: const
--

ALTER SEQUENCE public.account_passwordhistory_id_seq OWNED BY public.account_passwordhistory.id;


--
-- Name: account_signupcode; Type: TABLE; Schema: public; Owner: const
--

CREATE TABLE public.account_signupcode (
    id bigint NOT NULL,
    code character varying(64) NOT NULL,
    max_uses integer NOT NULL,
    expiry timestamp with time zone,
    email character varying(254) NOT NULL,
    notes text NOT NULL,
    sent timestamp with time zone,
    created timestamp with time zone NOT NULL,
    use_count integer NOT NULL,
    inviter_id integer,
    CONSTRAINT account_signupcode_max_uses_check CHECK ((max_uses >= 0)),
    CONSTRAINT account_signupcode_use_count_check CHECK ((use_count >= 0))
);


ALTER TABLE public.account_signupcode OWNER TO const;

--
-- Name: account_signupcode_id_seq; Type: SEQUENCE; Schema: public; Owner: const
--

CREATE SEQUENCE public.account_signupcode_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_signupcode_id_seq OWNER TO const;

--
-- Name: account_signupcode_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: const
--

ALTER SEQUENCE public.account_signupcode_id_seq OWNED BY public.account_signupcode.id;


--
-- Name: account_signupcoderesult; Type: TABLE; Schema: public; Owner: const
--

CREATE TABLE public.account_signupcoderesult (
    id bigint NOT NULL,
    "timestamp" timestamp with time zone NOT NULL,
    signup_code_id bigint NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.account_signupcoderesult OWNER TO const;

--
-- Name: account_signupcoderesult_id_seq; Type: SEQUENCE; Schema: public; Owner: const
--

CREATE SEQUENCE public.account_signupcoderesult_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_signupcoderesult_id_seq OWNER TO const;

--
-- Name: account_signupcoderesult_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: const
--

ALTER SEQUENCE public.account_signupcoderesult_id_seq OWNED BY public.account_signupcoderesult.id;


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
    username character varying(20) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
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
    idproducto character varying(50) NOT NULL,
    descripcion character varying(50) NOT NULL,
    voltaje double precision NOT NULL,
    amperaje double precision NOT NULL,
    codigoum character varying(5) NOT NULL,
    codigomarca integer NOT NULL,
    activo boolean NOT NULL
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
    codmincex character varying(7) NOT NULL
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
    reeup character varying(11) NOT NULL,
    nombre character varying(100) NOT NULL,
    siglas character varying(15) NOT NULL,
    direccion character varying(100) NOT NULL,
    correo character varying(254) NOT NULL,
    telefono integer NOT NULL,
    representante character varying(40) NOT NULL,
    "OSDE_id" character varying(11) NOT NULL,
    codigoprovincia character varying(3) NOT NULL,
    fecha_contrato timestamp with time zone NOT NULL,
    fecha_caducidad timestamp with time zone,
    activo boolean NOT NULL
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
    ip inet NOT NULL,
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
-- Name: django_site; Type: TABLE; Schema: public; Owner: const
--

CREATE TABLE public.django_site (
    id integer NOT NULL,
    domain character varying(100) NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.django_site OWNER TO const;

--
-- Name: django_site_id_seq; Type: SEQUENCE; Schema: public; Owner: const
--

CREATE SEQUENCE public.django_site_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_site_id_seq OWNER TO const;

--
-- Name: django_site_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: const
--

ALTER SEQUENCE public.django_site_id_seq OWNED BY public.django_site.id;


--
-- Name: equipo; Type: TABLE; Schema: public; Owner: const
--

CREATE TABLE public.equipo (
    idproducto character varying(50) NOT NULL,
    descripcion character varying(50) NOT NULL,
    modelo character varying(30) NOT NULL,
    codigoum character varying(5) NOT NULL,
    codigomarca integer NOT NULL,
    activo boolean NOT NULL
);


ALTER TABLE public.equipo OWNER TO const;

--
-- Name: marca; Type: TABLE; Schema: public; Owner: const
--

CREATE TABLE public.marca (
    codigomarca integer NOT NULL,
    nommarca character varying(30) NOT NULL,
    codigopais character varying(20) NOT NULL,
    activa boolean NOT NULL
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
-- Name: ministerio; Type: TABLE; Schema: public; Owner: const
--

CREATE TABLE public.ministerio (
    reeup character varying(11) NOT NULL,
    nombre character varying(100) NOT NULL,
    siglas character varying(15) NOT NULL,
    direccion character varying(100) NOT NULL,
    correo character varying(254) NOT NULL,
    telefono integer NOT NULL
);


ALTER TABLE public.ministerio OWNER TO const;

--
-- Name: neumatico; Type: TABLE; Schema: public; Owner: const
--

CREATE TABLE public.neumatico (
    idproducto character varying(50) NOT NULL,
    descripcion character varying(50) NOT NULL,
    diametro double precision NOT NULL,
    grosor double precision NOT NULL,
    codigoum character varying(5) NOT NULL,
    codigomarca integer NOT NULL,
    activo boolean NOT NULL
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
    fecha timestamp with time zone NOT NULL,
    validez character varying(30) NOT NULL,
    estado character varying(30) NOT NULL,
    valor_estimado double precision NOT NULL,
    monto_total double precision,
    username integer NOT NULL,
    idpais character varying(20),
    codmincex character varying(7) NOT NULL,
    numsolicitud integer NOT NULL
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
    fecha timestamp with time zone NOT NULL,
    validez character varying(30) NOT NULL,
    estado character varying(30) NOT NULL,
    valor_estimado double precision NOT NULL,
    monto_total double precision,
    username integer NOT NULL,
    idpais character varying(20),
    codmincex character varying(7) NOT NULL,
    numsolicitud integer NOT NULL
);


ALTER TABLE public.oferta_equipo OWNER TO const;

--
-- Name: oferta_equipo_numero_seq; Type: SEQUENCE; Schema: public; Owner: const
--

CREATE SEQUENCE public.oferta_equipo_numero_seq
    AS integer
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
    numero integer NOT NULL
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
    fecha timestamp with time zone NOT NULL,
    validez character varying(30) NOT NULL,
    estado character varying(30) NOT NULL,
    valor_estimado double precision NOT NULL,
    monto_total double precision,
    username integer NOT NULL,
    idpais character varying(20),
    codmincex character varying(7) NOT NULL,
    numsolicitud integer NOT NULL
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
    fecha timestamp with time zone NOT NULL,
    validez character varying(30) NOT NULL,
    estado character varying(30) NOT NULL,
    valor_estimado double precision NOT NULL,
    monto_total double precision,
    username integer NOT NULL,
    idpais character varying(20),
    codmincex character varying(7) NOT NULL,
    numsolicitud integer NOT NULL
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
    idproducto character varying(50) NOT NULL,
    descripcion character varying(50) NOT NULL,
    codigoum character varying(5) NOT NULL,
    codigomarca integer NOT NULL,
    activo boolean NOT NULL
);


ALTER TABLE public.ppa OWNER TO const;

--
-- Name: ppa_equipo; Type: TABLE; Schema: public; Owner: const
--

CREATE TABLE public.ppa_equipo (
    id bigint NOT NULL,
    ppa_id character varying(50) NOT NULL,
    equipo_id character varying(50) NOT NULL
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
    codmincex character varying(7) NOT NULL,
    nomproveedor character varying(100) NOT NULL,
    clasificacion text NOT NULL,
    codigopais character varying(20) NOT NULL,
    activo boolean NOT NULL
);


ALTER TABLE public.proveedor OWNER TO const;

--
-- Name: proveedor_baterias; Type: TABLE; Schema: public; Owner: const
--

CREATE TABLE public.proveedor_baterias (
    id bigint NOT NULL,
    proveedor_id character varying(7) NOT NULL,
    bateria_id character varying(50) NOT NULL
);


ALTER TABLE public.proveedor_baterias OWNER TO const;

--
-- Name: proveedor_baterias_id_seq; Type: SEQUENCE; Schema: public; Owner: const
--

CREATE SEQUENCE public.proveedor_baterias_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.proveedor_baterias_id_seq OWNER TO const;

--
-- Name: proveedor_baterias_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: const
--

ALTER SEQUENCE public.proveedor_baterias_id_seq OWNED BY public.proveedor_baterias.id;


--
-- Name: proveedor_equipos; Type: TABLE; Schema: public; Owner: const
--

CREATE TABLE public.proveedor_equipos (
    id bigint NOT NULL,
    proveedor_id character varying(7) NOT NULL,
    equipo_id character varying(50) NOT NULL
);


ALTER TABLE public.proveedor_equipos OWNER TO const;

--
-- Name: proveedor_equipos_id_seq; Type: SEQUENCE; Schema: public; Owner: const
--

CREATE SEQUENCE public.proveedor_equipos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.proveedor_equipos_id_seq OWNER TO const;

--
-- Name: proveedor_equipos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: const
--

ALTER SEQUENCE public.proveedor_equipos_id_seq OWNED BY public.proveedor_equipos.id;


--
-- Name: proveedor_marca; Type: TABLE; Schema: public; Owner: const
--

CREATE TABLE public.proveedor_marca (
    id bigint NOT NULL,
    proveedor_id character varying(7) NOT NULL,
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
-- Name: proveedor_neumaticos; Type: TABLE; Schema: public; Owner: const
--

CREATE TABLE public.proveedor_neumaticos (
    id bigint NOT NULL,
    proveedor_id character varying(7) NOT NULL,
    neumatico_id character varying(50) NOT NULL
);


ALTER TABLE public.proveedor_neumaticos OWNER TO const;

--
-- Name: proveedor_neumaticos_id_seq; Type: SEQUENCE; Schema: public; Owner: const
--

CREATE SEQUENCE public.proveedor_neumaticos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.proveedor_neumaticos_id_seq OWNER TO const;

--
-- Name: proveedor_neumaticos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: const
--

ALTER SEQUENCE public.proveedor_neumaticos_id_seq OWNED BY public.proveedor_neumaticos.id;


--
-- Name: proveedor_ppa; Type: TABLE; Schema: public; Owner: const
--

CREATE TABLE public.proveedor_ppa (
    id bigint NOT NULL,
    proveedor_id character varying(7) NOT NULL,
    ppa_id character varying(50) NOT NULL
);


ALTER TABLE public.proveedor_ppa OWNER TO const;

--
-- Name: proveedor_ppa_id_seq; Type: SEQUENCE; Schema: public; Owner: const
--

CREATE SEQUENCE public.proveedor_ppa_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.proveedor_ppa_id_seq OWNER TO const;

--
-- Name: proveedor_ppa_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: const
--

ALTER SEQUENCE public.proveedor_ppa_id_seq OWNED BY public.proveedor_ppa.id;


--
-- Name: provincia; Type: TABLE; Schema: public; Owner: const
--

CREATE TABLE public.provincia (
    codigoprovincia character varying(3) NOT NULL,
    nombre character varying(100) NOT NULL,
    capital character varying(100) NOT NULL
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
    fechasol timestamp with time zone NOT NULL,
    estado character varying(10) NOT NULL,
    observaciones character varying(50),
    valor_estimado double precision NOT NULL,
    reeup character varying(11) NOT NULL,
    username integer,
    fecha_venc timestamp with time zone,
    plazo character varying(15) NOT NULL
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
    codmincex_id character varying(7) NOT NULL,
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
    idproducto character varying(50) NOT NULL,
    numsolicitud integer NOT NULL,
    CONSTRAINT solicitud_bateria_proxy_cantidad_check CHECK ((cantidad >= 0))
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
    fechasol timestamp with time zone NOT NULL,
    estado character varying(10) NOT NULL,
    observaciones character varying(50),
    valor_estimado double precision NOT NULL,
    reeup character varying(11) NOT NULL,
    username integer,
    fecha_venc timestamp with time zone,
    plazo character varying(15) NOT NULL
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
    codmincex character varying(7) NOT NULL,
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
    idproducto character varying(50) NOT NULL,
    numsolicitud integer NOT NULL,
    CONSTRAINT solicitud_equipo_proxy_cantidad_check CHECK ((cantidad >= 0))
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
    fechasol timestamp with time zone NOT NULL,
    estado character varying(10) NOT NULL,
    observaciones character varying(50),
    valor_estimado double precision NOT NULL,
    reeup character varying(11) NOT NULL,
    username integer,
    fecha_venc timestamp with time zone,
    plazo character varying(15) NOT NULL
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
    codmincex_id character varying(7) NOT NULL,
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
    idproducto character varying(50) NOT NULL,
    numsolicitud integer NOT NULL,
    CONSTRAINT solicitud_neumatico_proxy_cantidad_check CHECK ((cantidad >= 0))
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
    fechasol timestamp with time zone NOT NULL,
    estado character varying(10) NOT NULL,
    observaciones character varying(50),
    valor_estimado double precision NOT NULL,
    reeup character varying(11) NOT NULL,
    username integer,
    fecha_venc timestamp with time zone,
    plazo character varying(15) NOT NULL
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
    codmincex_id character varying(7) NOT NULL,
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
    idproducto character varying(50) NOT NULL,
    numsolicitud integer NOT NULL,
    CONSTRAINT solicitud_ppa_proxy_cantidad_check CHECK ((cantidad >= 0))
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
    codmincex character varying(7) NOT NULL
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
-- Name: um; Type: TABLE; Schema: public; Owner: const
--

CREATE TABLE public.um (
    codigoum character varying(5) NOT NULL,
    descripcionum character varying(10) NOT NULL
);


ALTER TABLE public.um OWNER TO const;

--
-- Name: Dashboard_dashboard id; Type: DEFAULT; Schema: public; Owner: const
--

ALTER TABLE ONLY public."Dashboard_dashboard" ALTER COLUMN id SET DEFAULT nextval('public."Dashboard_dashboard_id_seq"'::regclass);


--
-- Name: Dashboard_order id; Type: DEFAULT; Schema: public; Owner: const
--

ALTER TABLE ONLY public."Dashboard_order" ALTER COLUMN id SET DEFAULT nextval('public."Dashboard_order_id_seq"'::regclass);


--
-- Name: Reportes_reporte_proveedor id; Type: DEFAULT; Schema: public; Owner: const
--

ALTER TABLE ONLY public."Reportes_reporte_proveedor" ALTER COLUMN id SET DEFAULT nextval('public."Reportes_reporte_proveedor_id_seq"'::regclass);


--
-- Name: Reportes_reporte_solicitud id; Type: DEFAULT; Schema: public; Owner: const
--

ALTER TABLE ONLY public."Reportes_reporte_solicitud" ALTER COLUMN id SET DEFAULT nextval('public."Reportes_reporte_solicitud_id_seq"'::regclass);


--
-- Name: Salvas_salvas id; Type: DEFAULT; Schema: public; Owner: const
--

ALTER TABLE ONLY public."Salvas_salvas" ALTER COLUMN id SET DEFAULT nextval('public."Salvas_salvas_id_seq"'::regclass);


--
-- Name: Trazas_logentry id; Type: DEFAULT; Schema: public; Owner: const
--

ALTER TABLE ONLY public."Trazas_logentry" ALTER COLUMN id SET DEFAULT nextval('public."Trazas_logentry_id_seq"'::regclass);


--
-- Name: account_account id; Type: DEFAULT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.account_account ALTER COLUMN id SET DEFAULT nextval('public.account_account_id_seq'::regclass);


--
-- Name: account_accountdeletion id; Type: DEFAULT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.account_accountdeletion ALTER COLUMN id SET DEFAULT nextval('public.account_accountdeletion_id_seq'::regclass);


--
-- Name: account_emailaddress id; Type: DEFAULT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.account_emailaddress ALTER COLUMN id SET DEFAULT nextval('public.account_emailaddress_id_seq'::regclass);


--
-- Name: account_emailconfirmation id; Type: DEFAULT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.account_emailconfirmation ALTER COLUMN id SET DEFAULT nextval('public.account_emailconfirmation_id_seq'::regclass);


--
-- Name: account_passwordexpiry id; Type: DEFAULT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.account_passwordexpiry ALTER COLUMN id SET DEFAULT nextval('public.account_passwordexpiry_id_seq'::regclass);


--
-- Name: account_passwordhistory id; Type: DEFAULT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.account_passwordhistory ALTER COLUMN id SET DEFAULT nextval('public.account_passwordhistory_id_seq'::regclass);


--
-- Name: account_signupcode id; Type: DEFAULT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.account_signupcode ALTER COLUMN id SET DEFAULT nextval('public.account_signupcode_id_seq'::regclass);


--
-- Name: account_signupcoderesult id; Type: DEFAULT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.account_signupcoderesult ALTER COLUMN id SET DEFAULT nextval('public.account_signupcoderesult_id_seq'::regclass);


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
-- Name: django_site id; Type: DEFAULT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.django_site ALTER COLUMN id SET DEFAULT nextval('public.django_site_id_seq'::regclass);


--
-- Name: marca codigomarca; Type: DEFAULT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.marca ALTER COLUMN codigomarca SET DEFAULT nextval('public.marca_codigomarca_seq'::regclass);


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
-- Name: proveedor_baterias id; Type: DEFAULT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.proveedor_baterias ALTER COLUMN id SET DEFAULT nextval('public.proveedor_baterias_id_seq'::regclass);


--
-- Name: proveedor_equipos id; Type: DEFAULT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.proveedor_equipos ALTER COLUMN id SET DEFAULT nextval('public.proveedor_equipos_id_seq'::regclass);


--
-- Name: proveedor_marca id; Type: DEFAULT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.proveedor_marca ALTER COLUMN id SET DEFAULT nextval('public.proveedor_marca_id_seq'::regclass);


--
-- Name: proveedor_neumaticos id; Type: DEFAULT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.proveedor_neumaticos ALTER COLUMN id SET DEFAULT nextval('public.proveedor_neumaticos_id_seq'::regclass);


--
-- Name: proveedor_ppa id; Type: DEFAULT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.proveedor_ppa ALTER COLUMN id SET DEFAULT nextval('public.proveedor_ppa_id_seq'::regclass);


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
-- Data for Name: Dashboard_dashboard; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public."Dashboard_dashboard" (id) FROM stdin;
\.


--
-- Data for Name: Dashboard_order; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public."Dashboard_order" (id, product_category, payment_method, shipping_cost, unit_price) FROM stdin;
\.


--
-- Data for Name: OSDE; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public."OSDE" (reeup, nombre, siglas, direccion, correo, telefono, ministerio_id) FROM stdin;
126.0.05478	Grupo Empresarial de Diseño e Ingeniería	GEDIC	Calle Ayestarán, Cerro	presidencia@gedic.cu	78716458	126.0.01226
\.


--
-- Data for Name: Reportes_reporte_proveedor; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public."Reportes_reporte_proveedor" (id) FROM stdin;
\.


--
-- Data for Name: Reportes_reporte_solicitud; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public."Reportes_reporte_solicitud" (id) FROM stdin;
\.


--
-- Data for Name: Salvas_salvas; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public."Salvas_salvas" (id) FROM stdin;
\.


--
-- Data for Name: Trazas_logentry; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public."Trazas_logentry" (id) FROM stdin;
\.


--
-- Data for Name: account_account; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.account_account (id, timezone, language, user_id) FROM stdin;
1		es	1
2		es	2
3		es	3
4		es	4
5		es	5
\.


--
-- Data for Name: account_accountdeletion; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.account_accountdeletion (id, email, date_requested, date_expunged, user_id) FROM stdin;
\.


--
-- Data for Name: account_emailaddress; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.account_emailaddress (id, email, verified, "primary", user_id) FROM stdin;
1	wilferreira3@nauta.cu	f	t	1
2	informatico@construimport.cu	f	t	2
3	marketing@construimport.cu	f	t	3
4	dirdesarrollo@construimport.cu	f	t	4
5	alexander@construimport.cu	f	t	5
\.


--
-- Data for Name: account_emailconfirmation; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.account_emailconfirmation (id, created, sent, key, email_address_id) FROM stdin;
\.


--
-- Data for Name: account_passwordexpiry; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.account_passwordexpiry (id, expiry, user_id) FROM stdin;
\.


--
-- Data for Name: account_passwordhistory; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.account_passwordhistory (id, password, "timestamp", user_id) FROM stdin;
\.


--
-- Data for Name: account_signupcode; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.account_signupcode (id, code, max_uses, expiry, email, notes, sent, created, use_count, inviter_id) FROM stdin;
\.


--
-- Data for Name: account_signupcoderesult; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.account_signupcoderesult (id, "timestamp", signup_code_id, user_id) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.auth_group (id, name) FROM stdin;
7	Especialista_COMEX_Bateria
4	Especialista_COMEX_Equipo
6	Especialista_COMEX_Neumatico
5	Especialista_COMEX_PPA
8	Director_COMEX
1	Administrador
3	Director_Desarrollo
2	Especialista_Marketing
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
2	1	12
3	1	13
4	1	14
5	1	15
6	1	16
7	2	141
8	2	144
9	2	145
10	2	148
11	2	149
12	2	152
13	2	157
14	2	29
15	2	160
16	2	32
17	2	33
18	2	36
19	2	165
20	2	37
21	2	168
22	2	169
23	2	170
24	2	40
25	2	172
26	2	41
27	2	60
28	2	44
29	2	45
30	2	177
31	2	178
32	2	48
33	2	180
34	2	181
35	2	182
36	2	53
37	2	184
38	2	185
39	2	56
40	2	52
41	2	188
42	2	189
43	2	190
44	2	61
45	2	192
46	2	193
47	2	194
48	2	64
49	2	196
50	2	69
51	2	68
52	2	72
53	2	204
54	2	76
55	3	32
56	3	64
57	3	34
58	3	36
59	3	68
60	3	38
61	3	72
62	3	40
63	3	42
64	3	204
65	3	76
66	3	44
67	3	48
68	3	52
69	3	56
70	3	60
71	3	30
72	4	103
73	4	104
74	4	172
75	4	82
76	4	84
77	5	90
78	5	172
79	5	92
80	5	95
81	5	96
82	6	99
83	6	100
84	6	172
85	6	86
86	6	88
87	7	107
88	7	108
89	7	172
90	7	78
91	7	80
92	7	144
93	4	148
94	6	160
95	5	168
96	8	144
97	8	148
98	8	160
99	8	168
100	8	172
101	8	184
102	8	196
103	8	78
104	8	80
105	8	208
106	8	82
107	8	84
108	8	86
109	8	88
110	8	90
111	8	92
112	8	96
113	8	100
114	8	104
115	8	108
116	1	220
117	1	4
118	3	192
119	3	160
120	3	196
121	3	168
122	3	172
123	3	148
124	3	184
125	2	186
126	2	164
127	3	164
128	3	188
129	2	150
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
25	Can add site	add_site	7
26	Can change site	change_site	7
27	Can delete site	delete_site	7
28	Can view site	view_site	7
29	Can add Solicitud de Batería	add_solicitud_bateria	8
30	Can change Solicitud de Batería	change_solicitud_bateria	8
31	Can delete Solicitud de Batería	delete_solicitud_bateria	8
32	Can view Solicitud de Batería	view_solicitud_bateria	8
33	Can add Solicitud de Equipo	add_solicitud_equipo	9
34	Can change Solicitud de Equipo	change_solicitud_equipo	9
35	Can delete Solicitud de Equipo	delete_solicitud_equipo	9
36	Can view Solicitud de Equipo	view_solicitud_equipo	9
37	Can add Solicitud de Neumático	add_solicitud_neumatico	10
38	Can change Solicitud de Neumático	change_solicitud_neumatico	10
39	Can delete Solicitud de Neumático	delete_solicitud_neumatico	10
40	Can view Solicitud de Neumático	view_solicitud_neumatico	10
41	Can add Solicitud de Partes, Piezas y Accesorios	add_solicitud_ppa	11
42	Can change Solicitud de Partes, Piezas y Accesorios	change_solicitud_ppa	11
43	Can delete Solicitud de Partes, Piezas y Accesorios	delete_solicitud_ppa	11
44	Can view Solicitud de Partes, Piezas y Accesorios	view_solicitud_ppa	11
45	Can add Partes, Piezas y Accesorios	add_solicitud_ppa_proxy	12
46	Can change Partes, Piezas y Accesorios	change_solicitud_ppa_proxy	12
47	Can delete Partes, Piezas y Accesorios	delete_solicitud_ppa_proxy	12
48	Can view Partes, Piezas y Accesorios	view_solicitud_ppa_proxy	12
49	Can add Proveedor	add_solicitud_ppa_proveedor	13
50	Can change Proveedor	change_solicitud_ppa_proveedor	13
51	Can delete Proveedor	delete_solicitud_ppa_proveedor	13
52	Can view Proveedor	view_solicitud_ppa_proveedor	13
53	Can add Neumático	add_solicitud_neumatico_proxy	14
54	Can change Neumático	change_solicitud_neumatico_proxy	14
55	Can delete Neumático	delete_solicitud_neumatico_proxy	14
56	Can view Neumático	view_solicitud_neumatico_proxy	14
57	Can add Proveedor	add_solicitud_neumatico_proveedor	15
58	Can change Proveedor	change_solicitud_neumatico_proveedor	15
59	Can delete Proveedor	delete_solicitud_neumatico_proveedor	15
60	Can view Proveedor	view_solicitud_neumatico_proveedor	15
61	Can add Equipo	add_solicitud_equipo_proxy	16
62	Can change Equipo	change_solicitud_equipo_proxy	16
63	Can delete Equipo	delete_solicitud_equipo_proxy	16
64	Can view Equipo	view_solicitud_equipo_proxy	16
65	Can add Proveedor	add_solicitud_equipo_proveedor	17
66	Can change Proveedor	change_solicitud_equipo_proveedor	17
67	Can delete Proveedor	delete_solicitud_equipo_proveedor	17
68	Can view Proveedor	view_solicitud_equipo_proveedor	17
69	Can add Batería	add_solicitud_bateria_proxy	18
70	Can change Batería	change_solicitud_bateria_proxy	18
71	Can delete Batería	delete_solicitud_bateria_proxy	18
72	Can view Batería	view_solicitud_bateria_proxy	18
73	Can add Proveedor	add_solicitud_bateria_proveedor	19
74	Can change Proveedor	change_solicitud_bateria_proveedor	19
75	Can delete Proveedor	delete_solicitud_bateria_proveedor	19
76	Can view Proveedor	view_solicitud_bateria_proveedor	19
77	Can add Oferta de Baterías	add_oferta_bateria	20
78	Can change Oferta de Baterías	change_oferta_bateria	20
79	Can delete Oferta de Baterías	delete_oferta_bateria	20
80	Can view Oferta de Baterías	view_oferta_bateria	20
81	Can add Oferta de Equipo	add_oferta_equipo	21
82	Can change Oferta de Equipo	change_oferta_equipo	21
83	Can delete Oferta de Equipo	delete_oferta_equipo	21
84	Can view Oferta de Equipo	view_oferta_equipo	21
85	Can add Oferta de Neumáticos	add_oferta_neumatico	22
86	Can change Oferta de Neumáticos	change_oferta_neumatico	22
87	Can delete Oferta de Neumáticos	delete_oferta_neumatico	22
88	Can view Oferta de Neumáticos	view_oferta_neumatico	22
89	Can add Oferta de Partes y Piezas	add_oferta_ppa	23
90	Can change Oferta de Partes y Piezas	change_oferta_ppa	23
91	Can delete Oferta de Partes y Piezas	delete_oferta_ppa	23
92	Can view Oferta de Partes y Piezas	view_oferta_ppa	23
93	Can add Partes y Piezas	add_oferta_ppa_proxy	24
94	Can change Partes y Piezas	change_oferta_ppa_proxy	24
95	Can delete Partes y Piezas	delete_oferta_ppa_proxy	24
96	Can view Partes y Piezas	view_oferta_ppa_proxy	24
97	Can add Neumático	add_oferta_neumatico_proxy	25
98	Can change Neumático	change_oferta_neumatico_proxy	25
99	Can delete Neumático	delete_oferta_neumatico_proxy	25
100	Can view Neumático	view_oferta_neumatico_proxy	25
101	Can add Equipo	add_oferta_equipo_proxy	26
102	Can change Equipo	change_oferta_equipo_proxy	26
103	Can delete Equipo	delete_oferta_equipo_proxy	26
104	Can view Equipo	view_oferta_equipo_proxy	26
105	Can add Batería	add_oferta_bateria_proxy	27
106	Can change Batería	change_oferta_bateria_proxy	27
107	Can delete Batería	delete_oferta_bateria_proxy	27
108	Can view Batería	view_oferta_bateria_proxy	27
109	Can add account	add_account	28
110	Can change account	change_account	28
111	Can delete account	delete_account	28
112	Can view account	view_account	28
113	Can add account deletion	add_accountdeletion	29
114	Can change account deletion	change_accountdeletion	29
115	Can delete account deletion	delete_accountdeletion	29
116	Can view account deletion	view_accountdeletion	29
117	Can add email address	add_emailaddress	30
118	Can change email address	change_emailaddress	30
119	Can delete email address	delete_emailaddress	30
120	Can view email address	view_emailaddress	30
121	Can add email confirmation	add_emailconfirmation	31
122	Can change email confirmation	change_emailconfirmation	31
123	Can delete email confirmation	delete_emailconfirmation	31
124	Can view email confirmation	view_emailconfirmation	31
125	Can add signup code	add_signupcode	32
126	Can change signup code	change_signupcode	32
127	Can delete signup code	delete_signupcode	32
128	Can view signup code	view_signupcode	32
129	Can add signup code result	add_signupcoderesult	33
130	Can change signup code result	change_signupcoderesult	33
131	Can delete signup code result	delete_signupcoderesult	33
132	Can view signup code result	view_signupcoderesult	33
133	Can add password expiry	add_passwordexpiry	34
134	Can change password expiry	change_passwordexpiry	34
135	Can delete password expiry	delete_passwordexpiry	34
136	Can view password expiry	view_passwordexpiry	34
137	Can add password history	add_passwordhistory	35
138	Can change password history	change_passwordhistory	35
139	Can delete password history	delete_passwordhistory	35
140	Can view password history	view_passwordhistory	35
141	Can add Batería	add_bateria	36
142	Can change Batería	change_bateria	36
143	Can delete Batería	delete_bateria	36
144	Can view Batería	view_bateria	36
145	Can add Equipo	add_equipo	37
146	Can change Equipo	change_equipo	37
147	Can delete Equipo	delete_equipo	37
148	Can view Equipo	view_equipo	37
149	Can add Marca	add_marca	38
150	Can change Marca	change_marca	38
151	Can delete Marca	delete_marca	38
152	Can view Marca	view_marca	38
153	Can add Ministerio	add_ministerio	39
154	Can change Ministerio	change_ministerio	39
155	Can delete Ministerio	delete_ministerio	39
156	Can view Ministerio	view_ministerio	39
157	Can add Neumático	add_neumatico	40
158	Can change Neumático	change_neumatico	40
159	Can delete Neumático	delete_neumatico	40
160	Can view Neumático	view_neumatico	40
161	Can add País	add_pais	41
162	Can change País	change_pais	41
163	Can delete País	delete_pais	41
164	Can view País	view_pais	41
165	Can add Pieza	add_ppa	42
166	Can change Pieza	change_ppa	42
167	Can delete Pieza	delete_ppa	42
168	Can view Pieza	view_ppa	42
169	Can add Proveedor	add_proveedor	43
170	Can change Proveedor	change_proveedor	43
171	Can delete Proveedor	delete_proveedor	43
172	Can view Proveedor	view_proveedor	43
173	Can add Provincia	add_provincia	44
174	Can change Provincia	change_provincia	44
175	Can delete Provincia	delete_provincia	44
176	Can view Provincia	view_provincia	44
177	Can add Unidad de Medida	add_um	45
178	Can change Unidad de Medida	change_um	45
179	Can delete Unidad de Medida	delete_um	45
180	Can view Unidad de Medida	view_um	45
181	Can add Sucursal en Cuba	add_sucursal_cuba	46
182	Can change Sucursal en Cuba	change_sucursal_cuba	46
183	Can delete Sucursal en Cuba	delete_sucursal_cuba	46
184	Can view Sucursal en Cuba	view_sucursal_cuba	46
185	Can add OSDE	add_osde	47
186	Can change OSDE	change_osde	47
187	Can delete OSDE	delete_osde	47
188	Can view OSDE	view_osde	47
189	Can add cliente	add_cliente	48
190	Can change cliente	change_cliente	48
191	Can delete cliente	delete_cliente	48
192	Can view cliente	view_cliente	48
193	Can add Casa Matriz	add_casa_matriz	49
194	Can change Casa Matriz	change_casa_matriz	49
195	Can delete Casa Matriz	delete_casa_matriz	49
196	Can view Casa Matriz	view_casa_matriz	49
197	Can add log entry	add_logentry	50
198	Can change log entry	change_logentry	50
199	Can delete log entry	delete_logentry	50
200	Can view log entry	view_logentry	50
201	Can add ('Reporte de Solicitud',)	add_reporte_solicitud	51
202	Can change ('Reporte de Solicitud',)	change_reporte_solicitud	51
203	Can delete ('Reporte de Solicitud',)	delete_reporte_solicitud	51
204	Can view ('Reporte de Solicitud',)	view_reporte_solicitud	51
205	Can add ('Reporte de Proveedor',)	add_reporte_proveedor	52
206	Can change ('Reporte de Proveedor',)	change_reporte_proveedor	52
207	Can delete ('Reporte de Proveedor',)	delete_reporte_proveedor	52
208	Can view ('Reporte de Proveedor',)	view_reporte_proveedor	52
209	Can add dashboard	add_dashboard	53
210	Can change dashboard	change_dashboard	53
211	Can delete dashboard	delete_dashboard	53
212	Can view dashboard	view_dashboard	53
213	Can add order	add_order	54
214	Can change order	change_order	54
215	Can delete order	delete_order	54
216	Can view order	view_order	54
217	Can add Salva y Restaura	add_salvas	55
218	Can change Salva y Restaura	change_salvas	55
219	Can delete Salva y Restaura	delete_salvas	55
220	Can view Salva y Restaura	view_salvas	55
221	Can add saved report	add_savedreport	56
222	Can change saved report	change_savedreport	56
223	Can delete saved report	delete_savedreport	56
224	Can view saved report	view_savedreport	56
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
5	pbkdf2_sha256$320000$oAn4o1Tu71Pj8aeaZ5tKpu$/n0mqaIV8DivIyMQ+6+0ADdLIqPwxAjWV9YqlX4JAA4=	2022-07-02 18:33:29.219476-04	f	epcomex	Alexander	Fajardo Castellanos	alexander@construimport.cu	t	t	2022-07-01 10:47:36.767026-04
1	pbkdf2_sha256$320000$i69d6uGAyp3R4PeCf2mVgu$JJfFCQ2mFU1WwnEhIiwilyVpxddlQ27PQLXfi9DQvRY=	2022-07-03 04:10:14.748325-04	t	admin			wilferreira3@nauta.cu	t	t	2022-06-25 17:56:41.610494-04
4	pbkdf2_sha256$320000$628sFGzZMJl8m5TvZyt2Jy$I90MA4kH9yhqdKcxt5J/kRGmVMosFSWQwQEbGjMIbdg=	2022-07-03 04:31:19.730703-04	f	director_desarrollo	Yanela	Arias Guerra	dirdesarrollo@construimport.cu	t	t	2022-06-28 12:53:47.830959-04
3	pbkdf2_sha256$320000$zgAxTJOIyFvO9DLlO7hyJZ$cRI1vkoX76xBH80nazw1uVdtLHQSG+d47SH0SZA/6mc=	2022-07-03 04:33:04.770528-04	f	marketing	Luis	Crespo Curbelo	marketing@construimport.cu	t	t	2022-06-25 18:30:18.534636-04
2	pbkdf2_sha256$320000$k0FuQxcnSj3cWXtk9Q7dqw$MMGHW6pyb37bM51OHoTaIcOCBjLgwF5pOHHPfCn+25c=	2022-07-03 06:05:07.773172-04	f	informatico	Wilfredo	Ferreira Rabi	informatico@construimport.cu	t	t	2022-06-25 18:19:39.326627-04
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

COPY public.bateria (idproducto, descripcion, voltaje, amperaje, codigoum, codigomarca, activo) FROM stdin;
\.


--
-- Data for Name: casa_matriz; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.casa_matriz (id, direccion, email, telefono, contacto, sitio_web, codmincex) FROM stdin;
1	Avenida Brasil	petrobras@brasil.com	52147863	Maria de la Paz	petrobras.com	BR-5852
2	Avenida OJ	home@emp.com	541236976	John Doe	emp.com	ES-1523
\.


--
-- Data for Name: cliente; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.cliente (reeup, nombre, siglas, direccion, correo, telefono, representante, "OSDE_id", codigoprovincia, fecha_contrato, fecha_caducidad, activo) FROM stdin;
126.0.05478	Empresa Comercializadora del Cemento	ECOCEM	Calle 34, La Lisa		72475869	Maricelis Ramirez Perdomo	126.0.05478	HB	2022-06-26 20:00:00-04	2023-06-26 20:00:00-04	f
126.0.02147	Empresa Comercializadora de Materiales	ECOMAT	Ave 41, Playa	direccion@ecomat.cu	72069824	Jorge Martinez	126.0.05478	HB	2022-07-02 20:00:00-04	2023-07-02 20:00:00-04	f
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id, ip) FROM stdin;
1	2022-06-25 18:08:34.709986-04	1	administrador	1	[{"added": {}}]	3	1	127.0.0.1
2	2022-06-25 18:08:44.69334-04	1	Administrador	2	[{"changed": {"fields": ["Name"]}}]	3	1	127.0.0.1
3	2022-06-25 18:11:19.946343-04	2	Marketing	1	[{"added": {}}]	3	1	127.0.0.1
4	2022-06-25 18:12:23.808964-04	3	Director_Desarrollo	1	[{"added": {}}]	3	1	127.0.0.1
5	2022-06-25 18:13:28.827723-04	4	Especialista_COMEX_Equipo	1	[{"added": {}}]	3	1	127.0.0.1
6	2022-06-25 18:14:21.807347-04	5	Especialista_COMEX_PPA	1	[{"added": {}}]	3	1	127.0.0.1
7	2022-06-25 18:14:27.742549-04	4	Especialista_COMEX_Equipo	2	[]	3	1	127.0.0.1
8	2022-06-25 18:14:39.282198-04	5	Especialista_COMEX_PPA	2	[{"changed": {"fields": ["Permissions"]}}]	3	1	127.0.0.1
9	2022-06-25 18:15:19.138062-04	6	Especialista_COMEX_Neumatico	1	[{"added": {}}]	3	1	127.0.0.1
10	2022-06-25 18:16:00.721929-04	7	Especialista_COMEX_Bateria	1	[{"added": {}}]	3	1	127.0.0.1
11	2022-06-25 18:16:13.072503-04	4	Especialista_COMEX_Equipo	2	[{"changed": {"fields": ["Permissions"]}}]	3	1	127.0.0.1
12	2022-06-25 18:16:27.025909-04	6	Especialista_COMEX_Neumatico	2	[{"changed": {"fields": ["Permissions"]}}]	3	1	127.0.0.1
13	2022-06-25 18:16:46.097173-04	5	Especialista_COMEX_PPA	2	[{"changed": {"fields": ["Permissions"]}}]	3	1	127.0.0.1
14	2022-06-25 18:18:44.546576-04	8	Director_COMEX	1	[{"added": {}}]	3	1	127.0.0.1
15	2022-06-25 18:19:39.486406-04	2	informatico	1	[{"added": {}}]	4	1	127.0.0.1
16	2022-06-25 18:19:50.451545-04	2	informatico	2	[{"changed": {"fields": ["Roles"]}}]	4	1	127.0.0.1
17	2022-06-25 18:20:37.601198-04	1	Administrador	2	[{"changed": {"fields": ["Permissions"]}}]	3	1	127.0.0.1
18	2022-06-25 18:30:18.711656-04	3	marketing	1	[{"added": {}}]	4	2	127.0.0.1
19	2022-06-25 18:30:26.679468-04	3	marketing	2	[{"changed": {"fields": ["Roles"]}}]	4	2	127.0.0.1
20	2022-06-25 18:30:57.594562-04	2	Especialista_Marketing	2	[{"changed": {"fields": ["Name"]}}]	3	1	127.0.0.1
21	2022-06-27 12:03:33.978627-04	U	Unidad	1	[{"added": {}}]	45	3	127.0.0.1
22	2022-06-27 12:03:40.810324-04	MT	Metro	1	[{"added": {}}]	45	3	127.0.0.1
23	2022-06-27 12:03:55.433254-04	In	Pulgadas	1	[{"added": {}}]	45	3	127.0.0.1
24	2022-06-27 19:40:35.816605-04	RU	Rusia	1	[{"added": {}}]	41	1	127.0.0.1
25	2022-06-27 19:40:58.971977-04	1	Kraz	1	[{"added": {}}]	38	1	127.0.0.1
26	2022-06-27 19:42:19.55002-04	126.0.01226	Ministerio de la Construcción	1	[{"added": {}}]	39	1	127.0.0.1
27	2022-06-27 19:43:40.199474-04	126.0.05478	GEDIC	1	[{"added": {}}]	47	1	127.0.0.1
28	2022-06-27 19:44:12.913783-04	584284-00-1156	CAMION  VOLTEO KRAZ 256	1	[{"added": {}}]	37	1	127.0.0.1
29	2022-06-27 19:47:23.69306-04	HB	Habana	1	[{"added": {}}]	44	1	127.0.0.1
30	2022-06-27 19:47:31.498091-04	HB	La Habana	2	[{"changed": {"fields": ["Nombre"]}}]	44	1	127.0.0.1
32	2022-06-27 19:49:51.052468-04	126.0.05478	Empresa Comercializadora del Cemento	1	[{"added": {}}]	48	1	127.0.0.1
33	2022-06-28 12:53:47.975911-04	4	director_desarrollo	1	[{"added": {}}]	4	2	127.0.0.1
34	2022-06-28 12:53:57.243146-04	4	director_desarrollo	2	[{"changed": {"fields": ["Roles"]}}]	4	2	127.0.0.1
35	2022-06-28 12:54:25.165786-04	1	Administrador	2	[{"changed": {"fields": ["Permissions"]}}]	3	1	127.0.0.1
36	2022-06-28 13:33:32.027103-04	4	director_desarrollo	2	[{"changed": {"fields": ["First name", "Last name"]}}]	4	2	127.0.0.1
37	2022-07-01 02:24:51.755171-04	BR-5852	PetroBras	2	[{"changed": {"fields": ["Marcas", "Equipos", "Activo"]}}]	43	3	127.0.0.1
38	2022-07-01 02:28:02.683045-04	ES-1523	EMP	2	[{"changed": {"fields": ["Marcas", "Equipos", "Activo"]}}, {"changed": {"name": "Casa Matriz", "object": "Casa_Matriz object (2)", "fields": ["Tel\\u00e9fono"]}}]	43	3	127.0.0.1
39	2022-07-01 02:28:51.30464-04	BR-5852	PetroBras	2	[{"changed": {"fields": ["Activo"]}}]	43	3	127.0.0.1
40	2022-07-01 02:32:40.639114-04	3	Director_Desarrollo	2	[{"changed": {"fields": ["Permissions"]}}]	3	1	127.0.0.1
41	2022-07-01 02:56:29.907898-04	2	Especialista_Marketing	2	[{"changed": {"fields": ["Permissions"]}}]	3	1	127.0.0.1
42	2022-07-01 02:56:50.070394-04	3	Director_Desarrollo	2	[{"changed": {"fields": ["Permissions"]}}]	3	1	127.0.0.1
43	2022-07-01 03:06:17.704843-04	BR-5852	PetroBras	2	[{"changed": {"fields": ["Activo"]}}]	43	3	127.0.0.1
46	2022-07-01 06:30:17.393988-04	2	Kamaz	1	[{"added": {}}]	38	3	127.0.0.1
47	2022-07-01 06:32:26.603666-04	2	Especialista_Marketing	2	[{"changed": {"fields": ["Permissions"]}}]	3	1	127.0.0.1
48	2022-07-01 06:32:49.345678-04	1	Kraz	2	[{"changed": {"fields": ["Activa"]}}]	38	3	127.0.0.1
49	2022-07-01 10:47:37.209318-04	5	epcomex	1	[{"added": {}}]	4	2	127.0.0.1
50	2022-07-01 10:47:45.970726-04	5	epcomex	2	[{"changed": {"fields": ["Roles"]}}]	4	2	127.0.0.1
51	2022-07-01 10:48:11.642557-04	45	45	2	[{"changed": {"fields": ["Estado", "especialista"]}}]	9	4	127.0.0.1
52	2022-07-01 13:26:59.983166-04	55	55	2	[{"changed": {"fields": ["Estado", "especialista"]}}]	9	4	127.0.0.1
53	2022-07-01 13:27:08.466776-04	55	55	2	[]	9	4	127.0.0.1
54	2022-07-01 14:10:34.713151-04	56	56	2	[{"changed": {"fields": ["Estado", "especialista"]}}]	9	4	127.0.0.1
55	2022-07-01 14:16:25.1876-04	57	57	2	[{"changed": {"fields": ["Estado", "especialista"]}}]	9	4	127.0.0.1
56	2022-07-01 14:50:18.517549-04	60	60	2	[{"changed": {"fields": ["Estado", "especialista"]}}]	9	4	127.0.0.1
120	2022-07-02 18:15:29.079544-04	61	61	2	[{"changed": {"fields": ["Estado", "especialista"]}}]	9	4	127.0.0.1
121	2022-07-02 18:21:13.514474-04	62	62	2	[{"changed": {"fields": ["Estado", "especialista"]}}]	9	4	127.0.0.1
123	2022-07-02 18:30:24.508439-04	63	63	2	[{"changed": {"fields": ["Estado", "especialista"]}}]	9	4	127.0.0.1
125	2022-07-02 18:33:16.993062-04	64	64	2	[{"changed": {"fields": ["Estado", "especialista"]}}]	9	4	127.0.0.1
126	2022-07-03 04:10:57.552995-04	2	Especialista_Marketing	2	[]	3	1	127.0.0.1
127	2022-07-03 04:12:17.643111-04	126.0.05478	GEDIC	2	[]	47	3	127.0.0.1
128	2022-07-03 05:15:41.944389-04	3	Komatsu	1	[{"added": {}}]	38	3	127.0.0.1
129	2022-07-03 05:21:35.148835-04	126.0.02147	Empresa Comercializadora de Materiales	1	[{"added": {}}]	48	3	127.0.0.1
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
7	sites	site
8	Solicitudes	solicitud_bateria
9	Solicitudes	solicitud_equipo
10	Solicitudes	solicitud_neumatico
11	Solicitudes	solicitud_ppa
12	Solicitudes	solicitud_ppa_proxy
13	Solicitudes	solicitud_ppa_proveedor
14	Solicitudes	solicitud_neumatico_proxy
15	Solicitudes	solicitud_neumatico_proveedor
16	Solicitudes	solicitud_equipo_proxy
17	Solicitudes	solicitud_equipo_proveedor
18	Solicitudes	solicitud_bateria_proxy
19	Solicitudes	solicitud_bateria_proveedor
20	COMEX	oferta_bateria
21	COMEX	oferta_equipo
22	COMEX	oferta_neumatico
23	COMEX	oferta_ppa
24	COMEX	oferta_ppa_proxy
25	COMEX	oferta_neumatico_proxy
26	COMEX	oferta_equipo_proxy
27	COMEX	oferta_bateria_proxy
28	account	account
29	account	accountdeletion
30	account	emailaddress
31	account	emailconfirmation
32	account	signupcode
33	account	signupcoderesult
34	account	passwordexpiry
35	account	passwordhistory
36	Nomencladores	bateria
37	Nomencladores	equipo
38	Nomencladores	marca
39	Nomencladores	ministerio
40	Nomencladores	neumatico
41	Nomencladores	pais
42	Nomencladores	ppa
43	Nomencladores	proveedor
44	Nomencladores	provincia
45	Nomencladores	um
46	Nomencladores	sucursal_cuba
47	Nomencladores	osde
48	Nomencladores	cliente
49	Nomencladores	casa_matriz
50	Trazas	logentry
51	Reportes	reporte_solicitud
52	Reportes	reporte_proveedor
53	Dashboard	dashboard
54	Dashboard	order
55	Salvas	salvas
56	reports	savedreport
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2022-06-25 17:54:51.993248-04
2	contenttypes	0002_remove_content_type_name	2022-06-25 17:54:52.011793-04
3	auth	0001_initial	2022-06-25 17:54:52.145802-04
4	Nomencladores	0001_initial	2022-06-25 17:54:52.730677-04
5	Solicitudes	0001_initial	2022-06-25 17:54:53.549024-04
6	COMEX	0001_initial	2022-06-25 17:54:54.605799-04
7	COMEX	0002_alter_oferta_bateria_fecha_alter_oferta_equipo_fecha_and_more	2022-06-25 17:54:54.718478-04
8	COMEX	0003_alter_oferta_bateria_fecha_alter_oferta_equipo_fecha_and_more	2022-06-25 17:54:54.819075-04
9	COMEX	0004_alter_oferta_bateria_fecha_alter_oferta_equipo_fecha_and_more	2022-06-25 17:54:54.985944-04
10	Dashboard	0001_initial	2022-06-25 17:54:55.001308-04
11	Dashboard	0002_order	2022-06-25 17:54:55.011309-04
12	Nomencladores	0002_alter_cliente_telefono_alter_ministerio_telefono_and_more	2022-06-25 17:54:55.068308-04
13	Nomencladores	0003_cliente_fecha_contrato_alter_cliente_telefono_and_more	2022-06-25 17:54:55.151716-04
14	Nomencladores	0004_alter_cliente_telefono_alter_ministerio_telefono_and_more	2022-06-25 17:54:55.223841-04
15	Nomencladores	0005_cliente_fecha_caducidad_alter_cliente_fecha_contrato_and_more	2022-06-25 17:54:55.353914-04
16	Reportes	0001_initial	2022-06-25 17:54:55.370883-04
17	Reportes	0002_alter_reporte_solicitud_options	2022-06-25 17:54:55.379129-04
18	Reportes	0003_reporte_proveedor	2022-06-25 17:54:55.386966-04
19	Salvas	0001_initial	2022-06-25 17:54:55.396058-04
20	Salvas	0002_alter_salvas_options	2022-06-25 17:54:55.403006-04
21	Solicitudes	0002_alter_solicitud_bateria_fechasol_and_more	2022-06-25 17:54:55.500041-04
22	Solicitudes	0003_alter_solicitud_bateria_fechasol_and_more	2022-06-25 17:54:55.675947-04
23	Solicitudes	0004_alter_solicitud_bateria_fechasol_and_more	2022-06-25 17:54:55.800685-04
24	Trazas	0001_initial	2022-06-25 17:54:55.810713-04
25	Trazas	0002_logentry_ip	2022-06-25 17:54:55.818311-04
26	Trazas	0003_alter_logentry_ip	2022-06-25 17:54:55.822923-04
27	Trazas	0004_remove_logentry_ip	2022-06-25 17:54:55.827924-04
28	account	0001_initial	2022-06-25 17:54:56.140644-04
29	account	0002_fix_str	2022-06-25 17:54:56.176136-04
30	account	0003_passwordexpiry_passwordhistory	2022-06-25 17:54:56.265352-04
31	account	0004_auto_20170416_1821	2022-06-25 17:54:56.28137-04
32	account	0005_update_default_language	2022-06-25 17:54:56.299369-04
33	account	0006_alter_account_id_alter_account_language_and_more	2022-06-25 17:54:56.575654-04
34	admin	0001_initial	2022-06-25 17:54:56.679492-04
35	admin	0002_alter_logentry_object_repr	2022-06-25 17:54:56.801735-04
36	admin	0003_alter_logentry_action_flag_and_more	2022-06-25 17:54:56.92599-04
37	admin	0004_alter_logentry_change_message	2022-06-25 17:54:56.94746-04
38	admin	0005_logentry_ip	2022-06-25 17:54:56.969701-04
39	admin	0006_alter_logentry_ip	2022-06-25 17:54:56.988712-04
40	admin	0007_alter_logentry_action_flag_and_more	2022-06-25 17:54:57.02668-04
41	auth	0002_remove_user_role	2022-06-25 17:54:57.047707-04
42	auth	0003_alter_user_first_name_alter_user_is_active_and_more	2022-06-25 17:54:57.19842-04
43	auth	0004_alter_user_email	2022-06-25 17:54:57.230919-04
44	notifications	0001_initial	2022-06-25 17:54:57.339159-04
45	notifications	0002_auto_20150224_1134	2022-06-25 17:54:57.372056-04
46	notifications	0003_notification_data	2022-06-25 17:54:57.392999-04
47	notifications	0004_auto_20150826_1508	2022-06-25 17:54:57.413021-04
48	notifications	0005_auto_20160504_1520	2022-06-25 17:54:57.431998-04
49	notifications	0006_indexes	2022-06-25 17:54:57.506009-04
50	notifications	0007_add_timestamp_index	2022-06-25 17:54:57.527004-04
51	notifications	0008_index_together_recipient_unread	2022-06-25 17:54:57.546995-04
52	notifications	0009_alter_notification_id	2022-06-25 17:54:57.570998-04
53	reports	0001_initial	2022-06-25 17:54:57.623071-04
54	sessions	0001_initial	2022-06-25 17:54:57.642072-04
55	sites	0001_initial	2022-06-25 17:54:57.653071-04
56	sites	0002_alter_domain_unique	2022-06-25 17:54:57.66611-04
57	Nomencladores	0006_bateria_activo_cliente_activo_equipo_activo_and_more	2022-06-25 18:07:16.575649-04
58	COMEX	0005_alter_oferta_bateria_fecha_alter_oferta_equipo_fecha_and_more	2022-06-27 06:03:58.432685-04
59	Nomencladores	0007_alter_cliente_fecha_caducidad_alter_cliente_telefono_and_more	2022-06-27 06:03:58.520412-04
60	Solicitudes	0005_alter_solicitud_bateria_fechasol_and_more	2022-06-27 06:03:58.640119-04
61	Nomencladores	0008_alter_cliente_fecha_contrato_alter_cliente_telefono_and_more	2022-06-27 06:05:40.098199-04
62	Nomencladores	0009_alter_cliente_fecha_contrato_alter_cliente_telefono_and_more	2022-06-27 06:09:36.65525-04
63	Nomencladores	0010_alter_cliente_fecha_caducidad_alter_cliente_telefono_and_more	2022-06-27 06:10:44.524538-04
64	Nomencladores	0011_alter_cliente_fecha_caducidad_alter_cliente_telefono_and_more	2022-06-27 06:14:18.782637-04
65	Nomencladores	0012_alter_cliente_telefono_alter_ministerio_telefono_and_more	2022-06-27 12:23:08.348852-04
66	Nomencladores	0013_alter_casa_matriz_telefono_alter_cliente_telefono_and_more	2022-06-27 18:15:11.449403-04
67	COMEX	0006_alter_oferta_bateria_fecha_alter_oferta_equipo_fecha_and_more	2022-06-27 18:17:45.384739-04
68	Nomencladores	0014_alter_cliente_telefono_alter_ministerio_telefono_and_more	2022-06-27 18:17:45.47825-04
69	Nomencladores	0015_alter_cliente_telefono_alter_ministerio_telefono_and_more	2022-06-27 18:19:29.098599-04
70	Solicitudes	0006_alter_solicitud_bateria_fechasol_and_more	2022-06-27 18:19:29.28349-04
71	Nomencladores	0016_alter_cliente_telefono_alter_ministerio_telefono_and_more	2022-06-27 18:20:47.9637-04
72	Solicitudes	0007_alter_solicitud_bateria_proxy_idproducto	2022-06-27 18:20:48.040686-04
73	Nomencladores	0017_alter_cliente_telefono_alter_ministerio_telefono_and_more	2022-06-27 18:21:36.008963-04
74	Solicitudes	0008_alter_solicitud_neumatico_proveedor_codmincex	2022-06-27 18:21:36.096963-04
75	Nomencladores	0018_alter_cliente_fecha_caducidad_alter_cliente_telefono_and_more	2022-06-28 10:57:00.129496-04
76	Solicitudes	0009_solicitud_bateria_fecha_venc_solicitud_bateria_plazo_and_more	2022-06-28 10:57:00.373884-04
77	Nomencladores	0019_alter_cliente_telefono_alter_ministerio_telefono_and_more	2022-06-28 12:43:22.919157-04
78	Solicitudes	0010_alter_solicitud_bateria_fecha_venc_and_more	2022-06-28 12:43:23.121488-04
79	Nomencladores	0020_alter_cliente_telefono_alter_ministerio_telefono_and_more	2022-06-28 12:44:43.347915-04
80	Solicitudes	0011_alter_solicitud_bateria_fecha_venc_and_more	2022-06-28 12:44:43.483051-04
81	Nomencladores	0021_alter_cliente_telefono_alter_ministerio_telefono_and_more	2022-06-28 12:58:12.154031-04
82	Solicitudes	0012_alter_solicitud_bateria_fechasol_and_more	2022-06-28 12:58:12.26521-04
83	Nomencladores	0022_alter_cliente_telefono_alter_ministerio_telefono_and_more	2022-06-28 13:00:33.228207-04
84	Solicitudes	0013_alter_solicitud_bateria_fechasol_and_more	2022-06-28 13:00:33.365053-04
85	Nomencladores	0023_alter_cliente_telefono_alter_ministerio_telefono_and_more	2022-06-28 13:03:39.72865-04
86	Solicitudes	0014_alter_solicitud_bateria_fechasol_and_more	2022-06-28 13:03:39.849316-04
87	COMEX	0007_remove_oferta_equipo_proxy_solicitud_and_more	2022-07-02 18:29:01.158478-04
88	Nomencladores	0024_alter_cliente_telefono_alter_ministerio_telefono_and_more	2022-07-02 18:29:01.23794-04
89	Nomencladores	0025_alter_cliente_fecha_caducidad_and_more	2022-07-03 05:49:12.427762-04
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
9g0vvdgd1tzlvxori1z7d0tf4jutji2c	.eJxVjDsOwjAQBe_iGllr7HgXSnrOEO36gwPIluKkQtwdIqWA9s3Me6mR16WMa0_zOEV1VkYdfjfh8Eh1A_HO9dZ0aHWZJ9Gbonfa9bXF9Lzs7t9B4V6-NVBiD0aMZMjZWztwJITgbWAm7wnNIBQdmGNmMu6E7DBlQWcBE4F6fwDdgTds:1o5HWQ:ljG6d74LZHvWCWos428xKXlwUtqAomlHoF5LhGEq_Dg	2022-07-09 17:57:10.529162-04
2qwgt2bc6iigu1e2gntr663l0ohvuv7z	.eJxVjDsOwjAQBe_iGln-fyjpOYO1u7ZxADlSnFSIu0OkFNC-mXkvlmBbW9pGWdKU2ZkpdvrdEOhR-g7yHfpt5jT3dZmQ7wo_6ODXOZfn5XD_DhqM9q2jjGjICVIGrItBSRGrgioxFuWdlc5kHYr1RWAgKQR5gVJpW7XWAYm9P7vtNtc:1o80Dj:5OIwQyqnbt-4o8Ds5lGfmYTU_y20K2LLtUrms6A8kUs	2022-07-17 06:05:07.773172-04
\.


--
-- Data for Name: django_site; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.django_site (id, domain, name) FROM stdin;
1	example.com	example.com
\.


--
-- Data for Name: equipo; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.equipo (idproducto, descripcion, modelo, codigoum, codigomarca, activo) FROM stdin;
584284-00-1156	CAMION  VOLTEO KRAZ 256	KRAZ 256	U	1	t
\.


--
-- Data for Name: marca; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.marca (codigomarca, nommarca, codigopais, activa) FROM stdin;
2	Kamaz	RU	t
1	Kraz	RU	f
3	Komatsu	JPN	t
\.


--
-- Data for Name: ministerio; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.ministerio (reeup, nombre, siglas, direccion, correo, telefono) FROM stdin;
126.0.01226	Ministerio de la Construcción	MICONS	Ave Boyero, No. 456, Plaza de la Revolución	direccion@micons.cu	78254146
\.


--
-- Data for Name: neumatico; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.neumatico (idproducto, descripcion, diametro, grosor, codigoum, codigomarca, activo) FROM stdin;
\.


--
-- Data for Name: oferta_bateria_proxy; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.oferta_bateria_proxy (id, cantidad, precio, importe, idproducto, numsolicitud) FROM stdin;
\.


--
-- Data for Name: oferta_baterias; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.oferta_baterias (numero, fecha, validez, estado, valor_estimado, monto_total, username, idpais, codmincex, numsolicitud) FROM stdin;
\.


--
-- Data for Name: oferta_equipo; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.oferta_equipo (numero, fecha, validez, estado, valor_estimado, monto_total, username, idpais, codmincex, numsolicitud) FROM stdin;
144	2022-07-02 18:30:24.524495-04	30 Días	Pendiente	45000	\N	5	\N	ES-1523	63
145	2022-07-02 18:30:24.528502-04	30 Días	Pendiente	45000	\N	5	\N	BR-5852	63
146	2022-07-02 18:33:17.003699-04	30 Días	Pendiente	60000	\N	5	\N	ES-1523	64
147	2022-07-02 18:33:17.008208-04	30 Días	Pendiente	60000	\N	5	\N	BR-5852	64
\.


--
-- Data for Name: oferta_equipo_proxy; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.oferta_equipo_proxy (id, cantidad, precio, importe, idproducto, numero) FROM stdin;
1	1	\N	\N	50	1
2	2	\N	\N	51	1
3	3	\N	\N	52	145
4	6	\N	\N	53	146
5	6	\N	\N	53	147
\.


--
-- Data for Name: oferta_neumatico_proxy; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.oferta_neumatico_proxy (id, cantidad, precio, importe, idproducto, numsolicitud) FROM stdin;
\.


--
-- Data for Name: oferta_neumaticos; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.oferta_neumaticos (numero, fecha, validez, estado, valor_estimado, monto_total, username, idpais, codmincex, numsolicitud) FROM stdin;
\.


--
-- Data for Name: oferta_ppa; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.oferta_ppa (numero, fecha, validez, estado, valor_estimado, monto_total, username, idpais, codmincex, numsolicitud) FROM stdin;
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
RU	Rusia
﻿AFG	Afganistán (el)
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

COPY public.ppa (idproducto, descripcion, codigoum, codigomarca, activo) FROM stdin;
\.


--
-- Data for Name: ppa_equipo; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.ppa_equipo (id, ppa_id, equipo_id) FROM stdin;
\.


--
-- Data for Name: proveedor; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.proveedor (codmincex, nomproveedor, clasificacion, codigopais, activo) FROM stdin;
ES-1523	EMP	Comercializador	RU	t
BR-5852	PetroBras	Comercializador	RU	t
\.


--
-- Data for Name: proveedor_baterias; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.proveedor_baterias (id, proveedor_id, bateria_id) FROM stdin;
\.


--
-- Data for Name: proveedor_equipos; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.proveedor_equipos (id, proveedor_id, equipo_id) FROM stdin;
1	BR-5852	584284-00-1156
2	ES-1523	584284-00-1156
\.


--
-- Data for Name: proveedor_marca; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.proveedor_marca (id, proveedor_id, marca_id) FROM stdin;
1	BR-5852	1
2	ES-1523	1
\.


--
-- Data for Name: proveedor_neumaticos; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.proveedor_neumaticos (id, proveedor_id, neumatico_id) FROM stdin;
\.


--
-- Data for Name: proveedor_ppa; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.proveedor_ppa (id, proveedor_id, ppa_id) FROM stdin;
\.


--
-- Data for Name: provincia; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.provincia (codigoprovincia, nombre, capital) FROM stdin;
HB	La Habana	La Habana
\.


--
-- Data for Name: reports_savedreport; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.reports_savedreport (id, report, report_file, date_modified, date_created, run_by_id) FROM stdin;
\.


--
-- Data for Name: solicitud_bateria; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.solicitud_bateria (numsolicitud, fechasol, estado, observaciones, valor_estimado, reeup, username, fecha_venc, plazo) FROM stdin;
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

COPY public.solicitud_equipo (numsolicitud, fechasol, estado, observaciones, valor_estimado, reeup, username, fecha_venc, plazo) FROM stdin;
60	2022-07-01 14:27:10.870609-04	Aprobada	Solicitud Kraz	21000	126.0.05478	5	2022-07-04 14:27:10.870609-04	3 días
61	2022-07-01 14:57:17.091212-04	Aprobada	Solicitud Kraz	12000	126.0.05478	5	2022-07-04 14:57:17.091212-04	3 días
62	2022-07-02 18:20:54.948868-04	Aprobada	Solicitud Kraz	15000	126.0.05478	5	2022-07-11 18:20:54.948868-04	7 días
63	2022-07-02 18:29:42.658349-04	Aprobada	Solicitud Kraz	45000	126.0.05478	5	2022-07-05 18:29:42.658349-04	3 días
64	2022-07-02 18:32:58.61311-04	Aprobada	Solicitud Kraz	60000	126.0.05478	5	2022-07-11 18:32:58.61311-04	7 días
65	2022-07-03 04:04:21.126295-04	Pendiente	Solicitud Kraz	15000	126.0.05478	\N	2022-07-06 04:04:21.126295-04	3 días
\.


--
-- Data for Name: solicitud_equipo_proveedor; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.solicitud_equipo_proveedor (id, codmincex, numsolicitud) FROM stdin;
26	ES-1523	60
27	BR-5852	60
28	ES-1523	61
29	BR-5852	61
30	ES-1523	62
31	BR-5852	62
32	ES-1523	63
33	BR-5852	63
34	ES-1523	64
35	BR-5852	64
36	ES-1523	65
37	BR-5852	65
\.


--
-- Data for Name: solicitud_equipo_proxy; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.solicitud_equipo_proxy (id, cantidad, idproducto, numsolicitud) FROM stdin;
49	1	584284-00-1156	60
50	1	584284-00-1156	61
51	2	584284-00-1156	62
52	3	584284-00-1156	63
53	6	584284-00-1156	64
54	2	584284-00-1156	65
\.


--
-- Data for Name: solicitud_neumatico; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.solicitud_neumatico (numsolicitud, fechasol, estado, observaciones, valor_estimado, reeup, username, fecha_venc, plazo) FROM stdin;
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

COPY public.solicitud_ppa (numsolicitud, fechasol, estado, observaciones, valor_estimado, reeup, username, fecha_venc, plazo) FROM stdin;
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
1	Calle 3	dir@petrobras.cu	72584136	Ana Ramirez	Ana 54785	BR-5852
2	Calle 3	dir@emp.cu	72145348	Ana Ramirez	Ana 54785	ES-1523
\.


--
-- Data for Name: um; Type: TABLE DATA; Schema: public; Owner: const
--

COPY public.um (codigoum, descripcionum) FROM stdin;
U	Unidad
MT	Metro
In	Pulgadas
\.


--
-- Name: Dashboard_dashboard_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public."Dashboard_dashboard_id_seq"', 1, false);


--
-- Name: Dashboard_order_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public."Dashboard_order_id_seq"', 1, false);


--
-- Name: Reportes_reporte_proveedor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public."Reportes_reporte_proveedor_id_seq"', 1, false);


--
-- Name: Reportes_reporte_solicitud_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public."Reportes_reporte_solicitud_id_seq"', 1, false);


--
-- Name: Salvas_salvas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public."Salvas_salvas_id_seq"', 1, false);


--
-- Name: Trazas_logentry_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public."Trazas_logentry_id_seq"', 1, false);


--
-- Name: account_account_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.account_account_id_seq', 5, true);


--
-- Name: account_accountdeletion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.account_accountdeletion_id_seq', 1, false);


--
-- Name: account_emailaddress_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.account_emailaddress_id_seq', 5, true);


--
-- Name: account_emailconfirmation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.account_emailconfirmation_id_seq', 1, false);


--
-- Name: account_passwordexpiry_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.account_passwordexpiry_id_seq', 1, false);


--
-- Name: account_passwordhistory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.account_passwordhistory_id_seq', 1, false);


--
-- Name: account_signupcode_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.account_signupcode_id_seq', 1, false);


--
-- Name: account_signupcoderesult_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.account_signupcoderesult_id_seq', 1, false);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 8, true);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 129, true);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 224, true);


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

SELECT pg_catalog.setval('public.casa_matriz_id_seq', 2, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 129, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 56, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 89, true);


--
-- Name: django_site_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.django_site_id_seq', 1, true);


--
-- Name: marca_codigomarca_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.marca_codigomarca_seq', 3, true);


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

SELECT pg_catalog.setval('public.oferta_equipo_numero_seq', 147, true);


--
-- Name: oferta_equipo_proxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.oferta_equipo_proxy_id_seq', 5, true);


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
-- Name: proveedor_baterias_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.proveedor_baterias_id_seq', 1, false);


--
-- Name: proveedor_equipos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.proveedor_equipos_id_seq', 2, true);


--
-- Name: proveedor_marca_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.proveedor_marca_id_seq', 2, true);


--
-- Name: proveedor_neumaticos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.proveedor_neumaticos_id_seq', 1, false);


--
-- Name: proveedor_ppa_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.proveedor_ppa_id_seq', 1, false);


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

SELECT pg_catalog.setval('public.solicitud_equipo_numsolicitud_seq', 65, true);


--
-- Name: solicitud_equipo_proveedor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.solicitud_equipo_proveedor_id_seq', 37, true);


--
-- Name: solicitud_equipo_proxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: const
--

SELECT pg_catalog.setval('public.solicitud_equipo_proxy_id_seq', 54, true);


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

SELECT pg_catalog.setval('public.sucursal_cuba_id_seq', 2, true);


--
-- Name: Dashboard_dashboard Dashboard_dashboard_pkey; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public."Dashboard_dashboard"
    ADD CONSTRAINT "Dashboard_dashboard_pkey" PRIMARY KEY (id);


--
-- Name: Dashboard_order Dashboard_order_pkey; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public."Dashboard_order"
    ADD CONSTRAINT "Dashboard_order_pkey" PRIMARY KEY (id);


--
-- Name: OSDE OSDE_correo_key; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public."OSDE"
    ADD CONSTRAINT "OSDE_correo_key" UNIQUE (correo);


--
-- Name: OSDE OSDE_nombre_key; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public."OSDE"
    ADD CONSTRAINT "OSDE_nombre_key" UNIQUE (nombre);


--
-- Name: OSDE OSDE_pkey; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public."OSDE"
    ADD CONSTRAINT "OSDE_pkey" PRIMARY KEY (reeup);


--
-- Name: OSDE OSDE_siglas_key; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public."OSDE"
    ADD CONSTRAINT "OSDE_siglas_key" UNIQUE (siglas);


--
-- Name: OSDE OSDE_telefono_key; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public."OSDE"
    ADD CONSTRAINT "OSDE_telefono_key" UNIQUE (telefono);


--
-- Name: Reportes_reporte_proveedor Reportes_reporte_proveedor_pkey; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public."Reportes_reporte_proveedor"
    ADD CONSTRAINT "Reportes_reporte_proveedor_pkey" PRIMARY KEY (id);


--
-- Name: Reportes_reporte_solicitud Reportes_reporte_solicitud_pkey; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public."Reportes_reporte_solicitud"
    ADD CONSTRAINT "Reportes_reporte_solicitud_pkey" PRIMARY KEY (id);


--
-- Name: Salvas_salvas Salvas_salvas_pkey; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public."Salvas_salvas"
    ADD CONSTRAINT "Salvas_salvas_pkey" PRIMARY KEY (id);


--
-- Name: Trazas_logentry Trazas_logentry_pkey; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public."Trazas_logentry"
    ADD CONSTRAINT "Trazas_logentry_pkey" PRIMARY KEY (id);


--
-- Name: account_account account_account_pkey; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.account_account
    ADD CONSTRAINT account_account_pkey PRIMARY KEY (id);


--
-- Name: account_account account_account_user_id_key; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.account_account
    ADD CONSTRAINT account_account_user_id_key UNIQUE (user_id);


--
-- Name: account_accountdeletion account_accountdeletion_pkey; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.account_accountdeletion
    ADD CONSTRAINT account_accountdeletion_pkey PRIMARY KEY (id);


--
-- Name: account_emailaddress account_emailaddress_email_key; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_email_key UNIQUE (email);


--
-- Name: account_emailaddress account_emailaddress_pkey; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_pkey PRIMARY KEY (id);


--
-- Name: account_emailconfirmation account_emailconfirmation_key_key; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirmation_key_key UNIQUE (key);


--
-- Name: account_emailconfirmation account_emailconfirmation_pkey; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirmation_pkey PRIMARY KEY (id);


--
-- Name: account_passwordexpiry account_passwordexpiry_pkey; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.account_passwordexpiry
    ADD CONSTRAINT account_passwordexpiry_pkey PRIMARY KEY (id);


--
-- Name: account_passwordexpiry account_passwordexpiry_user_id_key; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.account_passwordexpiry
    ADD CONSTRAINT account_passwordexpiry_user_id_key UNIQUE (user_id);


--
-- Name: account_passwordhistory account_passwordhistory_pkey; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.account_passwordhistory
    ADD CONSTRAINT account_passwordhistory_pkey PRIMARY KEY (id);


--
-- Name: account_signupcode account_signupcode_code_key; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.account_signupcode
    ADD CONSTRAINT account_signupcode_code_key UNIQUE (code);


--
-- Name: account_signupcode account_signupcode_pkey; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.account_signupcode
    ADD CONSTRAINT account_signupcode_pkey PRIMARY KEY (id);


--
-- Name: account_signupcoderesult account_signupcoderesult_pkey; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.account_signupcoderesult
    ADD CONSTRAINT account_signupcoderesult_pkey PRIMARY KEY (id);


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
-- Name: cliente cliente_correo_key; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_correo_key UNIQUE (correo);


--
-- Name: cliente cliente_nombre_key; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_nombre_key UNIQUE (nombre);


--
-- Name: cliente cliente_pkey; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (reeup);


--
-- Name: cliente cliente_siglas_key; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_siglas_key UNIQUE (siglas);


--
-- Name: cliente cliente_telefono_key; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_telefono_key UNIQUE (telefono);


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
-- Name: django_site django_site_domain_a2e37b91_uniq; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_domain_a2e37b91_uniq UNIQUE (domain);


--
-- Name: django_site django_site_pkey; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_pkey PRIMARY KEY (id);


--
-- Name: equipo equipo_pkey; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.equipo
    ADD CONSTRAINT equipo_pkey PRIMARY KEY (idproducto);


--
-- Name: marca marca_nommarca_key; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.marca
    ADD CONSTRAINT marca_nommarca_key UNIQUE (nommarca);


--
-- Name: marca marca_pkey; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.marca
    ADD CONSTRAINT marca_pkey PRIMARY KEY (codigomarca);


--
-- Name: ministerio ministerio_correo_key; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.ministerio
    ADD CONSTRAINT ministerio_correo_key UNIQUE (correo);


--
-- Name: ministerio ministerio_nombre_key; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.ministerio
    ADD CONSTRAINT ministerio_nombre_key UNIQUE (nombre);


--
-- Name: ministerio ministerio_pkey; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.ministerio
    ADD CONSTRAINT ministerio_pkey PRIMARY KEY (reeup);


--
-- Name: ministerio ministerio_siglas_key; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.ministerio
    ADD CONSTRAINT ministerio_siglas_key UNIQUE (siglas);


--
-- Name: ministerio ministerio_telefono_key; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.ministerio
    ADD CONSTRAINT ministerio_telefono_key UNIQUE (telefono);


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
-- Name: proveedor_baterias proveedor_baterias_pkey; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.proveedor_baterias
    ADD CONSTRAINT proveedor_baterias_pkey PRIMARY KEY (id);


--
-- Name: proveedor_baterias proveedor_baterias_proveedor_id_bateria_id_16bdd139_uniq; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.proveedor_baterias
    ADD CONSTRAINT proveedor_baterias_proveedor_id_bateria_id_16bdd139_uniq UNIQUE (proveedor_id, bateria_id);


--
-- Name: proveedor proveedor_codmincex_codigopais_eea1226c_uniq; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.proveedor
    ADD CONSTRAINT proveedor_codmincex_codigopais_eea1226c_uniq UNIQUE (codmincex, codigopais);


--
-- Name: proveedor_equipos proveedor_equipos_pkey; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.proveedor_equipos
    ADD CONSTRAINT proveedor_equipos_pkey PRIMARY KEY (id);


--
-- Name: proveedor_equipos proveedor_equipos_proveedor_id_equipo_id_aba7e50c_uniq; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.proveedor_equipos
    ADD CONSTRAINT proveedor_equipos_proveedor_id_equipo_id_aba7e50c_uniq UNIQUE (proveedor_id, equipo_id);


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
-- Name: proveedor_neumaticos proveedor_neumaticos_pkey; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.proveedor_neumaticos
    ADD CONSTRAINT proveedor_neumaticos_pkey PRIMARY KEY (id);


--
-- Name: proveedor_neumaticos proveedor_neumaticos_proveedor_id_neumatico_id_5fb62953_uniq; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.proveedor_neumaticos
    ADD CONSTRAINT proveedor_neumaticos_proveedor_id_neumatico_id_5fb62953_uniq UNIQUE (proveedor_id, neumatico_id);


--
-- Name: proveedor proveedor_nomproveedor_key; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.proveedor
    ADD CONSTRAINT proveedor_nomproveedor_key UNIQUE (nomproveedor);


--
-- Name: proveedor proveedor_pkey; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.proveedor
    ADD CONSTRAINT proveedor_pkey PRIMARY KEY (codmincex);


--
-- Name: proveedor_ppa proveedor_ppa_pkey; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.proveedor_ppa
    ADD CONSTRAINT proveedor_ppa_pkey PRIMARY KEY (id);


--
-- Name: proveedor_ppa proveedor_ppa_proveedor_id_ppa_id_f91e8716_uniq; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.proveedor_ppa
    ADD CONSTRAINT proveedor_ppa_proveedor_id_ppa_id_f91e8716_uniq UNIQUE (proveedor_id, ppa_id);


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
-- Name: um um_descripcionum_key; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.um
    ADD CONSTRAINT um_descripcionum_key UNIQUE (descripcionum);


--
-- Name: um um_pkey; Type: CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.um
    ADD CONSTRAINT um_pkey PRIMARY KEY (codigoum);


--
-- Name: OSDE_correo_e0bd4ae5_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX "OSDE_correo_e0bd4ae5_like" ON public."OSDE" USING btree (correo varchar_pattern_ops);


--
-- Name: OSDE_ministerio_id_dd8f8290; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX "OSDE_ministerio_id_dd8f8290" ON public."OSDE" USING btree (ministerio_id);


--
-- Name: OSDE_ministerio_id_dd8f8290_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX "OSDE_ministerio_id_dd8f8290_like" ON public."OSDE" USING btree (ministerio_id varchar_pattern_ops);


--
-- Name: OSDE_nombre_4efd2961_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX "OSDE_nombre_4efd2961_like" ON public."OSDE" USING btree (nombre varchar_pattern_ops);


--
-- Name: OSDE_reeup_77593f2d_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX "OSDE_reeup_77593f2d_like" ON public."OSDE" USING btree (reeup varchar_pattern_ops);


--
-- Name: OSDE_siglas_bd5d3498_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX "OSDE_siglas_bd5d3498_like" ON public."OSDE" USING btree (siglas varchar_pattern_ops);


--
-- Name: account_accountdeletion_user_id_c205475f; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX account_accountdeletion_user_id_c205475f ON public.account_accountdeletion USING btree (user_id);


--
-- Name: account_emailaddress_email_03be32b2_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX account_emailaddress_email_03be32b2_like ON public.account_emailaddress USING btree (email varchar_pattern_ops);


--
-- Name: account_emailaddress_user_id_2c513194; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX account_emailaddress_user_id_2c513194 ON public.account_emailaddress USING btree (user_id);


--
-- Name: account_emailconfirmation_email_address_id_5b7f8c58; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX account_emailconfirmation_email_address_id_5b7f8c58 ON public.account_emailconfirmation USING btree (email_address_id);


--
-- Name: account_emailconfirmation_key_f43612bd_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX account_emailconfirmation_key_f43612bd_like ON public.account_emailconfirmation USING btree (key varchar_pattern_ops);


--
-- Name: account_passwordhistory_user_id_dc325181; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX account_passwordhistory_user_id_dc325181 ON public.account_passwordhistory USING btree (user_id);


--
-- Name: account_signupcode_code_e34edcf8_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX account_signupcode_code_e34edcf8_like ON public.account_signupcode USING btree (code varchar_pattern_ops);


--
-- Name: account_signupcode_inviter_id_9706983e; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX account_signupcode_inviter_id_9706983e ON public.account_signupcode USING btree (inviter_id);


--
-- Name: account_signupcoderesult_signup_code_id_1adc486e; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX account_signupcoderesult_signup_code_id_1adc486e ON public.account_signupcoderesult USING btree (signup_code_id);


--
-- Name: account_signupcoderesult_user_id_c10dc604; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX account_signupcoderesult_user_id_c10dc604 ON public.account_signupcoderesult USING btree (user_id);


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
-- Name: bateria_codigomarca_277a3733; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX bateria_codigomarca_277a3733 ON public.bateria USING btree (codigomarca);


--
-- Name: bateria_codigoum_3eef7d96; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX bateria_codigoum_3eef7d96 ON public.bateria USING btree (codigoum);


--
-- Name: bateria_codigoum_3eef7d96_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX bateria_codigoum_3eef7d96_like ON public.bateria USING btree (codigoum varchar_pattern_ops);


--
-- Name: bateria_idproducto_5736f2bb_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX bateria_idproducto_5736f2bb_like ON public.bateria USING btree (idproducto varchar_pattern_ops);


--
-- Name: casa_matriz_codmincex_bd5fc4f6; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX casa_matriz_codmincex_bd5fc4f6 ON public.casa_matriz USING btree (codmincex);


--
-- Name: casa_matriz_codmincex_bd5fc4f6_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX casa_matriz_codmincex_bd5fc4f6_like ON public.casa_matriz USING btree (codmincex varchar_pattern_ops);


--
-- Name: cliente_OSDE_id_e62a283b; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX "cliente_OSDE_id_e62a283b" ON public.cliente USING btree ("OSDE_id");


--
-- Name: cliente_OSDE_id_e62a283b_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX "cliente_OSDE_id_e62a283b_like" ON public.cliente USING btree ("OSDE_id" varchar_pattern_ops);


--
-- Name: cliente_codigoprovincia_2ef760d6; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX cliente_codigoprovincia_2ef760d6 ON public.cliente USING btree (codigoprovincia);


--
-- Name: cliente_codigoprovincia_2ef760d6_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX cliente_codigoprovincia_2ef760d6_like ON public.cliente USING btree (codigoprovincia varchar_pattern_ops);


--
-- Name: cliente_correo_4271a189_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX cliente_correo_4271a189_like ON public.cliente USING btree (correo varchar_pattern_ops);


--
-- Name: cliente_nombre_8fc2f80f_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX cliente_nombre_8fc2f80f_like ON public.cliente USING btree (nombre varchar_pattern_ops);


--
-- Name: cliente_reeup_30874119_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX cliente_reeup_30874119_like ON public.cliente USING btree (reeup varchar_pattern_ops);


--
-- Name: cliente_siglas_4bfff53e_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX cliente_siglas_4bfff53e_like ON public.cliente USING btree (siglas varchar_pattern_ops);


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
-- Name: django_site_domain_a2e37b91_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX django_site_domain_a2e37b91_like ON public.django_site USING btree (domain varchar_pattern_ops);


--
-- Name: equipo_codigomarca_33aa6296; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX equipo_codigomarca_33aa6296 ON public.equipo USING btree (codigomarca);


--
-- Name: equipo_codigoum_0cef5e26; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX equipo_codigoum_0cef5e26 ON public.equipo USING btree (codigoum);


--
-- Name: equipo_codigoum_0cef5e26_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX equipo_codigoum_0cef5e26_like ON public.equipo USING btree (codigoum varchar_pattern_ops);


--
-- Name: equipo_idproducto_712e52c4_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX equipo_idproducto_712e52c4_like ON public.equipo USING btree (idproducto varchar_pattern_ops);


--
-- Name: marca_codigopais_a5f8ede9; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX marca_codigopais_a5f8ede9 ON public.marca USING btree (codigopais);


--
-- Name: marca_codigopais_a5f8ede9_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX marca_codigopais_a5f8ede9_like ON public.marca USING btree (codigopais varchar_pattern_ops);


--
-- Name: marca_nommarca_2d378c86_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX marca_nommarca_2d378c86_like ON public.marca USING btree (nommarca varchar_pattern_ops);


--
-- Name: ministerio_correo_2ae9841a_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX ministerio_correo_2ae9841a_like ON public.ministerio USING btree (correo varchar_pattern_ops);


--
-- Name: ministerio_nombre_21bb2048_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX ministerio_nombre_21bb2048_like ON public.ministerio USING btree (nombre varchar_pattern_ops);


--
-- Name: ministerio_reeup_ab665d77_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX ministerio_reeup_ab665d77_like ON public.ministerio USING btree (reeup varchar_pattern_ops);


--
-- Name: ministerio_siglas_885a106d_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX ministerio_siglas_885a106d_like ON public.ministerio USING btree (siglas varchar_pattern_ops);


--
-- Name: neumatico_codigomarca_2da28965; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX neumatico_codigomarca_2da28965 ON public.neumatico USING btree (codigomarca);


--
-- Name: neumatico_codigoum_40edba2b; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX neumatico_codigoum_40edba2b ON public.neumatico USING btree (codigoum);


--
-- Name: neumatico_codigoum_40edba2b_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX neumatico_codigoum_40edba2b_like ON public.neumatico USING btree (codigoum varchar_pattern_ops);


--
-- Name: neumatico_idproducto_9eec9617_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX neumatico_idproducto_9eec9617_like ON public.neumatico USING btree (idproducto varchar_pattern_ops);


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
-- Name: oferta_baterias_username_7302a0b5; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX oferta_baterias_username_7302a0b5 ON public.oferta_baterias USING btree (username);


--
-- Name: oferta_equipo_codmincex_2e6e45cf; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX oferta_equipo_codmincex_2e6e45cf ON public.oferta_equipo USING btree (codmincex);


--
-- Name: oferta_equipo_codmincex_2e6e45cf_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX oferta_equipo_codmincex_2e6e45cf_like ON public.oferta_equipo USING btree (codmincex varchar_pattern_ops);


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
-- Name: oferta_equipo_proxy_numero_0993bc47; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX oferta_equipo_proxy_numero_0993bc47 ON public.oferta_equipo_proxy USING btree (numero);


--
-- Name: oferta_equipo_username_21a56f58; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX oferta_equipo_username_21a56f58 ON public.oferta_equipo USING btree (username);


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
-- Name: oferta_neumaticos_username_6bec8fee; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX oferta_neumaticos_username_6bec8fee ON public.oferta_neumaticos USING btree (username);


--
-- Name: oferta_ppa_codmincex_f9672369; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX oferta_ppa_codmincex_f9672369 ON public.oferta_ppa USING btree (codmincex);


--
-- Name: oferta_ppa_codmincex_f9672369_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX oferta_ppa_codmincex_f9672369_like ON public.oferta_ppa USING btree (codmincex varchar_pattern_ops);


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
-- Name: oferta_ppa_username_beaea642; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX oferta_ppa_username_beaea642 ON public.oferta_ppa USING btree (username);


--
-- Name: pais_codigopais_f394d5a9_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX pais_codigopais_f394d5a9_like ON public.pais USING btree (codigopais varchar_pattern_ops);


--
-- Name: ppa_codigomarca_fde9bf8b; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX ppa_codigomarca_fde9bf8b ON public.ppa USING btree (codigomarca);


--
-- Name: ppa_codigoum_7b48f85c; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX ppa_codigoum_7b48f85c ON public.ppa USING btree (codigoum);


--
-- Name: ppa_codigoum_7b48f85c_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX ppa_codigoum_7b48f85c_like ON public.ppa USING btree (codigoum varchar_pattern_ops);


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
-- Name: proveedor_baterias_bateria_id_bda82610; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX proveedor_baterias_bateria_id_bda82610 ON public.proveedor_baterias USING btree (bateria_id);


--
-- Name: proveedor_baterias_bateria_id_bda82610_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX proveedor_baterias_bateria_id_bda82610_like ON public.proveedor_baterias USING btree (bateria_id varchar_pattern_ops);


--
-- Name: proveedor_baterias_proveedor_id_9adc346c; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX proveedor_baterias_proveedor_id_9adc346c ON public.proveedor_baterias USING btree (proveedor_id);


--
-- Name: proveedor_baterias_proveedor_id_9adc346c_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX proveedor_baterias_proveedor_id_9adc346c_like ON public.proveedor_baterias USING btree (proveedor_id varchar_pattern_ops);


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
-- Name: proveedor_equipos_equipo_id_5cd273e5; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX proveedor_equipos_equipo_id_5cd273e5 ON public.proveedor_equipos USING btree (equipo_id);


--
-- Name: proveedor_equipos_equipo_id_5cd273e5_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX proveedor_equipos_equipo_id_5cd273e5_like ON public.proveedor_equipos USING btree (equipo_id varchar_pattern_ops);


--
-- Name: proveedor_equipos_proveedor_id_5e09ac79; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX proveedor_equipos_proveedor_id_5e09ac79 ON public.proveedor_equipos USING btree (proveedor_id);


--
-- Name: proveedor_equipos_proveedor_id_5e09ac79_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX proveedor_equipos_proveedor_id_5e09ac79_like ON public.proveedor_equipos USING btree (proveedor_id varchar_pattern_ops);


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
-- Name: proveedor_neumaticos_neumatico_id_07963775; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX proveedor_neumaticos_neumatico_id_07963775 ON public.proveedor_neumaticos USING btree (neumatico_id);


--
-- Name: proveedor_neumaticos_neumatico_id_07963775_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX proveedor_neumaticos_neumatico_id_07963775_like ON public.proveedor_neumaticos USING btree (neumatico_id varchar_pattern_ops);


--
-- Name: proveedor_neumaticos_proveedor_id_d2c0a18b; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX proveedor_neumaticos_proveedor_id_d2c0a18b ON public.proveedor_neumaticos USING btree (proveedor_id);


--
-- Name: proveedor_neumaticos_proveedor_id_d2c0a18b_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX proveedor_neumaticos_proveedor_id_d2c0a18b_like ON public.proveedor_neumaticos USING btree (proveedor_id varchar_pattern_ops);


--
-- Name: proveedor_nomproveedor_a0b35d39_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX proveedor_nomproveedor_a0b35d39_like ON public.proveedor USING btree (nomproveedor varchar_pattern_ops);


--
-- Name: proveedor_ppa_ppa_id_7a94b08a; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX proveedor_ppa_ppa_id_7a94b08a ON public.proveedor_ppa USING btree (ppa_id);


--
-- Name: proveedor_ppa_ppa_id_7a94b08a_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX proveedor_ppa_ppa_id_7a94b08a_like ON public.proveedor_ppa USING btree (ppa_id varchar_pattern_ops);


--
-- Name: proveedor_ppa_proveedor_id_c93b5138; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX proveedor_ppa_proveedor_id_c93b5138 ON public.proveedor_ppa USING btree (proveedor_id);


--
-- Name: proveedor_ppa_proveedor_id_c93b5138_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX proveedor_ppa_proveedor_id_c93b5138_like ON public.proveedor_ppa USING btree (proveedor_id varchar_pattern_ops);


--
-- Name: provincia_codigoprovincia_faf2e195_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX provincia_codigoprovincia_faf2e195_like ON public.provincia USING btree (codigoprovincia varchar_pattern_ops);


--
-- Name: reports_savedreport_run_by_id_0e49a3ac; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX reports_savedreport_run_by_id_0e49a3ac ON public.reports_savedreport USING btree (run_by_id);


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
-- Name: solicitud_bateria_reeup_7a94b57f; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX solicitud_bateria_reeup_7a94b57f ON public.solicitud_bateria USING btree (reeup);


--
-- Name: solicitud_bateria_reeup_7a94b57f_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX solicitud_bateria_reeup_7a94b57f_like ON public.solicitud_bateria USING btree (reeup varchar_pattern_ops);


--
-- Name: solicitud_bateria_username_bf683e7b; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX solicitud_bateria_username_bf683e7b ON public.solicitud_bateria USING btree (username);


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
-- Name: solicitud_equipo_reeup_07bd2083; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX solicitud_equipo_reeup_07bd2083 ON public.solicitud_equipo USING btree (reeup);


--
-- Name: solicitud_equipo_reeup_07bd2083_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX solicitud_equipo_reeup_07bd2083_like ON public.solicitud_equipo USING btree (reeup varchar_pattern_ops);


--
-- Name: solicitud_equipo_username_b32e7bdd; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX solicitud_equipo_username_b32e7bdd ON public.solicitud_equipo USING btree (username);


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
-- Name: solicitud_neumatico_reeup_568efbf9; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX solicitud_neumatico_reeup_568efbf9 ON public.solicitud_neumatico USING btree (reeup);


--
-- Name: solicitud_neumatico_reeup_568efbf9_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX solicitud_neumatico_reeup_568efbf9_like ON public.solicitud_neumatico USING btree (reeup varchar_pattern_ops);


--
-- Name: solicitud_neumatico_username_ce90dce5; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX solicitud_neumatico_username_ce90dce5 ON public.solicitud_neumatico USING btree (username);


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
-- Name: solicitud_ppa_reeup_f85449dc; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX solicitud_ppa_reeup_f85449dc ON public.solicitud_ppa USING btree (reeup);


--
-- Name: solicitud_ppa_reeup_f85449dc_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX solicitud_ppa_reeup_f85449dc_like ON public.solicitud_ppa USING btree (reeup varchar_pattern_ops);


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
-- Name: um_codigoum_8b14f118_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX um_codigoum_8b14f118_like ON public.um USING btree (codigoum varchar_pattern_ops);


--
-- Name: um_descripcionum_4582a47e_like; Type: INDEX; Schema: public; Owner: const
--

CREATE INDEX um_descripcionum_4582a47e_like ON public.um USING btree (descripcionum varchar_pattern_ops);


--
-- Name: OSDE OSDE_ministerio_id_dd8f8290_fk_ministerio_reeup; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public."OSDE"
    ADD CONSTRAINT "OSDE_ministerio_id_dd8f8290_fk_ministerio_reeup" FOREIGN KEY (ministerio_id) REFERENCES public.ministerio(reeup) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: account_account account_account_user_id_8d4f4816_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.account_account
    ADD CONSTRAINT account_account_user_id_8d4f4816_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: account_accountdeletion account_accountdeletion_user_id_c205475f_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.account_accountdeletion
    ADD CONSTRAINT account_accountdeletion_user_id_c205475f_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: account_emailaddress account_emailaddress_user_id_2c513194_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_user_id_2c513194_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: account_emailconfirmation account_emailconfirmation_email_address_id_5b7f8c58_fk; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirmation_email_address_id_5b7f8c58_fk FOREIGN KEY (email_address_id) REFERENCES public.account_emailaddress(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: account_passwordexpiry account_passwordexpiry_user_id_905230ec_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.account_passwordexpiry
    ADD CONSTRAINT account_passwordexpiry_user_id_905230ec_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: account_passwordhistory account_passwordhistory_user_id_dc325181_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.account_passwordhistory
    ADD CONSTRAINT account_passwordhistory_user_id_dc325181_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: account_signupcode account_signupcode_inviter_id_9706983e_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.account_signupcode
    ADD CONSTRAINT account_signupcode_inviter_id_9706983e_fk_auth_user_id FOREIGN KEY (inviter_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: account_signupcoderesult account_signupcoderesult_signup_code_id_1adc486e_fk; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.account_signupcoderesult
    ADD CONSTRAINT account_signupcoderesult_signup_code_id_1adc486e_fk FOREIGN KEY (signup_code_id) REFERENCES public.account_signupcode(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: account_signupcoderesult account_signupcoderesult_user_id_c10dc604_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.account_signupcoderesult
    ADD CONSTRAINT account_signupcoderesult_user_id_c10dc604_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


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
-- Name: bateria bateria_codigomarca_277a3733_fk_marca_codigomarca; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.bateria
    ADD CONSTRAINT bateria_codigomarca_277a3733_fk_marca_codigomarca FOREIGN KEY (codigomarca) REFERENCES public.marca(codigomarca) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: bateria bateria_codigoum_3eef7d96_fk_um_codigoum; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.bateria
    ADD CONSTRAINT bateria_codigoum_3eef7d96_fk_um_codigoum FOREIGN KEY (codigoum) REFERENCES public.um(codigoum) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: casa_matriz casa_matriz_codmincex_bd5fc4f6_fk_proveedor_codmincex; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.casa_matriz
    ADD CONSTRAINT casa_matriz_codmincex_bd5fc4f6_fk_proveedor_codmincex FOREIGN KEY (codmincex) REFERENCES public.proveedor(codmincex) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cliente cliente_OSDE_id_e62a283b_fk_OSDE_reeup; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT "cliente_OSDE_id_e62a283b_fk_OSDE_reeup" FOREIGN KEY ("OSDE_id") REFERENCES public."OSDE"(reeup) DEFERRABLE INITIALLY DEFERRED;


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
-- Name: equipo equipo_codigomarca_33aa6296_fk_marca_codigomarca; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.equipo
    ADD CONSTRAINT equipo_codigomarca_33aa6296_fk_marca_codigomarca FOREIGN KEY (codigomarca) REFERENCES public.marca(codigomarca) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: equipo equipo_codigoum_0cef5e26_fk_um_codigoum; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.equipo
    ADD CONSTRAINT equipo_codigoum_0cef5e26_fk_um_codigoum FOREIGN KEY (codigoum) REFERENCES public.um(codigoum) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: marca marca_codigopais_a5f8ede9_fk_pais_codigopais; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.marca
    ADD CONSTRAINT marca_codigopais_a5f8ede9_fk_pais_codigopais FOREIGN KEY (codigopais) REFERENCES public.pais(codigopais) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: neumatico neumatico_codigomarca_2da28965_fk_marca_codigomarca; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.neumatico
    ADD CONSTRAINT neumatico_codigomarca_2da28965_fk_marca_codigomarca FOREIGN KEY (codigomarca) REFERENCES public.marca(codigomarca) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: neumatico neumatico_codigoum_40edba2b_fk_um_codigoum; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.neumatico
    ADD CONSTRAINT neumatico_codigoum_40edba2b_fk_um_codigoum FOREIGN KEY (codigoum) REFERENCES public.um(codigoum) DEFERRABLE INITIALLY DEFERRED;


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
-- Name: ppa ppa_codigomarca_fde9bf8b_fk_marca_codigomarca; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.ppa
    ADD CONSTRAINT ppa_codigomarca_fde9bf8b_fk_marca_codigomarca FOREIGN KEY (codigomarca) REFERENCES public.marca(codigomarca) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ppa ppa_codigoum_7b48f85c_fk_um_codigoum; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.ppa
    ADD CONSTRAINT ppa_codigoum_7b48f85c_fk_um_codigoum FOREIGN KEY (codigoum) REFERENCES public.um(codigoum) DEFERRABLE INITIALLY DEFERRED;


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
-- Name: proveedor_baterias proveedor_baterias_bateria_id_bda82610_fk_bateria_idproducto; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.proveedor_baterias
    ADD CONSTRAINT proveedor_baterias_bateria_id_bda82610_fk_bateria_idproducto FOREIGN KEY (bateria_id) REFERENCES public.bateria(idproducto) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: proveedor_baterias proveedor_baterias_proveedor_id_9adc346c_fk_proveedor_codmincex; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.proveedor_baterias
    ADD CONSTRAINT proveedor_baterias_proveedor_id_9adc346c_fk_proveedor_codmincex FOREIGN KEY (proveedor_id) REFERENCES public.proveedor(codmincex) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: proveedor proveedor_codigopais_ba6f5c0d_fk_pais_codigopais; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.proveedor
    ADD CONSTRAINT proveedor_codigopais_ba6f5c0d_fk_pais_codigopais FOREIGN KEY (codigopais) REFERENCES public.pais(codigopais) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: proveedor_equipos proveedor_equipos_equipo_id_5cd273e5_fk_equipo_idproducto; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.proveedor_equipos
    ADD CONSTRAINT proveedor_equipos_equipo_id_5cd273e5_fk_equipo_idproducto FOREIGN KEY (equipo_id) REFERENCES public.equipo(idproducto) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: proveedor_equipos proveedor_equipos_proveedor_id_5e09ac79_fk_proveedor_codmincex; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.proveedor_equipos
    ADD CONSTRAINT proveedor_equipos_proveedor_id_5e09ac79_fk_proveedor_codmincex FOREIGN KEY (proveedor_id) REFERENCES public.proveedor(codmincex) DEFERRABLE INITIALLY DEFERRED;


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
-- Name: proveedor_neumaticos proveedor_neumaticos_neumatico_id_07963775_fk_neumatico; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.proveedor_neumaticos
    ADD CONSTRAINT proveedor_neumaticos_neumatico_id_07963775_fk_neumatico FOREIGN KEY (neumatico_id) REFERENCES public.neumatico(idproducto) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: proveedor_neumaticos proveedor_neumaticos_proveedor_id_d2c0a18b_fk_proveedor; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.proveedor_neumaticos
    ADD CONSTRAINT proveedor_neumaticos_proveedor_id_d2c0a18b_fk_proveedor FOREIGN KEY (proveedor_id) REFERENCES public.proveedor(codmincex) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: proveedor_ppa proveedor_ppa_ppa_id_7a94b08a_fk_ppa_idproducto; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.proveedor_ppa
    ADD CONSTRAINT proveedor_ppa_ppa_id_7a94b08a_fk_ppa_idproducto FOREIGN KEY (ppa_id) REFERENCES public.ppa(idproducto) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: proveedor_ppa proveedor_ppa_proveedor_id_c93b5138_fk_proveedor_codmincex; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.proveedor_ppa
    ADD CONSTRAINT proveedor_ppa_proveedor_id_c93b5138_fk_proveedor_codmincex FOREIGN KEY (proveedor_id) REFERENCES public.proveedor(codmincex) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: reports_savedreport reports_savedreport_run_by_id_0e49a3ac_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.reports_savedreport
    ADD CONSTRAINT reports_savedreport_run_by_id_0e49a3ac_fk_auth_user_id FOREIGN KEY (run_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


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
-- Name: solicitud_bateria solicitud_bateria_reeup_7a94b57f_fk_cliente_reeup; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_bateria
    ADD CONSTRAINT solicitud_bateria_reeup_7a94b57f_fk_cliente_reeup FOREIGN KEY (reeup) REFERENCES public.cliente(reeup) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: solicitud_bateria solicitud_bateria_username_bf683e7b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_bateria
    ADD CONSTRAINT solicitud_bateria_username_bf683e7b_fk_auth_user_id FOREIGN KEY (username) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


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
-- Name: solicitud_equipo solicitud_equipo_reeup_07bd2083_fk_cliente_reeup; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_equipo
    ADD CONSTRAINT solicitud_equipo_reeup_07bd2083_fk_cliente_reeup FOREIGN KEY (reeup) REFERENCES public.cliente(reeup) DEFERRABLE INITIALLY DEFERRED;


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
-- Name: solicitud_neumatico solicitud_neumatico_reeup_568efbf9_fk_cliente_reeup; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_neumatico
    ADD CONSTRAINT solicitud_neumatico_reeup_568efbf9_fk_cliente_reeup FOREIGN KEY (reeup) REFERENCES public.cliente(reeup) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: solicitud_neumatico solicitud_neumatico_username_ce90dce5_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_neumatico
    ADD CONSTRAINT solicitud_neumatico_username_ce90dce5_fk_auth_user_id FOREIGN KEY (username) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


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
-- Name: solicitud_ppa solicitud_ppa_reeup_f85449dc_fk_cliente_reeup; Type: FK CONSTRAINT; Schema: public; Owner: const
--

ALTER TABLE ONLY public.solicitud_ppa
    ADD CONSTRAINT solicitud_ppa_reeup_f85449dc_fk_cliente_reeup FOREIGN KEY (reeup) REFERENCES public.cliente(reeup) DEFERRABLE INITIALLY DEFERRED;


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

