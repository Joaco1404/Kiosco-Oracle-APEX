prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2026.04.07'
,p_release=>'26.2.0'
,p_default_workspace_id=>9582086950507493855
,p_default_application_id=>150510
,p_default_id_offset=>0
,p_default_owner=>'WKSP_TRAINEER2026'
);
end;
/
 
prompt APPLICATION 150510 - Kiosco
--
-- Application Export:
--   Application:     150510
--   Name:            Kiosco
--   Date and Time:   23:35 Tuesday October 27, 2026
--   Exported By:     DESDEABAJOOTRAVEZ2@GMAIL.COM
--   Flashback:       0
--   Export Type:     Application Export
--     Pages:                     14
--       Items:                   42
--       Validations:              4
--       Processes:               19
--       Regions:                 79
--       Buttons:                 15
--       Dynamic Actions:         10
--     Shared Components:
--       Logic:
--         Build Options:          1
--       Navigation:
--         Lists:                  2
--         Breadcrumbs:            1
--           Entries:             12
--       Security:
--         Authentication:         1
--         Authorization:          2
--       User Interface:
--         Themes:                 1
--         Templates:
--         LOVs:                   2
--       PWA:
--       Globalization:
--       Reports:
--       E-Mail:
--     Supporting Objects:  Included
--   Version:         26.2.0
--   Instance ID:     63113759365424
--

prompt --application/delete_application
begin
wwv_flow_imp.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/create_application
begin
wwv_imp_workspace.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'WKSP_TRAINEER2026')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Kiosco')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'KIOSCO')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'29AA9E30F35E0677BF197CC8DE7016111A3BE1BAA4DF7C0DE5888BC0CAADCB0B'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'26.1'
,p_flow_language=>'es-ar'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DD/MM/YYYY'
,p_date_time_format=>'DD/MM/YYYY HH24:MI:SS'
,p_timestamp_format=>'DD/MM/YYYY HH24:MI:SS'
,p_timestamp_tz_format=>'DS'
,p_flow_image_prefix=>nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication_id=>wwv_flow_imp.id(11569956400186240754)
,p_application_tab_set=>0
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'Kiosco - DD.MM.YYYY'
,p_flow_status=>'AVAILABLE'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_authorize_batch_job=>'N'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'Y'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'Kiosco'
,p_created_on=>wwv_flow_imp.dz('20260622222059Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261027233247Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_last_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_file_prefix=>nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>2461332010403
,p_version_scn=>'15850249977872'
,p_print_server_type=>'INSTANCE'
,p_file_storage=>'DB'
,p_is_pwa=>'Y'
,p_pwa_is_installable=>'Y'
,p_pwa_manifest_short_name=>'Kiosco'
,p_pwa_manifest_description=>unistr('Sistema de ventas y gesti\00F3n de caja')
,p_pwa_manifest_display=>'standalone'
,p_pwa_manifest_orientation=>'any'
,p_pwa_manifest_theme_color=>'#4a90e2'
,p_pwa_manifest_bg_color=>'#1e1e1e'
,p_pwa_is_push_enabled=>'N'
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_login_url=>'f?p=&APP_ID.:LOGIN:&APP_SESSION.::&DEBUG.:::'
,p_theme_style_by_user_pref=>false
,p_built_with_love=>false
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_imp.id(11569957383606240756)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>2471166859590295591
,p_nav_list_template_options=>'#DEFAULT#:js-defaultCollapsed:js-navCollapsed--hidden:t-TreeNav--styleA'
,p_css_file_urls=>'#APP_FILES#custon#MIN#.css'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_imp.id(11569958148860240761)
,p_nav_bar_list_template_id=>2850970698196720012
,p_nav_bar_template_options=>'#DEFAULT#'
,p_translation_method=>'TEXT_MESSAGES'
);
end;
/
prompt --application/plugin_settings
begin
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(11569951923365240747)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>'SH256:NcagEyRP_F17oe14bnrSYSYienkBgpdRSvH17g_NxoE'
,p_created_on=>wwv_flow_imp.dz('20260622222059Z')
,p_updated_on=>wwv_flow_imp.dz('20260622222059Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(11569952207791240748)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'mode', 'FULL')).to_clob
,p_version_scn=>'SH256:FJR60MFzlfEjx0PvnpYBK4631rNeUHXaF3eGFKxcTgE'
,p_created_on=>wwv_flow_imp.dz('20260622222059Z')
,p_updated_on=>wwv_flow_imp.dz('20260622222059Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(11569952575355240749)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_APEX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'show_on', 'FOCUS',
  'time_increment', '15')).to_clob
,p_version_scn=>'SH256:dQTHqehcDG0h-d-qmHe5lf-DuViElEHDw9zMkscLr6M'
,p_created_on=>wwv_flow_imp.dz('20260622222059Z')
,p_updated_on=>wwv_flow_imp.dz('20260622222059Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(11569952877467240749)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_GEOCODED_ADDRESS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'background', 'default',
  'display_as', 'LIST',
  'map_preview', 'POPUP:ITEM',
  'match_mode', 'RELAX_HOUSE_NUMBER')).to_clob
,p_version_scn=>'SH256:CU9J9l4sUtY-UffjdBCosfDW6ER-I0swXpw8GekLiYQ'
,p_created_on=>wwv_flow_imp.dz('20260622222059Z')
,p_updated_on=>wwv_flow_imp.dz('20260622222059Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(11569953131766240750)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_values_as', 'separated')).to_clob
,p_version_scn=>'SH256:jJTPfH8wphTXe7ahDytF6PbWlPl1mXrDRYylCDda0k0'
,p_created_on=>wwv_flow_imp.dz('20260622222059Z')
,p_updated_on=>wwv_flow_imp.dz('20260622222059Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(11569953475909240751)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N')).to_clob
,p_version_scn=>'SH256:oAqKgc-cSRXHDMjfwwNIgo78WqYXKjQz8MWGBG6Euj0'
,p_created_on=>wwv_flow_imp.dz('20260622222059Z')
,p_updated_on=>wwv_flow_imp.dz('20260622222059Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(11569953760414240751)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'default_icon', 'fa-star',
  'tooltip', '#VALUE#')).to_clob
,p_version_scn=>'SH256:uT4QhQbZQY61UFxAGl7ieo2urrCo8jUsFNprrg7lGHo'
,p_created_on=>wwv_flow_imp.dz('20260622222059Z')
,p_updated_on=>wwv_flow_imp.dz('20260622222059Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(11569954003743240751)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_style', 'SWITCH_CB',
  'off_value', 'N',
  'on_value', 'Y')).to_clob
,p_version_scn=>'SH256:wAjuCAsVhoIbbuKGWTMQ__Rd_YS_sY9KgWhpqOO11mc'
,p_created_on=>wwv_flow_imp.dz('20260622222059Z')
,p_updated_on=>wwv_flow_imp.dz('20260622222059Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(11569954343235240752)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'match_mode', 'RELAX_HOUSE_NUMBER')).to_clob
,p_version_scn=>'SH256:GIeRbUJQ8yKfen6-dFvkghmSUZXFoUAXCCTNRhCJgh0'
,p_created_on=>wwv_flow_imp.dz('20260622222059Z')
,p_updated_on=>wwv_flow_imp.dz('20260622222059Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(11569954665323240752)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'Y')).to_clob
,p_version_scn=>'SH256:4M27aN0U-JyQ0prILtI8ITLXOphqUdO-xWNcwkSL1SI'
,p_created_on=>wwv_flow_imp.dz('20260622222059Z')
,p_updated_on=>wwv_flow_imp.dz('20260622222059Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(11569954974824240752)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG',
  'auto_ir_reset_button', 'N')).to_clob
,p_version_scn=>'SH256:tNGqNT-VaoKqWOwKbAdEqb6C0QO-GMcYRZJLXjScHMo'
,p_created_on=>wwv_flow_imp.dz('20260622222059Z')
,p_updated_on=>wwv_flow_imp.dz('20260622222059Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(11569955257251240753)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'Y')).to_clob
,p_version_scn=>'SH256:vJP7K77hiNj1R2RE6dHVyRAhlmxDg6KGn4yRE20J9Qw'
,p_created_on=>wwv_flow_imp.dz('20260622222059Z')
,p_updated_on=>wwv_flow_imp.dz('20260622222059Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(11569955570718240753)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>'SH256:fiSZ-OfcUl-d0e0dtJUYffG7q61xKsHlomsv7ZU1BMw'
,p_created_on=>wwv_flow_imp.dz('20260622222059Z')
,p_updated_on=>wwv_flow_imp.dz('20260622222059Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(11569955818881240753)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_BOSS'
,p_version_scn=>'SH256:dRkCWi6vQMhdQUSqb0QlRls9iYcsZ93IPYrbTqFqJFE'
,p_created_on=>wwv_flow_imp.dz('20260622222059Z')
,p_updated_on=>wwv_flow_imp.dz('20260622222059Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_bar
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(11569958148860240761)
,p_name=>'Navigation Bar'
,p_static_id=>'navigation-bar'
,p_version_scn=>'SH256:URZGA7zqhF71cSEwfoiWVXz_3M6DvhLFPTZZhYqDUDg'
,p_created_on=>wwv_flow_imp.dz('20260622222059Z')
,p_updated_on=>wwv_flow_imp.dz('20261024002344Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7347467489198758252)
,p_list_item_display_sequence=>1
,p_list_item_link_text=>'Install App'
,p_static_id=>'action-a-pwa-install'
,p_list_item_link_target=>'#action$a-pwa-install'
,p_list_item_icon=>'fa-cloud-download'
,p_list_text_02=>'a-pwaInstall'
,p_list_item_current_type=>'NEVER'
,p_created_on=>wwv_flow_imp.dz('20261024002344Z')
,p_updated_on=>wwv_flow_imp.dz('20261024002344Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11569971398791240780)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'&APP_USER.'
,p_static_id=>'app-user'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260622222059Z')
,p_updated_on=>wwv_flow_imp.dz('20260622222059Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11569971973686240781)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'---'
,p_static_id=>'list_item'
,p_list_item_link_target=>'separator'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(11569971398791240780)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260622222059Z')
,p_updated_on=>wwv_flow_imp.dz('20260622222059Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11569972440363240782)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Sign Out'
,p_static_id=>'sign-out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(11569971398791240780)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260622222059Z')
,p_updated_on=>wwv_flow_imp.dz('20260622222059Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_menu
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(11569957383606240756)
,p_name=>'Navigation Menu'
,p_static_id=>'navigation-menu'
,p_version_scn=>'SH256:sjFymvyQNsAPMtVYTXTe1ZqTGW8CLTkcsAZUgaka57g'
,p_created_on=>wwv_flow_imp.dz('20260622222059Z')
,p_updated_on=>wwv_flow_imp.dz('20261015203114Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(45816091859172446854)
,p_list_item_display_sequence=>110
,p_list_item_link_text=>'Ayuda'
,p_static_id=>'ayuda'
,p_list_item_link_target=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-question-circle'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'11'
,p_created_on=>wwv_flow_imp.dz('20261005181907Z')
,p_updated_on=>wwv_flow_imp.dz('20261015190640Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(4326656540800683982)
,p_list_item_display_sequence=>120
,p_list_item_link_text=>unistr('Cambiar contrase\00F1a')
,p_static_id=>unistr('cambiar-contrase\00F1a')
,p_list_item_link_target=>'f?p=&APP_ID.:16:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-file-o'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'16'
,p_created_on=>wwv_flow_imp.dz('20261015203114Z')
,p_updated_on=>wwv_flow_imp.dz('20261015203114Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(42561054862996318155)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Caja'
,p_static_id=>'cierre-de-caja'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-cash-register'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'10'
,p_created_on=>wwv_flow_imp.dz('20260929144420Z')
,p_updated_on=>wwv_flow_imp.dz('20261015140410Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(29025169847718954051)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Historial'
,p_static_id=>'historial-de-ventas'
,p_list_item_link_target=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-history'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'8'
,p_created_on=>wwv_flow_imp.dz('20260814135750Z')
,p_updated_on=>wwv_flow_imp.dz('20261015140426Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11569968769647240775)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Inicio'
,p_static_id=>'home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260622222059Z')
,p_updated_on=>wwv_flow_imp.dz('20260930194634Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1169118159328189203)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Producto - Proveedores'
,p_static_id=>'producto-proveedores'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-link'
,p_parent_list_item_id=>wwv_flow_imp.id(980693036561089416)
,p_security_scheme=>wwv_flow_imp.id(3748731866027892630)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'2'
,p_created_on=>wwv_flow_imp.dz('20261008145527Z')
,p_updated_on=>wwv_flow_imp.dz('20261015190233Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(12103036356840626096)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Productos'
,p_static_id=>'productos'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-cube'
,p_security_scheme=>wwv_flow_imp.id(3748731866027892630)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'4'
,p_created_on=>wwv_flow_imp.dz('20260624151620Z')
,p_updated_on=>wwv_flow_imp.dz('20261015190124Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(980693036561089416)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Proveedores'
,p_static_id=>'proveedores'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-truck'
,p_security_scheme=>wwv_flow_imp.id(3748731866027892630)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'3'
,p_created_on=>wwv_flow_imp.dz('20261008005252Z')
,p_updated_on=>wwv_flow_imp.dz('20261015190139Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1639848831866063577)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Registrar compra'
,p_static_id=>'registrar-compra'
,p_list_item_link_target=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-cart-plus'
,p_parent_list_item_id=>wwv_flow_imp.id(980693036561089416)
,p_security_scheme=>wwv_flow_imp.id(3748731866027892630)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'15'
,p_created_on=>wwv_flow_imp.dz('20261009210750Z')
,p_updated_on=>wwv_flow_imp.dz('20261015190244Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(41209927163342636089)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Reportes'
,p_static_id=>'reporte-de-ventas'
,p_list_item_icon=>'fa-area-chart'
,p_security_scheme=>wwv_flow_imp.id(3748731866027892630)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'9'
,p_created_on=>wwv_flow_imp.dz('20260924184955Z')
,p_updated_on=>wwv_flow_imp.dz('20261015190153Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(4248464105502572362)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Reporte de Ventas'
,p_static_id=>'reporte-ventas'
,p_list_item_link_target=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-area-chart'
,p_parent_list_item_id=>wwv_flow_imp.id(41209927163342636089)
,p_security_scheme=>wwv_flow_imp.id(3748731866027892630)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20261015144642Z')
,p_updated_on=>wwv_flow_imp.dz('20261015145238Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1271214111782224582)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'Reportes Proveedores'
,p_static_id=>'reportes-proveedores'
,p_list_item_link_target=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-bar-chart'
,p_parent_list_item_id=>wwv_flow_imp.id(41209927163342636089)
,p_security_scheme=>wwv_flow_imp.id(3748731866027892630)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'14'
,p_created_on=>wwv_flow_imp.dz('20261008204204Z')
,p_updated_on=>wwv_flow_imp.dz('20261015190301Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(22179919218509509202)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Nueva venta'
,p_static_id=>'ventas-2'
,p_list_item_link_target=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-shopping-cart'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'7'
,p_created_on=>wwv_flow_imp.dz('20260730231011Z')
,p_updated_on=>wwv_flow_imp.dz('20261015140348Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
end;
/
prompt --application/shared_components/navigation/listentry
begin
null;
end;
/
prompt --application/shared_components/files/custon_css
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '2F2A203D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D0D0A20202043415244532044454C2044415348424F4152440D0A2020203D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D';
wwv_flow_imp.g_varchar2_table(2) := '3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D202A2F0D0A0D0A2F2A20C38D636F6E6F73206772616E646573207920636F6E20636F6C6F72202A2F0D0A2E612D43617264566965772D69636F6E207B0D0A2020666F6E742D73697A653A20322E357265';
wwv_flow_imp.g_varchar2_table(3) := '6D2021696D706F7274616E743B0D0A20206D617267696E2D72696768743A20313570783B0D0A7D0D0A2E612D43617264566965772D6974656D3A6E74682D6368696C64283129202E612D43617264566965772D69636F6E207B20636F6C6F723A20233441';
wwv_flow_imp.g_varchar2_table(4) := '393045322021696D706F7274616E743B207D0D0A2E612D43617264566965772D6974656D3A6E74682D6368696C64283229202E612D43617264566965772D69636F6E207B20636F6C6F723A20233530433837382021696D706F7274616E743B207D0D0A2E';
wwv_flow_imp.g_varchar2_table(5) := '612D43617264566965772D6974656D3A6E74682D6368696C64283329202E612D43617264566965772D69636F6E207B20636F6C6F723A20234635413632332021696D706F7274616E743B207D0D0A2E612D43617264566965772D6974656D3A6E74682D63';
wwv_flow_imp.g_varchar2_table(6) := '68696C64283429202E612D43617264566965772D69636F6E207B20636F6C6F723A20233942353942362021696D706F7274616E743B207D0D0A2E612D43617264566965772D6974656D3A6E74682D6368696C64283529202E612D43617264566965772D69';
wwv_flow_imp.g_varchar2_table(7) := '636F6E207B20636F6C6F723A20233237414536302021696D706F7274616E743B207D0D0A2E612D43617264566965772D6974656D3A6E74682D6368696C64283629202E612D43617264566965772D69636F6E207B20636F6C6F723A202332393830423920';
wwv_flow_imp.g_varchar2_table(8) := '21696D706F7274616E743B207D0D0A2E612D43617264566965772D6974656D3A6E74682D6368696C64283729202E612D43617264566965772D69636F6E207B20636F6C6F723A20233136413038352021696D706F7274616E743B207D0D0A0D0A2E612D43';
wwv_flow_imp.g_varchar2_table(9) := '617264566965772D686561646572206833207B20666F6E742D73697A653A20312E3172656D2021696D706F7274616E743B207D0D0A2E612D43617264566965772D6865616465722068333A3A66697273742D6C6574746572207B0D0A2020666F6E742D73';
wwv_flow_imp.g_varchar2_table(10) := '697A653A20312E3872656D3B0D0A20206C696E652D6865696768743A20313B0D0A20206D617267696E2D72696768743A203570783B0D0A7D0D0A0D0A2F2A20426F726465207375706572696F7220646520636F6C6F72202A2F0D0A2E612D436172645669';
wwv_flow_imp.g_varchar2_table(11) := '65772D6974656D207B0D0A2020626F726465722D746F703A2034707820736F6C696420233441393045322021696D706F7274616E743B0D0A2020626F726465722D7261646975733A203670783B0D0A7D0D0A2E612D43617264566965772D6974656D3A6E';
wwv_flow_imp.g_varchar2_table(12) := '74682D6368696C64283129207B20626F726465722D746F702D636F6C6F723A20233441393045322021696D706F7274616E743B207D0D0A2E612D43617264566965772D6974656D3A6E74682D6368696C64283229207B20626F726465722D746F702D636F';
wwv_flow_imp.g_varchar2_table(13) := '6C6F723A20233530433837382021696D706F7274616E743B207D0D0A2E612D43617264566965772D6974656D3A6E74682D6368696C64283329207B20626F726465722D746F702D636F6C6F723A20234635413632332021696D706F7274616E743B207D0D';
wwv_flow_imp.g_varchar2_table(14) := '0A2E612D43617264566965772D6974656D3A6E74682D6368696C64283429207B20626F726465722D746F702D636F6C6F723A20233942353942362021696D706F7274616E743B207D0D0A2E612D43617264566965772D6974656D3A6E74682D6368696C64';
wwv_flow_imp.g_varchar2_table(15) := '283529207B20626F726465722D746F702D636F6C6F723A20233237414536302021696D706F7274616E743B207D0D0A2E612D43617264566965772D6974656D3A6E74682D6368696C64283629207B20626F726465722D746F702D636F6C6F723A20233239';
wwv_flow_imp.g_varchar2_table(16) := '383042392021696D706F7274616E743B207D0D0A2E612D43617264566965772D6974656D3A6E74682D6368696C64283729207B20626F726465722D746F702D636F6C6F723A20233136413038352021696D706F7274616E743B207D0D0A0D0A2F2A20466F';
wwv_flow_imp.g_varchar2_table(17) := '6E646F2064656772616461646F20737574696C202A2F0D0A2E612D43617264566965772D6974656D3A6E74682D6368696C64283129207B206261636B67726F756E642D696D6167653A206C696E6561722D6772616469656E74283138306465672C202334';
wwv_flow_imp.g_varchar2_table(18) := '413930453232352030252C207472616E73706172656E7420363025292021696D706F7274616E743B207D0D0A2E612D43617264566965772D6974656D3A6E74682D6368696C64283229207B206261636B67726F756E642D696D6167653A206C696E656172';
wwv_flow_imp.g_varchar2_table(19) := '2D6772616469656E74283138306465672C202335304338373832352030252C207472616E73706172656E7420363025292021696D706F7274616E743B207D0D0A2E612D43617264566965772D6974656D3A6E74682D6368696C64283329207B206261636B';
wwv_flow_imp.g_varchar2_table(20) := '67726F756E642D696D6167653A206C696E6561722D6772616469656E74283138306465672C202346354136323332352030252C207472616E73706172656E7420363025292021696D706F7274616E743B207D0D0A2E612D43617264566965772D6974656D';
wwv_flow_imp.g_varchar2_table(21) := '3A6E74682D6368696C64283429207B206261636B67726F756E642D696D6167653A206C696E6561722D6772616469656E74283138306465672C202339423539423632352030252C207472616E73706172656E7420363025292021696D706F7274616E743B';
wwv_flow_imp.g_varchar2_table(22) := '207D0D0A2E612D43617264566965772D6974656D3A6E74682D6368696C64283529207B206261636B67726F756E642D696D6167653A206C696E6561722D6772616469656E74283138306465672C202332374145363032352030252C207472616E73706172';
wwv_flow_imp.g_varchar2_table(23) := '656E7420363025292021696D706F7274616E743B207D0D0A2E612D43617264566965772D6974656D3A6E74682D6368696C64283629207B206261636B67726F756E642D696D6167653A206C696E6561722D6772616469656E74283138306465672C202332';
wwv_flow_imp.g_varchar2_table(24) := '393830423932352030252C207472616E73706172656E7420363025292021696D706F7274616E743B207D0D0A2E612D43617264566965772D6974656D3A6E74682D6368696C64283729207B206261636B67726F756E642D696D6167653A206C696E656172';
wwv_flow_imp.g_varchar2_table(25) := '2D6772616469656E74283138306465672C202331364130383532352030252C207472616E73706172656E7420363025292021696D706F7274616E743B207D0D0A0D0A2F2A205365706172616369C3B36E20656E74726520656C2042616E6E65722079206C';
wwv_flow_imp.g_varchar2_table(26) := '6173204361726473202A2F0D0A2E6D69732D6361726473207B0D0A20206D617267696E2D746F703A20323570782021696D706F7274616E743B0D0A7D0D0A0D0A0D0A2F2A203D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D';
wwv_flow_imp.g_varchar2_table(27) := '3D3D3D3D3D3D3D3D3D3D3D3D3D0D0A202020424F544F4E4553202D2050C38147494E412034202850524F445543544F53290D0A2020203D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D202A';
wwv_flow_imp.g_varchar2_table(28) := '2F0D0A235234323632353236373839313730353536373534322C0D0A23523432363235323637383931373035353637353432202A207B0D0A2020626F782D73697A696E673A20626F726465722D626F782021696D706F7274616E743B0D0A7D0D0A0D0A23';
wwv_flow_imp.g_varchar2_table(29) := '523432363235323637383931373035353637353432207B2070616464696E673A203135707820302021696D706F7274616E743B207D0D0A0D0A23523432363235323637383931373035353637353432203E206469762C0D0A235234323632353236373839';
wwv_flow_imp.g_varchar2_table(30) := '31373035353637353432203E20646976203E206469762C0D0A23523432363235323637383931373035353637353432203E20646976203E20646976203E206469762C0D0A23523432363235323637383931373035353637353432203E20646976203E2064';
wwv_flow_imp.g_varchar2_table(31) := '6976203E20646976203E206469762C0D0A23523432363235323637383931373035353637353432202E726F772C0D0A23523432363235323637383931373035353637353432202E636F6C2C0D0A2352343236323532363738393137303535363735343220';
wwv_flow_imp.g_varchar2_table(32) := '5B636C6173732A3D22636F6C2D225D2C0D0A23523432363235323637383931373035353637353432205B636C6173732A3D22617065782D636F6C225D2C0D0A23523432363235323637383931373035353637353432202E742D466F726D2D6669656C6443';
wwv_flow_imp.g_varchar2_table(33) := '6F6E7461696E6572207B0D0A2020646973706C61793A20666C65782021696D706F7274616E743B0D0A2020666C65782D646972656374696F6E3A20726F772021696D706F7274616E743B0D0A2020666C65782D777261703A20777261702021696D706F72';
wwv_flow_imp.g_varchar2_table(34) := '74616E743B0D0A20206A7573746966792D636F6E74656E743A2063656E7465722021696D706F7274616E743B0D0A2020616C69676E2D6974656D733A2063656E7465722021696D706F7274616E743B0D0A202077696474683A206175746F2021696D706F';
wwv_flow_imp.g_varchar2_table(35) := '7274616E743B0D0A20206D61782D77696474683A20313030252021696D706F7274616E743B0D0A2020666C65783A20302030206175746F2021696D706F7274616E743B0D0A202070616464696E673A20302021696D706F7274616E743B0D0A20206D6172';
wwv_flow_imp.g_varchar2_table(36) := '67696E3A20302021696D706F7274616E743B0D0A20206761703A20313570782021696D706F7274616E743B0D0A7D0D0A0D0A2352343236323532363738393137303535363735343220627574746F6E207B0D0A2020646973706C61793A20696E6C696E65';
wwv_flow_imp.g_varchar2_table(37) := '2D626C6F636B2021696D706F7274616E743B0D0A20206D617267696E3A20302021696D706F7274616E743B0D0A202070616464696E673A2038707820333070782021696D706F7274616E743B0D0A2020666F6E742D7765696768743A203630302021696D';
wwv_flow_imp.g_varchar2_table(38) := '706F7274616E743B0D0A2020626F726465722D7261646975733A203670782021696D706F7274616E743B0D0A20207472616E736974696F6E3A20616C6C20302E327320656173652021696D706F7274616E743B0D0A2020666C65783A2030203020617574';
wwv_flow_imp.g_varchar2_table(39) := '6F2021696D706F7274616E743B0D0A7D0D0A0D0A2352343236323532363738393137303535363735343220627574746F6E3A686F766572207B0D0A20207472616E73666F726D3A207472616E736C61746559282D327078292021696D706F7274616E743B';
wwv_flow_imp.g_varchar2_table(40) := '0D0A2020626F782D736861646F773A2030203470782031327078207267626128302C302C302C302E33292021696D706F7274616E743B0D0A7D0D0A0D0A0D0A2F2A203D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D';
wwv_flow_imp.g_varchar2_table(41) := '3D3D3D3D3D3D3D3D3D3D0D0A202020424F544F4E4553202D2050C38147494E41203720284E554556412056454E5441290D0A2020203D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D202A2F';
wwv_flow_imp.g_varchar2_table(42) := '0D0A23523232313636353032333130343033383236343237202E742D526567696F6E2D626F6479202E636F6E7461696E6572203E202E726F773A68617328627574746F6E29207B0D0A2020646973706C61793A20696E6C696E652D626C6F636B2021696D';
wwv_flow_imp.g_varchar2_table(43) := '706F7274616E743B0D0A202077696474683A206175746F2021696D706F7274616E743B0D0A20206D617267696E3A203570782021696D706F7274616E743B0D0A202070616464696E673A20302021696D706F7274616E743B0D0A2020766572746963616C';
wwv_flow_imp.g_varchar2_table(44) := '2D616C69676E3A206D6964646C652021696D706F7274616E743B0D0A7D0D0A0D0A23523232313636353032333130343033383236343237202E742D526567696F6E2D626F6479202E636F6E7461696E65723A686173283E202E726F7720627574746F6E29';
wwv_flow_imp.g_varchar2_table(45) := '207B0D0A2020746578742D616C69676E3A2063656E7465722021696D706F7274616E743B0D0A202070616464696E673A203130707820302021696D706F7274616E743B0D0A7D0D0A0D0A2352323231363635303233313034303338323634323720627574';
wwv_flow_imp.g_varchar2_table(46) := '746F6E2E742D427574746F6E207B0D0A202070616464696E673A2038707820323570782021696D706F7274616E743B0D0A2020666F6E742D7765696768743A203630302021696D706F7274616E743B0D0A2020626F726465722D7261646975733A203670';
wwv_flow_imp.g_varchar2_table(47) := '782021696D706F7274616E743B0D0A20207472616E736974696F6E3A20616C6C20302E327320656173652021696D706F7274616E743B0D0A20206D617267696E3A20302021696D706F7274616E743B0D0A7D0D0A0D0A2352323231363635303233313034';
wwv_flow_imp.g_varchar2_table(48) := '303338323634323720627574746F6E2E742D427574746F6E3A686F766572207B0D0A20207472616E73666F726D3A207472616E736C61746559282D327078292021696D706F7274616E743B0D0A2020626F782D736861646F773A20302034707820313270';
wwv_flow_imp.g_varchar2_table(49) := '78207267626128302C302C302C302E33292021696D706F7274616E743B0D0A7D0D0A0D0A2F2A203D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D0D0A202020414C494E4541522044495350';
wwv_flow_imp.g_varchar2_table(50) := '4C4159204F4E4C59202D2050C38147494E4120370D0A2020203D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D202A2F0D0A23523232313636353032333130343033383236343237202E742D';
wwv_flow_imp.g_varchar2_table(51) := '466F726D2D696E707574436F6E7461696E65722C0D0A23523232313636353032333130343033383236343237202E742D466F726D2D6974656D577261707065722C0D0A23523232313636353032333130343033383236343237202E646973706C61795F6F';
wwv_flow_imp.g_varchar2_table(52) := '6E6C792C0D0A23523232313636353032333130343033383236343237202E617065782D6974656D2D646973706C61792D6F6E6C79207B0D0A2020746578742D616C69676E3A206C6566742021696D706F7274616E743B0D0A20206A7573746966792D636F';
wwv_flow_imp.g_varchar2_table(53) := '6E74656E743A20666C65782D73746172742021696D706F7274616E743B0D0A2020616C69676E2D6974656D733A20666C65782D73746172742021696D706F7274616E743B0D0A7D0D0A0D0A23523232313636353032333130343033383236343237202E61';
wwv_flow_imp.g_varchar2_table(54) := '7065782D6974656D2D646973706C61792D6F6E6C79207B0D0A2020646973706C61793A20626C6F636B2021696D706F7274616E743B0D0A202077696474683A20313030252021696D706F7274616E743B0D0A2020746578742D616C69676E3A206C656674';
wwv_flow_imp.g_varchar2_table(55) := '2021696D706F7274616E743B0D0A7D0D0A0D0A0D0A2F2A203D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D0D0A202020424F544F4E4553202D2050C38147494E4120313020284349455252';
wwv_flow_imp.g_varchar2_table(56) := '452044452043414A41290D0A2020203D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D202A2F0D0A0D0A2F2A2041706572747572612064652063616A61202A2F0D0A23523431323132323131';
wwv_flow_imp.g_varchar2_table(57) := '383238393637353932363433202E742D526567696F6E2D626F6479202E636F6E7461696E6572203E202E726F773A68617328627574746F6E29207B0D0A2020646973706C61793A20696E6C696E652D626C6F636B2021696D706F7274616E743B0D0A2020';
wwv_flow_imp.g_varchar2_table(58) := '77696474683A206175746F2021696D706F7274616E743B0D0A20206D617267696E3A20357078203570782035707820302021696D706F7274616E743B0D0A202070616464696E673A20302021696D706F7274616E743B0D0A2020766572746963616C2D61';
wwv_flow_imp.g_varchar2_table(59) := '6C69676E3A206D6964646C652021696D706F7274616E743B0D0A7D0D0A23523431323132323131383238393637353932363433202E742D526567696F6E2D626F6479202E636F6E7461696E65723A686173283E202E726F7720627574746F6E29207B0D0A';
wwv_flow_imp.g_varchar2_table(60) := '2020746578742D616C69676E3A206C6566742021696D706F7274616E743B0D0A7D0D0A0D0A2F2A20526567697374726172206D6F76696D69656E746F202A2F0D0A23523431323132323132303237353933353932363435202E742D526567696F6E2D626F';
wwv_flow_imp.g_varchar2_table(61) := '6479202E636F6E7461696E6572203E202E726F773A68617328627574746F6E29207B0D0A2020646973706C61793A20696E6C696E652D626C6F636B2021696D706F7274616E743B0D0A202077696474683A206175746F2021696D706F7274616E743B0D0A';
wwv_flow_imp.g_varchar2_table(62) := '20206D617267696E3A20357078203570782035707820302021696D706F7274616E743B0D0A202070616464696E673A20302021696D706F7274616E743B0D0A2020766572746963616C2D616C69676E3A206D6964646C652021696D706F7274616E743B0D';
wwv_flow_imp.g_varchar2_table(63) := '0A7D0D0A23523431323132323132303237353933353932363435202E742D526567696F6E2D626F6479202E636F6E7461696E65723A686173283E202E726F7720627574746F6E29207B0D0A2020746578742D616C69676E3A206C6566742021696D706F72';
wwv_flow_imp.g_varchar2_table(64) := '74616E743B0D0A7D0D0A0D0A2F2A204365727261722063616A61202A2F0D0A23523431323132323132323930363232353932363437202E742D526567696F6E2D626F6479202E636F6E7461696E6572203E202E726F773A68617328627574746F6E29207B';
wwv_flow_imp.g_varchar2_table(65) := '0D0A2020646973706C61793A20696E6C696E652D626C6F636B2021696D706F7274616E743B0D0A202077696474683A206175746F2021696D706F7274616E743B0D0A20206D617267696E3A20357078203570782035707820302021696D706F7274616E74';
wwv_flow_imp.g_varchar2_table(66) := '3B0D0A202070616464696E673A20302021696D706F7274616E743B0D0A2020766572746963616C2D616C69676E3A206D6964646C652021696D706F7274616E743B0D0A7D0D0A23523431323132323132323930363232353932363437202E742D52656769';
wwv_flow_imp.g_varchar2_table(67) := '6F6E2D626F6479202E636F6E7461696E65723A686173283E202E726F7720627574746F6E29207B0D0A2020746578742D616C69676E3A206C6566742021696D706F7274616E743B0D0A7D0D0A0D0A2F2A20457374696C6F2067656E6572616C206465206C';
wwv_flow_imp.g_varchar2_table(68) := '6F73203320626F746F6E6573206465206C612070C3A167696E61203130202A2F0D0A2352343132313232313138323839363735393236343320627574746F6E2E742D427574746F6E2C0D0A23523431323132323132303237353933353932363435206275';
wwv_flow_imp.g_varchar2_table(69) := '74746F6E2E742D427574746F6E2C0D0A2352343132313232313232393036323235393236343720627574746F6E2E742D427574746F6E207B0D0A202070616464696E673A203130707820333070782021696D706F7274616E743B0D0A2020666F6E742D77';
wwv_flow_imp.g_varchar2_table(70) := '65696768743A203630302021696D706F7274616E743B0D0A2020626F726465722D7261646975733A203670782021696D706F7274616E743B0D0A20207472616E736974696F6E3A20616C6C20302E327320656173652021696D706F7274616E743B0D0A20';
wwv_flow_imp.g_varchar2_table(71) := '206D617267696E3A20313070782030203130707820302021696D706F7274616E743B0D0A7D0D0A0D0A2352343132313232313138323839363735393236343320627574746F6E2E742D427574746F6E3A686F7665722C0D0A235234313231323231323032';
wwv_flow_imp.g_varchar2_table(72) := '3735393335393236343520627574746F6E2E742D427574746F6E3A686F7665722C0D0A2352343132313232313232393036323235393236343720627574746F6E2E742D427574746F6E3A686F766572207B0D0A20207472616E73666F726D3A207472616E';
wwv_flow_imp.g_varchar2_table(73) := '736C61746559282D327078292021696D706F7274616E743B0D0A2020626F782D736861646F773A2030203470782031327078207267626128302C302C302C302E33292021696D706F7274616E743B0D0A7D0D0A0D0A0D0A2F2A203D3D3D3D3D3D3D3D3D3D';
wwv_flow_imp.g_varchar2_table(74) := '3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D0D0A2020205245504F52544553202D20434F4C4F524553204445204D415247454E0D0A2020203D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D';
wwv_flow_imp.g_varchar2_table(75) := '3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D202A2F0D0A2E6D617267656E2D616C746F207B0D0A2020636F6C6F723A20233237414536302021696D706F7274616E743B20202F2A205665726465202D206D75792072656E7461626C65202A2F0D0A7D0D0A2E6D';
wwv_flow_imp.g_varchar2_table(76) := '617267656E2D6D6564696F207B0D0A2020636F6C6F723A20234635413632332021696D706F7274616E743B20202F2A204E6172616E6A61202D2072656E746162696C69646164206D65646961202A2F0D0A7D0D0A2E6D617267656E2D62616A6F207B0D0A';
wwv_flow_imp.g_varchar2_table(77) := '2020636F6C6F723A20234537344333432021696D706F7274616E743B20202F2A20526F6A6F202D20706F636F206D617267656E202A2F0D0A7D0D0A0D0A2E65737461646F2D70616761646F207B20636F6C6F723A20233237414536302021696D706F7274';
wwv_flow_imp.g_varchar2_table(78) := '616E743B207D0D0A2E65737461646F2D70656E6469656E7465207B20636F6C6F723A20234537344333432021696D706F7274616E743B207D0D0A';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(43316912476818168893)
,p_file_name=>'custon.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20261018010403Z')
,p_updated_on=>wwv_flow_imp.dz('20261018010403Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
end;
/
prompt --application/shared_components/files/custon_min_css
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '2E612D43617264566965772D69636F6E207B666F6E742D73697A653A20322E3572656D2021696D706F7274616E743B6D617267696E2D72696768743A20313570783B7D2E612D43617264566965772D6974656D3A6E74682D6368696C64283129202E612D';
wwv_flow_imp.g_varchar2_table(2) := '43617264566965772D69636F6E207B20636F6C6F723A20233441393045322021696D706F7274616E743B207D2E612D43617264566965772D6974656D3A6E74682D6368696C64283229202E612D43617264566965772D69636F6E207B20636F6C6F723A20';
wwv_flow_imp.g_varchar2_table(3) := '233530433837382021696D706F7274616E743B207D2E612D43617264566965772D6974656D3A6E74682D6368696C64283329202E612D43617264566965772D69636F6E207B20636F6C6F723A20234635413632332021696D706F7274616E743B207D2E61';
wwv_flow_imp.g_varchar2_table(4) := '2D43617264566965772D6974656D3A6E74682D6368696C64283429202E612D43617264566965772D69636F6E207B20636F6C6F723A20233942353942362021696D706F7274616E743B207D2E612D43617264566965772D6974656D3A6E74682D6368696C';
wwv_flow_imp.g_varchar2_table(5) := '64283529202E612D43617264566965772D69636F6E207B20636F6C6F723A20233237414536302021696D706F7274616E743B207D2E612D43617264566965772D6974656D3A6E74682D6368696C64283629202E612D43617264566965772D69636F6E207B';
wwv_flow_imp.g_varchar2_table(6) := '20636F6C6F723A20233239383042392021696D706F7274616E743B207D2E612D43617264566965772D6974656D3A6E74682D6368696C64283729202E612D43617264566965772D69636F6E207B20636F6C6F723A20233136413038352021696D706F7274';
wwv_flow_imp.g_varchar2_table(7) := '616E743B207D2E612D43617264566965772D686561646572206833207B20666F6E742D73697A653A20312E3172656D2021696D706F7274616E743B207D2E612D43617264566965772D6865616465722068333A3A66697273742D6C6574746572207B666F';
wwv_flow_imp.g_varchar2_table(8) := '6E742D73697A653A20312E3872656D3B6C696E652D6865696768743A20313B6D617267696E2D72696768743A203570783B7D2E612D43617264566965772D6974656D207B626F726465722D746F703A2034707820736F6C69642023344139304532202169';
wwv_flow_imp.g_varchar2_table(9) := '6D706F7274616E743B626F726465722D7261646975733A203670783B7D2E612D43617264566965772D6974656D3A6E74682D6368696C64283129207B20626F726465722D746F702D636F6C6F723A20233441393045322021696D706F7274616E743B207D';
wwv_flow_imp.g_varchar2_table(10) := '2E612D43617264566965772D6974656D3A6E74682D6368696C64283229207B20626F726465722D746F702D636F6C6F723A20233530433837382021696D706F7274616E743B207D2E612D43617264566965772D6974656D3A6E74682D6368696C64283329';
wwv_flow_imp.g_varchar2_table(11) := '207B20626F726465722D746F702D636F6C6F723A20234635413632332021696D706F7274616E743B207D2E612D43617264566965772D6974656D3A6E74682D6368696C64283429207B20626F726465722D746F702D636F6C6F723A202339423539423620';
wwv_flow_imp.g_varchar2_table(12) := '21696D706F7274616E743B207D2E612D43617264566965772D6974656D3A6E74682D6368696C64283529207B20626F726465722D746F702D636F6C6F723A20233237414536302021696D706F7274616E743B207D2E612D43617264566965772D6974656D';
wwv_flow_imp.g_varchar2_table(13) := '3A6E74682D6368696C64283629207B20626F726465722D746F702D636F6C6F723A20233239383042392021696D706F7274616E743B207D2E612D43617264566965772D6974656D3A6E74682D6368696C64283729207B20626F726465722D746F702D636F';
wwv_flow_imp.g_varchar2_table(14) := '6C6F723A20233136413038352021696D706F7274616E743B207D2E612D43617264566965772D6974656D3A6E74682D6368696C64283129207B206261636B67726F756E642D696D6167653A206C696E6561722D6772616469656E74283138306465672C20';
wwv_flow_imp.g_varchar2_table(15) := '2334413930453232352030252C207472616E73706172656E7420363025292021696D706F7274616E743B207D2E612D43617264566965772D6974656D3A6E74682D6368696C64283229207B206261636B67726F756E642D696D6167653A206C696E656172';
wwv_flow_imp.g_varchar2_table(16) := '2D6772616469656E74283138306465672C202335304338373832352030252C207472616E73706172656E7420363025292021696D706F7274616E743B207D2E612D43617264566965772D6974656D3A6E74682D6368696C64283329207B206261636B6772';
wwv_flow_imp.g_varchar2_table(17) := '6F756E642D696D6167653A206C696E6561722D6772616469656E74283138306465672C202346354136323332352030252C207472616E73706172656E7420363025292021696D706F7274616E743B207D2E612D43617264566965772D6974656D3A6E7468';
wwv_flow_imp.g_varchar2_table(18) := '2D6368696C64283429207B206261636B67726F756E642D696D6167653A206C696E6561722D6772616469656E74283138306465672C202339423539423632352030252C207472616E73706172656E7420363025292021696D706F7274616E743B207D2E61';
wwv_flow_imp.g_varchar2_table(19) := '2D43617264566965772D6974656D3A6E74682D6368696C64283529207B206261636B67726F756E642D696D6167653A206C696E6561722D6772616469656E74283138306465672C202332374145363032352030252C207472616E73706172656E74203630';
wwv_flow_imp.g_varchar2_table(20) := '25292021696D706F7274616E743B207D2E612D43617264566965772D6974656D3A6E74682D6368696C64283629207B206261636B67726F756E642D696D6167653A206C696E6561722D6772616469656E74283138306465672C2023323938304239323520';
wwv_flow_imp.g_varchar2_table(21) := '30252C207472616E73706172656E7420363025292021696D706F7274616E743B207D2E612D43617264566965772D6974656D3A6E74682D6368696C64283729207B206261636B67726F756E642D696D6167653A206C696E6561722D6772616469656E7428';
wwv_flow_imp.g_varchar2_table(22) := '3138306465672C202331364130383532352030252C207472616E73706172656E7420363025292021696D706F7274616E743B207D2E6D69732D6361726473207B6D617267696E2D746F703A20323570782021696D706F7274616E743B7D23523432363235';
wwv_flow_imp.g_varchar2_table(23) := '3236373839313730353536373534322C0D0A23523432363235323637383931373035353637353432202A207B626F782D73697A696E673A20626F726465722D626F782021696D706F7274616E743B7D235234323632353236373839313730353536373534';
wwv_flow_imp.g_varchar2_table(24) := '32207B2070616464696E673A203135707820302021696D706F7274616E743B207D23523432363235323637383931373035353637353432203E206469762C0D0A23523432363235323637383931373035353637353432203E20646976203E206469762C0D';
wwv_flow_imp.g_varchar2_table(25) := '0A23523432363235323637383931373035353637353432203E20646976203E20646976203E206469762C0D0A23523432363235323637383931373035353637353432203E20646976203E20646976203E20646976203E206469762C0D0A23523432363235';
wwv_flow_imp.g_varchar2_table(26) := '323637383931373035353637353432202E726F772C0D0A23523432363235323637383931373035353637353432202E636F6C2C0D0A23523432363235323637383931373035353637353432205B636C6173732A3D22636F6C2D225D2C0D0A235234323632';
wwv_flow_imp.g_varchar2_table(27) := '35323637383931373035353637353432205B636C6173732A3D22617065782D636F6C225D2C0D0A23523432363235323637383931373035353637353432202E742D466F726D2D6669656C64436F6E7461696E6572207B646973706C61793A20666C657820';
wwv_flow_imp.g_varchar2_table(28) := '21696D706F7274616E743B666C65782D646972656374696F6E3A20726F772021696D706F7274616E743B666C65782D777261703A20777261702021696D706F7274616E743B6A7573746966792D636F6E74656E743A2063656E7465722021696D706F7274';
wwv_flow_imp.g_varchar2_table(29) := '616E743B616C69676E2D6974656D733A2063656E7465722021696D706F7274616E743B77696474683A206175746F2021696D706F7274616E743B6D61782D77696474683A20313030252021696D706F7274616E743B666C65783A20302030206175746F20';
wwv_flow_imp.g_varchar2_table(30) := '21696D706F7274616E743B70616464696E673A20302021696D706F7274616E743B6D617267696E3A20302021696D706F7274616E743B6761703A20313570782021696D706F7274616E743B7D235234323632353236373839313730353536373534322062';
wwv_flow_imp.g_varchar2_table(31) := '7574746F6E207B646973706C61793A20696E6C696E652D626C6F636B2021696D706F7274616E743B6D617267696E3A20302021696D706F7274616E743B70616464696E673A2038707820333070782021696D706F7274616E743B666F6E742D7765696768';
wwv_flow_imp.g_varchar2_table(32) := '743A203630302021696D706F7274616E743B626F726465722D7261646975733A203670782021696D706F7274616E743B7472616E736974696F6E3A20616C6C20302E327320656173652021696D706F7274616E743B666C65783A20302030206175746F20';
wwv_flow_imp.g_varchar2_table(33) := '21696D706F7274616E743B7D2352343236323532363738393137303535363735343220627574746F6E3A686F766572207B7472616E73666F726D3A207472616E736C61746559282D327078292021696D706F7274616E743B626F782D736861646F773A20';
wwv_flow_imp.g_varchar2_table(34) := '30203470782031327078207267626128302C302C302C302E33292021696D706F7274616E743B7D23523232313636353032333130343033383236343237202E742D526567696F6E2D626F6479202E636F6E7461696E6572203E202E726F773A6861732862';
wwv_flow_imp.g_varchar2_table(35) := '7574746F6E29207B646973706C61793A20696E6C696E652D626C6F636B2021696D706F7274616E743B77696474683A206175746F2021696D706F7274616E743B6D617267696E3A203570782021696D706F7274616E743B70616464696E673A2030202169';
wwv_flow_imp.g_varchar2_table(36) := '6D706F7274616E743B766572746963616C2D616C69676E3A206D6964646C652021696D706F7274616E743B7D23523232313636353032333130343033383236343237202E742D526567696F6E2D626F6479202E636F6E7461696E65723A686173283E202E';
wwv_flow_imp.g_varchar2_table(37) := '726F7720627574746F6E29207B746578742D616C69676E3A2063656E7465722021696D706F7274616E743B70616464696E673A203130707820302021696D706F7274616E743B7D2352323231363635303233313034303338323634323720627574746F6E';
wwv_flow_imp.g_varchar2_table(38) := '2E742D427574746F6E207B70616464696E673A2038707820323570782021696D706F7274616E743B666F6E742D7765696768743A203630302021696D706F7274616E743B626F726465722D7261646975733A203670782021696D706F7274616E743B7472';
wwv_flow_imp.g_varchar2_table(39) := '616E736974696F6E3A20616C6C20302E327320656173652021696D706F7274616E743B6D617267696E3A20302021696D706F7274616E743B7D2352323231363635303233313034303338323634323720627574746F6E2E742D427574746F6E3A686F7665';
wwv_flow_imp.g_varchar2_table(40) := '72207B7472616E73666F726D3A207472616E736C61746559282D327078292021696D706F7274616E743B626F782D736861646F773A2030203470782031327078207267626128302C302C302C302E33292021696D706F7274616E743B7D23523232313636';
wwv_flow_imp.g_varchar2_table(41) := '353032333130343033383236343237202E742D466F726D2D696E707574436F6E7461696E65722C0D0A23523232313636353032333130343033383236343237202E742D466F726D2D6974656D577261707065722C0D0A2352323231363635303233313034';
wwv_flow_imp.g_varchar2_table(42) := '3033383236343237202E646973706C61795F6F6E6C792C0D0A23523232313636353032333130343033383236343237202E617065782D6974656D2D646973706C61792D6F6E6C79207B746578742D616C69676E3A206C6566742021696D706F7274616E74';
wwv_flow_imp.g_varchar2_table(43) := '3B6A7573746966792D636F6E74656E743A20666C65782D73746172742021696D706F7274616E743B616C69676E2D6974656D733A20666C65782D73746172742021696D706F7274616E743B7D23523232313636353032333130343033383236343237202E';
wwv_flow_imp.g_varchar2_table(44) := '617065782D6974656D2D646973706C61792D6F6E6C79207B646973706C61793A20626C6F636B2021696D706F7274616E743B77696474683A20313030252021696D706F7274616E743B746578742D616C69676E3A206C6566742021696D706F7274616E74';
wwv_flow_imp.g_varchar2_table(45) := '3B7D23523431323132323131383238393637353932363433202E742D526567696F6E2D626F6479202E636F6E7461696E6572203E202E726F773A68617328627574746F6E29207B646973706C61793A20696E6C696E652D626C6F636B2021696D706F7274';
wwv_flow_imp.g_varchar2_table(46) := '616E743B77696474683A206175746F2021696D706F7274616E743B6D617267696E3A20357078203570782035707820302021696D706F7274616E743B70616464696E673A20302021696D706F7274616E743B766572746963616C2D616C69676E3A206D69';
wwv_flow_imp.g_varchar2_table(47) := '64646C652021696D706F7274616E743B7D23523431323132323131383238393637353932363433202E742D526567696F6E2D626F6479202E636F6E7461696E65723A686173283E202E726F7720627574746F6E29207B746578742D616C69676E3A206C65';
wwv_flow_imp.g_varchar2_table(48) := '66742021696D706F7274616E743B7D23523431323132323132303237353933353932363435202E742D526567696F6E2D626F6479202E636F6E7461696E6572203E202E726F773A68617328627574746F6E29207B646973706C61793A20696E6C696E652D';
wwv_flow_imp.g_varchar2_table(49) := '626C6F636B2021696D706F7274616E743B77696474683A206175746F2021696D706F7274616E743B6D617267696E3A20357078203570782035707820302021696D706F7274616E743B70616464696E673A20302021696D706F7274616E743B7665727469';
wwv_flow_imp.g_varchar2_table(50) := '63616C2D616C69676E3A206D6964646C652021696D706F7274616E743B7D23523431323132323132303237353933353932363435202E742D526567696F6E2D626F6479202E636F6E7461696E65723A686173283E202E726F7720627574746F6E29207B74';
wwv_flow_imp.g_varchar2_table(51) := '6578742D616C69676E3A206C6566742021696D706F7274616E743B7D23523431323132323132323930363232353932363437202E742D526567696F6E2D626F6479202E636F6E7461696E6572203E202E726F773A68617328627574746F6E29207B646973';
wwv_flow_imp.g_varchar2_table(52) := '706C61793A20696E6C696E652D626C6F636B2021696D706F7274616E743B77696474683A206175746F2021696D706F7274616E743B6D617267696E3A20357078203570782035707820302021696D706F7274616E743B70616464696E673A20302021696D';
wwv_flow_imp.g_varchar2_table(53) := '706F7274616E743B766572746963616C2D616C69676E3A206D6964646C652021696D706F7274616E743B7D23523431323132323132323930363232353932363437202E742D526567696F6E2D626F6479202E636F6E7461696E65723A686173283E202E72';
wwv_flow_imp.g_varchar2_table(54) := '6F7720627574746F6E29207B746578742D616C69676E3A206C6566742021696D706F7274616E743B7D2352343132313232313138323839363735393236343320627574746F6E2E742D427574746F6E2C0D0A235234313231323231323032373539333539';
wwv_flow_imp.g_varchar2_table(55) := '3236343520627574746F6E2E742D427574746F6E2C0D0A2352343132313232313232393036323235393236343720627574746F6E2E742D427574746F6E207B70616464696E673A203130707820333070782021696D706F7274616E743B666F6E742D7765';
wwv_flow_imp.g_varchar2_table(56) := '696768743A203630302021696D706F7274616E743B626F726465722D7261646975733A203670782021696D706F7274616E743B7472616E736974696F6E3A20616C6C20302E327320656173652021696D706F7274616E743B6D617267696E3A2031307078';
wwv_flow_imp.g_varchar2_table(57) := '2030203130707820302021696D706F7274616E743B7D2352343132313232313138323839363735393236343320627574746F6E2E742D427574746F6E3A686F7665722C0D0A2352343132313232313230323735393335393236343520627574746F6E2E74';
wwv_flow_imp.g_varchar2_table(58) := '2D427574746F6E3A686F7665722C0D0A2352343132313232313232393036323235393236343720627574746F6E2E742D427574746F6E3A686F766572207B7472616E73666F726D3A207472616E736C61746559282D327078292021696D706F7274616E74';
wwv_flow_imp.g_varchar2_table(59) := '3B626F782D736861646F773A2030203470782031327078207267626128302C302C302C302E33292021696D706F7274616E743B7D2E6D617267656E2D616C746F207B636F6C6F723A20233237414536302021696D706F7274616E743B7D2E6D617267656E';
wwv_flow_imp.g_varchar2_table(60) := '2D6D6564696F207B636F6C6F723A20234635413632332021696D706F7274616E743B7D2E6D617267656E2D62616A6F207B636F6C6F723A20234537344333432021696D706F7274616E743B7D2E65737461646F2D70616761646F207B20636F6C6F723A20';
wwv_flow_imp.g_varchar2_table(61) := '233237414536302021696D706F7274616E743B207D2E65737461646F2D70656E6469656E7465207B20636F6C6F723A20234537344333432021696D706F7274616E743B207D';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(43316932698811174381)
,p_file_name=>'custon.min.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20261001132618Z')
,p_updated_on=>wwv_flow_imp.dz('20261018010403Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_144_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000090000000900806000000E746E2B800000EAA494441547801EC9D7B7054571DC77F7B03014243694882A5E525F2163BD476046BA988539DB1D601A70E16ADF087368A7686E97F4E67121CF50F1D67B44E31';
wwv_flow_imp.g_varchar2_table(2) := 'DA5640A1A0181CA56AC589105E3A6387F7ABD04A2CD24A12022425EFBDEBEF7B760FB3497637BB7BCEBD77F79E93B9BFFB38F79CDF39E7F7FBEC79DC571CB27FD6020A16B0002918CF2625B200590A942C600152329F4D6C01B20C2859C002A4643E9BD8';
wwv_flow_imp.g_varchar2_table(3) := '02641950B240DE0029E56A1387C60216A0D0B832988A588082B17B6872B50085C695C154C402148CDD4393AB052834AE0CA62216A060EC1E9A5CFD076804D33DB57EF724963990D5DFD8F5D13535BB1F93F2644DC35A53640DD71BF587C01609993482F9';
wwv_flow_imp.g_varchar2_table(4) := '7C3F1D3840AB6B7E3FE3C99A86DA2FD6ECDEC7DBD84034D6C6F206C4719DC3318AED91C2D6D96C8AA0CEA83F04B648481BDBE812CB6696DA2FD5ECFA38DB23D0251080507136008C1073C8BDC416A88B502C706370398A6199C1855CCB52E792831F1D80';
wwv_flow_imp.g_varchar2_table(5) := '82208C83FD5D7C0588A1A965B9848A733503A930E71BB6054041F0830448B57E56D01780181A8013E38AD5B1A0B2BCB18B0716806DEBD8DEBE81E4394018DBB0A1000E6FECE2930524489EB7469E0184C131E0B1631B9F90499D8D688DE08BD4A7D5433D';
wwv_flow_imp.g_varchar2_table(6) := '010883640C8EF5C2A35E594335CC605F60B0EDC998533B40A0DDE5D981A1CE2AD46AA34BAB856F7417503B40DCEAE05A8DEE725A7DEA16102D91BA9AC11AB40264C73C838D5B8047B868ABF507AE0D209E3AD672EB632F06162035438A246E070D09CBFB';
wwv_flow_imp.g_varchar2_table(7) := '501B405C024F0669ACD72EFA2DA06D7AAF05206E7D000F066AFAAB6A357A61017465F099B26E2D007129B411CDBA742F565F6A0B68F1993240B6F549ED9D22089D81EB75AAE55406284691AFA816C2A60FC602512A516E859401B233AF609CAF2357F69D';
wwv_flow_imp.g_varchar2_table(8) := 'F2B85509A044F7A5A32E5647301650EEC694000AA6CE36579D1670C97944459F2A404A99AB14DCA6D563811845942EFEAA02A494B91E1378A7C504CDAAE32055809407612638A9C0EB38E3A9F5BBF37EDB236F8038D339056E185BBCEC2DE03F407DB168';
wwv_flow_imp.g_varchar2_table(9) := '65F6E5B331C36A81BC5BA0B01AC4C47AA9340616201389D158E7BC012A714B2A3496C3AA0AD0022ABECC1BA018C5EC18289DD30D0ACF1B20136CD4DD759D2061AFAB4A6360014A43C7ADCE16EABED51E1706294D34E3832D402910003CBD3D9D545D3D49';
wwv_flow_imp.g_varchar2_table(10) := '8800C94294C25264FF57C650ABA0CB023CE3EF28A38797DE471F5E3C8FB06F211A6AA9F8B16D81E276106B80035000CCA7572C11616563C7D0B287165B88843586AF2C40099BF4F77713BA2EC0036012C1626321126648B9B200B159004FE78D77442BF3';
wwv_flow_imp.g_varchar2_table(11) := 'C0E20504603878D082308005C07A7B3AA897C74883226839283E251620F619E0E10D019ECA8A09D84D291222373AC0D3FBF694714C0B341E20745B70FAC205B329133C88030144880B88645A849B2A460384AE0B5D11BAA579B3A766CDC0B4A9D5627A8F';
wwv_flow_imp.g_varchar2_table(12) := 'B4D09175C21046341AA09EC4B51D745DB9F816AD10A6F748637A2B642C40B8DED3DFD74DE88EB2E9BA004BB20022A44557065DC9E74CDA371220D7E54130DFA680A32B27DD496DED1D794959D9183173EBE5591974429F69E2985661D437B9DB693AF83A';
wwv_flow_imp.g_varchar2_table(13) := 'E52BFF7AFD34DD7AAF8BD00A25EB441E3E4B60D9190910BAAEC993EFA24757DCAF45A00B3A4D1C501B07506FE202E0A3CBEFA7AFAF7B448B40179A8081FE1E6C8C12E300EAEE8A5F005CF9D887B4391ABAAA2B27F0D5E90E6D3A8B45915100F5F3FD2E8C';
wwv_flow_imp.g_varchar2_table(14) := '57EEBDE76E8A68F410744D995225C642C843A3EA82576514407D89EE6BF9C30B46744CC39EE3B4E9E57DB4F1077FA4A6236F52DBF5AE8C693EB16C91382FF3100706AC8C0248B60EAB32745FADEDB7A8E6D92DB4ED37FBE86FFB8ED3F1936FD18F37EDA1';
wwv_flow_imp.g_varchar2_table(15) := 'E7BEFB5B6AE373E998F8D89299846E4CE6912E5ED8C28D01088367745F6BBEB02CA30F37BDD448D7DA6ED2E39F5942CF3EB392367CF373621F61CF7D6F17A56B8922ACF5BE45EF2FBA6E8C8BADB4180390BCD0575D3531ADC1CE5EF81FA1C559FA910534';
wwv_flow_imp.g_varchar2_table(16) := '7BD6DD229EE338621F6157AF5EA7D6B6F74478AAD5A285F14F050C18341B3307A068BFF0F982B9EF13DB54ABF3175A4470550AC82A2B278A732DAD1D629B6A55557987081EE0C1BAD83160650E407CFB02FEACAC188F4D4AA9AA2C17E13D3DBD629BBCEA';
wwv_flow_imp.g_varchar2_table(17) := 'EB1B108791083A2BB13B6C35F70355C3C2C21E600C40516E8130C8CDE4D0F973AAC540F8F4D9668AC562B7A362FFE4A90BE238530B06B470551A7989C806AC8C01C88D0ED0A8D2B1195D8AD6E9539F7C90DEBEDC4A9BB735F22CEC24ED6D3C462F6FDD4B';
wwv_flow_imp.g_varchar2_table(18) := '97AFB4D39757AF20C4C9A4A4A464B41848678A13A673C60004A74DAE8A8F63B09F4E30C5DFB0FE712A2D1D45274FBD45A7CE3453E7AD3EFA7EED1AC2B974E964F8C2B953C4AE1CB48B8310AF8C00A83F31A85D9061009DECE3654B6751FD8FD6D28BCF7F';
wwv_flow_imp.g_varchar2_table(19) := '8D5EFCE9D3D4B0F55B347F76757294B4FB0EB7403819E52E13DBD04AA2624600E472F785FA3ACE686CB2167457957795651D1F11E7CF493FCBC3F9B089110049A74DAAC80D06992E97EDB5F6F82D0F096D2E698B31AE11003925A3846FCEF18542B1E3E1';
wwv_flow_imp.g_varchar2_table(20) := 'CA75E3D79B3CCCA2A0541B0190B4B8EBC3B8A4F55AFC4AB58456E61DD6AD1100616A0D07B65EEBC4C6536969BD29F4CB3CC54188574600249F577EF76AFC61322FFD29F3E8B871C5CB6C0A4677E801EABCF90EE1796558BCB52DB716083757F12C10D266';
wwv_flow_imp.g_varchar2_table(21) := '2BB8E18AB81844DF68FF0F76432DB9035444E690F0C80F45C1A978DE27DB2A3CFFF3D76847C3A16CA3DF7ED42339BFB043145A8092E1C187A2A64F8B3F9E71F6FCBB5903916BC40387DF14499017DE5C05488036CC108512A0A1F0C0AB788110DB33E72E';
wwv_flow_imp.g_varchar2_table(22) := '63E3899C4EE8465E7873D5048842075077D77531E6C1AF1F2D8F24050E4558E381D3B7BB1A794ED7F6D889F81D7BE4059DD8264384B2213C4C122A8070CF4B7EA22E191EE9B0AACA0A71A73CD35385326EAE5B79FD67E68C7B07259510E10B20BD3D1D84';
wwv_flow_imp.g_varchar2_table(23) := '320E8A50E407A10268A4AF6DA06B81BFF61F3A878D56693AFC86D0376DEAF07B6180085F00C178485E52109143B00A154098AEA30548F7B50D7C0C013E3B71FA92F66E6C47C311A8A67479231C5D282072134F478A0445BEF211206F2DD59B78E7ABAC6C';
wwv_flow_imp.g_varchar2_table(24) := '5CDA8CD01200305CAB9133A6B4917338B1FBD593A26B84EE4CC9D085E27CD4875B2AC8C70F090D40F2572D5B9974C69B3777BA38B577DF516DADD0F65D4D42A7D42D0E52AC64173A10A2B736C20350E2575D362EF363AB6563C7888F4AA115D2714D48B6';
wwv_flow_imp.g_varchar2_table(25) := '3EF8D81474A7E06658901F37758765EA51406800CAC53EF8C621E2BFF2BB83CAAD105A32E8CAE51B8B881F16311220B4140F3EF041526D85D0FA40075A9FB000916B3D8C040846C27804D7667E52FF676ACBF0CE3BE2A612A4F9F5CE4671CAD4D6079537';
wwv_flow_imp.g_varchar2_table(26) := '1620B442E379C6E6460728D33BEF30522A79E1A5383C23CDBC52A50D53583100A4DDDE5D3DBD74F01F27A8A5E59AD08D6EA8E950FC3684081861854FBFE01D7A44BBD4FC5F7AADF19F049D38364D8C03088E3E70F898806774E9389A38693AE1F1537CCE';
wwv_flow_imp.g_varchar2_table(27) := 'E5DCC5F8BBF19920401CC4459AF2895368DCF80AF1A14DE8846E32ECCF2880F039DFBFFCF5B070F898B1E5547EE714729C5134BE3CFECED748E3218C7BBEBD71BB400469468F1E47D0930CD1DB574686502808C9CA1880E0587CCE177E83F321D8870004';
wwv_flow_imp.g_varchar2_table(28) := '4080AEECE90DBFA4EFFCF04FF4B3CD4D629686A718B10FF9EA33BF4074425CA4C101001C57769708C3277FCF9EFF379DBFE8DD2323C8B390C40880E0507CD319862FE76E07AD060DF9931060508DC732F6361E1531708C7D08BA2DC083B8E264D20A61E5';
wwv_flow_imp.g_varchar2_table(29) := 'AC1B109D397BD11888420F1006CB70289C0F07CB968352FC01828AAA59625C54CE30200DF15F39EF4326564C27C4A1347FD02DC754C8F368E2F9A034D143111C4A80309885001ECCB400029C0F0767E335744B322ED2621F926DDA0913EF21A49333348C';
wwv_flow_imp.g_varchar2_table(30) := 'BDB2495B8C71420710C639182843000FBA2BC0E3A7730020204277872E0D656AF8C3DFC5BF54F0B31C7EE4151A804A79568569B91438AF9CBB9EE4C132E5F83766EC04EEB22A724C158F0E88D0DDA14B03C4B25CD8967259E3B18A7F9D3740118AB41552';
wwv_flow_imp.g_varchar2_table(31) := 'F5D1C5605A2E05CE43984A19A103CE57D1019000B12C17B6AAE552298FEEB47903A4BB20565F701650690CF20628EA44BD7F4F38389B1A95B38A2FF306C8280BDBCAA6B540DE0095464A0A6A0C94B686F6C4881650F165DE008D58AA628E60CB9EB50554';
wwv_flow_imp.g_varchar2_table(32) := '008A3F0B9175563662015B206F5FE60DD0AF5E589577A6056C48238BA6E2CBBC0182A56314D98FAD95A2B6C01695D22B0114A1980548C5FA859136FE525B9E655102C8215729F33CCB6C9369B4804B8E5223E0A89465804635ABA4B76983B7C0CEFA954A';
wwv_flow_imp.g_varchar2_table(33) := '3E54020899C7EC38288982A2DB551AFFA0B64A004141094537626BA5F82CE090BB55B5D4CA006DAB7F62BF6D8554DD1048FA66F84E3567658050009E8D29930C3D567CB580969E430B406E7C24AF3418F3D57436337AA5FEF3CAE31F98510B40184CB332';
wwv_flow_imp.g_varchar2_table(34) := '2D44B31EBB786F813A5D59680108854910AD856AE8B3E28D05623C6B665F69FBB16B0308D575C9D918E30262DF4A4E16F02B72F38EFA55CB7566A6152074650CD03A9D05B4BAF45980A7EDDA7DA31520541510F1567B4159A75D142CC0F02CDFC6975C14';
wwv_flow_imp.g_varchar2_table(35) := '54A44CAA1D20E4C27DEC16979C99BC6F67666C84809766AFE041BD3C01088AD1123144E86FB58DF8A1D74AF61688F178947FCC33BD687964293C0308190022AE0046FC80C8B646308A3F025BD7EDD03C604E55744F0192190222971CB446EB62FCAB90E1';
wwv_flow_imp.g_varchar2_table(36) := '76ABDD02021CB6F74C16FC70B5673054A12F0021D3446BB425F1ABB020C1281A24A102E0AC63687C0327912FF90690CC105BAEA800C9E5813606781C86599BBD08C986C862698EC55BF13AD88E6D1961013881D82F1080A491D02A6DE3A9251B600B0B7E';
wwv_flow_imp.g_varchar2_table(37) := '41915125914A96B910D7711F824428F2594E03C88C10D4570AEA0F5B40D84602961D3CB6E1FD8DDBD8766C97409740014A5573BC21C07201B273D3134720DBEB57BDCA0603644608EA2B05F5872D20A9EC157458C10114B4416CFEB959C002949BBD6CEC';
wwv_flow_imp.g_varchar2_table(38) := '2116B0000D31883DCCCD0216A0DCEC159ED89A6A6201D2644853D558804CF5BCA67A5B803419D254351620533DAFA9DE16204D8634558D05C854CF6BAAB705489321CD5133B8A616A0C1F6B047395AC00294A3C16CF4C116F83F000000FFFFA3864C9100';
wwv_flow_imp.g_varchar2_table(39) := '00000649444154030058F2847B96A31E660000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(11569959540176240764)
,p_file_name=>'icons/app-icon-144-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260622222059Z')
,p_updated_on=>wwv_flow_imp.dz('20260622222059Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_192_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000C0000000C0080600000052DC6C0700001000494441547801EC5D6D8C1D55193E5B28A55BB6B4DBED82856EA9B8B02D0D502889887C05A3F107685120517EF8431212220992F8034D4813F5070912352684';
wwv_flow_imp.g_varchar2_table(2) := 'F8831F608252909AA82850A05648A840495BAA0D2920A05D4A295DBA1FDDEE9679E6EE39F79DB93377E6DC3B3377E69E67B367CED77BCE79CF73DE67E63DE77ECDFBCEED9B4F301003576D609EE21F1170180112C0E1C5E7D495220168054E23400238BD';
wwv_flow_imp.g_varchar2_table(3) := 'FC9CBCC304E0E21301BA40B401C711E013C07103707DFA2480EB16E0F8FC4900C70DC0F5E993002E5A00E76C1020010C144CB8880009E0E2AA73CE060112C040C1848B0890002EAE3AE76C1020010C144CB88040788E24401811E69D428004706AB939D9';
wwv_flow_imp.g_varchar2_table(4) := '300224401811E69D428004706AB939D9300224401811E69D42C0210238B5AE9C6C4A044880944051AC3B112001BA735D39AB940890002981A2587722400274E7BA72562911200152025569312A1F8B0009100B0D2B5C40800470619539C7580448805868';
wwv_flow_imp.g_varchar2_table(5) := '58E1020224800BABCC39C6224002C442C38A6E4020690E24401242ACEF6A044880AE5E5E4E2E090112200921D67735022440572F2F2797840009908410EBBB1A812E264057AF1B2797110224404640B29B6A2240025473DDA875460890001901C96EAA89';
wwv_flow_imp.g_varchar2_table(6) := '000950CD75A3D619214002640464A9BAA132A9112001524345C16E448004E8C655E59C52234002A4868A82DD880009D08DABCA39A5468004480D1505AB8080AD8E24802D6219C9CFCE1E57870FBDE387592F9D51B7ECC6120112C012B02CC4A7A727D4E1';
wwv_flow_imp.g_varchar2_table(7) := '8FDE51B333C7FD70E4F0FB0A6559F4CD3EEC102001ECF06A5B1A863E76F883403F20C2D1B1519220804A311912A0189CFD51C2C6BFE8B45E85804A920028141F488082308F32FE0DEBD7AAABAE584F1214B40651C3741101A2A6578EB2B0F1432B18FF40';
wwv_flow_imp.g_varchar2_table(8) := 'FF62D57BEA029F042843E0930028141748809CB1C6094FD8E7BFFACA0D0AC6AF870609BEFEB52B74D6DF18634F80B6A690895C1020017281B5D6290CF88877C253CBD5AE61E3AF952AFF4970D986753AEB93006DD18729642273044880CC21AD77E8DFC5';
wwv_flow_imp.g_varchar2_table(9) := 'BDA34E5D1267FCBA7EE8AC411545025DCF387B044880EC31F57B1CFBE403357D6CC24FE302C3966E0FCAA2024870C1DA6153A5F704A680894C1120013285B3D6D9C4F8C70DC60FC3AED5265F4786572A4982A9C931853E635BB2A26504488096A18B6E88';
wwv_flow_imp.g_varchar2_table(10) := '139F89A3874C250C79C8736D4C41CA449804E8137DA76C4EB19408900029814A2B06BF5FCB0E0E2E5330649DB78D87560E2AF4A1DBC9BE7519E3F6102001DAC32FD01A7E3F7C765DB8E6FCD53AD9528CE3D14BD78F98B6E89B2430706492200132815129';
wwv_flow_imp.g_varchar2_table(11) := 'B82772D30BD727CDA637697890001B682D87FD0082CE336E0F0112A03DFCFCD638AB1F136F7083DBD28EEBE3772A2E03CB4E0FB84213E38714C61422CE26DB9D3809D02E825EFBB05BD2AEEBE37519F8C75380AE500092CC3224409B50E6E5FA84D50209';
wwv_flow_imp.g_varchar2_table(12) := 'A42B04770B6387E598B7438004B0C3AB417AD23BF3D78559BB3EBA5F1D875DA1F09347CB314E8F0009901EAB06496C467127D61559BB3EBA5F1DE329107685A083AE676C8F0009608F996981CDA8CE6475EAA3FB8B8B4102E90A491DE2DAB03C1E810A13';
wwv_flow_imp.g_varchar2_table(13) := '207E5245D44C78AE0FCEE5F558BBF7EC539B9F7AAE90F0CA8E5D7A58FF5DA374850C1CD60912C01AB25A03BC35A196EAFC959BE1D6D780046801BBB2F9DD7812E189D4C2549C6F4202B4600213DE0B51BAD95D77DCA09E7CE4AE8E048CADF5989A3CA293';
wwv_flow_imp.g_varchar2_table(14) := '8C2D1020012CC082E8D4E498EF77238D70D5E5E722EA48587BFE99665C3C05E80A193852274880D450D5048F4D8DD512DEF5ABD75DE25D3BF03F37E440FF2275EB2DD7CEE59492AF499842269A2240023485275889F7DFC873FF9BBEB12128D081DCD557';
wwv_flow_imp.g_varchar2_table(15) := '0C9B51A11B9F02068E54091220154C352179F283BB3FEEC0B59ACE5DA1C3C517D6DDB0639E8BD6396DAA37320960B166F2EE7ACD97D758B4CC57F4E68D5F3403481D4D2113B1089000B1D0345660A3A94BD70C0FEAA4557CF0D051B5F94FAFAB4DF76D51';
wwv_flow_imp.g_varchar2_table(16) := '1B6F7D40DD7EF7C37EFAC187FFA15067D5D99CF0F2658BE652CADFA09304068EC404099008514D00A73FB59452707F74DA267E73DFA8BAEDCE87D4238F6D55AFBFF196DFF4C0818FFDF4D3CFBCA27EF2B33FF8E4F02B2C2E6137E8F8F4A445EB6A8966AD';
wwv_flow_imp.g_varchar2_table(17) := '2D0990125179FA73C1C8D9295BD5C570D7BF67D3A3F5828814C800724036A2BA699174838E4FD7BF8EA56923562A1220A511E084458BCAF3775DD62CC69D1F86AD65569F7386BAF9C62BD5DD776E543FFCC137D52DDFBE46A14CD7FFFDF9D715DAE87C9A';
wwv_flow_imp.g_varchar2_table(18) := '58BA413333D3699A50C6438004F04048FA0FBB3F703992DAC8FADF3FF9B2C95EB86EB5BAF1862FA995670FF8653D3D3DEAEC154BD5C6EB2F57A843219E04BF7CF0CF48A60ED0499F06CDCE1CF73FA39CBAB1C38224408AC5972E452BEE8FF6F77B179EA2';
wwv_flow_imp.g_varchar2_table(19) := 'BE72ED459123F6F4F4F8759081004860BB295EB766084DFDC07D800F43E285044884C83B5969E337BC5E7CA9B6D9C530E70DAF523D3D3D4846869E9E1E35FC85FAFEE2C38F8E46CAC515AE1D5961AA24694D21130D085488000DBA175630237C6A5BFFFF';
wwv_flow_imp.g_varchar2_table(20) := 'C383F5B74E9C765A6FA2CE7D7D7D4666CFDEE04F29998A9804F70131C0342926019A80A3AB663D9F5AA7E16BEB749A58DE95C7C6EA64886BFBE9A7E3A66AF9409D0CA6B04942EA069DF1D68D26E2ACF21020013C109AFDCB0DB0DE6436930FD7C9BBF25B';
wwv_flow_imp.g_varchar2_table(21) := 'FBFFAF4E9C3811163179D4FD7BDF3B266FFBB44143A9E38C7872A18EA1110112A01193D892C1E5A7C7D6C555E0AEAC8D1277F767B6EE8C1355A89B9838E6D7A30DDAFA198B8BD4911BE164E04880048CE466B2951320747FC7F7AF43E4873776ED574F6C';
wwv_flow_imp.g_varchar2_table(22) := 'F9A77AEF838FFD3CEEFA483FB165BB429D5FE85DE40B5B5E36F5FFE0409DA4B37C0224E246022442D4BE00EEE4F27DFBFBDF3EA01E7BFC7975FFAF9E54BFF8F51FFDF4FEB747CD40900DBCD7C8D42427E49E837B8064BC4880048CA411D96E4A65D7DFBA';
wwv_flow_imp.g_varchar2_table(23) := 'FE62858F309E71C652591C48A3EEE7F77E57413650C14C6E08900009D066B991C4C7277FFAE39BFC4F71C1C7C7D0307AA471D77FF0FEEFA956EFFCE88BC11E0112C0023379A263D12C200A770877F87B7F54FB303D8C1E699405045BCC481DB3246F8BEA';
wwv_flow_imp.g_varchar2_table(24) := '94BE190950FA25A2827922400224A03BDBC68B60095DE7528D278CEE58EAAECBAA16E7AD2F099037C2ECBFD408900009CB33EFA4938D84EDBB334DC30E25A4EE1D52A1F4C39200A55F223B05AB4652BBD9652F4D0224607AD249F38D84EDDB934DC30213';
wwv_flow_imp.g_varchar2_table(25) := '5247A97B812A546A2812A052CB65A7ECBC7975F7CDAEA53BD22526403916A16A46243F7F500E04CBAD050990B03EF2AD10B61F5049E83A976A4900A97B2E837541A724409345C42FAFC86F83D8F5E6BB4DA4CB51357AF013A308749F18AFBDEBD4143211';
wwv_flow_imp.g_varchar2_table(26) := '40800408C051CFC0F8E58761EA35E54EEDDCB53FA020BECF9424084012C8900001386A9938E3FFDF814335818CAEF85A4484BC8F2E4982F805230142D8848D7FF539F56F6968E5AB4A42DD9B2CBE2D02FD21BCB07D9F29F7136D5CD09F6E7EC1DAFA57A7';
wwv_flow_imp.g_varchar2_table(27) := '93041A95604C02083CA28CFF928BCE538383CB8C943C6737852D243E14DF16D142F3C8262095AE00714786572A924023121D930073B8C4193FAA970FF423F243994F8276EF7DCFD71197DEDE85881449E0C3107B21013C689A19BF57AD0696D53F678BEF';
wwv_flow_imp.g_varchar2_table(28) := 'ED44591983DC00F7F62E302A9204068A8684F30448327E20268D49FAD8A82B5390BA0D9D15FCFD0292207AA59C26008E07E55127FC66F8FC61A87A4F5D10D807D87E7373B8BF3CF2D2FF977B163956154820F52D22ED2C01A6A727144E4634C8309A28E3';
wwv_flow_imp.g_varchar2_table(29) := 'D7F5721F20BFED59D7773A96FEBFD435AC5798045393479CFE2669670900D7471B078CFFCACB2FD2D9C8786865DDA5C8FAF580C8012D0BFFF6ECABA685D4D5148A04EA316714E15363120B94B9149C24C0D4E498FF5B5A7AA1938C1F72D20D82AF5D2637';
wwv_flow_imp.g_varchar2_table(30) := '28ECFE4057E81C17507FE9FA11B568EECB7A4102601227DFCDE54E126062BCFE8AEE651BD6A55E5FE95A94C90D92EECFAAA1CFA59A0F48B076E4F3465662620A1D48384700DCE970C7D36B1B3E2DD1E551315C075D5E263748BA3FF2C856EB1A1743563E';
wwv_flow_imp.g_varchar2_table(31) := '05B02F8A93EDD6F21211A01888E5777DAE166F7348333AEE9ADA77861BD4CA8FD9A519C74646BA3F980F744CDB1EB283E245BEE3D393699B768D9C730490EF911F185862BD906BCE5F6DDA94E145B1DF3DBECDE833B4F24C934E9B906DE4CD216DFBAACB';
wwv_flow_imp.g_varchar2_table(32) := '39478019F18DC970016C17102F8AC9A7402737C3B8FBE3498439C09519E85F8CA455C07C7403898D2EEBF6D83902B4BBA0701BE446B3939BE1ADDB769BE9C80DAD2964221101E708302BBEE90DC69C885084009E1CB8E3A20ABF00D989A700C6C4D8D001';
wwv_flow_imp.g_varchar2_table(33) := 'C166330F791D2406121B5DDFEDB17304C862416134F28E6BFB9BBE0D3AB450209F3CF22DCF2D74E5741312A0C5E5974F01F8E1F0C75BECCABA19C692777FBCBDC1BA1336F01120017C18EC2FE1A7803C8DB1EFCDAE851CCBE6853CBB51DC902601DA5867';
wwv_flow_imp.g_varchar2_table(34) := '3C05E4895011AF0B600C3C71A036C66ED5F7477B06A5488036AC004F814BD78F981EF0BA0036A7A620E3043E3CFFC8635B4DAFF2350953C88415022480155C8DC220015E81450DEECC796E887FF3DB67318C1F30662BE7FE7EE3125D3AAD0A0990F10A80';
wwv_flow_imp.g_varchar2_table(35) := '04705332EE56A14FB9F1D59FF9CD7A1CD7FA2301DA5CF15777FE47ED7FBBFE61747497B52B04B74ABA3E1863F79E7D6AEFBEFF22C9D0060224408BE08D4F4EA96D2FED6C307E7487A74096AE903CF3973F7A0112FCF5D9973124438B0890002D0007E3FF';
wwv_flow_imp.g_varchar2_table(36) := 'D76B7BD5E8E847A6F58253FBD49265AB9436509060D37D5B4C7DAB09F4A15D1FF4BD78C9596AE1A2FAD7B41CFD745C8104D0A9D5315C6E470258AEFEC14347D45F9EDE1E307E18E4A2BE41356FDEC96AB167A0BA4B182E7C779DB78DD1167DE8767A8C85';
wwv_flow_imp.g_varchar2_table(37) := 'BD4B1B48F0E2F6D71474D3B28CD321D04102A453B04C5230B017B6ED08A8D4B764858241AAB93F9000863A9755F0DD61C83A9F360EFBFDE873FEFC85A639C644992EC09360C76B7BB82FD080A48C4980944061C3298D1FEE489F67FCD228D5DC1FDC213C';
wwv_flow_imp.g_varchar2_table(38) := '15E6B20A9B629000E7F8BA2C2E860C64EFD9F4A811997FCA42853E4DC15C0265D2ED0209B02F80AE73228C12102001120042354E7A60584823C0F8E1EA44193FEA11609C305CA4B11FC093E0B63B1F521B6F7DC00FC8A30E01695D0E19E4518E80B1FA4E';
wwv_flow_imp.g_varchar2_table(39) := '5F816464C01307BA404E0B40579240A3D13C26019AE0838D65F8A40746BDA47F95EFEF3769EAD7C345914F8266F251757AACA83A59A64900D2E97290009B639D671C8D0009108D8B82F1479DF434BB1B87BB82616A5F1DC629EFD261599D870C64411CEB';
wwv_flow_imp.g_varchar2_table(40) := 'B1BCD321B4D37DC125020930175DC63888000910C4C3CF61B31B77D2E30B585E60D0781AE0C9D1BFFC5CD5EF0569A848EB72C84016C4B11CC67FEAA01DFAD36D41029E1069341A63122084C9BBEF8F2AB9D945759FB7D98561A98AFC41579048AB0B12F0';
wwv_flow_imp.g_varchar2_table(41) := '8448A3118C49000F0FB808B8EBC3DF7F65C72EAFA4F60F77A4CF33FE669B5D55D23F3C75A24E88E01281E4986F49552F542DA709B0F9A9E71402DC1DDCF5E52BBB307E9CAE54D1F8B505610F8239602EBA0C4F03901CF3C5DC11749D8BB1D304885B70F8';
wwv_flow_imp.g_varchar2_table(42) := 'D0F0C5614071325996E7390EFA060930A72C75EE96BE9C23409421E00E892347D461330A1FBE6A7907000001F4494441543AEF05868B8231F5D8798E0712604E7089B037D063CB31A107EA64591EE9B2F5E91E017A972A18B90CB8DBE3C8114652D402C1';
wwv_flow_imp.g_varchar2_table(43) := '283126C646BA8871310E8C1F868EB1C318A0AE083DCA348673042813F8D4A5F30890009D5F036AD0410448800E82CFA13B8F0009D0F935A0061D44A040027470961C9A08C4204002C400C36237102001DC5867CE3206011220061816BB810009E0C63A73';
wwv_flow_imp.g_varchar2_table(44) := '963108900031C0645ACCCE4A8B000950DAA5A16245204002148132C7282D0224406997868A158100095004CA1CA3B4089000A55D9AEE50ACECB32001CABE42D42F570448805CE165E76547800428FB0A51BF5C1120017285979D971D0112A0EC2B44FD72';
wwv_flow_imp.g_varchar2_table(45) := '45204702E4AA373B2702992040026402233BA92A02244055578E7A6782000990098CECA4AA089000555D39EA9D090224402630863A61B63208900095592A2A9A070224401EA8B2CFCA2040025466A9A8681E08900079A0CA3E2B8300095099A5AA86A255';
wwv_flow_imp.g_varchar2_table(46) := 'D39204A8DA8A51DF4C1120013285939D550D0112A06A2B467D33458004C8144E765635044880AAAD18F5CD14810C0990A95EEC8C08148200095008CC1CA4AC089000655D19EA550802244021307390B2224002947565A8572108900059C0CC3E2A8B0009';
wwv_flow_imp.g_varchar2_table(47) := '50D9A5A3E259204002648122FBA82C02244065978E8A6781000990058AECA3B2089000955DBA72285E752D3E030000FFFF64ED79CB000000064944415403003AAD836A459DFE560000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(11569959855043240765)
,p_file_name=>'icons/app-icon-192.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260622222059Z')
,p_updated_on=>wwv_flow_imp.dz('20260622222059Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_256_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000001000000010008060000005C72A86600001000494441547801EC5D7B8C5DC5799FBD6BF3B059E3D8EB0DD8F8151E5ED6807130229482A1B44D9B3650A034498B543B5291ABA8A9DA4A951A45F2BA52FA47AA';
wwv_flow_imp.g_varchar2_table(2) := '2AFD87D42251ECAA268450838044694378188790169AF030B663121913D9C0FA81F1DADE5DEFEEBD9DDFF19DB973CF9EBB7BEEDD73E6CCDCF9ADCEDC9933671EDFF7FBCEF79BC7397B6F49F08F08108160112001046B7A2A4E04842001F02E2002012340';
wwv_flow_imp.g_varchar2_table(3) := '0208D8F8543D6C04A03D09002830108140112001046A78AA4D04800009002830108140112001046A78AA1D36024A7B12804282311108100112408046A7CA444021400250483026020122400208D0E854396C044CED4900261A4C1381C0102001046670AA';
wwv_flow_imp.g_varchar2_table(4) := '4B044C044800261A4C1381C0102001046670AA1B360271ED49007144784E04024280041090B1A92A11882340028823C273221010022480808C4D55C34620497B1240122ACC23028120400208C4D0549308242140024842857944201004480081189A6A86';
wwv_flow_imp.g_varchar2_table(5) := '8D4023ED49008D90613E1108000112408291EFF8FC135D08F7DDBFFD62153EF385C7AE60F00703653715C39E09A60E3E2B5802F8EC86C797FDE986EDEB64D828C396CF6D78EC3919EF97A172C139632710CA25714885CEF1CA2F18FCC140D94DC5B0276C';
wwv_flow_imp.g_varchar2_table(6) := '2BC3FEAAADB7C834C2BAFB363C7A6BA84C10040198CE5E357EA524CAFBA5D1B7C8D02FC3BA0E51C14DB04CA679B43702CBAAB65E27D544D852162545FE1800225290D7DAE6984C91B62580AAD36F84C39BCE5E35FE6498F05A980880FC11225290B3838A';
wwv_flow_imp.g_varchar2_table(7) := '0C20848DED3C43682B02504E0FC3559DBE9F0E1FA63767A43508A1DF98216CCCA85D679A690B02A83AFE16E5F4125D184E463C88406608E09EEAC7E022C396769915784D00707C638A8FA95B66D6664344A001022082759815E0DE739D081AE8A0B3BD24';
wwv_flow_imp.g_varchar2_table(8) := '00383E5818233EA7F8DA964C584600F71E8800F722EE49CBDD67D29D770420C1DE08C797DA73C49720F070028175F29EC49304EFF608BC2100302CA65CD2DC786C27231E44C02904B03488F60870AF3A25D924C278410058674986DD8F29D724BAF01211';
wwv_flow_imp.g_varchar2_table(9) := '70018165F25E75623690060CE709404EF9A30D9734CAB00C11700401351B707E49E0340148E7C79B7A088ED895621081A610C092C06912709600AAEB7D6EF43575BFB1B0830880049C1DC49C24008CFC5CEF3B782B53A4561188FEE9ACD5CAADD44B5BC7';
wwv_flow_imp.g_varchar2_table(10) := '390290CE8F291347FEB41664395F10C04C00F7B653F23A4500D8ED97E8F0319F0481475B22E01C0938430078768AB7AADAD2EC548A08D41058877BBD765A6CCA1902906B7E67374A8A35117B6F3304F07D04B9DEEBCDE0E5040160DD2F09005FC8D18CEC';
wwv_flow_imp.g_varchar2_table(11) := '2C4B04BC4400F73AEE7917842F9C00AAD321AEFB5DB81B28834D049CF82AB2C20940B2A133D3219BD6675FC123B06C5C7416FE54A05002C0AEBF24004EFD83F7853001C0BD0F1FC852FB66DB2A94005C60C0660163792290250245FB40610400E6030366';
wwv_flow_imp.g_varchar2_table(12) := '0926DB2202BE21001F802F1425776104209FF9FF79514AB35F22E0120245CE020A23006900BEEE2B41E04104E42C00FF3E3C6D205A69A0100290CF40E9FCAD588B75DA1501FC4A55214F040A210069C5429495FDF22002AE2250C8A0689D00AAA37F6153';
wwv_flow_imp.g_varchar2_table(13) := '1E57AD4FB982476059119B81D609409A79A90C3C88001188212037C6D7C6B2529FB65AB008022864AAD32A40AC47046C2150111DD65F8A2B820038FDB77547B11FAF10904F03DA9B00AAEB7FAF8C426189804D046CEF03D89E01585FE3D8341EFB2202D3';
wwv_flow_imp.g_varchar2_table(14) := '45A0959782A6D3A76D02B03EC5990E38AC4B046C232097015697C8B609C0AA72B68DC7FE88806F08582380EA177FF8860FE52502B611B0FA3E803502288932A7FFB66F25F6D7F6084C57416B042005E506A004810711980A81B22859F3159B043095DEBC';
wwv_flow_imp.g_varchar2_table(15) := '4E04888044A062F185206B042095E206A0342E0F22E01202D608C0F6E30D9740A62C44A01904D2FA4A336D362A6B8D00A4009C014810781081140858F3159B0490426F162102440008DCF1F927BA10E71DAC10C07DF76FBF386F45D83E11682704E6CC18';
wwv_flow_imp.g_varchar2_table(16) := 'BBC0863E5608C08622EC830884844056BA9200B24292ED10010F1120017868348A4C04B242C00A018CCEECB0B2A19115286C8708148D802D9FB142004583C9FE89403B2190A52E24802CD1F4ACAD7279CC3389296ED6089000B246D493F6464787C4F1A3';
wwv_flow_imp.g_varchar2_table(17) := '07C4F16307C4D0E90F3C919A62668D0009206B443D686F6478500C1E3F14495A1E1F1343A78E91042234C2FB200104667338FFA9C181095A93042640E26446D6429100B246D4E1F6E2CE3FFB82590241894C1250488413930002B17592F3AF59DD276EB9';
wwv_flow_imp.g_varchar2_table(18) := '69354920907B20494D1240122A6D96874D3E73DA8F511FCEDF3D6F8E9875DEB9248136B37733EA90009A41CBC3B2D8EDC7D45E896E3ABFCA23092824DC8EF3908E049007AA8EB409E757BBFD1009CEFF7BB77F4260E4C7B91992486064F884401B6639A6';
wwv_flow_imp.g_varchar2_table(19) := 'DB0B0112407BD9536B532E8FE9477D2A13D37E954E8A1509A86B784488A503DA52798CDB0B0112407BD9536B03C7D52732B1F6E6358923BFBC547780047EFF9337E93C90C089E30705494043D2560912405B99F3AC32831F1E12A36786CE9EC8CFB4CE2F';
wwv_flow_imp.g_varchar2_table(20) := '8B460748E0FA355745697C2812409AA11804F2EA95049017B205B51B77FE957D97A71AF9E3E22E59D4235057E58304E2B30A758DB1BF089000FCB5DD04C9B161678EFC3D3DF345EFE58B27944B9B81BACB975DA28B8F0C0F0A049DC184F7089000BC37E1';
wwv_flow_imp.g_varchar2_table(21) := '5905B0461FACBEDF8F1CECF8DF7CE32A24A7157A572CAD7F51E8F431EE074C0B51B72A9300DCB247CBD2C4A7E753EDF8A7ED08FB01785B5095E7524021612FCEB32712409EE85A6A1BD37273EA8FB57BD2B3FE56C50109A04D551F7DE1ED4275CED85F04';
wwv_flow_imp.g_varchar2_table(22) := '4800FEDA2E921C537F73F49FEEBA3F6A34E163C9E21E81B6D5A591E1135C0A28303C8E49001E1B0FA29BCE8FF3EB56F722CA3C601660B68DA5C089E30733EF870DDA4580046017EF4C7B1B91BBF2988EAB46314D87A3AAF3AC63B41D7F3F004F1EB2EE87';
wwv_flow_imp.g_varchar2_table(23) := 'EDD510C83B4502C81BE11CDB1F923BF2AA794CCFF1D84E9DE71577CFBFB06E29109F81E4D52FDBCD070112403EB8E6DE2A467F4CC3554757AE58AE92B9C69805987D4106C8926BA76C3C37044800B9419B6FC3E6C8BB7CD9252DBDEDD7AA8478C2803E55';
wwv_flow_imp.g_varchar2_table(24) := '7D7326A2F218FB810009C00F3BD5493914FB16DF53A787C4CE975EB31A068E1CD3326116601292BEC0C4B410B05199046003E58CFB30BFE0034D0F0C1C15B6C3A993A7D1B50ED80CC423499DC18417089000BC30534D4857475ACC02E2C454939A295711';
wwv_flow_imp.g_varchar2_table(25) := '2001B86A99067261A455977EF7F68F8BBFF9C21D8506C8A0E4316553798CDD468004E0B67DEAA4C36E3B465A95B961FD5A71CB8D97161AEEBD738DE8E99E138904D9206374C28F692160AB3209C016D219F473666450B78291B7439F1597E89E375BACBA';
wwv_flow_imp.g_varchar2_table(26) := 'FA635A8021E3DD049DC984B30890009C354DBD60985E9B6FFDDDFA9B57D61728F0ECB65B56EADE310B80AC3A8309A7112001386D9E9A7067866BA3FFC2853DE2CACB7B6A170B4E4116C8A4C4306555798CDD44A0E4A658942A8E80B9B6BEFD96ABE3970B';
wwv_flow_imp.g_varchar2_table(27) := '3F3765E20C607AE6B0599B046013ED16FB329D1F4DDCFD87D720CA241C39762A9376EE9232999B8124814C60CDBD111240EE104FBF83B1D1DA37FCAE5E75C5B41ADCF3D680F8B72D3BC486BFDB2AEEBAEF6BE22FBEF86094DEF4D52705AEB5DA38362457';
wwv_flow_imp.g_varchar2_table(28) := '199B81C3B1B7155B6D97F5F2458004902FBE99B46E8EA6575DB9B8E536E1E45FDAF490F8E1333F13EFBFFF816E07E9575FFF95C0359043ABB382ABFA96E836C7C747759A0977112001B86B9B48324CFFCBE363511A1F986A236E36C0F9E1E453D503397C';
wwv_flow_imp.g_varchar2_table(29) := 'F92B8F8A5648A06FC545BA79C86C1297BEC0C4A408D8BE4802B08D7893FD99D3FF8F7EF4230253ED269B10DB9F7A5598CEDFBB6289F8EC1FAF157FFB577F1485CFFDC96DE28ACB16EA663123D8F1E25BFA3C6D02EF04984F03C64687D35665B982102001';
wwv_flow_imp.g_varchar2_table(30) := '14047CDA6E478DF5FF6FAF6D7EF71F23F9B6479ED3DDFDC60D7DE20F3E799D58B4709EE8E8E888C2C28BE68A4F7FEA0671D38DB5F651077575C59489DFBAB9F64EC0C8F08994B558AC2804480045219FB25F4CA555D1952DACFFCD917CF1E205E2C61B56';
wwv_flow_imp.g_varchar2_table(31) := 'A8E626C49FB8FE328132EAC2A34FBCA292A9E3BEDEDA4CC2943D75032C681501128055B89BEBCC1CFD51132FDC206E26ECDAF38E2E7E75DF329D6E94B866E5A5FAD2C0E10F753A6DA237F682525C87B4ED8458AE089D490045A09EB24F7304C5FA3F65B5';
wwv_flow_imp.g_varchar2_table(32) := 'BA62E6DA7FFEFC0BEBAE259DCC9B7781CE36EBEACC29121DF23AF70124089E1C2400870D656E00AEBAAAB5EFFC3389A3521E9F525BB38C5977CA8A4681952B6ACB00239B49071120013868142592F90D3B3DDD538FDEAA9E199BC4B1FFC0807929317DE0';
wwv_flow_imp.g_varchar2_table(33) := 'D74775BE595767A648943A67EA522689E94C269C418004E08C29260A326EBC4CB3A0BB6B628114392671BCF2B37D6268A8F10B3A434367C4FFBCBC5BB76AD6D59929122B7B17E952A60E3A9389090814954102280AF914FD968D1780FA565C94A2C6C422';
wwv_flow_imp.g_varchar2_table(34) := 'F77CFA5AA1A6F22323A3E2F1A75E4C248153A787C513DF7F599C3973F6A523D441DD892D4E9DB3A0BBB68F001DCC99CCD4B559C2260224009B6837D1577CF71C2FD93451BDAEE8EFDC7AAD3E7FF7BD0FC4D7BFF13DF1C3675F15AFED7A270A4F3FFB86D8';
wwv_flow_imp.g_varchar2_table(35) := 'FCCD1F8883876A4B84BFDEF0295DA7D944EF650BEAAA8C1B3399BA0B3C291C011240E126985A809EEA576E4D5D32B90446F2FB3E739B9E09A0D41BBBF68B1F3DFB7F51787DD72F91A503CAB6F2C8513720139841C88887E30890001C3550D998FE777476';
wwv_flow_imp.g_varchar2_table(36) := '4E5B4A900046F5C91C13D7FE69E39F09949D76874603A62E46369355048A8C480045A29FB2EF4E63573D6595C46218D537FFCB3A0127C7287FED35970A7CB720D2F876615C431991C15F563267200A9B98040112C024E01479C9DC38EB69F1094023F9E1';
wwv_flow_imp.g_varchar2_table(37) := 'E418E537FEFD1DE22FD7AF8D467C7CBB70A3F2ADE49B329BBAB4D216EBE4870009203F6C336BB9A363FA4B80CC8449D9D082F9AD3DB64CD93C8B65840009202320B36EA66CEC9C9B8FD5B2EE27AFF63A4ABCB5D2605B74195AA9680B34E8BF94D1BABF41';
wwv_flow_imp.g_varchar2_table(38) := 'F356B34D32B3DA313B9B120112C09410155FA0522E172F4493121C3E7252D7682732D34AB5498204E081210F1FADFD268007E24622562AB57F3C2A95664479FC700F0112807B368924F2DD69C68DF7182285F8310101173248002E5821418652676DD47C';
wwv_flow_imp.g_varchar2_table(39) := 'F7FD630925DCCE1A38C2AF0373DB4267A523019CC5C1E9CFC347FC5B0298329B64E634D0010A470270D4E89DC65300BC4A7BE483D38E4A3A512CC80A99D515531795C7D80D0448006ED8618214A7066BFF99878B954A059117212EEB89E307BD90DBA690';
wwv_flow_imp.g_varchar2_table(40) := 'AEF4450270C512861C831F1E12A3676A3F07864B7BF7D51302F25C0D7B7EF15E9D68980D1C3F76A02E8F276E20400270C30E5A8A24E7C7C5728AEFF343B966C2DE5F1E168733FA7150B35F73FDAFF249020A09B762128043F668E4FC10F1CD3DBF469459';
wwv_flow_imp.g_varchar2_table(41) := 'D8BDEF3DF10FFDDBC4FD5F7C50ECFCE9FECCDA4543034792BF4E9C240074DC0A240047EC1177FE9E9EF96265DFE55ABAF7066A3FE6A933A791D8BDB7B62E377F3B601A4DEAAAAFEDAA110A74802EEA2249400885850B3109C0012B2439FFCD37AE12DDC6';
wwv_flow_imp.g_varchar2_table(42) := 'F7F8BFF1E601D1CA4F753552EFF0D1DAABBA8DCAB4928F2700F86D415577C9E21E71DDEA5E171C945700000D6B4944415441125088B81593000AB64723E78758B3669D8B48873D1E6C040E1CAE7F0168D679E70A04928036A353899253D20426CC64CE0F';
wwv_flow_imp.g_varchar2_table(43) := '28E038E6C8F9A6316DC7751783B9B458BEEC122D2274210968389C4990000A32C554CEAFC45AD03D4F25C5A177DD7F14F8BA5CAA288167CD3A5F25A3B81109008BA840001FAEA9480228C02278C9C77CCE8F511E6BFE2451CC7D00CC00B0C64E2AE7421E';
wwv_flow_imp.g_varchar2_table(44) := '64C35E8592C5945DE5259100B00026AA0C637B089000EC611DF584EFFB1F19AEBDDB3F99F3A382B90F801DF4DD7BDF45B693E18517EBBF5EBC7BDE9C4439934800980C9DCEF6494762E7CCAC438004500747FE2783C70FE94E665F304B341AF95521388B';
wwv_flow_imp.g_varchar2_table(45) := 'B9967E6EE79BEA9273F11BBBDFD6329932EB4C2301BDB027000C54F6C8F009512E9FFD652295C7385F044800F9E25BD77A7C9ABB66755FDDF546274B16D77E160C6B6C4CB51B952D2A1F32993F276ECADC482690C02D37ADD69731C3193AE5DFBF3E6B05';
wwv_flow_imp.g_varchar2_table(46) := 'A648B878990460D12A23C6D41F2FC8349A22C745F261199076FA3F4137F998F0FA3557E96C2C9110740613B9224002C815DE5AE3A6F323B7F7F2C58852058C94E694DAC5654033D3FFB8D2D82C544B01CC02C64687E345789E130224809C808D377B66A4';
wwv_flow_imp.g_varchar2_table(47) := 'B6F1673A73BC5CA373734A8DA9761EFFC4D3A8EFA9F2210B6452E54C5955DE6431086ED99245BAC8D868FD7F42EA0B4C648E0009207348931BC4A32E75A55907413D2C17F0C40069841D3FDE8BC88960CA82911CB2362B186601AACEB8F19B082ACFF7D8';
wwv_flow_imp.g_varchar2_table(48) := '55F94900162C331A1BD15A711088B974C9C588A2F0F0F69F086CBC4527057E408687BEFB8296A0AFF7633ADD4C22BECF11C7AC99B658363D022480F458B55CB29CD137E46294C4080B41D0E68E1FEF43B2D0109761C9A29E96E4C13240E9D65203ACD412';
wwv_flow_imp.g_varchar2_table(49) := '02248096606BBDD2746E72388939C23EFDFCAB85CF02BEFD9F3B3518E66EBECE6C2231DB78751804D74455166D110112408BC0B55ACDBCC95B6903B300550FFF761B1F81D5351BF163DF7B5D988EDAEAE86F43D622FB70B96F1280CBD649900DB300F329';
wwv_flow_imp.g_varchar2_table(50) := '024660ACC3138AE69A853EFFE33BCFE83E4C99742613CE23400270DE441305EC5DB1546762047E7EE71E7D6E2B11EFF3E3ABAEB0D535FBC9100112408660DA6A0AB30073BD8D270278166FAB7F7C33D143C6CEBF298B2D19D84F36089000B2C1D17A2BD8';
wwv_flow_imp.g_varchar2_table(51) := '0B50EF056016603E8BCF5B98EF3EFEBFBA0BC8C0B5BF866342C2F50C1280EB166A201F660157AE58AEAF62447EE1A55FE9F3BC127BDE1A104F3FF7AA6EDE94416732E10D0224006F4C355150BC50646EBE451B82397CCFBFEA191B7F5FDAF4903A15E81B';
wwv_flow_imp.g_varchar2_table(52) := '32E80C26BC438004E09DC9EA05EEEE9EAB33F058F0F91C5F117EE01B3FD27D2111FFCA2FE431F8850009C02F7BD549FBCEC101F1F22BBBEAF2F25A0A60EA6FFEC30F3A7DFB9D8362EF5BD9FE6009DA6D97E0831E24001FAC9420231C2FEEFCAA58D64B01';
wwv_flow_imp.g_varchar2_table(53) := 'ECFA9B537FD5CFA993A7C59BBBDF220928403C8C49001E1A6DE74BAF458EA7442F75CE10B3BB7A0462E46129F0E5AF3C9AD96BC20F7CB3F6C20FDAEF9ABB50F725E41F480032C9240FCF1020017864B0D3C323028E363070544B0DA787F39F7B5E574402';
wwv_flow_imp.g_varchar2_table(54) := 'EA024820FEB28EBAD64CBCE9AB4F0A73EADF259D7FE6CCF3C59CB98BEA480032FDD7333F159051F0CF1B0448009E980A8EF583FF7E51C0D194C833CF395FCC9DB754C0219187F8FCD9B5DF11C07EC0F6A76A8FEC50A69980BAA6F3A36DF481364AA51911';
wwv_flow_imp.g_varchar2_table(55) := '0940069C236049F0C28B3F2709082180870F8104E081958E1C3B21E0FCA6A870BCAE0B179A59511A33015C8B4EE4C7B6479E133B7E52FF75DD327BCA039B7EA8AB0AA2CDF3677D449D46314800B30F104394213F1409608F429EF2701C011280E306C24E';
wwv_flow_imp.g_varchar2_table(56) := 'FF8E9DAFD44909874B727E14524E89A501CE11FEF5EB4F897FFCE7EF0BFCF71E5E16421838FC212E450169E421802C30ED3737FDD0D664FD81182053D498FC0009F0098104C2838304E0B091308AC677FABBE41A1C0E2726F90309CC89ADD17FFEDA3E81';
wwv_flow_imp.g_varchar2_table(57) := 'FFDEFBDA034F0A04736A8F34F21040163857CDC3F931CAABF34631648A93003607A143A33ACC2F1E011240F1364894009B7D702075118ED8259D5FADC1C5147F8A0430759FA268C3CBA86BEE31342C58BD0012983B7F69DDE62074802ED52241443E2949';
wwv_flow_imp.g_varchar2_table(58) := '0270CC5AD8EC83C3989B7D707E8CC2699D5FA90412403D04B53700A746409BBA9C7C8C883C1530927749B26934ED1793FCA1CFF8EC03BAF009C124A0157889045020F8F1AEE1FCD8EC83C3A86B70CA664661554FC57048383F48000EAD82492648AB7CC4';
wwv_flow_imp.g_varchar2_table(59) := '18C991A7DA6836469F2001C8AEEA625F804F08141AEEC42400476C81CD3E38BF290E1C080E69E6F99206098074309B50322B12E0BE8042A4F8980450A00D30E2C3F131E58F6FF6C1717C757E05294800B309E8A2F24002D817C09200BAE311A7BAD60EB1';
wwv_flow_imp.g_varchar2_table(60) := '6F3A90002C5B0CD3FBED4F3C2B1030E2C3F191678AD125D7DF701CD1267FD0C52401A8052280EE78C4092C10E238A01C43BE089000F2C5376ADDDC708B321A7C60CA8F5DF4E9ACBF1B345D78364800BA613FA270612880468004A0A1C82FD1D939B3EED1';
wwv_flow_imp.g_varchar2_table(61) := '98D913C8018EDF25477D4CF9316D1616FECE39AF2BEA05FDAB749491E30774C3BE4097D4154400BD45C21F64C2F5844BCCCA18011240C6802635871B1FBBE25DF2C637C3BC059746EFF2C3F16D8FFAE80F23F2749E308816FFD0774404172E1490A12B86';
wwv_flow_imp.g_varchar2_table(62) := '0B64121EFEF9283209C092D54002B8F1CD60A9EB86DD40A686172D5D800C2626485BEA9ADD4804AC10C0CCD1CAA0EC8B071120028E216085001CD399E21001E711B0356892009CBF1528A00F08F82A2309C057CB516E229001025608E0C4D88C9319C8CA';
wwv_flow_imp.g_varchar2_table(63) := '2688403008D8F2192B04108CD5A82811F00C012B04F0E4B7EEE45300CF6E0C8A9B1E813C4ADAF2192B045005E8ED6ACC88081081C911B0E62BD608A0223AAC293539B6BC4A04DC46C0A6AF582300B721A77444C01D043A44C5DA60698D00A452CFBB0331';
wwv_flow_imp.g_varchar2_table(64) := '252102D920E07B2BD608A024CA3B7C078BF213014B0858F3156B04302666589BD6583212BB2102B9205016256BB3E5522E1AB0512240045A46E03B9BEFB236585A23002855111DD698AD65F4599108A444208F62B67DC41A01002CB911688DD9D01F0311';
wwv_flow_imp.g_varchar2_table(65) := 'F00D01DB3E629500E446E0BFFB6610CA4B042C23606D03107A5925006E0402720622D01881B2C50D4048619500B80F00C819DA01819C74D80A1FC9A9EDC466AD120024906B1C6E0402080622301101EB7B64D60940EE03585DE34CC4983944C04D048AF0';
wwv_flow_imp.g_varchar2_table(66) := '0DEB04B06DF3BDCF57F838D0CD3B90521589C0DBF00DDB02582700282897017C1A002018BC442027A137E5D4EEA4CD16420065CB3B9D9322C08B44C001048AF2894208003B9D152E031CB8ED2882230858DFFD577A174200E8BC538C1732E541DF0C44C0';
wwv_flow_imp.g_varchar2_table(67) := '25044AA25CD892B83002C0860767012EDD8694250D025997810FC017B26E376D7B8511000494CAAF47CC40044245A0B3E09970A104C0BD80506F7BEA5D45606B91A33F64289400200067014081214404CAA254F83E58E104805980343E970212041E6E23';
wwv_flow_imp.g_varchar2_table(68) := '90B174FDD57B3FE3669B6BAE700280B8DFDE7CCFD60A1F0B020A860010C0BD2EEFF9C2477F40ED04014010090A67010082A1ED1170E95E778600AAD3219240DBDFFE612B5812E5DBAAF7BA134038430040434E8BB6CAB85F061E44C029043212667DD1BB';
wwv_flow_imp.g_varchar2_table(69) := 'FE713D9C2200082749006B239200C060682704B6CA7B1B039C533A39470040A72C4A78359224003018BC47A02237B8A5F33BB9BC759200B0462A9304BCBFF1A94084C0D68737DF7D5B9472F0C34902004E2001C99A5C0E000C8642119846E7FDF21E7672';
wwv_flow_imp.g_varchar2_table(70) := 'E4573A394B004A40092048C0691095AC8C89804200BBFDD57B576539193B4F00404D02B9552E099657E45A0AE70C44C05504708F964569F9B6CDF77AF1E5B75E10008C8D25C1C367D752DC1C04200C2E22D08F7B14F7AA8BC225C9E40D0128E1E56C6013';
wwv_flow_imp.g_varchar2_table(71) := '18569E3BF74845CAC4A3CD1048A34E45CE4CCB72D4C7BD99A6BC4B65BC23008007869560AF07E8F29C442041E0611F814AD5F17D1BF54DA4BC2400A500894021C1D832025BB1C9E7B3E32BBCBC2600A5448C08FAC1CCEA1A6322901102F8D51E3CD6EBC0';
wwv_flow_imp.g_varchar2_table(72) := 'EC739B279B7C53E9DE1604A094AC12C1A687E5666159AEC9643EC94082C0A3350464ADC8E931DA4BA75F2E031E49CBECF639DA8A004CB3249001DE25E0F70E9820311D4720727899A946FAC8E9B7B5C9682FF59A70B42D01989A56C900FF8CB1FEE1EAEC';
wwv_flow_imp.g_varchar2_table(73) := 'A03A438848419655C4801B409EF2686304DEAEC8CD3BA91F368FF148B9BF3AC2636A1F397C3B8EF452DFC4230802886B0E424090868E4841C61131C8183740C7C93333E62094CA62A10AE39D1D2B18FCC140D94DC5D2B6707084E51804E4F97A1936216C';
wwv_flow_imp.g_varchar2_table(74) := '6BE3113E7EEFC7CF8324803808F1F327BF75E720C2B607EF795785471EB87B1F833F1828BBA9386EE3A9CE43B94E0208C5D2D493082420400248008559442014044800A1589A7A12810404480009A0302B6C0442D29E041092B5A92B11882140028801C2';
wwv_flow_imp.g_varchar2_table(75) := '5322101202248090AC4D5D89400C0112400C109E868D4068DA930042B338F5250206022400030C2689406808900042B338F5250206022400030C26C3462044ED4900215A9D3A13812A0224802A108C88408808900042B43A75260255044800552018858D';
wwv_flow_imp.g_varchar2_table(76) := '40A8DA930042B53CF5260212011280048107110815011240A896A7DE44402240029020F0081B8190B52701846C7DEA1E3C022480E06F0102103202248090AD4FDD8347800410FC2D103600A16BFFFF000000FFFF23F1486300000006494441540300A3FB';
wwv_flow_imp.g_varchar2_table(77) := '9DB52FC9F2E00000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(11569960163358240765)
,p_file_name=>'icons/app-icon-256-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260622222059Z')
,p_updated_on=>wwv_flow_imp.dz('20260622222059Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_32_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7AF40000020C494441547801EC943B4B235114C7FF0E0979A87998AC6220EB6ED8755776C517F8296CAC043F81BD9D5AFA01ECEC6CEC8460A15889281841B15050A2061B9F';
wwv_flow_imp.g_varchar2_table(2) := '90979A106332998973AEDC41ABDC3B29049990F3B8FF49CEF9DD337347999C8AD73FD3147CF2C706B027604FA0A909949F1F5079293675902D0350F3D1E11886FABB9B82B004A0EB35C47A420877F8D0F52D841F513F48B3320A4B0085C75BD6EB2C750D';
wwv_flow_imp.g_varchar2_table(3) := '325AA8958C25086900DAE9FCDC04E667C63ED8ECF438344D2516299306F0B72BE8FBDDC99A2CAFEC832C9B2F312DE073305DC64903F4F576B1FAC9541A4EA7032D2D6CC9DCBFBF1116659C344038E861F5690A03FFA31819FC693C8CAD4CD3B52A8B324E';
wwv_flow_imp.g_varchar2_table(4) := '1A209D7D32EB130419173AC37E9E0A472900552DA35078318BD3BD27E3C249F20AF41BBE1689C200F4F40FF747502CA9E04D33B912C878A36249C79F985F0A4218C0EBAA19F7DA87EFD1B713C09BF24850BDBF22E88976A3D5AD71B96114060806BCAC98';
wwv_flow_imp.g_varchar2_table(5) := 'D7EDC2C2E2A63905261A6E71690B74CD4811EAF05110326180F7D59ECB55EC2452A6145F3BC253517CD7E61F8D441A20B17F8AECA38EF8FAB1017181EDDD2456374E91CE55707E79877A5D0E441820972F6067EF1C55ADCD780179E0F106B177788B83A3';
wwv_flow_imp.g_varchar2_table(6) := '1C5CEE76A6DDDC97B19D3843269B37F626F61506A0C63ADC1FAA3A9D1E288AC3D458AEB4A1560F985AA34418A05121ABD76D007B025F7F028D4EC72B000000FFFF750AC70700000006494441540300E4D3FF018493FB8C0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(11569959208611240764)
,p_file_name=>'icons/app-icon-32.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260622222059Z')
,p_updated_on=>wwv_flow_imp.dz('20260622222059Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_512_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773DF8000000AA494441547801EC53310E80200C14C3235C48FC99A3FE9A8187A01D48DA033558C1459286B694BB5E03E3D078FD04B703CE461442881A43C68C000BB47146E0';
wwv_flow_imp.g_varchar2_table(2) := '9C331AC3863202CD78E8EE2581F77EC282DA183184026BED520B88F507C6CA738220C6B8F1C3273E62080263CCFC0494DF3930C49805012F7CCBEF4B40EF3F754E7EC9CECE793EF9B4F755408C6FDB770AE8DB97AC56617F05A59753CAA1925483F9FE0A';
wwv_flow_imp.g_varchar2_table(3) := 'B0036DDC5CC10E0000FFFF1ED25D1A0000000649444154030033C5A6316A1B73DF0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(11569960460667240765)
,p_file_name=>'icons/app-icon-512.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260622222059Z')
,p_updated_on=>wwv_flow_imp.dz('20260930211134Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
end;
/
prompt --application/shared_components/security/authorizations/administration_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(11569961777604240766)
,p_name=>'Administration Rights'
,p_static_id=>'administration-rights'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'plsql_function_body', 'return true;')).to_clob
,p_error_message=>'Insufficient privileges, user is not an Administrator'
,p_version_scn=>'SH256:K94FzTYWdjDQ6WIg6w48Or20nhyD_tWnqCuRh9rK4CU'
,p_caching=>'BY_USER_BY_PAGE_VIEW'
,p_created_on=>wwv_flow_imp.dz('20260622222059Z')
,p_updated_on=>wwv_flow_imp.dz('20260622222059Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
end;
/
prompt --application/shared_components/security/authorizations/solo_administradores
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(3748731866027892630)
,p_name=>'Solo administradores'
,p_static_id=>'solo-administradores'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'plsql_function_body', wwv_flow_string.join(wwv_flow_t_varchar2(
    'begin',
    '    if apex_util.current_user_in_group(''Administradores'') then',
    '        return true;',
    '    else',
    '        return false;',
    '    end if;',
    'end;')))).to_clob
,p_error_message=>'No tienes permiso para acceder.'
,p_version_scn=>'SH256:B1Fj6GLj_klA_ZpuJr1AsCavgGF6bv9wiSQVepYNPlE'
,p_caching=>'BY_USER_BY_PAGE_VIEW'
,p_created_on=>wwv_flow_imp.dz('20261014200601Z')
,p_updated_on=>wwv_flow_imp.dz('20261020195800Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_settings
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs/boolean
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(11569970205216240778)
,p_lov_name=>'BOOLEAN'
,p_static_id=>'boolean'
,p_lov_query=>'.'||wwv_flow_imp.id(11569970205216240778)||'.'
,p_location=>'STATIC'
,p_version_scn=>'SH256:CnCBOq-zabcz-aPWKwU8C5KDeZy6YuyjvpJoTrTywfI'
,p_created_on=>wwv_flow_imp.dz('20260622222059Z')
,p_updated_on=>wwv_flow_imp.dz('20260622222059Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(11569970966703240780)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'No'
,p_lov_return_value=>'FALSE'
,p_static_id=>'false'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(11569970525220240779)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Yes'
,p_lov_return_value=>'TRUE'
,p_static_id=>'true'
);
end;
/
prompt --application/shared_components/user_interface/lovs/productos_nombre
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(12151322546800555030)
,p_lov_name=>'PRODUCTOS.NOMBRE'
,p_static_id=>'productos-nombre'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'PRODUCTOS'
,p_return_column_name=>'PRODUCTO_ID'
,p_display_column_name=>'NOMBRE'
,p_default_sort_column_name=>'NOMBRE'
,p_default_sort_direction=>'ASC'
,p_version_scn=>'SH256:YSxKmZn-Mh4GTI1WFl20PZTutss75CZk4u4W1_5AMPA'
,p_created_on=>wwv_flow_imp.dz('20260624203749Z')
,p_updated_on=>wwv_flow_imp.dz('20260624203749Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
end;
/
prompt --application/pages/page_groups
begin
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(11569962003071240767)
,p_group_name=>'Administration'
,p_static_id=>'administration'
);
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(11569956826024240755)
,p_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_created_on=>wwv_flow_imp.dz('20260622222059Z')
,p_updated_on=>wwv_flow_imp.dz('20261015203115Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(45816092708537446858)
,p_short_name=>'Ayuda'
,p_static_id=>'ayuda'
,p_link=>'f?p=&APP_ID.:11:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>11
,p_created_on=>wwv_flow_imp.dz('20261005181907Z')
,p_updated_on=>wwv_flow_imp.dz('20261005181907Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(4326657439962684013)
,p_short_name=>unistr('Cambiar contrase\00F1a')
,p_static_id=>unistr('cambiar-contrase\00F1a')
,p_link=>'f?p=&APP_ID.:16:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>16
,p_created_on=>wwv_flow_imp.dz('20261015203115Z')
,p_updated_on=>wwv_flow_imp.dz('20261015203115Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(42561055810540318158)
,p_short_name=>'Cierre de caja'
,p_static_id=>'cierre-de-caja'
,p_link=>'f?p=&APP_ID.:10:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>10
,p_created_on=>wwv_flow_imp.dz('20260929144420Z')
,p_updated_on=>wwv_flow_imp.dz('20260929144420Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(29025170715565954063)
,p_short_name=>'Historial de ventas'
,p_static_id=>'historial-de-ventas'
,p_link=>'f?p=&APP_ID.:8:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>8
,p_created_on=>wwv_flow_imp.dz('20260814135751Z')
,p_updated_on=>wwv_flow_imp.dz('20260814135751Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(11569957003214240756)
,p_short_name=>'Home'
,p_static_id=>'home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1
,p_created_on=>wwv_flow_imp.dz('20260622222059Z')
,p_updated_on=>wwv_flow_imp.dz('20260622222059Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(1169119332716189237)
,p_short_name=>'Producto- Proveedores'
,p_static_id=>'producto-proveedores'
,p_link=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>2
,p_created_on=>wwv_flow_imp.dz('20261008145527Z')
,p_updated_on=>wwv_flow_imp.dz('20261008145527Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(12103037375150626099)
,p_short_name=>'Productos'
,p_static_id=>'productos'
,p_link=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>4
,p_created_on=>wwv_flow_imp.dz('20260624151620Z')
,p_updated_on=>wwv_flow_imp.dz('20260624151620Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(980694014434089428)
,p_short_name=>'Proveedores'
,p_static_id=>'proveedores'
,p_link=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>3
,p_created_on=>wwv_flow_imp.dz('20261008005252Z')
,p_updated_on=>wwv_flow_imp.dz('20261008005252Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(1639849808515063587)
,p_short_name=>'Registrar compra'
,p_static_id=>'registrar-compra'
,p_link=>'f?p=&APP_ID.:15:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>15
,p_created_on=>wwv_flow_imp.dz('20261009210750Z')
,p_updated_on=>wwv_flow_imp.dz('20261009210750Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(41209928039200636093)
,p_short_name=>'Reporte de Ventas'
,p_static_id=>'reporte-de-ventas'
,p_link=>'f?p=&APP_ID.:9:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>9
,p_created_on=>wwv_flow_imp.dz('20260924184956Z')
,p_updated_on=>wwv_flow_imp.dz('20260924184956Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(1271215344018224617)
,p_short_name=>'Reportes Proveedores'
,p_static_id=>'reportes-proveedores'
,p_link=>'f?p=&APP_ID.:14:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>14
,p_created_on=>wwv_flow_imp.dz('20261008204204Z')
,p_updated_on=>wwv_flow_imp.dz('20261008204204Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(22179920219298509207)
,p_short_name=>'Ventas'
,p_static_id=>'ventas-2'
,p_link=>'f?p=&APP_ID.:7:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>7
,p_created_on=>wwv_flow_imp.dz('20260730231011Z')
,p_updated_on=>wwv_flow_imp.dz('20260730231011Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
end;
/
prompt --application/shared_components/navigation/breadcrumbentry
begin
null;
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(11569957702935240757)
,p_theme_id=>42
,p_static_id=>'universal-theme'
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_version_identifier=>'26.2'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_is_locked=>false
,p_current_theme_style_id=>3548222857250920465
,p_default_page_template=>4075783602716660119
,p_default_dialog_template=>2103835248774687739
,p_error_template=>2104585595298951431
,p_printer_friendly_template=>4075783602716660119
,p_login_template=>2104585595298951431
,p_default_button_template=>4075790603270660137
,p_default_region_template=>4075786578761660127
,p_default_chart_template=>4075786578761660127
,p_default_form_template=>4075786578761660127
,p_default_reportr_template=>4075786578761660127
,p_default_wizard_template=>4075786578761660127
,p_default_menur_template=>2534890969069732905
,p_default_listr_template=>4075786578761660127
,p_default_irr_template=>2103954283454391425
,p_default_report_template=>2542081983073888486
,p_default_label_template=>1612549609962752680
,p_default_menu_template=>4075790987805660140
,p_default_list_template=>4075788786379660133
,p_default_top_nav_list_temp=>2530182346535839887
,p_default_side_nav_list_temp=>2471166859590295591
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>2129856781885180476
,p_default_dialogr_template=>4504868307683981366
,p_default_option_label=>1612549609962752680
,p_default_required_label=>1612549789555753698
,p_default_navbar_list_template=>2850970698196720012
,p_file_prefix=>nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#APEX_FILES#themes/theme_42/26.2/')
,p_files_version=>64
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_FILES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_FILES#css/Core#MIN#.css?v=#APEX_VERSION#'
,p_reference_id=>wwv_imp_util.get_subscription_id(4075791579648660165,2000,'universal-theme',8842.262)
,p_version_scn=>'SH256:YkVkJG_2MgVUhPpoMIqejQJn3OAoaHxycU3s_st71jk'
,p_version_scn_master=>'SH256:S3Fh7S4ZMPpy-ID1j0RgxJIrTUyM6ZXOJB4KD7haOtc'
,p_created_on=>wwv_flow_imp.dz('20260622222059Z')
,p_updated_on=>wwv_flow_imp.dz('20261005132110Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_options
begin
null;
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/logic/build_options
begin
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(11569956106218240754)
,p_build_option_name=>'Commented Out'
,p_static_id=>'commented-out'
,p_build_option_status=>'EXCLUDE'
,p_version_scn=>'SH256:1lQI3DW9n-0ZEGoDXUirkaB0JWCIATVWpJZCTCkODmI'
,p_created_on=>wwv_flow_imp.dz('20260622222059Z')
,p_updated_on=>wwv_flow_imp.dz('20260622222059Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/security/authentications/oracle_apex_accounts
begin
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(11569956400186240754)
,p_name=>'Oracle APEX Accounts'
,p_static_id=>'oracle-apex-accounts'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>'SH256:MwlwV9vQNyvTGV3nRFfTrp5n7mJ1Ugme2lUrlsOYuxw'
,p_created_on=>wwv_flow_imp.dz('20260622222059Z')
,p_updated_on=>wwv_flow_imp.dz('20260622222059Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00000
begin
wwv_flow_imp_page.create_page(
 p_id=>0
,p_name=>'Global Page'
,p_reload_on_submit=>null
,p_warn_on_unsaved_changes=>null
,p_autocomplete_on_off=>'OFF'
,p_protection_level=>'D'
,p_page_component_map=>'14'
,p_created_on=>wwv_flow_imp.dz('20260622222059Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260622222059Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_last_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_imp_page.create_page(
 p_id=>1
,p_name=>'Inicio'
,p_alias=>'INICIO'
,p_step_title=>'Kiosco'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
,p_created_on=>wwv_flow_imp.dz('20260622222059Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261015205210Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_last_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(42625266329538567527)
,p_plug_name=>'Alerta caja abierta'
,p_static_id=>'alerta-caja-abierta'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>5
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source=>unistr('<div style="padding: 15px; background-color: #d1ecf1; border: 1px solid #17a2b8; border-radius; 4px; color: #0c5460; font.weight: 500; font-size: 14px;">\2139\FE0F &P1_ALERTA_CAJA.</div>')
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>'select 1 from cierres_caja where estado = ''ABIERTO'''
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260930184325Z')
,p_updated_on=>wwv_flow_imp.dz('20260930184325Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(42625266836338567532)
,p_plug_name=>'Banner Kiosco'
,p_static_id=>'banner-kiosco'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4504868307683981366
,p_plug_display_sequence=>3
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="background: linear-gradient(135deg, #4A90E2 0%, #2E5C9E 100%); ',
'            padding: 25px 30px; ',
'            border-radius: 10px; ',
'            display: flex; ',
'            align-items: center; ',
'            gap: 20px;',
'            box-shadow: 0 4px 12px rgba(0,0,0,0.3);">',
'  ',
unistr('  <div style="font-size: 4rem; line-height: 1;">\D83C\DFEA</div>'),
'  ',
'  <div style="flex: 1;">',
'    <h1 style="margin: 0; color: #ffffff; font-size: 1.8rem; font-weight: 700;">',
'      Kiosco',
'    </h1>',
'    <p style="margin: 5px 0 0 0; color: #e8f0ff; font-size: 1rem;">',
'      Panel de Control',
'    </p>',
'    <p style="margin: 3px 0 0 0; color: #c8d9f0; font-size: 0.9rem;">',
'      <span id="fecha-hoy"></span>',
'    </p>',
'  </div>',
'  ',
'</div>',
'',
'<script>',
'  (function() {',
unistr('    var dias = [''Domingo'',''Lunes'',''Martes'',''Mi\00E9rcoles'',''Jueves'',''Viernes'',''S\00E1bado''];'),
'    var meses = [''Enero'',''Febrero'',''Marzo'',''Abril'',''Mayo'',''Junio'',''Julio'',''Agosto'',''Septiembre'',''Octubre'',''Noviembre'',''Diciembre''];',
'    var hoy = new Date();',
'    var texto = dias[hoy.getDay()] + '', '' + hoy.getDate() + '' de '' + meses[hoy.getMonth()] + '' de '' + hoy.getFullYear();',
'    var elem = document.getElementById(''fecha-hoy'');',
'    if (elem) elem.innerText = texto;',
'  })();',
'</script>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261005131016Z')
,p_updated_on=>wwv_flow_imp.dz('20261005133329Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(1637489899393948836)
,p_name=>'Cuentas por pagar'
,p_static_id=>'cuentas-por-pagar'
,p_template=>4075786578761660127
,p_display_sequence=>35
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.nombre as proveedor,',
'       count(*) as pendientes,',
'       to_char(sum(c.total), ''FML999G999G999G990D00'') as total',
'from compras c',
'join proveedores p on p.proveedor_id = c.proveedor_id',
'where upper(c.estado) = ''PENDIENTE''',
'group by p.nombre'))
,p_display_when_condition=>'select 1 from compras where upper(estado) = ''PENDIENTE'' and rownum = 1'
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2542081983073888486
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_created_on=>wwv_flow_imp.dz('20261012002501Z')
,p_updated_on=>wwv_flow_imp.dz('20261012192702Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1637490171347948839)
,p_query_column_id=>2
,p_column_alias=>'PENDIENTES'
,p_column_display_sequence=>20
,p_column_heading=>'Pendientes'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_report_column_width=>100
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261012192702Z')
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1637490033279948838)
,p_query_column_id=>1
,p_column_alias=>'PROVEEDOR'
,p_column_display_sequence=>10
,p_column_heading=>'Proveedor'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_report_column_width=>250
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261012192702Z')
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1637490252360948840)
,p_query_column_id=>3
,p_column_alias=>'TOTAL'
,p_column_display_sequence=>30
,p_column_heading=>'Total'
,p_column_format=>'FML999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_report_column_width=>150
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261012192702Z')
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11569969600826240777)
,p_plug_name=>'Panel de Control'
,p_static_id=>'kiosco'
,p_icon_css_classes=>'fa-store'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2677445476673898083
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(11569956106218240754)
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260622222059Z')
,p_updated_on=>wwv_flow_imp.dz('20261005131453Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(29066345212164759839)
,p_plug_name=>'Resumen del mes'
,p_static_id=>'resumen-del-mes'
,p_region_css_classes=>'mis-cards'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2076152157930740558
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
unistr('  ''\D83D\DCB0 Ventas del mes'' AS titulo,'),
'  CASE',
unistr('    WHEN COUNT(*) = 0 THEN ''Sin ventas a\00FAn'''),
'    ELSE TO_CHAR(NVL(SUM(c.total_venta), 0), ''FML999G999G999G990D00'')',
'  END AS valor,',
'  ''Mes actual'' AS detalle',
'  FROM ventas_cabecera c',
' WHERE TRUNC(c.fecha, ''MM'') = TRUNC(SYSDATE, ''MM'')',
'UNION ALL',
'SELECT',
unistr('  ''\D83D\DCB5 Ventas de hoy'','),
'  CASE',
unistr('    WHEN COUNT(*) = 0 THEN ''Sin ventas a\00FAn'''),
'    ELSE TO_CHAR(NVL(SUM(c.total_venta), 0), ''FML999G999G999G990D00'')',
'  END,',
'  TO_CHAR(SYSDATE, ''DD/MM/YYYY'')',
'  FROM ventas_cabecera c',
' WHERE TRUNC(c.fecha) = TRUNC(SYSDATE)',
'UNION ALL',
'SELECT',
unistr('  ''\D83D\DED2 Cantidad de ventas'','),
'  TO_CHAR(COUNT(*)),',
'  ''Mes actual''',
'  FROM ventas_cabecera c',
' WHERE TRUNC(c.fecha, ''MM'') = TRUNC(SYSDATE, ''MM'')',
'UNION ALL',
'SELECT',
unistr('  ''\D83D\DCC8 Ticket promedio'','),
'  CASE',
'    WHEN COUNT(*) = 0 THEN ''Sin datos''',
'    ELSE TO_CHAR(NVL(AVG(c.total_venta), 0), ''FML999G999G999G990D00'')',
'  END,',
'  ''Mes actual''',
'  FROM ventas_cabecera c',
' WHERE TRUNC(c.fecha, ''MM'') = TRUNC(SYSDATE, ''MM'')',
'UNION ALL',
'SELECT',
unistr('  ''\D83D\DCB5 Efectivo del mes'','),
'  CASE',
'    WHEN COUNT(*) = 0 THEN ''$0.00''',
'    ELSE TO_CHAR(NVL(SUM(c.total_venta), 0), ''FML999G999G999G990D00'')',
'  END,',
'  ''Mes actual''',
'  FROM ventas_cabecera c',
' WHERE TRUNC(c.fecha, ''MM'') = TRUNC(SYSDATE, ''MM'')',
'   AND c.metodo_pago = ''EFECTIVO''',
'UNION ALL',
'SELECT',
unistr('  ''\D83D\DCB3 Tarjeta del mes'','),
'  CASE',
'    WHEN COUNT(*) = 0 THEN ''$0.00''',
'    ELSE TO_CHAR(NVL(SUM(c.total_venta), 0), ''FML999G999G999G990D00'')',
'  END,',
'  ''Mes actual''',
'  FROM ventas_cabecera c',
' WHERE TRUNC(c.fecha, ''MM'') = TRUNC(SYSDATE, ''MM'')',
'   AND c.metodo_pago IN (''DEBITO'', ''CREDITO'')',
'UNION ALL',
'SELECT',
unistr('  ''\D83D\DCF1 Transferencia / QR'','),
'  CASE',
'    WHEN COUNT(*) = 0 THEN ''$0.00''',
'    ELSE TO_CHAR(NVL(SUM(c.total_venta), 0), ''FML999G999G999G990D00'')',
'  END,',
'  ''Mes actual''',
'  FROM ventas_cabecera c',
' WHERE TRUNC(c.fecha, ''MM'') = TRUNC(SYSDATE, ''MM'')',
'   AND c.metodo_pago IN (''TRANSFERENCIA'', ''QR'')'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_created_on=>wwv_flow_imp.dz('20260922010729Z')
,p_updated_on=>wwv_flow_imp.dz('20261001191231Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(29066345323801759840)
,p_region_id=>wwv_flow_imp.id(29066345212164759839)
,p_layout_type=>'GRID'
,p_grid_column_count=>4
,p_title_adv_formatting=>false
,p_title_column_name=>'TITULO'
,p_sub_title_adv_formatting=>false
,p_sub_title_column_name=>'DETALLE'
,p_body_adv_formatting=>false
,p_body_column_name=>'VALOR'
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
,p_updated_on=>wwv_flow_imp.dz('20261001191231Z')
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(29066345454118759841)
,p_plug_name=>'Top 5 productos del mes'
,p_static_id=>'top-5-productos-del-mes'
,p_region_css_classes=>'top5-chart'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>20
,p_plug_grid_column_css_classes=>'top5-chart'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.nombre as producto,',
'    sum(d.cantidad) as unidades_vendidas,',
'    case row_number() over (order by sum(d.cantidad) desc)',
'        when 1 then ''#FFD700''   -- Oro',
'        when 2 then ''#C0C0C0''   -- Plata',
'        when 3 then ''#CD7F32''   -- Bronce',
'        when 4 then ''#4A90E2''   -- Azul',
unistr('        when 5 then ''#9B59B6''   -- P\00FArpura'),
'        else ''#888888''',
'    end as color',
'from ventas_detalle d',
'join ventas_cabecera c on c.venta_id = d.venta_id',
'join productos p on p.producto_id = d.producto_id',
'where trunc(c.fecha, ''MM'') = trunc(sysdate, ''MM'')',
'group by p.nombre',
'order by sum(d.cantidad) desc',
'fetch first 5 rows only'))
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from ventas_detalle d',
'    join ventas_cabecera c on c.venta_id = d.venta_id',
'    where trunc(c.fecha, ''MM'') = trunc(sysdate, ''MM'')',
'    and rownum = 1'))
,p_created_on=>wwv_flow_imp.dz('20260922194137Z')
,p_updated_on=>wwv_flow_imp.dz('20261002204610Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(29066345574944759842)
,p_region_id=>wwv_flow_imp.id(29066345454118759841)
,p_chart_type=>'bar'
,p_height=>'250'
,p_lazy_loading=>true
,p_animation_on_data_change=>'auto'
,p_orientation=>'horizontal'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_created_on=>wwv_flow_imp.dz('20260922194137Z')
,p_updated_on=>wwv_flow_imp.dz('20261002204610Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(29066345614236759843)
,p_chart_id=>wwv_flow_imp.id(29066345574944759842)
,p_static_id=>'top-5'
,p_seq=>10
,p_name=>'Cantidad de productos vendidos'
,p_location=>'REGION_SOURCE'
,p_series_type=>'bar'
,p_items_value_column_name=>'UNIDADES_VENDIDAS'
,p_items_label_column_name=>'PRODUCTO'
,p_color=>'#ffd700'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_threshold_display=>'onIndicator'
,p_created_on=>wwv_flow_imp.dz('20260922194137Z')
,p_updated_on=>wwv_flow_imp.dz('20261002195620Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(29066345762906759844)
,p_chart_id=>wwv_flow_imp.id(29066345574944759842)
,p_static_id=>'x'
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_created_on=>wwv_flow_imp.dz('20260922194137Z')
,p_updated_on=>wwv_flow_imp.dz('20260922194137Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(29066345883037759845)
,p_chart_id=>wwv_flow_imp.id(29066345574944759842)
,p_static_id=>'y'
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_created_on=>wwv_flow_imp.dz('20260922194137Z')
,p_updated_on=>wwv_flow_imp.dz('20260922194137Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(29066345990435759846)
,p_name=>unistr('\26A0\FE0F Stock bajo - Reponer')
,p_static_id=>unistr('\FE0F-stock-bajo-reponer')
,p_template=>4075786578761660127
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT p.nombre,',
'       p.stock,',
'       CASE',
'         WHEN p.stock = 0 THEN ''SIN STOCK''',
unistr('         WHEN p.stock <= 5 THEN ''CR\00CDTICO'''),
'         ELSE ''BAJO''',
'       END AS estado,',
'       CASE',
'         WHEN p.stock = 0 THEN ''#FF0000''',
'         WHEN p.stock <= 5 THEN ''#FFA500''',
'         ELSE ''#FFD700''',
'       END AS estado_color,',
'       NVL(',
'         (SELECT LISTAGG(pr.nombre, '', '') WITHIN GROUP (ORDER BY pr.nombre)',
'            FROM productos_proveedores pp',
'            JOIN proveedores pr ON pr.proveedor_id = pp.proveedor_id',
'           WHERE pp.producto_id = p.producto_id',
'             AND pr.activo = ''S''),',
unistr('         ''\2014 Sin proveedor \2014'''),
'       ) AS proveedor',
'  FROM productos p',
' WHERE p.stock <= 10',
' ORDER BY p.stock ASC, p.nombre ASC'))
,p_display_when_condition=>'select 1 from productos where stock <= 10 and rownum = 1'
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2542081983073888486
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'SHOW_ALL'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_created_on=>wwv_flow_imp.dz('20260922200141Z')
,p_updated_on=>wwv_flow_imp.dz('20261008202654Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(29066346208243759849)
,p_query_column_id=>3
,p_column_alias=>'ESTADO'
,p_column_display_sequence=>30
,p_column_heading=>'Estado'
,p_column_html_expression=>'<span style="color: #ESTADO_COLOR#; font-weight: bold;">#ESTADO#</span>'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260922204239Z')
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(29066346390332759850)
,p_query_column_id=>4
,p_column_alias=>'ESTADO_COLOR'
,p_column_display_sequence=>40
,p_hidden_column=>'Y'
,p_derived_column=>'N'
,p_updated_on=>wwv_flow_imp.dz('20260922200141Z')
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(29066346010604759847)
,p_query_column_id=>1
,p_column_alias=>'NOMBRE'
,p_column_display_sequence=>10
,p_column_heading=>'Nombre'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260922200141Z')
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(980704813917091839)
,p_query_column_id=>5
,p_column_alias=>'PROVEEDOR'
,p_column_display_sequence=>50
,p_column_heading=>'Proveedor'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261008202654Z')
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(29066346167266759848)
,p_query_column_id=>2
,p_column_alias=>'STOCK'
,p_column_display_sequence=>20
,p_column_heading=>'Stock'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260922200141Z')
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42625266452197567528)
,p_name=>'P1_ALERTA_CAJA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(42625266329538567527)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''Caja abierta desde el '' || to_char(fecha_apertura, ''DD/MM/YYYY HH24:MI'') || '' (Turno: '' || turno || ''). No olvides cerrarla al final de la jornada.''',
'from cierres_caja',
'where estado = ''ABIERTO'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260930184325Z')
,p_updated_on=>wwv_flow_imp.dz('20260930184325Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42625266614620567530)
,p_name=>'New'
,p_static_id=>'new'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_created_on=>wwv_flow_imp.dz('20261002191800Z')
,p_updated_on=>wwv_flow_imp.dz('20261002191800Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42625266794764567531)
,p_event_id=>wwv_flow_imp.id(42625266614620567530)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_static_id=>'native-show'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'JAVASCRIPT_EXPRESSION'
,p_affected_elements=>'console.log(''ESO ESTA MAAAALL'');'
,p_created_on=>wwv_flow_imp.dz('20261002191800Z')
,p_updated_on=>wwv_flow_imp.dz('20261002191800Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2707657178359991934)
,p_process_sequence=>1
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Redirigir a cambio password'
,p_static_id=>'redirigir-a-cambio-password'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_requires_change boolean;',
'begin',
unistr('    --Verificar si el usuario necesita cambiar la contrase\00F1a'),
'    begin',
'        v_requires_change := apex_util.change_password_on_first_use(p_user_name => :app_user);',
'    exception',
'        when others then',
'            v_requires_change := false;',
'    end;',
'',
unistr('    --Si necesita, redirigir a p\00E1gina 16'),
'    if v_requires_change then',
'        owa_util.redirect_url(''f?p='' || :app_id || '':16:'' || :app_session);',
'    end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>2707657178359991934
,p_created_on=>wwv_flow_imp.dz('20261015205210Z')
,p_updated_on=>wwv_flow_imp.dz('20261015205210Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_imp_page.create_page(
 p_id=>2
,p_name=>'Producto - Proveedores'
,p_alias=>'PRODUCTO-PROVEEDORES'
,p_step_title=>'Producto - Proveedores'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3748731866027892630)
,p_protection_level=>'C'
,p_page_component_map=>'21'
,p_created_on=>wwv_flow_imp.dz('20261008145527Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261022003928Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_last_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1169118512998189205)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2534890969069732905
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(11569956826024240755)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4075790987805660140
,p_created_on=>wwv_flow_imp.dz('20261008145527Z')
,p_updated_on=>wwv_flow_imp.dz('20261008145527Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(980703048319091821)
,p_plug_name=>'Proveedores del producto'
,p_static_id=>'proveedores-del-producto'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2103954283454391425
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT pp.id,',
'       p.nombre AS proveedor,',
'       pp.precio_compra,',
'       pp.ultima_compra,',
'       pp.proveedor_id',
'  FROM productos_proveedores pp',
'  JOIN proveedores p ON p.proveedor_id = pp.proveedor_id',
' WHERE pp.producto_id = :P2_PRODUCTO_ID'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P2_PRODUCTO_ID'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_created_on=>wwv_flow_imp.dz('20261008183609Z')
,p_updated_on=>wwv_flow_imp.dz('20261008201533Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(980703230975091823)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_heading=>'Id'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
,p_updated_on=>wwv_flow_imp.dz('20261008184240Z')
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(980703471741091825)
,p_name=>'PRECIO_COMPRA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRECIO_COMPRA'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Precio Compra'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>30
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20261008183609Z')
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(980703328264091824)
,p_name=>'PROVEEDOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PROVEEDOR'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Proveedor'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>20
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20261008183609Z')
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(980703790596091828)
,p_name=>'PROVEEDOR_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PROVEEDOR_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Proveedor Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>60
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>true
,p_enable_filter=>true
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20261008183609Z')
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(980703629042091827)
,p_name=>'ULTIMA_COMPRA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ULTIMA_COMPRA'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Ultima Compra'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20261008183609Z')
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(980703184016091822)
,p_internal_uid=>980703184016091822
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_updated_on=>wwv_flow_imp.dz('20261008201533Z')
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(1254644141271469066)
,p_interactive_grid_id=>wwv_flow_imp.id(980703184016091822)
,p_static_id=>'primary'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
,p_updated_on=>wwv_flow_imp.dz('20261008201533Z')
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(1254644209421469067)
,p_report_id=>wwv_flow_imp.id(1254644141271469066)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1254644719542469068)
,p_view_id=>wwv_flow_imp.id(1254644209421469067)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(980703230975091823)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1254645655744469070)
,p_view_id=>wwv_flow_imp.id(1254644209421469067)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(980703328264091824)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1254646526434469072)
,p_view_id=>wwv_flow_imp.id(1254644209421469067)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(980703471741091825)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1254648381270469076)
,p_view_id=>wwv_flow_imp.id(1254644209421469067)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(980703629042091827)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1254649294962469077)
,p_view_id=>wwv_flow_imp.id(1254644209421469067)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(980703790596091828)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(980703841582091829)
,p_plug_name=>unistr('Registrar asociaci\00F3n')
,p_static_id=>unistr('registrar-asociaci\00F3n')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261008185626Z')
,p_updated_on=>wwv_flow_imp.dz('20261008185626Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(980701885226091809)
,p_plug_name=>'Selector'
,p_static_id=>'selector'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261008145758Z')
,p_updated_on=>wwv_flow_imp.dz('20261008145758Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(980704111603091832)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(980703841582091829)
,p_button_name=>'Agregar_asoc'
,p_static_id=>'agregar'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Agregar'
,p_grid_new_row=>'Y'
,p_created_on=>wwv_flow_imp.dz('20261008185626Z')
,p_updated_on=>wwv_flow_imp.dz('20261008194706Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(980704038830091831)
,p_name=>'P2_PRECIO_COMPRA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(980703841582091829)
,p_prompt=>'Precio Compra'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261008185626Z')
,p_updated_on=>wwv_flow_imp.dz('20261022003928Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(980702083576091811)
,p_name=>'P2_PRODUCTO_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(980701885226091809)
,p_prompt=>'Producto'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nombre as display_value, producto_id as return_value from productos',
'order by nombre'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261008145758Z')
,p_updated_on=>wwv_flow_imp.dz('20261008201351Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(980703987108091830)
,p_name=>'P2_PROVEEDOR_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(980703841582091829)
,p_prompt=>'Proveedor'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nombre as display_name, proveedor_id as return_value from proveedores',
'where activo = ''S''',
'order by nombre'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Seleccione--'
,p_cHeight=>1
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261008185626Z')
,p_updated_on=>wwv_flow_imp.dz('20261008185853Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(980704588358091836)
,p_name=>'New'
,p_static_id=>'new'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P2_PRODUCTO_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_created_on=>wwv_flow_imp.dz('20261008200216Z')
,p_updated_on=>wwv_flow_imp.dz('20261008200217Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(980704660556091837)
,p_event_id=>wwv_flow_imp.id(980704588358091836)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(980703048319091821)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261008200217Z')
,p_updated_on=>wwv_flow_imp.dz('20261008200217Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(980704322890091834)
,p_name=>'Refrescar proveedores'
,p_static_id=>'refrescar-proveedores'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(980704111603091832)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_created_on=>wwv_flow_imp.dz('20261008192346Z')
,p_updated_on=>wwv_flow_imp.dz('20261008192346Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(980704442885091835)
,p_event_id=>wwv_flow_imp.id(980704322890091834)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(980703048319091821)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261008192346Z')
,p_updated_on=>wwv_flow_imp.dz('20261008192346Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(980704268772091833)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('Insertar asociaci\00F3n')
,p_static_id=>unistr('insertar-asociaci\00F3n')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_existe number;',
'begin',
'    -- 1. Validar Producto (Error en rojo)',
'    if :P2_PRODUCTO_ID is null then',
'        apex_error.add_error(',
unistr('            p_message => ''\26A0\FE0F Seleccion\00E1 un producto.'','),
'            p_display_location => apex_error.c_inline_with_field_and_notif,',
'            p_page_item_name => ''P2_PRODUCTO_ID''',
'        );',
'        return;',
'    end if;',
'',
'    -- 2. Validar Proveedor (Error en rojo)',
'    if :P2_PROVEEDOR_ID is null then',
'        apex_error.add_error(',
unistr('            p_message => ''\26A0\FE0F Seleccion\00E1 un proveedor.'','),
'            p_display_location => apex_error.c_inline_with_field_and_notif,',
'            p_page_item_name => ''P2_PROVEEDOR_ID''',
'        );',
'        return;',
'    end if;',
'',
unistr('    -- 3. NUEVA VALIDACI\00D3N: Obligar a ingresar un precio mayor a 0'),
'    if :P2_PRECIO_COMPRA is null or :P2_PRECIO_COMPRA <= 0 then',
'        apex_error.add_error(',
unistr('            p_message => ''\26A0\FE0F Ingres\00E1 un precio de compra mayor a 0.'','),
'            p_display_location => apex_error.c_inline_with_field_and_notif,',
'            p_page_item_name => ''P2_PRECIO_COMPRA''',
'        );',
'        return;',
'    end if;',
'',
unistr('    -- 4. Validar si ya existe la asociaci\00F3n (Error en rojo)'),
'    select count(*) into v_existe ',
'      from productos_proveedores',
'     where producto_id = :P2_PRODUCTO_ID ',
'       and proveedor_id = :P2_PROVEEDOR_ID;',
'',
'    if v_existe > 0 then',
'        apex_error.add_error(',
unistr('            p_message => ''\26A0\FE0F Este proveedor ya est\00E1 asociado al producto.'','),
'            p_display_location => apex_error.c_inline_in_notification',
'        );',
'        return;',
'    end if;',
'',
'    -- 5. Insertar',
'    insert into productos_proveedores (',
'        producto_id, proveedor_id, precio_compra, ultima_compra',
'    ) values (',
'        :P2_PRODUCTO_ID,',
'        :P2_PROVEEDOR_ID,',
'        :P2_PRECIO_COMPRA,',
'        trunc(sysdate)',
'    );',
'',
'    -- 6. Limpiar campos',
'    :P2_PROVEEDOR_ID := null;',
'    :P2_PRECIO_COMPRA := null;',
'',
'exception',
'    when others then',
'        apex_error.add_error(',
unistr('            p_message => ''\274C Error: '' || SQLERRM,'),
'            p_display_location => apex_error.c_inline_in_notification',
'        );',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'Agregar_asoc'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>unistr('\2705 Proveedor asociado correctamente.')
,p_internal_uid=>980704268772091833
,p_created_on=>wwv_flow_imp.dz('20261008190901Z')
,p_updated_on=>wwv_flow_imp.dz('20261022003313Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_imp_page.create_page(
 p_id=>3
,p_name=>'Proveedores'
,p_alias=>'PROVEEDORES'
,p_step_title=>'Proveedores'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3748731866027892630)
,p_protection_level=>'C'
,p_page_component_map=>'21'
,p_created_on=>wwv_flow_imp.dz('20261008005252Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261021204559Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_last_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(980693430837089420)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2534890969069732905
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(11569956826024240755)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4075790987805660140
,p_created_on=>wwv_flow_imp.dz('20261008005252Z')
,p_updated_on=>wwv_flow_imp.dz('20261008005252Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(42625267915025567543)
,p_plug_name=>'Proveedores'
,p_static_id=>'new'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2103954283454391425
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'PROVEEDORES'
,p_query_order_by_type=>'STATIC'
,p_query_order_by=>'nombre'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IG'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_created_on=>wwv_flow_imp.dz('20261008005330Z')
,p_updated_on=>wwv_flow_imp.dz('20261021204559Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(980701371147091804)
,p_name=>'ACTIVO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACTIVO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Activo'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'STATIC'
,p_lov_source=>unistr('STATIC:S\00ED;S,No;N')
,p_lov_display_extra=>false
,p_lov_display_null=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'S'
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20261008144903Z')
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(980701571768091806)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20261008144903Z')
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(980701600412091807)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_use_as_row_header=>false
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20261008144903Z')
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(980701154418091802)
,p_name=>'CONTACTO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CONTACTO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Contacto'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_item_width=>25
,p_is_required=>false
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20261008144903Z')
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(42625268492007567548)
,p_name=>'CUIT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CUIT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Cuit'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_item_width=>15
,p_is_required=>false
,p_max_length=>20
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20261008144903Z')
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(980701002666091801)
,p_name=>'DIRECCION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DIRECCION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Direccion'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_item_width=>40
,p_is_required=>false
,p_max_length=>200
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20261008144903Z')
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(42625268608054567550)
,p_name=>'EMAIL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMAIL'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Email'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_item_width=>30
,p_is_required=>false
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20261008144903Z')
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(980701409980091805)
,p_name=>'FECHA_ALTA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FECHA_ALTA'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Fecha Alta'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_format_mask=>'DD/MM/YYYY'
,p_item_width=>12
,p_is_required=>false
,p_enable_filter=>true
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20261021204559Z')
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(42625268208655567546)
,p_name=>'NOMBRE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NOMBRE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Nombre'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_item_width=>30
,p_is_required=>true
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20261008144903Z')
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(980701226284091803)
,p_name=>'OBSERVACIONES'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OBSERVACIONES'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Observaciones'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_item_width=>50
,p_is_required=>false
,p_max_length=>500
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20261008144903Z')
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(42625268170241567545)
,p_name=>'PROVEEDOR_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PROVEEDOR_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_include_in_export=>false
,p_updated_on=>wwv_flow_imp.dz('20261008144903Z')
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(42625268370726567547)
,p_name=>'RAZON_SOCIAL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RAZON_SOCIAL'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Razon Social'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_item_width=>30
,p_is_required=>false
,p_max_length=>150
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20261008144903Z')
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(42625268500406567549)
,p_name=>'TELEFONO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TELEFONO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Telefono'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_item_width=>20
,p_is_required=>false
,p_max_length=>30
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20261008144903Z')
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(42625268068396567544)
,p_internal_uid=>42625268068396567544
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_updated_on=>wwv_flow_imp.dz('20261008144903Z')
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(980709811074093250)
,p_interactive_grid_id=>wwv_flow_imp.id(42625268068396567544)
,p_static_id=>'primary'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
,p_updated_on=>wwv_flow_imp.dz('20261008144903Z')
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(980709971861093251)
,p_report_id=>wwv_flow_imp.id(980709811074093250)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(980710438125093252)
,p_view_id=>wwv_flow_imp.id(980709971861093251)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(42625268170241567545)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(980711247731093254)
,p_view_id=>wwv_flow_imp.id(980709971861093251)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(42625268208655567546)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(980712143927093256)
,p_view_id=>wwv_flow_imp.id(980709971861093251)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(42625268370726567547)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(980713032447093257)
,p_view_id=>wwv_flow_imp.id(980709971861093251)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(42625268492007567548)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(980713943130093259)
,p_view_id=>wwv_flow_imp.id(980709971861093251)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(42625268500406567549)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(980714896192093260)
,p_view_id=>wwv_flow_imp.id(980709971861093251)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(42625268608054567550)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(980715736841093262)
,p_view_id=>wwv_flow_imp.id(980709971861093251)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(980701002666091801)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(980716656776093263)
,p_view_id=>wwv_flow_imp.id(980709971861093251)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(980701154418091802)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(980717540268093264)
,p_view_id=>wwv_flow_imp.id(980709971861093251)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(980701226284091803)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(980718469384093266)
,p_view_id=>wwv_flow_imp.id(980709971861093251)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(980701371147091804)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(980719364397093268)
,p_view_id=>wwv_flow_imp.id(980709971861093251)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(980701409980091805)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1168694533280150855)
,p_view_id=>wwv_flow_imp.id(980709971861093251)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(980701571768091806)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(2707657959698991942)
,p_tabular_form_region_id=>wwv_flow_imp.id(42625267915025567543)
,p_validation_name=>'Validar CUIT duplicado'
,p_static_id=>'validar-cuit-duplicado'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_count number;',
'begin',
'    select count(*) into v_count from proveedores',
'    where cuit = :CUIT',
'    and proveedor_id != nvl(:PROVEEDOR_ID, -1);',
'',
'    if v_count > 0 then',
'        return false;',
'    else',
'        return true;',
'    end if;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>unistr('\274C Este CUIT ya est\00E1 registrado en otro proveedor.')
,p_validation_condition=>'CUIT'
,p_validation_condition_type=>'ITEM_IS_NOT_NULL'
,p_exec_cond_for_each_row=>'Y'
,p_associated_column=>'CUIT'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20261021200300Z')
,p_updated_on=>wwv_flow_imp.dz('20261021202549Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(2707658019680991943)
,p_tabular_form_region_id=>wwv_flow_imp.id(42625267915025567543)
,p_validation_name=>'Validar formato Email'
,p_static_id=>'validar-formato-email'
,p_validation_sequence=>20
,p_validation=>'EMAIL'
,p_validation2=>'^[a-zA-Z0-9._%-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$'
,p_validation_type=>'REGULAR_EXPRESSION'
,p_error_message=>unistr('\274C El formato del Email no es v\00E1lido (debe contener @ y un dominio).')
,p_validation_condition=>'EMAIL'
,p_validation_condition_type=>'ITEM_IS_NOT_NULL'
,p_exec_cond_for_each_row=>'Y'
,p_associated_column=>'EMAIL'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20261021200300Z')
,p_updated_on=>wwv_flow_imp.dz('20261021200300Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(980701710525091808)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(42625267915025567543)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Proveedores - Save Interactive Grid Data'
,p_static_id=>'proveedores-save-interactive-grid-data'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>unistr('\2705 Proveedor(es) guardado(s) correctamente.')
,p_internal_uid=>980701710525091808
,p_created_on=>wwv_flow_imp.dz('20261008144903Z')
,p_updated_on=>wwv_flow_imp.dz('20261021203838Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_imp_page.create_page(
 p_id=>4
,p_name=>'Productos'
,p_alias=>'PRODUCTOS'
,p_step_title=>'Productos'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3748731866027892630)
,p_protection_level=>'C'
,p_page_component_map=>'21'
,p_created_on=>wwv_flow_imp.dz('20260624151620Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261023211949Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_last_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(42625267891705567542)
,p_plug_name=>'Botones Productos'
,p_static_id=>'botones-productos'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4504868307683981366
,p_plug_display_sequence=>5
,p_plug_new_grid_row=>false
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261006140200Z')
,p_updated_on=>wwv_flow_imp.dz('20261023193532Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12103036761484626098)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2534890969069732905
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(11569956826024240755)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4075790987805660140
,p_created_on=>wwv_flow_imp.dz('20260624151620Z')
,p_updated_on=>wwv_flow_imp.dz('20260624151620Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12103037615572626227)
,p_plug_name=>'Productos'
,p_static_id=>'productos'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2103954283454391425
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'PRODUCTOS'
,p_query_order_by_type=>'STATIC'
,p_query_order_by=>'sort_key'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IG'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_created_on=>wwv_flow_imp.dz('20260624151621Z')
,p_updated_on=>wwv_flow_imp.dz('20261023211949Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10870914745273900231)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20260624192633Z')
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10870914892276900232)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_use_as_row_header=>false
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20260624192633Z')
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12103039976148626234)
,p_name=>'NOMBRE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NOMBRE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Nombre'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20261023211949Z')
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12103040941097626236)
,p_name=>'PRECIO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRECIO'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Precio'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>50
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>true
,p_enable_filter=>true
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20260624192633Z')
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12103038953275626231)
,p_name=>'PRODUCTO_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRODUCTO_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_include_in_export=>false
,p_updated_on=>wwv_flow_imp.dz('20260624192633Z')
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(29066344597775759832)
,p_name=>'SORT_KEY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SORT_KEY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_heading=>'Sort Key'
,p_display_sequence=>100
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_include_in_export=>false
,p_updated_on=>wwv_flow_imp.dz('20260912002603Z')
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12103041971750626238)
,p_name=>'STOCK'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STOCK'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Stock'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>60
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>true
,p_enable_filter=>true
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20260831204637Z')
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(12103037756450626227)
,p_internal_uid=>12103037756450626227
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU:RESET'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(config) {',
'    config.ajax = {',
'        beforeSave: function(data) {',
unistr('            apex.server.process(''Guardar Productos con Validaci\00F3n'', {'),
'                x01: JSON.stringify(data)',
'            }, {',
'                success: function(pData) {',
'                    alert(pData);',
'                },',
'                error: function() {',
'                    alert(''Error al guardar los productos.'');',
'                }',
'            });',
'            return false;',
'        }',
'    };',
'    return config;',
'}'))
,p_updated_on=>wwv_flow_imp.dz('20260911003245Z')
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(12103038462412626230)
,p_interactive_grid_id=>wwv_flow_imp.id(12103037756450626227)
,p_static_id=>'primary'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
,p_updated_on=>wwv_flow_imp.dz('20260911003245Z')
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(12103038539324626230)
,p_report_id=>wwv_flow_imp.id(12103038462412626230)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12103039440212626233)
,p_view_id=>wwv_flow_imp.id(12103038539324626230)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(12103038953275626231)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12103040442516626236)
,p_view_id=>wwv_flow_imp.id(12103038539324626230)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(12103039976148626234)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12103041409963626238)
,p_view_id=>wwv_flow_imp.id(12103038539324626230)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(12103040941097626236)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12103042518040626240)
,p_view_id=>wwv_flow_imp.id(12103038539324626230)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(12103041971750626238)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12142895368048474158)
,p_view_id=>wwv_flow_imp.id(12103038539324626230)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(10870914745273900231)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(37293769912383043497)
,p_view_id=>wwv_flow_imp.id(12103038539324626230)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(29066344597775759832)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(29066344978241759836)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(42625267891705567542)
,p_button_name=>'Eliminar'
,p_static_id=>'eliminar'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Eliminar'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
,p_created_on=>wwv_flow_imp.dz('20260916195045Z')
,p_updated_on=>wwv_flow_imp.dz('20261023193532Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(29066343860955759825)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(42625267891705567542)
,p_button_name=>'Guardar'
,p_static_id=>'guardar'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Guardar'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
,p_created_on=>wwv_flow_imp.dz('20260903210711Z')
,p_updated_on=>wwv_flow_imp.dz('20261023193532Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29066343670467759823)
,p_name=>'P4_JSON_DATA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(12103037615572626227)
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260903210711Z')
,p_updated_on=>wwv_flow_imp.dz('20260904205233Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(10870915048665900234)
,p_tabular_form_region_id=>wwv_flow_imp.id(12103037615572626227)
,p_validation_name=>'Validar Precio Positivo'
,p_static_id=>'validar-precio-positivo'
,p_validation_sequence=>10
,p_validation=>':PRECIO >0'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'El precio debe ser mayor a cero'
,p_associated_column=>'PRECIO'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20260624194239Z')
,p_updated_on=>wwv_flow_imp.dz('20260624194239Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(29066344196188759828)
,p_name=>'New'
,p_static_id=>'new'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(29066343860955759825)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_created_on=>wwv_flow_imp.dz('20260903210711Z')
,p_updated_on=>wwv_flow_imp.dz('20261021145256Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29066344232363759829)
,p_event_id=>wwv_flow_imp.id(29066344196188759828)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-javascript-code'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'js_code', wwv_flow_string.join(wwv_flow_t_varchar2(
    'setTimeout(function() {',
    '    var gridWidget;',
    '    try {',
    '        gridWidget = apex.region("productos").widget().interactiveGrid("getCurrentView");',
    '    } catch(e) {',
    '        gridWidget = $(''#R12103037615572626227_ig'').interactiveGrid(''getCurrentView'');',
    '    }',
    '',
    '    if (!gridWidget) {',
    '        apex.message.alert(''No se pudo obtener el grid.'');',
    '        return;',
    '    }',
    '',
    '    var model = gridWidget.model;',
    '    var data = [];',
    '    model.forEach(function(record) {',
    '        data.push({',
    '            producto_id: model.getValue(record, ''PRODUCTO_ID''),',
    '            nombre: model.getValue(record, ''NOMBRE''),',
    '            precio: model.getValue(record, ''PRECIO''),',
    '            stock: model.getValue(record, ''STOCK'')',
    '        });',
    '    });',
    '',
    unistr('    apex.server.process(''Guardar Productos con Validaci\00F3n'', {'),
    '        x01: JSON.stringify(data)',
    '    }, {',
    '        dataType: ''json'',',
    '        success: function(respuesta) {',
    '            if (respuesta && respuesta.success === ''OK'') {',
    '                apex.message.showPageSuccess(respuesta.message);',
    '                ',
    '                // Refresco suave y seguro',
    '                setTimeout(function() {',
    '                    try {',
    '                        var region = apex.region("productos");',
    '                        if (region) {',
    unistr('                            region.refresh(); // Refresca la regi\00F3n completa'),
    '                        } else {',
    unistr('                            // Si por alguna raz\00F3n no encuentra la regi\00F3n, limpia el modelo interno'),
    '                            gridWidget.model.clearChanges();',
    '                            gridWidget.model.fetchAll();',
    '                        }',
    '                    } catch(e) {',
    unistr('                        console.warn("No se pudo refrescar autom\00E1ticamente.", e);'),
    '                    }',
    '                }, 100);',
    '                ',
    '            } else {',
    '                apex.message.clearErrors();',
    '                apex.message.showErrors([{',
    '                    type: "error",',
    '                    location: ["page"],',
    '                    message: respuesta && respuesta.message ? respuesta.message : ''Error al guardar.'',',
    '                    unsafe: false',
    '                }]);',
    '            }',
    '        },',
    '        error: function() {',
    '            apex.message.clearErrors();',
    '            apex.message.showErrors([{',
    '                type: "error",',
    '                location: ["page"],',
    unistr('                message: ''Error de comunicaci\00F3n con el servidor.'','),
    '                unsafe: false',
    '            }]);',
    '        }',
    '    });',
    '}, 500);')))).to_clob
,p_created_on=>wwv_flow_imp.dz('20260903210711Z')
,p_updated_on=>wwv_flow_imp.dz('20261021145256Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(29066345000585759837)
,p_name=>'New'
,p_static_id=>'new_1'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(29066344978241759836)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_created_on=>wwv_flow_imp.dz('20260916195045Z')
,p_updated_on=>wwv_flow_imp.dz('20261021152522Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29066345185291759838)
,p_event_id=>wwv_flow_imp.id(29066345000585759837)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-javascript-code'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'js_code', wwv_flow_string.join(wwv_flow_t_varchar2(
    'setTimeout(function() {',
    '    var gridWidget;',
    '    try {',
    '        gridWidget = apex.region("productos").widget().interactiveGrid("getCurrentView");',
    '    } catch(e) {',
    '        gridWidget = $(''#R12103037615572626227_ig'').interactiveGrid(''getCurrentView'');',
    '    }',
    '',
    '    if (!gridWidget) {',
    '        apex.message.alert(''No se pudo obtener el grid.'');',
    '        return;',
    '    }',
    '',
    '    var ids = [];',
    '    try {',
    '        var selectedRecords = gridWidget.getSelectedRecords();',
    '        selectedRecords.forEach(function(record) {',
    '            var id = gridWidget.model.getValue(record, ''PRODUCTO_ID'');',
    '            if (id) ids.push(id);',
    '        });',
    '    } catch(e) {',
    '        return;',
    '    }',
    '',
    '    if (ids.length === 0) {',
    '        apex.message.alert(''Seleccione al menos un producto para eliminar.'');',
    '        return;',
    '    }',
    '',
    unistr('    if (!confirm(''\00BFEliminar '' + ids.length + '' producto(s)? Esta acci\00F3n no se puede deshacer.'')) {'),
    '        return;',
    '    }',
    '',
    '    apex.server.process(''Eliminar Productos'', {',
    '        x01: JSON.stringify(ids)',
    '    }, {',
    '        dataType: ''json'',',
    '        success: function(respuesta) {',
    '            if (respuesta && respuesta.success === ''OK'') {',
    unistr('                // Cartel verde de \00E9xito'),
    '                apex.message.showPageSuccess(respuesta.message);',
    '                ',
    unistr('                // Refresco id\00E9ntico al que usamos en Guardar'),
    '                setTimeout(function() {',
    '                    try {',
    '                        var region = apex.region("productos");',
    '                        if (region) {',
    unistr('                            region.refresh(); // Refresca la regi\00F3n completa'),
    '                        } else {',
    '                            gridWidget.model.clearChanges();',
    '                            gridWidget.model.fetchAll();',
    '                        }',
    '                    } catch(e) {',
    unistr('                        console.warn("No se pudo refrescar autom\00E1ticamente.", e);'),
    '                    }',
    '                }, 100);',
    '                ',
    '            } else {',
    '                apex.message.clearErrors();',
    '                apex.message.showErrors([{',
    '                    type: "error",',
    '                    location: ["page"],',
    '                    message: respuesta && respuesta.message ? respuesta.message : ''Error al eliminar.'',',
    '                    unsafe: false',
    '                }]);',
    '            }',
    '        },',
    '        error: function() {',
    '            apex.message.clearErrors();',
    '            apex.message.showErrors([{',
    '                type: "error",',
    '                location: ["page"],',
    '                message: ''Error al conectar con el servidor.'',',
    '                unsafe: false',
    '            }]);',
    '        }',
    '    });',
    '}, 500);')))).to_clob
,p_created_on=>wwv_flow_imp.dz('20260916195045Z')
,p_updated_on=>wwv_flow_imp.dz('20261021152522Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(29066344845497759835)
,p_process_sequence=>20
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Eliminar Productos'
,p_static_id=>'eliminar-productos'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_json clob := apex_application.g_x01;',
'    v_id number;',
'    v_count number;',
'    v_nombre varchar2(200);',
'    v_eliminados number := 0;',
'    v_no_eliminados varchar2(4000) := '''';',
'    v_mensaje varchar2(4000);',
'begin',
'    if v_json is null or v_json = ''[]'' then',
'        htp.p (''{"success":"ERROR", "message":"No hay productos seleccionados."}'');',
'        return;',
'    end if;',
'',
'    for rec in (',
'        select producto_id from json_table(v_json, ''$[*]'' columns (producto_id number path ''$''))',
'    ) loop',
'      v_id := rec.producto_id;',
'',
'      select count(*) into v_count from ventas_detalle where producto_id = v_id;',
'',
'      if v_count > 0 then',
'        select nombre into v_nombre from productos where producto_id = v_id;',
'        v_no_eliminados := v_no_eliminados || v_nombre || '' ('' || v_count || '' ventas), '';',
'      else',
'        delete from productos where producto_id = v_id;',
'        v_eliminados := v_eliminados + 1;',
'      end if;',
'     end loop;',
'',
'     if length(v_no_eliminados) > 0 then',
unistr('        v_mensaje := ''\26A0\FE0F Eliminados: '' || v_eliminados || ''. No se pudieron eliminar (tienen ventas asociadas): '' || rtrim(v_no_eliminados, '', '');'),
'     else',
unistr('        v_mensaje := ''\2705 '' || v_eliminados || '' productos(s) eliminado(s) correctamente.'';'),
'     end if;',
'',
'     HTP.P(''{"success":"OK", "message":"'' || APEX_ESCAPE.JSON(v_mensaje) || ''"}'');',
'',
'exception',
'    when others then',
unistr('        HTP.P(''{"success":"ERROR", "message":"'' || APEX_ESCAPE.JSON(''\274C Error: '' || SQLERRM) || ''"}'');'),
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>29066344845497759835
,p_created_on=>wwv_flow_imp.dz('20260916195045Z')
,p_updated_on=>wwv_flow_imp.dz('20260916205154Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(29066342880466759815)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('Guardar Productos con Validaci\00F3n')
,p_static_id=>unistr('guardar-productos-con-validaci\00F3n')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  v_json CLOB := apex_application.g_x01;',
'  v_count NUMBER;',
'  v_mensaje VARCHAR2(4000);',
'  v_estado VARCHAR2(10) := ''OK'';',
'BEGIN',
'  -- Validar que llegue el JSON',
'  IF v_json IS NULL OR v_json = ''[]'' THEN',
'    v_estado := ''ERROR'';',
'    v_mensaje := ''No hay datos para guardar.'';',
'    GOTO salida;',
'  END IF;',
'',
'  -- Recorrer los datos enviados desde JavaScript',
'  FOR rec IN (SELECT producto_id, nombre, precio, stock',
'                FROM JSON_TABLE(v_json, ''$[*]'' COLUMNS (',
'                  producto_id NUMBER PATH ''$.producto_id'',',
'                  nombre VARCHAR2(100) PATH ''$.nombre'',',
'                  precio NUMBER PATH ''$.precio'',',
'                  stock NUMBER PATH ''$.stock''',
'                ))) LOOP',
unistr('    -- Validar nombre vac\00EDo'),
'    IF rec.nombre IS NULL OR TRIM(rec.nombre) IS NULL THEN',
'      v_estado := ''ERROR'';',
unistr('      v_mensaje := ''\274C El nombre del producto no puede estar vac\00EDo.'';'),
'      GOTO salida;',
'    END IF;',
'',
'    -- Validar duplicado (excepto si es el mismo producto)',
'    SELECT COUNT(*)',
'      INTO v_count',
'      FROM productos',
'     WHERE UPPER(nombre) = UPPER(rec.nombre)',
'       AND (rec.producto_id IS NULL OR producto_id != rec.producto_id);',
'',
'    IF v_count > 0 THEN',
'      v_estado := ''ERROR'';',
unistr('      v_mensaje := ''\274C El producto "'' || rec.nombre || ''" ya existe.'';'),
'      GOTO salida;',
'    END IF;',
'',
'    -- Insertar o actualizar',
'    IF rec.producto_id IS NOT NULL THEN',
'      UPDATE productos',
'         SET nombre = rec.nombre,',
'             precio = rec.precio,',
'             stock = rec.stock',
'       WHERE producto_id = rec.producto_id;',
'    ELSE',
'      INSERT INTO productos (nombre, precio, stock)',
'      VALUES (rec.nombre, rec.precio, rec.stock);',
'    END IF;',
'  END LOOP;',
'',
unistr('  v_mensaje := ''\2705 Productos guardados correctamente.'';'),
'',
'  <<salida>>',
'  -- Generar JSON usando APEX_ESCAPE para escapar caracteres especiales',
'  HTP.P(''{"success":"'' || APEX_ESCAPE.JSON(v_estado) || ''", "message":"'' || APEX_ESCAPE.JSON(v_mensaje) || ''"}'');',
'EXCEPTION',
'  WHEN OTHERS THEN',
unistr('    HTP.P(''{"success":"ERROR", "message":"'' || APEX_ESCAPE.JSON(''\274C Error: '' || SQLERRM) || ''"}'');'),
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>29066342880466759815
,p_created_on=>wwv_flow_imp.dz('20260831204637Z')
,p_updated_on=>wwv_flow_imp.dz('20260910185232Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
end;
/
prompt --application/pages/page_00007
begin
wwv_flow_imp_page.create_page(
 p_id=>7
,p_name=>'Nueva venta'
,p_alias=>'VENTAS1'
,p_step_title=>'Ventas'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260730231011Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261019155923Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_last_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22179919686004509205)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2534890969069732905
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(11569956826024240755)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4075790987805660140
,p_created_on=>wwv_flow_imp.dz('20260730231011Z')
,p_updated_on=>wwv_flow_imp.dz('20260730231011Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22166501649845826420)
,p_plug_name=>'Cabecera de venta'
,p_static_id=>'cabecera-de-venta'
,p_title=>'Cabecera de venta'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260731002219Z')
,p_updated_on=>wwv_flow_imp.dz('20260731002219Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22166502310403826427)
,p_plug_name=>'Formulario de venta'
,p_static_id=>'formulario-de-venta'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260731002219Z')
,p_updated_on=>wwv_flow_imp.dz('20261006185323Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22166503083989826434)
,p_plug_name=>'Lista de productos agregados'
,p_static_id=>'lista_productos'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2103954283454391425
,p_plug_display_sequence=>40
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'RETURN ''SELECT seq_id AS id,',
'               c005 AS producto,',
'               c002 AS cantidad,',
'               c003 AS precio,',
'               c004 AS total_linea',
'        FROM apex_collections',
'        WHERE collection_name = ''''PRODUCTOS_TEMP''''',
'        ORDER BY seq_id'';'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P7_REDRAW'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260731002219Z')
,p_updated_on=>wwv_flow_imp.dz('20260812193344Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(22166503108241826435)
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>22166503108241826435
,p_created_on=>wwv_flow_imp.dz('20260731002219Z')
,p_updated_on=>wwv_flow_imp.dz('20260731002242Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22166504087045826444)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Cantidad'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260731002219Z')
,p_updated_on=>wwv_flow_imp.dz('20260731002219Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22166503865048826442)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260731002219Z')
,p_updated_on=>wwv_flow_imp.dz('20260731002219Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22166504174702826445)
,p_db_column_name=>'PRECIO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Precio'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260731002219Z')
,p_updated_on=>wwv_flow_imp.dz('20260731002219Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22166503947354826443)
,p_db_column_name=>'PRODUCTO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Producto'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260731002219Z')
,p_updated_on=>wwv_flow_imp.dz('20260731002219Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22166504285194826446)
,p_db_column_name=>'TOTAL_LINEA'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Total Linea'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260731002219Z')
,p_updated_on=>wwv_flow_imp.dz('20260731002219Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(22190634174665291074)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:PRODUCTO:CANTIDAD:PRECIO:TOTAL_LINEA'
,p_created_on=>wwv_flow_imp.dz('20260731002242Z')
,p_updated_on=>wwv_flow_imp.dz('20260731002242Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22166503644410826440)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(22166502310403826427)
,p_button_name=>'Agregar_producto'
,p_static_id=>'agregar-producto'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Agregar producto'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
,p_created_on=>wwv_flow_imp.dz('20260731002219Z')
,p_updated_on=>wwv_flow_imp.dz('20261019154522Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22166503720644826441)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(22166502310403826427)
,p_button_name=>'Crear_venta'
,p_static_id=>'crear-venta'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Crear venta'
,p_grid_new_row=>'Y'
,p_created_on=>wwv_flow_imp.dz('20260731002219Z')
,p_updated_on=>wwv_flow_imp.dz('20261006185323Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22166504393530826447)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_imp.id(22166502310403826427)
,p_button_name=>'Limpiar'
,p_static_id=>'limpiar'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--warning'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Limpiar'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
,p_created_on=>wwv_flow_imp.dz('20260731002219Z')
,p_updated_on=>wwv_flow_imp.dz('20261006185323Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(42625265912971567523)
,p_branch_name=>'Bloquear si caja cerrada'
,p_branch_action=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.::P10_MENSAJE_BLOQUEO:Debes abrir la caja antes de registrar ventas'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_branch_condition_type=>'NOT_EXISTS'
,p_branch_condition=>'select 1 from cierres_caja where estado = ''ABIERTO'''
,p_created_on=>wwv_flow_imp.dz('20260930000152Z')
,p_updated_on=>wwv_flow_imp.dz('20260930000739Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22166502663751826430)
,p_name=>'P7_CANTIDAD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(22166502310403826427)
,p_prompt=>'Cantidad'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260731002219Z')
,p_updated_on=>wwv_flow_imp.dz('20261006185323Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22166502194543826425)
,p_name=>'P7_FECHA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(22166501649845826420)
,p_prompt=>'Fecha'
,p_format_mask=>'DD-MON-YYYY HH24:MI:SS'
,p_source=>'sysdate'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260731002219Z')
,p_updated_on=>wwv_flow_imp.dz('20260811204822Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22166502922891826433)
,p_name=>'P7_MENSAJE_STOCK'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(22166502310403826427)
,p_prompt=>'Mensaje Stock'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260731002219Z')
,p_updated_on=>wwv_flow_imp.dz('20261006185323Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41212210088314592625)
,p_name=>'P7_METODO_PAGO'
,p_item_sequence=>15
,p_item_plug_id=>wwv_flow_imp.id(22166501649845826420)
,p_item_default=>'EFECTIVO'
,p_prompt=>'Metodo de pago'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion as display_value,',
'       codigo as return_value',
'    from metodos_pago',
'    where activo = ''S''',
'    order by orden'))
,p_cHeight=>1
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260928135052Z')
,p_updated_on=>wwv_flow_imp.dz('20260928135052Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22166502772498826431)
,p_name=>'P7_PRECIO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(22166502310403826427)
,p_prompt=>'Precio'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260731002219Z')
,p_updated_on=>wwv_flow_imp.dz('20261006185323Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22166502421169826428)
,p_name=>'P7_PRODUCTO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(22166502310403826427)
,p_prompt=>'Producto'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nombre as display_value, producto_id as return_value from productos',
'order by nombre'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- Seleccione --'
,p_cHeight=>1
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260731002219Z')
,p_updated_on=>wwv_flow_imp.dz('20261006185323Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22188220467775191108)
,p_name=>'P7_REDRAW'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(22166501649845826420)
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260731150512Z')
,p_updated_on=>wwv_flow_imp.dz('20260803195051Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22166502840735826432)
,p_name=>'P7_TOTAL_LINEA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(22166502310403826427)
,p_prompt=>'Total Linea'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260731002219Z')
,p_updated_on=>wwv_flow_imp.dz('20261006185323Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22166502234511826426)
,p_name=>'P7_TOTAL_VENTA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(22166501649845826420)
,p_prompt=>'Total Venta'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260731002219Z')
,p_updated_on=>wwv_flow_imp.dz('20260812185338Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(22188219790914191101)
,p_name=>'New'
,p_static_id=>'new'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(22166504393530826447)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_created_on=>wwv_flow_imp.dz('20260731002219Z')
,p_updated_on=>wwv_flow_imp.dz('20260801005119Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22188219811347191102)
,p_event_id=>wwv_flow_imp.id(22188219790914191101)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Limpiar formulario'
,p_static_id=>'limpiar-formulario'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'js_code', wwv_flow_string.join(wwv_flow_t_varchar2(
    '$s(''P7_PRODUCTO'', '''');',
    '$s(''P7_CANTIDAD'', '''');',
    '$s(''P7_PRECIO'', '''');',
    '$s(''P7_TOTAL_LINEA'', '''');',
    '$s(''P7_MENSAJE_STOCK'', '''');')))).to_clob
,p_created_on=>wwv_flow_imp.dz('20260731002219Z')
,p_updated_on=>wwv_flow_imp.dz('20260801005119Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(22188219984235191103)
,p_name=>'New'
,p_static_id=>'new_1'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P7_PRODUCTO'
,p_condition_element=>'P7_PRODUCTO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_created_on=>wwv_flow_imp.dz('20260731150512Z')
,p_updated_on=>wwv_flow_imp.dz('20260731150512Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22188220085529191104)
,p_event_id=>wwv_flow_imp.id(22188219984235191103)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-execute-plsql-code'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'items_to_return', 'P7_PRECIO,P7_MENSAJE_STOCK',
  'items_to_submit', 'P7_PRODUCTO',
  'language', 'PLSQL',
  'plsql_code', wwv_flow_string.join(wwv_flow_t_varchar2(
    'declare',
    '    v_precio number;',
    '    v_stock number;',
    'begin',
    '    select precio, stock into v_precio, v_stock from productos where producto_id = :P7_PRODUCTO;',
    '    :P7_PRECIO := v_precio;',
    '',
    '  if v_stock <= 0 then',
    unistr('    :P7_MENSAJE_STOCK := ''\274C Producto sin stock.'';'),
    '  elsif v_stock <= 10 then',
    unistr('    :P7_MENSAJE_STOCK := ''\26A0\FE0F Stock bajo: '' || v_stock || '' unidades.'';'),
    '  else',
    unistr('    :P7_MENSAJE_STOCK := ''\2705 Stock disponible: '' || v_stock || '' unidades.'';'),
    '  end if;',
    ' exception',
    '    when no_data_found then',
    unistr('        :P7_MENSAJE_STOCK := ''\274C Producto no encontrado.'';'),
    '    when others then',
    unistr('        :P7_MENSAJE_STOCK := ''\274C Error: '' || SQLERRM;'),
    'end;')),
  'show_processing', 'N',
  'suppress_change_event', 'N')).to_clob
,p_wait_for_result=>'Y'
,p_created_on=>wwv_flow_imp.dz('20260731150512Z')
,p_updated_on=>wwv_flow_imp.dz('20260731150512Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(22188220192790191105)
,p_name=>'New'
,p_static_id=>'new_2'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P7_CANTIDAD'
,p_condition_element=>'P7_CANTIDAD'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_created_on=>wwv_flow_imp.dz('20260731150512Z')
,p_updated_on=>wwv_flow_imp.dz('20260731150512Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22188220274159191106)
,p_event_id=>wwv_flow_imp.id(22188220192790191105)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-javascript-code'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'js_code', wwv_flow_string.join(wwv_flow_t_varchar2(
    'var qty = parseFloat($v(''P7_CANTIDAD'')) || 0;',
    'var price = parseFloat($v(''P7_PRECIO'')) || 0;',
    'var total = qty * price;',
    '$s(''P7_TOTAL_LINEA'', total.toFixed(2));')))).to_clob
,p_created_on=>wwv_flow_imp.dz('20260731150512Z')
,p_updated_on=>wwv_flow_imp.dz('20260731150512Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(22188220887960191112)
,p_name=>'New'
,p_static_id=>'new_3'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(22166503644410826440)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_created_on=>wwv_flow_imp.dz('20260731205152Z')
,p_updated_on=>wwv_flow_imp.dz('20261019155923Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22188220941756191113)
,p_event_id=>wwv_flow_imp.id(22188220887960191112)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-execute-plsql-code'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'items_to_return', 'P7_PRODUCTO, P7_CANTIDAD, P7_PRECIO, P7_TOTAL_LINEA, P7_MENSAJE_STOCK, P7_TOTAL_VENTA, P7_REDRAW',
  'items_to_submit', 'P7_PRODUCTO,P7_CANTIDAD',
  'language', 'PLSQL',
  'plsql_code', wwv_flow_string.join(wwv_flow_t_varchar2(
    'DECLARE',
    '  v_producto_id NUMBER;',
    '  v_cantidad NUMBER;',
    '  v_precio NUMBER;',
    '  v_stock NUMBER;',
    '  v_total_linea NUMBER;',
    '  v_nombre VARCHAR2(100);',
    '  v_cantidad_en_carrito NUMBER;',
    '  v_stock_disponible NUMBER;',
    'BEGIN',
    unistr('  -- 1. Validar que producto y cantidad sean v\00E1lidos'),
    '  IF :P7_PRODUCTO IS NULL OR :P7_CANTIDAD IS NULL OR :P7_CANTIDAD <= 0 THEN',
    unistr('    :P7_MENSAJE_STOCK := ''\26A0\FE0F Seleccione un producto y cantidad v\00E1lida.'';'),
    '    RETURN; ',
    '  END IF;',
    '',
    '  -- 2. Obtener datos del producto',
    '  SELECT precio, nombre, stock',
    '    INTO v_precio, v_nombre, v_stock',
    '    FROM productos',
    '   WHERE producto_id = :P7_PRODUCTO;',
    '',
    '  -- 3. VALIDAR STOCK',
    '  BEGIN',
    '    SELECT NVL(SUM(c002), 0)',
    '      INTO v_cantidad_en_carrito',
    '      FROM apex_collections',
    '     WHERE collection_name = ''PRODUCTOS_TEMP''',
    '       AND c001 = :P7_PRODUCTO;',
    '  EXCEPTION',
    '    WHEN OTHERS THEN',
    '      v_cantidad_en_carrito := 0;',
    '  END;',
    '',
    '  v_stock_disponible := v_stock - v_cantidad_en_carrito;',
    '',
    '  IF :P7_CANTIDAD > v_stock_disponible THEN',
    unistr('    :P7_MENSAJE_STOCK := ''\274C No hay stock suficiente. Solo quedan '' || v_stock_disponible || '' unidades disponibles.'';'),
    '    RETURN;',
    '  END IF;',
    '',
    unistr('  -- (El resto del c\00F3digo de agregar a la colecci\00F3n y limpiar campos se mantiene igual)'),
    '  v_producto_id := :P7_PRODUCTO;',
    '  v_cantidad := :P7_CANTIDAD;',
    '  v_total_linea := v_cantidad * v_precio;',
    '',
    '  BEGIN',
    '    APEX_COLLECTION.CREATE_COLLECTION(''PRODUCTOS_TEMP'');',
    '  EXCEPTION',
    '    WHEN OTHERS THEN',
    '      NULL;',
    '  END;',
    '',
    '  APEX_COLLECTION.ADD_MEMBER(',
    '    p_collection_name => ''PRODUCTOS_TEMP'',',
    '    p_c001 => v_producto_id,',
    '    p_c002 => v_cantidad,',
    '    p_c003 => v_precio,',
    '    p_c004 => v_total_linea,',
    '    p_c005 => v_nombre',
    '  );',
    '',
    '  :P7_PRODUCTO := NULL;',
    '  :P7_CANTIDAD := NULL;',
    '  :P7_PRECIO := NULL;',
    '  :P7_TOTAL_LINEA := NULL;',
    unistr('  :P7_MENSAJE_STOCK := NULL; -- Limpiamos el mensaje si todo sali\00F3 bien'),
    '',
    '  SELECT SUM(c004)',
    '    INTO :P7_TOTAL_VENTA',
    '    FROM apex_collections',
    '   WHERE collection_name = ''PRODUCTOS_TEMP'';',
    '',
    '  :P7_REDRAW := SYSDATE;',
    '',
    unistr('  APEX_APPLICATION.G_PRINT_SUCCESS_MESSAGE := ''\2705 Producto agregado.'';'),
    '',
    'EXCEPTION',
    '  WHEN OTHERS THEN',
    unistr('    :P7_MENSAJE_STOCK := ''\274C Error: '' || SQLERRM;'),
    'END;')),
  'show_processing', 'N',
  'suppress_change_event', 'N')).to_clob
,p_wait_for_result=>'Y'
,p_created_on=>wwv_flow_imp.dz('20260731205152Z')
,p_updated_on=>wwv_flow_imp.dz('20261019150324Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2707657823384991941)
,p_event_id=>wwv_flow_imp.id(22188220887960191112)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_static_id=>'native-javascript-code'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'js_code', wwv_flow_string.join(wwv_flow_t_varchar2(
    '// Esperamos 100ms para que APEX actualice el campo P7_MENSAJE_STOCK',
    'setTimeout(function() {',
    '    var mensajeError = apex.item(''P7_MENSAJE_STOCK'').getValue();',
    '    ',
    '    if (mensajeError && mensajeError.trim() !== '''') {',
    '        ',
    unistr('        // 1. Limpiamos cualquier error previo que est\00E9 en pantalla'),
    '        apex.message.clearErrors(); ',
    '        ',
    '        // 2. Mostramos el nuevo error',
    '        apex.message.showErrors([{',
    '            type: "error",',
    '            location: ["page"],',
    '            message: mensajeError,',
    '            unsafe: false',
    '        }]);',
    '        ',
    '        // 3. Limpiamos los campos',
    '        apex.item(''P7_MENSAJE_STOCK'').setValue('''');',
    '        apex.item(''P7_CANTIDAD'').setValue('''');',
    '    }',
    '}, 100);')))).to_clob
,p_created_on=>wwv_flow_imp.dz('20261019150324Z')
,p_updated_on=>wwv_flow_imp.dz('20261019155923Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22188221777562191121)
,p_event_id=>wwv_flow_imp.id(22188220887960191112)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_static_id=>'native-javascript-code_1'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'js_code', '$(''#R22166503083989826434_ir'').interactiveReport(''refresh'');')).to_clob
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P7_MENSAJE_STOCK'
,p_created_on=>wwv_flow_imp.dz('20260803205020Z')
,p_updated_on=>wwv_flow_imp.dz('20261019154522Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(22188221877182191122)
,p_process_sequence=>20
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Resfrescar Reporte'
,p_static_id=>'REFRESCAR_REPORTE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    null;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':REQUEST = ''REFRESCAR_REPORTE'''
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
,p_internal_uid=>22188221877182191122
,p_created_on=>wwv_flow_imp.dz('20260803205020Z')
,p_updated_on=>wwv_flow_imp.dz('20260803205651Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(22188222226312191126)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Crear venta'
,p_static_id=>'crear-venta'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  v_venta_id NUMBER;',
'  v_total_venta NUMBER := 0;',
'  v_count NUMBER := 0;',
'BEGIN',
unistr('  -- Verificar si hay productos en la colecci\00F3n'),
'  SELECT COUNT(*) INTO v_count FROM apex_collections WHERE collection_name = ''PRODUCTOS_TEMP'';',
'  ',
'  IF v_count = 0 THEN',
unistr('    APEX_APPLICATION.G_PRINT_SUCCESS_MESSAGE := ''\26A0\FE0F No hay productos agregados. Agregue al menos un producto.'';'),
'    RETURN;',
'  END IF;',
'',
unistr('  -- Insertar cabecera (CON m\00E9todo de pago)'),
'  INSERT INTO ventas_cabecera (fecha, metodo_pago, turno)',
'VALUES (',
'  SYSDATE, ',
'  NVL(:P7_METODO_PAGO, ''EFECTIVO''),',
'  NVL((SELECT turno FROM cierres_caja WHERE estado = ''ABIERTO'' AND ROWNUM = 1), ''UNICO'')',
')',
'RETURNING venta_id INTO v_venta_id;',
'',
unistr('  -- Insertar l\00EDneas desde la colecci\00F3n'),
'  FOR rec IN (SELECT c001, c002, c003, c004',
'              FROM apex_collections',
'              WHERE collection_name = ''PRODUCTOS_TEMP''',
'              ORDER BY seq_id) LOOP',
'    INSERT INTO ventas_detalle (venta_id, producto_id, cantidad, precio_unitario)',
'    VALUES (v_venta_id, rec.c001, rec.c002, rec.c003);',
'    v_total_venta := v_total_venta + rec.c004;',
'  END LOOP;',
'',
'  -- Actualizar total de la cabecera',
'  UPDATE ventas_cabecera SET total_venta = v_total_venta WHERE venta_id = v_venta_id;',
'',
unistr('  -- Limpiar colecci\00F3n'),
'  APEX_COLLECTION.DELETE_COLLECTION(''PRODUCTOS_TEMP'');',
'',
unistr('  -- Limpiar campos de la p\00E1gina'),
'  :P7_PRODUCTO := NULL;',
'  :P7_CANTIDAD := NULL;',
'  :P7_PRECIO := NULL;',
'  :P7_TOTAL_LINEA := NULL;',
'  :P7_MENSAJE_STOCK := NULL;',
'  :P7_TOTAL_VENTA := 0;',
'  :P7_REDRAW := SYSDATE;',
'  :P7_METODO_PAGO := ''EFECTIVO'';  -- Resetear al valor por defecto',
'',
unistr('  -- Mensaje de \00E9xito con el total formateado'),
unistr('  APEX_APPLICATION.G_PRINT_SUCCESS_MESSAGE := ''\2705 Venta creada con \00E9xito. Total: $'' || TO_CHAR(v_total_venta, ''999G999G999D99'');'),
'  ',
'EXCEPTION',
'  WHEN OTHERS THEN',
unistr('    APEX_APPLICATION.G_PRINT_SUCCESS_MESSAGE := ''\274C Error: '' || SQLERRM;'),
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(22166503720644826441)
,p_internal_uid=>22188222226312191126
,p_created_on=>wwv_flow_imp.dz('20260813204640Z')
,p_updated_on=>wwv_flow_imp.dz('20261009195422Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(22188221622868191120)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ResfrescarReporte'
,p_static_id=>'resfrescarreporte'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    null;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>22188221622868191120
,p_created_on=>wwv_flow_imp.dz('20260803205020Z')
,p_updated_on=>wwv_flow_imp.dz('20260803205020Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
end;
/
prompt --application/pages/page_00008
begin
wwv_flow_imp_page.create_page(
 p_id=>8
,p_name=>'Historial de ventas'
,p_alias=>'HISTORIAL-DE-VENTAS'
,p_step_title=>'Historial de ventas'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'04'
,p_created_on=>wwv_flow_imp.dz('20260814135750Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261020202006Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_last_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(29025170240047954053)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2534890969069732905
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(11569956826024240755)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4075790987805660140
,p_created_on=>wwv_flow_imp.dz('20260814135751Z')
,p_updated_on=>wwv_flow_imp.dz('20260814135751Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(29066341512544759802)
,p_plug_name=>'Ventas por periodo'
,p_static_id=>'ventas-por-periodo'
,p_title=>'Ventas por periodo'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2076152157930740558
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH meses AS (',
'  SELECT',
'    TO_CHAR(ADD_MONTHS(TO_DATE(:P8_ANIO || ''-01-01'', ''YYYY-MM-DD''), LEVEL - 1), ''MONTH'', ''NLS_DATE_LANGUAGE=SPANISH'') AS etiqueta,',
'    TO_CHAR(ADD_MONTHS(TO_DATE(:P8_ANIO || ''-01-01'', ''YYYY-MM-DD''), LEVEL - 1), ''MM'') AS orden,',
'    ADD_MONTHS(TO_DATE(:P8_ANIO || ''-01-01'', ''YYYY-MM-DD''), LEVEL - 1) AS fecha_mes',
'  FROM dual',
'  CONNECT BY LEVEL <= 12',
')',
'SELECT',
'  m.etiqueta,',
'  m.orden,',
'  NVL(SUM(v.total_venta), 0) AS total_venta',
'FROM meses m',
'LEFT JOIN ventas_cabecera v ON (',
'  TRUNC(v.fecha, ''MM'') = m.fecha_mes',
'  AND v.fecha BETWEEN TO_DATE(:P8_ANIO || ''-01-01'', ''YYYY-MM-DD'')',
'                  AND TO_DATE(:P8_ANIO || ''-12-31'', ''YYYY-MM-DD'')',
')',
'WHERE :P8_ANIO IS NOT NULL',
'GROUP BY m.etiqueta, m.orden, m.fecha_mes',
'ORDER BY m.orden;'))
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_ajax_items_to_submit=>'P8_ANIO'
,p_created_on=>wwv_flow_imp.dz('20260814202842Z')
,p_updated_on=>wwv_flow_imp.dz('20261020202006Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(29066341713253759804)
,p_region_id=>wwv_flow_imp.id(29066341512544759802)
,p_chart_type=>'bar'
,p_height=>'400'
,p_lazy_loading=>true
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_created_on=>wwv_flow_imp.dz('20260814202842Z')
,p_updated_on=>wwv_flow_imp.dz('20261020202006Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(29066341884286759805)
,p_chart_id=>wwv_flow_imp.id(29066341713253759804)
,p_static_id=>'ventas-diarias'
,p_seq=>10
,p_name=>'Ventas diarias'
,p_location=>'REGION_SOURCE'
,p_series_type=>'bar'
,p_items_value_column_name=>'TOTAL_VENTA'
,p_items_label_column_name=>'ETIQUETA'
,p_color=>'#ffd700'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_threshold_display=>'onIndicator'
,p_created_on=>wwv_flow_imp.dz('20260814202842Z')
,p_updated_on=>wwv_flow_imp.dz('20261002205058Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(29066341920600759806)
,p_chart_id=>wwv_flow_imp.id(29066341713253759804)
,p_static_id=>'x'
,p_axis=>'x'
,p_is_rendered=>'on'
,p_title=>'Mes'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_created_on=>wwv_flow_imp.dz('20260814202842Z')
,p_updated_on=>wwv_flow_imp.dz('20261020202006Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(29066342030655759807)
,p_chart_id=>wwv_flow_imp.id(29066341713253759804)
,p_static_id=>'y'
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'Total vendido'
,p_format_type=>'currency'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_created_on=>wwv_flow_imp.dz('20260814202842Z')
,p_updated_on=>wwv_flow_imp.dz('20261020202006Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(29066342716222759814)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(29066341512544759802)
,p_button_name=>'Aplicar_filtro'
,p_static_id=>'aplicar-filtro'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Aplicar filtro'
,p_grid_new_row=>'Y'
,p_created_on=>wwv_flow_imp.dz('20260818221532Z')
,p_updated_on=>wwv_flow_imp.dz('20260818221532Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29066342692834759813)
,p_name=>'P8_ANIO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(29066341512544759802)
,p_prompt=>unistr('A\00F1o')
,p_source=>'to_char(sysdate, ''YYYY'')'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct to_char(fecha, ''YYYY'') as display_value,',
'                to_char(fecha, ''YYYY'') as return_value',
'from (',
'    select fecha from ventas_cabecera',
'    union',
'    select sysdate from dual',
')',
'group by to_char(fecha, ''YYYY'')',
'order by return_value desc;'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260818221532Z')
,p_updated_on=>wwv_flow_imp.dz('20260818222838Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(29066342133414759808)
,p_name=>'New'
,p_static_id=>'new'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P8_PERIODO'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_created_on=>wwv_flow_imp.dz('20260814202842Z')
,p_updated_on=>wwv_flow_imp.dz('20260814211731Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29066342262227759809)
,p_event_id=>wwv_flow_imp.id(29066342133414759808)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-javascript-code'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'js_code', wwv_flow_string.join(wwv_flow_t_varchar2(
    'var periodo = $v(''P8_PERIODO'');',
    'var hoy = new Date();',
    'var desde = new Date(hoy);',
    'var hasta = new Date(hoy);',
    '',
    'switch (periodo) {',
    '    case ''SEMANA'':',
    '        desde.setDate(hoy.getDate() - 7);',
    '        break;',
    '    case ''MES'':',
    '        desde.setMonth(hoy.getMonth() - 1);',
    '        break;',
    unistr('    case ''A\00D1O'':'),
    '        desde.setFullYear(hoy.getFullYear() - 1);',
    '        break;',
    '    case ''PERSONALIZADO'':',
    unistr('        //Dejar los valores actuales o vac\00EDos'),
    '        return;',
    '}',
    '',
    '//Formatear fechas en DD/MM/YYYY',
    'function formatDate(date) {',
    '    var meses = [''ENE'', ''FEB'', ''MAR'', ''ABR'', ''MAY'', ''JUN'', ''JUL'', ''AGO'', ''SEP'', ''OCT'', ''NOV'', ''DEC''];',
    '    var dd = String(date.getDate()).padStart(2, ''0'');',
    '    var mm = String(date.getMonth() + 1).padStart(2, ''0'');',
    '    var yyyy = date.getFullYear();',
    '    return dd + ''-'' + mm + ''-'' + yyyy;',
    '}',
    '',
    '$s(''P8_FECHA_DESDE'', formatDate(desde));',
    '$s(''P8_FECHA_HASTA'', formatDate(hasta));')))).to_clob
,p_created_on=>wwv_flow_imp.dz('20260814202842Z')
,p_updated_on=>wwv_flow_imp.dz('20260814211731Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
end;
/
prompt --application/pages/page_00009
begin
wwv_flow_imp_page.create_page(
 p_id=>9
,p_name=>'Reporte de Ventas'
,p_alias=>'REPORTE-DE-VENTAS'
,p_step_title=>'Reporte de Ventas'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3748731866027892630)
,p_protection_level=>'C'
,p_page_component_map=>'23'
,p_created_on=>wwv_flow_imp.dz('20260924184955Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261021134139Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_last_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41209927479245636092)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2534890969069732905
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(11569956826024240755)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4075790987805660140
,p_created_on=>wwv_flow_imp.dz('20260924184956Z')
,p_updated_on=>wwv_flow_imp.dz('20260924184956Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2707656353423991926)
,p_plug_name=>'Header - Detalle'
,p_static_id=>'header-detalle'
,p_region_css_classes=>'sec-detalle'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4504868307683981366
,p_plug_display_sequence=>29
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="background: linear-gradient(90deg, #50C878 0%, #2E8B57 100%); ',
'            padding: 15px 25px; border-radius: 8px; margin: 20px 0 10px 0;',
'            display: flex; align-items: center; gap: 15px;',
'            box-shadow: 0 3px 8px rgba(0,0,0,0.2);">',
unistr('  <div style="font-size: 2rem; line-height: 1;">\D83D\DCCB</div>'),
'  <div style="flex: 1;">',
'    <h2 style="margin: 0; color: #ffffff; font-size: 1.3rem; font-weight: 700;">',
'      Detalle de Ventas',
'    </h2>',
'    <p style="margin: 3px 0 0 0; color: #d0f0dc; font-size: 0.9rem;">',
unistr('      Cada venta registrada en el per\00EDodo'),
'    </p>',
'  </div>',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261014185646Z')
,p_updated_on=>wwv_flow_imp.dz('20261014185646Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2707656083743991923)
,p_plug_name=>'Header - Filtros'
,p_static_id=>'header-filtros'
,p_region_css_classes=>'sec-filtros'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4504868307683981366
,p_plug_display_sequence=>5
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="background: linear-gradient(90deg, #95A5A6 0%, #566573 100%); ',
'            padding: 15px 25px; border-radius: 8px; margin: 20px 0 10px 0;',
'            display: flex; align-items: center; gap: 15px;',
'            box-shadow: 0 3px 8px rgba(0,0,0,0.2);">',
unistr('  <div style="font-size: 2rem; line-height: 1;">\D83D\DD0D</div>'),
'  <div style="flex: 1;">',
'    <h2 style="margin: 0; color: #ffffff; font-size: 1.3rem; font-weight: 700;">',
'      Filtros del Reporte',
'    </h2>',
'    <p style="margin: 3px 0 0 0; color: #e0e0e0; font-size: 0.9rem;">',
unistr('      Eleg\00ED el per\00EDodo y m\00E9todo de pago'),
'    </p>',
'  </div>',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261014185646Z')
,p_updated_on=>wwv_flow_imp.dz('20261014185646Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2707656109383991924)
,p_plug_name=>'Header - KPIs'
,p_static_id=>'header-kpis'
,p_region_css_classes=>'sec-kpis'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4504868307683981366
,p_plug_display_sequence=>15
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="background: linear-gradient(90deg, #4A90E2 0%, #2E5C9E 100%); ',
'            padding: 15px 25px; border-radius: 8px; margin: 20px 0 10px 0;',
'            display: flex; align-items: center; gap: 15px;',
'            box-shadow: 0 3px 8px rgba(0,0,0,0.2);">',
unistr('  <div style="font-size: 2rem; line-height: 1;">\D83D\DCCA</div>'),
'  <div style="flex: 1;">',
'    <h2 style="margin: 0; color: #ffffff; font-size: 1.3rem; font-weight: 700;">',
unistr('      KPIs del Per\00EDodo'),
'    </h2>',
'    <p style="margin: 3px 0 0 0; color: #c8d9f0; font-size: 0.9rem;">',
unistr('      Resumen general del per\00EDodo filtrado'),
'    </p>',
'  </div>',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261014185646Z')
,p_updated_on=>wwv_flow_imp.dz('20261014185646Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2707656401587991927)
,p_plug_name=>'Header - Productos vendidos'
,p_static_id=>'header-productos-vendidos'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4504868307683981366
,p_plug_display_sequence=>35
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="background: linear-gradient(90deg, #9B59B6 0%, #6C3483 100%); ',
'            padding: 15px 25px; border-radius: 8px; margin: 20px 0 10px 0;',
'            display: flex; align-items: center; gap: 15px;',
'            box-shadow: 0 3px 8px rgba(0,0,0,0.2);">',
unistr('  <div style="font-size: 2rem; line-height: 1;">\D83D\DED2</div>'),
'  <div style="flex: 1;">',
'    <h2 style="margin: 0; color: #ffffff; font-size: 1.3rem; font-weight: 700;">',
'      Productos Vendidos',
'    </h2>',
'    <p style="margin: 3px 0 0 0; color: #e8d5f0; font-size: 0.9rem;">',
'      Ranking de productos por unidades vendidas',
'    </p>',
'  </div>',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261014185646Z')
,p_updated_on=>wwv_flow_imp.dz('20261014185646Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2707656287475991925)
,p_plug_name=>'Header - Tendencia'
,p_static_id=>'header-tendencia'
,p_region_css_classes=>'sec-tendencia'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4504868307683981366
,p_plug_display_sequence=>24
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="background: linear-gradient(90deg, #F5A623 0%, #B8720E 100%); ',
'            padding: 15px 25px; border-radius: 8px; margin: 20px 0 10px 0;',
'            display: flex; align-items: center; gap: 15px;',
'            box-shadow: 0 3px 8px rgba(0,0,0,0.2);">',
unistr('  <div style="font-size: 2rem; line-height: 1;">\D83D\DCC8</div>'),
'  <div style="flex: 1;">',
'    <h2 style="margin: 0; color: #ffffff; font-size: 1.3rem; font-weight: 700;">',
'      Tendencia Diaria',
'    </h2>',
'    <p style="margin: 3px 0 0 0; color: #ffe8c8; font-size: 0.9rem;">',
unistr('      Evoluci\00F3n de las ventas d\00EDa a d\00EDa'),
'    </p>',
'  </div>',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261014185646Z')
,p_updated_on=>wwv_flow_imp.dz('20261014185646Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41212208370392592608)
,p_plug_name=>'Detalle de ventas'
,p_static_id=>'sec-detalle'
,p_region_css_classes=>'sec-detalle'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2103954283454391425
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT c.venta_id,',
'       TO_CHAR(c.fecha, ''DD/MM/YYYY HH24:MI'') AS fecha,',
'       (SELECT COUNT(*) FROM ventas_detalle d WHERE d.venta_id = c.venta_id) AS productos,',
'       c.total_venta,',
'       c.metodo_pago',
'  FROM ventas_cabecera c',
' WHERE TRUNC(c.fecha) BETWEEN ',
'       TO_DATE(SUBSTR(:P9_FECHA_DESDE, 1, 10), CASE WHEN INSTR(:P9_FECHA_DESDE, ''/'') > 0 THEN ''DD/MM/YYYY'' ELSE ''YYYY-MM-DD'' END)',
'   AND TO_DATE(SUBSTR(:P9_FECHA_HASTA, 1, 10), CASE WHEN INSTR(:P9_FECHA_HASTA, ''/'') > 0 THEN ''DD/MM/YYYY'' ELSE ''YYYY-MM-DD'' END)',
'    and (:P9_METODO_PAGO = ''TODOS'' or c.metodo_pago = :P9_METODO_PAGO)',
' ORDER BY c.fecha DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P9_FECHA_DESDE,P9_FECHA_HASTA'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260924214839Z')
,p_updated_on=>wwv_flow_imp.dz('20261021134139Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(41212208407968592609)
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>41212208407968592609
,p_created_on=>wwv_flow_imp.dz('20260924214839Z')
,p_updated_on=>wwv_flow_imp.dz('20261020203841Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41212208648151592611)
,p_db_column_name=>'FECHA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Fecha'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260924214839Z')
,p_updated_on=>wwv_flow_imp.dz('20260924214839Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41212210162749592626)
,p_db_column_name=>'METODO_PAGO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Metodo Pago'
,p_column_html_expression=>'<span class="t-badge">#METODO_PAGO#</span>'
,p_column_type=>'STRING'
,p_css_classes=>'u-textCenter'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260928185117Z')
,p_updated_on=>wwv_flow_imp.dz('20260928185117Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41212208746058592612)
,p_db_column_name=>'PRODUCTOS'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Productos'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260924214839Z')
,p_updated_on=>wwv_flow_imp.dz('20260924214839Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41212208853526592613)
,p_db_column_name=>'TOTAL_VENTA'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Total Venta'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'$999G999G999G990D00'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260924214839Z')
,p_updated_on=>wwv_flow_imp.dz('20260924214839Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41212208574297592610)
,p_db_column_name=>'VENTA_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Venta Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260924214839Z')
,p_updated_on=>wwv_flow_imp.dz('20261020203841Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(41339575011373443639)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'VENTA_ID:FECHA:PRODUCTOS:TOTAL_VENTA'
,p_created_on=>wwv_flow_imp.dz('20260925024514Z')
,p_updated_on=>wwv_flow_imp.dz('20260925024514Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41212207635523592601)
,p_plug_name=>'Filtros'
,p_static_id=>'sec-filtros'
,p_region_css_classes=>'sec-filtros'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2076152157930740558
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260924214839Z')
,p_updated_on=>wwv_flow_imp.dz('20261014143220Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41212208050179592605)
,p_plug_name=>unistr('Resumen del per\00EDodo')
,p_static_id=>'sec-kpis'
,p_region_css_classes=>'sec-kpis'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2076152157930740558
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
unistr('  ''\D83D\DCB0 Total vendido'' AS titulo,'),
'  CASE',
'    WHEN COUNT(*) = 0 THEN ''Sin ventas''',
'    ELSE TO_CHAR(NVL(SUM(c.total_venta), 0), ''FML999G999G999G990D00'')',
'  END AS valor,',
unistr('  ''Per\00EDodo filtrado'' AS detalle'),
'  FROM ventas_cabecera c',
' WHERE TRUNC(c.fecha) BETWEEN ',
'       TO_DATE(:P9_FECHA_DESDE, CASE WHEN INSTR(:P9_FECHA_DESDE, ''/'') > 0 THEN ''DD/MM/YYYY'' ELSE ''YYYY-MM-DD'' END) ',
'   AND TO_DATE(:P9_FECHA_HASTA, CASE WHEN INSTR(:P9_FECHA_HASTA, ''/'') > 0 THEN ''DD/MM/YYYY'' ELSE ''YYYY-MM-DD'' END)',
'   AND (:P9_METODO_PAGO = ''TODOS'' OR c.metodo_pago = :P9_METODO_PAGO)',
'',
'UNION ALL',
'',
'SELECT',
unistr('  ''\D83D\DED2 Cantidad de ventas'','),
'  TO_CHAR(COUNT(*)),',
unistr('  ''Per\00EDodo filtrado'''),
'  FROM ventas_cabecera c',
' WHERE TRUNC(c.fecha) BETWEEN ',
'       TO_DATE(:P9_FECHA_DESDE, CASE WHEN INSTR(:P9_FECHA_DESDE, ''/'') > 0 THEN ''DD/MM/YYYY'' ELSE ''YYYY-MM-DD'' END) ',
'   AND TO_DATE(:P9_FECHA_HASTA, CASE WHEN INSTR(:P9_FECHA_HASTA, ''/'') > 0 THEN ''DD/MM/YYYY'' ELSE ''YYYY-MM-DD'' END)',
'   AND (:P9_METODO_PAGO = ''TODOS'' OR c.metodo_pago = :P9_METODO_PAGO)',
'',
'UNION ALL',
'',
'SELECT',
unistr('  ''\D83D\DCC8 Ticket promedio'','),
'  CASE',
'    WHEN COUNT(*) = 0 THEN ''Sin datos''',
'    ELSE TO_CHAR(NVL(AVG(c.total_venta), 0), ''FML999G999G999G990D00'')',
'  END,',
unistr('  ''Per\00EDodo filtrado'''),
'  FROM ventas_cabecera c',
' WHERE TRUNC(c.fecha) BETWEEN ',
'       TO_DATE(:P9_FECHA_DESDE, CASE WHEN INSTR(:P9_FECHA_DESDE, ''/'') > 0 THEN ''DD/MM/YYYY'' ELSE ''YYYY-MM-DD'' END) ',
'   AND TO_DATE(:P9_FECHA_HASTA, CASE WHEN INSTR(:P9_FECHA_HASTA, ''/'') > 0 THEN ''DD/MM/YYYY'' ELSE ''YYYY-MM-DD'' END)',
'   AND (:P9_METODO_PAGO = ''TODOS'' OR c.metodo_pago = :P9_METODO_PAGO)',
'',
'UNION ALL',
'',
'SELECT',
unistr('  ''\D83D\DCCA vs per\00EDodo anterior'','),
'  CASE',
'    WHEN total_prev = 0 AND total_act = 0 THEN ''Sin datos''',
unistr('    WHEN total_prev = 0 THEN ''+100.0% \2191'''),
'    ELSE',
'      CASE',
'        WHEN (total_act - total_prev) >= 0',
unistr('          THEN ''+'' || TO_CHAR(((total_act - total_prev) / total_prev) * 100, ''990D0'') || ''% \2191'''),
'        ELSE',
unistr('          TO_CHAR(((total_act - total_prev) / total_prev) * 100, ''990D0'') || ''% \2193'''),
'      END',
'  END AS valor,',
'  ''Antes: '' || TO_CHAR(total_prev, ''FML999G999G999G990D00'') AS detalle',
'  FROM (',
'    SELECT',
'      (SELECT NVL(SUM(total_venta), 0) FROM ventas_cabecera',
'        WHERE TRUNC(fecha) BETWEEN ',
'              TO_DATE(:P9_FECHA_DESDE, CASE WHEN INSTR(:P9_FECHA_DESDE, ''/'') > 0 THEN ''DD/MM/YYYY'' ELSE ''YYYY-MM-DD'' END) ',
'          AND TO_DATE(:P9_FECHA_HASTA, CASE WHEN INSTR(:P9_FECHA_HASTA, ''/'') > 0 THEN ''DD/MM/YYYY'' ELSE ''YYYY-MM-DD'' END)',
'          AND (:P9_METODO_PAGO = ''TODOS'' OR metodo_pago = :P9_METODO_PAGO)) AS total_act,',
'      (SELECT NVL(SUM(total_venta), 0) FROM ventas_cabecera',
'        WHERE TRUNC(fecha) BETWEEN ',
'              TO_DATE(:P9_FECHA_DESDE, CASE WHEN INSTR(:P9_FECHA_DESDE, ''/'') > 0 THEN ''DD/MM/YYYY'' ELSE ''YYYY-MM-DD'' END)',
'                                 - (TO_DATE(:P9_FECHA_HASTA, CASE WHEN INSTR(:P9_FECHA_HASTA, ''/'') > 0 THEN ''DD/MM/YYYY'' ELSE ''YYYY-MM-DD'' END) - TO_DATE(:P9_FECHA_DESDE, CASE WHEN INSTR(:P9_FECHA_DESDE, ''/'') > 0 THEN ''DD/MM/YYYY'' ELSE ''YYYY-MM-DD'' E'
||'ND) + 1)',
'                               AND TO_DATE(:P9_FECHA_DESDE, CASE WHEN INSTR(:P9_FECHA_DESDE, ''/'') > 0 THEN ''DD/MM/YYYY'' ELSE ''YYYY-MM-DD'' END) - 1',
'          AND (:P9_METODO_PAGO = ''TODOS'' OR metodo_pago = :P9_METODO_PAGO)) AS total_prev',
'      FROM dual',
'  )',
'',
'UNION ALL',
'',
'SELECT',
unistr('  ''\D83D\DCB5 Efectivo'','),
'  CASE',
'    WHEN COUNT(*) = 0 THEN ''$0.00''',
'    ELSE TO_CHAR(NVL(SUM(c.total_venta), 0), ''FML999G999G999G990D00'')',
'  END,',
unistr('  ''Per\00EDodo filtrado'''),
'  FROM ventas_cabecera c',
' WHERE TRUNC(c.fecha) BETWEEN ',
'       TO_DATE(:P9_FECHA_DESDE, CASE WHEN INSTR(:P9_FECHA_DESDE, ''/'') > 0 THEN ''DD/MM/YYYY'' ELSE ''YYYY-MM-DD'' END) ',
'   AND TO_DATE(:P9_FECHA_HASTA, CASE WHEN INSTR(:P9_FECHA_HASTA, ''/'') > 0 THEN ''DD/MM/YYYY'' ELSE ''YYYY-MM-DD'' END)',
'   AND c.metodo_pago = ''EFECTIVO''',
'',
'UNION ALL',
'',
'SELECT',
unistr('  ''\D83D\DCB3 Tarjeta (d\00E9bito/cr\00E9dito)'','),
'  CASE',
'    WHEN COUNT(*) = 0 THEN ''$0.00''',
'    ELSE TO_CHAR(NVL(SUM(c.total_venta), 0), ''FML999G999G999G990D00'')',
'  END,',
unistr('  ''Per\00EDodo filtrado'''),
'  FROM ventas_cabecera c',
' WHERE TRUNC(c.fecha) BETWEEN ',
'       TO_DATE(:P9_FECHA_DESDE, CASE WHEN INSTR(:P9_FECHA_DESDE, ''/'') > 0 THEN ''DD/MM/YYYY'' ELSE ''YYYY-MM-DD'' END) ',
'   AND TO_DATE(:P9_FECHA_HASTA, CASE WHEN INSTR(:P9_FECHA_HASTA, ''/'') > 0 THEN ''DD/MM/YYYY'' ELSE ''YYYY-MM-DD'' END)',
'   AND c.metodo_pago IN (''DEBITO'', ''CREDITO'')',
'',
'UNION ALL',
'',
'SELECT',
unistr('  ''\D83D\DCF1 Transferencia / QR'','),
'  CASE',
'    WHEN COUNT(*) = 0 THEN ''$0.00''',
'    ELSE TO_CHAR(NVL(SUM(c.total_venta), 0), ''FML999G999G999G990D00'')',
'  END,',
unistr('  ''Per\00EDodo filtrado'''),
'  FROM ventas_cabecera c',
' WHERE TRUNC(c.fecha) BETWEEN ',
'       TO_DATE(:P9_FECHA_DESDE, CASE WHEN INSTR(:P9_FECHA_DESDE, ''/'') > 0 THEN ''DD/MM/YYYY'' ELSE ''YYYY-MM-DD'' END) ',
'   AND TO_DATE(:P9_FECHA_HASTA, CASE WHEN INSTR(:P9_FECHA_HASTA, ''/'') > 0 THEN ''DD/MM/YYYY'' ELSE ''YYYY-MM-DD'' END)',
'   AND c.metodo_pago IN (''TRANSFERENCIA'', ''QR'');'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_ajax_items_to_submit=>'P9_FECHA_DESDE,P9_FECHA_HASTA'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_created_on=>wwv_flow_imp.dz('20260924214839Z')
,p_updated_on=>wwv_flow_imp.dz('20261020212043Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(41212208244364592607)
,p_region_id=>wwv_flow_imp.id(41212208050179592605)
,p_layout_type=>'GRID'
,p_grid_column_count=>4
,p_title_adv_formatting=>false
,p_title_column_name=>'TITULO'
,p_sub_title_adv_formatting=>false
,p_sub_title_column_name=>'DETALLE'
,p_body_adv_formatting=>false
,p_body_column_name=>'VALOR'
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
,p_updated_on=>wwv_flow_imp.dz('20260928124524Z')
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41212209098230592615)
,p_plug_name=>unistr('Productos vendidos en el per\00EDodo')
,p_static_id=>'sec-productos'
,p_region_css_classes=>'sec-productos'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2103954283454391425
,p_plug_display_sequence=>40
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT p.nombre AS producto,',
'       SUM(d.cantidad) AS unidades_vendidas,',
'       TO_CHAR(SUM(d.total_linea), ''FML999G999G999G990D00'') AS total_vendido',
'  FROM ventas_detalle d',
'  JOIN ventas_cabecera c ON c.venta_id = d.venta_id',
'  JOIN productos p ON p.producto_id = d.producto_id',
' WHERE TRUNC(c.fecha) BETWEEN ',
'       TO_DATE(SUBSTR(:P9_FECHA_DESDE, 1, 10), CASE WHEN INSTR(:P9_FECHA_DESDE, ''/'') > 0 THEN ''DD/MM/YYYY'' ELSE ''YYYY-MM-DD'' END)',
'   AND TO_DATE(SUBSTR(:P9_FECHA_HASTA, 1, 10), CASE WHEN INSTR(:P9_FECHA_HASTA, ''/'') > 0 THEN ''DD/MM/YYYY'' ELSE ''YYYY-MM-DD'' END)',
'    and (:P9_METODO_PAGO = ''TODOS'' or c.metodo_pago = :P9_METODO_PAGO)',
' GROUP BY p.nombre',
' ORDER BY SUM(d.cantidad) DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P9_FECHA_DESDE,P9_FECHA_HASTA,P9_METODO_PAGO'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260924214839Z')
,p_updated_on=>wwv_flow_imp.dz('20261021134139Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(41212209196516592616)
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>41212209196516592616
,p_created_on=>wwv_flow_imp.dz('20260924214839Z')
,p_updated_on=>wwv_flow_imp.dz('20261020203841Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41212209220620592617)
,p_db_column_name=>'PRODUCTO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Producto'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260924214839Z')
,p_updated_on=>wwv_flow_imp.dz('20260924214839Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41212209437809592619)
,p_db_column_name=>'TOTAL_VENDIDO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Total Vendido'
,p_column_type=>'STRING'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260924214839Z')
,p_updated_on=>wwv_flow_imp.dz('20261020203841Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41212209300882592618)
,p_db_column_name=>'UNIDADES_VENDIDAS'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Unidades Vendidas'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260924214839Z')
,p_updated_on=>wwv_flow_imp.dz('20260924214839Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(41339575529964443648)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PRODUCTO:UNIDADES_VENDIDAS:TOTAL_VENDIDO'
,p_created_on=>wwv_flow_imp.dz('20260925024514Z')
,p_updated_on=>wwv_flow_imp.dz('20260925024514Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41212209597164592620)
,p_plug_name=>'Tendencia diaria'
,p_static_id=>'sec-tendencia'
,p_region_css_classes=>'sec-tendencia'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4504868307683981366
,p_plug_display_sequence=>25
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(trunc(c.fecha), ''DD/MM'') as dia,',
'       trunc(c.fecha) as fecha_orden,',
'       sum(c.total_venta) as total',
'from ventas_cabecera c',
'where trunc(c.fecha) BETWEEN ',
'      TO_DATE(SUBSTR(:P9_FECHA_DESDE, 1, 10), CASE WHEN INSTR(:P9_FECHA_DESDE, ''/'') > 0 THEN ''DD/MM/YYYY'' ELSE ''YYYY-MM-DD'' END)',
'  AND TO_DATE(SUBSTR(:P9_FECHA_HASTA, 1, 10), CASE WHEN INSTR(:P9_FECHA_HASTA, ''/'') > 0 THEN ''DD/MM/YYYY'' ELSE ''YYYY-MM-DD'' END)',
'and (:P9_METODO_PAGO = ''TODOS'' or c.metodo_pago = :P9_METODO_PAGO)',
'group by trunc(c.fecha)',
'order by trunc(c.fecha)'))
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_ajax_items_to_submit=>'P9_FECHA_DESDE,P9_FECHA_HASTA,P9_METODO_PAGO'
,p_created_on=>wwv_flow_imp.dz('20260925232546Z')
,p_updated_on=>wwv_flow_imp.dz('20261021134139Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(41212209678745592621)
,p_region_id=>wwv_flow_imp.id(41212209597164592620)
,p_chart_type=>'area'
,p_height=>'400'
,p_lazy_loading=>true
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_created_on=>wwv_flow_imp.dz('20260925232546Z')
,p_updated_on=>wwv_flow_imp.dz('20261002205129Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(41212209709735592622)
,p_chart_id=>wwv_flow_imp.id(41212209678745592621)
,p_static_id=>'new'
,p_seq=>10
,p_name=>'Ventas diarias'
,p_location=>'REGION_SOURCE'
,p_series_type=>'area'
,p_items_value_column_name=>'TOTAL'
,p_items_label_column_name=>'DIA'
,p_color=>'#ffd700'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_threshold_display=>'onIndicator'
,p_created_on=>wwv_flow_imp.dz('20260925232546Z')
,p_updated_on=>wwv_flow_imp.dz('20261002205129Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(41212209894926592623)
,p_chart_id=>wwv_flow_imp.id(41212209678745592621)
,p_static_id=>'x'
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_created_on=>wwv_flow_imp.dz('20260925232546Z')
,p_updated_on=>wwv_flow_imp.dz('20260925232546Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(41212209983507592624)
,p_chart_id=>wwv_flow_imp.id(41212209678745592621)
,p_static_id=>'y'
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'Total'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_created_on=>wwv_flow_imp.dz('20260925232546Z')
,p_updated_on=>wwv_flow_imp.dz('20260925232546Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2707655639414991919)
,p_plug_name=>unistr('\00CDndice Reportes Ventas')
,p_static_id=>unistr('\00EDndice-reportes-ventas')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4504868307683981366
,p_plug_display_sequence=>1
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="background: #1e1e1e; padding: 20px 25px; border-radius: 10px; ',
'            margin-bottom: 20px; border-left: 4px solid #50C878;',
'            box-shadow: 0 3px 8px rgba(0,0,0,0.2);">',
'  ',
'  <h3 style="margin: 0 0 15px 0; color: #ffffff; font-size: 1.1rem; font-weight: 600;">',
unistr('    \D83D\DCD1 \00CDndice del Reporte'),
'  </h3>',
'  ',
'  <div style="display: flex; flex-wrap: wrap; gap: 10px;">',
'    ',
'    <a href="javascript:void(0);" onclick="var el=document.querySelector(''.sec-filtros''); if(el) el.scrollIntoView({behavior:''smooth'',block:''start''});" ',
'       style="background: #95A5A6; color: #fff; padding: 8px 16px; border-radius: 20px; ',
'              text-decoration: none; font-size: 0.85rem; font-weight: 500; cursor: pointer;">',
unistr('      \D83D\DD0D Filtros'),
'    </a>',
'    ',
'    <a href="javascript:void(0);" onclick="var el=document.querySelector(''.sec-kpis''); if(el) el.scrollIntoView({behavior:''smooth'',block:''start''});" ',
'       style="background: #4A90E2; color: #fff; padding: 8px 16px; border-radius: 20px; ',
'              text-decoration: none; font-size: 0.85rem; font-weight: 500; cursor: pointer;">',
unistr('      \D83D\DCCA KPIs del Per\00EDodo'),
'    </a>',
'    ',
'    <a href="javascript:void(0);" onclick="var el=document.querySelector(''.sec-tendencia''); if(el) el.scrollIntoView({behavior:''smooth'',block:''start''});" ',
'       style="background: #F5A623; color: #fff; padding: 8px 16px; border-radius: 20px; ',
'              text-decoration: none; font-size: 0.85rem; font-weight: 500; cursor: pointer;">',
unistr('      \D83D\DCC8 Tendencia Diaria'),
'    </a>',
'    ',
'    <a href="javascript:void(0);" onclick="var el=document.querySelector(''.sec-detalle''); if(el) el.scrollIntoView({behavior:''smooth'',block:''start''});" ',
'       style="background: #50C878; color: #fff; padding: 8px 16px; border-radius: 20px; ',
'              text-decoration: none; font-size: 0.85rem; font-weight: 500; cursor: pointer;">',
unistr('      \D83D\DCCB Detalle de Ventas'),
'    </a>',
'    ',
'    <a href="javascript:void(0);" onclick="var el=document.querySelector(''.sec-productos''); if(el) el.scrollIntoView({behavior:''smooth'',block:''start''});" ',
'       style="background: #9B59B6; color: #fff; padding: 8px 16px; border-radius: 20px; ',
'              text-decoration: none; font-size: 0.85rem; font-weight: 500; cursor: pointer;">',
unistr('      \D83D\DED2 Productos Vendidos'),
'    </a>',
'    ',
'  </div>',
'  ',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261014142811Z')
,p_updated_on=>wwv_flow_imp.dz('20261014142811Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(41212207965745592604)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(41212207635523592601)
,p_button_name=>'APLICAR_FILTRO'
,p_static_id=>'aplicar-filtro'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Aplicar filtro'
,p_grid_new_row=>'Y'
,p_created_on=>wwv_flow_imp.dz('20260924214839Z')
,p_updated_on=>wwv_flow_imp.dz('20260924214839Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41212207715691592602)
,p_name=>'P9_FECHA_DESDE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(41212207635523592601)
,p_item_default=>'TO_CHAR(TRUNC(SYSDATE) - 30, ''DD/MM/YYYY'')'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Desde'
,p_format_mask=>'DD/MM/YYYY'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260924214839Z')
,p_updated_on=>wwv_flow_imp.dz('20261020203841Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41212207853751592603)
,p_name=>'P9_FECHA_HASTA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(41212207635523592601)
,p_item_default=>'TO_CHAR(SYSDATE, ''DD/MM/YYYY'')'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Hasta'
,p_format_mask=>'DD/MM/YYYY'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260924214839Z')
,p_updated_on=>wwv_flow_imp.dz('20261020203841Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41212210262861592627)
,p_name=>'P9_METODO_PAGO'
,p_item_sequence=>15
,p_item_plug_id=>wwv_flow_imp.id(41212207635523592601)
,p_item_default=>'TODOS'
,p_prompt=>unistr('M\00E9todo de pago')
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select display_value, return_value',
'from(',
unistr('    select ''Todos los m\00E9todos'' as display_value, ''TODOS'' as return_value, 0 as orden from dual'),
'    union all',
'    select descripcion, codigo, orden from metodos_pago where activo = ''S'')',
'order by orden'))
,p_cHeight=>1
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260928185117Z')
,p_updated_on=>wwv_flow_imp.dz('20260928190312Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
end;
/
prompt --application/pages/page_00010
begin
wwv_flow_imp_page.create_page(
 p_id=>10
,p_name=>'Cierre de caja'
,p_alias=>'CIERRE-DE-CAJA'
,p_step_title=>'Cierre de caja'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'23'
,p_created_on=>wwv_flow_imp.dz('20260929144420Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261020135456Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_last_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(42625266134901567525)
,p_plug_name=>'Alerta de bloqueo'
,p_static_id=>'alerta-de-bloqueo'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>1
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source=>unistr('<div style="padding: 15px; background-color: #fff3cd; border: 1px solid #ffc107; border-radios: 4px; color: #856404; font-weight: 500; font-size: 14px">\26A0\FE0F &P10_MENSAJE_BLOQUEO.</div>')
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P10_MENSAJE_BLOQUEO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260930002033Z')
,p_updated_on=>wwv_flow_imp.dz('20260930002033Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41212211828967592643)
,p_plug_name=>'Apertura de caja'
,p_static_id=>'apertura-de-caja'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>15
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_display_condition_type=>'NOT_EXISTS'
,p_plug_display_when_condition=>'select 1 from cierres_caja where estado = ''ABIERTO'''
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260929182303Z')
,p_updated_on=>wwv_flow_imp.dz('20260929182303Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(42561055284312318157)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2534890969069732905
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(11569956826024240755)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4075790987805660140
,p_created_on=>wwv_flow_imp.dz('20260929144420Z')
,p_updated_on=>wwv_flow_imp.dz('20260929144420Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41212212290622592647)
,p_plug_name=>'Cerrar caja'
,p_static_id=>'cerrar-caja'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>135
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>'select 1 from cierres_caja where estado = ''ABIERTO'''
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260929182303Z')
,p_updated_on=>wwv_flow_imp.dz('20260929182303Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41212211689984592641)
,p_plug_name=>'Estado de la caja'
,p_static_id=>'estado-de-la-caja'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2076152157930740558
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
unistr('  ''\D83D\DD50 Turno'' AS titulo,'),
'  NVL(MAX(c.turno), ''Sin abrir'') AS valor,',
'  ''Estado: '' || NVL(MAX(c.estado), ''CERRADA'') AS detalle',
'  FROM cierres_caja c',
' WHERE c.estado = ''ABIERTO''',
'UNION ALL',
'SELECT',
unistr('  ''\D83D\DCB5 Ventas efectivo'','),
'  TO_CHAR(NVL(MAX((SELECT SUM(v.total_venta) FROM ventas_cabecera v',
'                    WHERE v.fecha >= c.fecha_apertura ',
'                      AND v.metodo_pago = ''EFECTIVO'')), 0), ''FML999G999G999G990D00''),',
'  ''Del turno actual''',
'  FROM cierres_caja c',
' WHERE c.estado = ''ABIERTO''',
'UNION ALL',
'SELECT',
unistr('  ''\D83D\DCB8 Retiros + Gastos'','),
'  TO_CHAR(NVL(MAX((SELECT SUM(m.monto) FROM movimientos_caja m',
'                    WHERE m.cierre_id = c.cierre_id ',
'                      AND m.tipo IN (''RETIRO'', ''GASTO''))), 0), ''FML999G999G999G990D00''),',
'  ''Del turno actual''',
'  FROM cierres_caja c',
' WHERE c.estado = ''ABIERTO''',
'UNION ALL',
'SELECT',
unistr('  ''\D83D\DCB0 Efectivo esperado'','),
'  TO_CHAR(',
'    NVL(MAX(c.monto_inicial), 0) ',
'    + NVL(MAX((SELECT SUM(v.total_venta) FROM ventas_cabecera v',
'                WHERE v.fecha >= c.fecha_apertura ',
'                  AND v.metodo_pago = ''EFECTIVO'')), 0)',
'    - NVL(MAX((SELECT SUM(m.monto) FROM movimientos_caja m',
'                WHERE m.cierre_id = c.cierre_id ',
'                  AND m.tipo IN (''RETIRO'', ''GASTO''))), 0),',
'    ''FML999G999G999G990D00''),',
'  ''Del turno actual''',
'  FROM cierres_caja c',
' WHERE c.estado = ''ABIERTO'''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_created_on=>wwv_flow_imp.dz('20260929182303Z')
,p_updated_on=>wwv_flow_imp.dz('20261002130406Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(41212211725095592642)
,p_region_id=>wwv_flow_imp.id(41212211689984592641)
,p_layout_type=>'GRID'
,p_grid_column_count=>4
,p_title_adv_formatting=>false
,p_title_column_name=>'TITULO'
,p_sub_title_adv_formatting=>false
,p_sub_title_column_name=>'DETALLE'
,p_body_adv_formatting=>false
,p_body_column_name=>'VALOR'
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
,p_updated_on=>wwv_flow_imp.dz('20260929182303Z')
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41212212300720592648)
,p_plug_name=>'Historial de cierres'
,p_static_id=>'historial-de-cierres'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2103954283454391425
,p_plug_display_sequence=>145
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cierre_id,',
'       to_char(fecha_apertura, ''DD/MM/YYYY'') as fecha,',
'       turno,',
'       to_char(monto_inicial, ''FML999G999G999G990D00'') as inicial,',
'       to_char(efectivo_esperado, ''FML999G999G999G990D00'') as esperado,',
'       to_char(efectivo_contado, ''FML999G999G999G990D00'') as contado,',
'       to_char(diferencia, ''FML999G999G999G990D00'') as diferencia,',
'       estado',
'from cierres_caja',
'order by fecha_apertura desc'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260929182303Z')
,p_updated_on=>wwv_flow_imp.dz('20260929191311Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(41212212412738592649)
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>41212212412738592649
,p_created_on=>wwv_flow_imp.dz('20260929182303Z')
,p_updated_on=>wwv_flow_imp.dz('20260929191311Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42625264219662567506)
,p_db_column_name=>'CIERRE_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cierre Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260929182303Z')
,p_updated_on=>wwv_flow_imp.dz('20260929182303Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42625264788008567511)
,p_db_column_name=>'CONTADO'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Contado'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260929182303Z')
,p_updated_on=>wwv_flow_imp.dz('20260929182303Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42625264831961567512)
,p_db_column_name=>'DIFERENCIA'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Diferencia'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260929182303Z')
,p_updated_on=>wwv_flow_imp.dz('20260929182303Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42625264603337567510)
,p_db_column_name=>'ESPERADO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Esperado'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260929182303Z')
,p_updated_on=>wwv_flow_imp.dz('20260929182303Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42625264964719567513)
,p_db_column_name=>'ESTADO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260929182303Z')
,p_updated_on=>wwv_flow_imp.dz('20260929182303Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42625264321226567507)
,p_db_column_name=>'FECHA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Fecha'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260929182303Z')
,p_updated_on=>wwv_flow_imp.dz('20260929182303Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42625264562235567509)
,p_db_column_name=>'INICIAL'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Inicial'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260929182303Z')
,p_updated_on=>wwv_flow_imp.dz('20260929182303Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42625264442722567508)
,p_db_column_name=>'TURNO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Turno'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260929182303Z')
,p_updated_on=>wwv_flow_imp.dz('20260929182303Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(42638384644445931335)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CIERRE_ID:FECHA:TURNO:INICIAL:ESPERADO:CONTADO:DIFERENCIA:ESTADO'
,p_created_on=>wwv_flow_imp.dz('20260929191311Z')
,p_updated_on=>wwv_flow_imp.dz('20260929191311Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41212211964694592644)
,p_plug_name=>'Movimientos del turno'
,p_static_id=>'movimientos-del-turno'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2103954283454391425
,p_plug_display_sequence=>35
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select m.movimiento_id,',
'    to_char(m.fecha, ''HH24:MI'') as hora,',
'    m.tipo,',
'    cat.nombre as categoria,',
'    m.monto,',
'    m.descripcion',
'from movimientos_caja m',
'left join categorias_movimiento cat on cat.categoria_id = m.categoria_id',
'where m.cierre_id = (select max(cierre_id) from cierres_caja where estado = ''ABIERTO'')',
'order by m.fecha desc'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P10_REFRESH'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>'select 1 from cierres_caja where estado = ''ABIERTO'''
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260929182303Z')
,p_updated_on=>wwv_flow_imp.dz('20260929194631Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(41212212186487592646)
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>41212212186487592646
,p_created_on=>wwv_flow_imp.dz('20260929182303Z')
,p_updated_on=>wwv_flow_imp.dz('20260929194631Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42625263953123567503)
,p_db_column_name=>'CATEGORIA'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Categoria'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260929182303Z')
,p_updated_on=>wwv_flow_imp.dz('20260929182303Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42625264110932567505)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Descripcion'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260929182303Z')
,p_updated_on=>wwv_flow_imp.dz('20260929182303Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42625263762033567501)
,p_db_column_name=>'HORA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Hora'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260929182303Z')
,p_updated_on=>wwv_flow_imp.dz('20260929182303Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42625264054543567504)
,p_db_column_name=>'MONTO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Monto'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260929182303Z')
,p_updated_on=>wwv_flow_imp.dz('20260929182303Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41212212508798592650)
,p_db_column_name=>'MOVIMIENTO_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Movimiento Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260929182303Z')
,p_updated_on=>wwv_flow_imp.dz('20260929182303Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42625263817216567502)
,p_db_column_name=>'TIPO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260929182303Z')
,p_updated_on=>wwv_flow_imp.dz('20260929182303Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(42643046598129131289)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'MOVIMIENTO_ID:HORA:TIPO:CATEGORIA:MONTO:DESCRIPCION'
,p_created_on=>wwv_flow_imp.dz('20260929194631Z')
,p_updated_on=>wwv_flow_imp.dz('20260929194631Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41212212027593592645)
,p_plug_name=>'Registrar movimiento'
,p_static_id=>'registrar-movimiento'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>125
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>'select 1 from cierres_caja where estado = ''ABIERTO'''
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260929182303Z')
,p_updated_on=>wwv_flow_imp.dz('20260929182303Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(42625265074073567514)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(41212211828967592643)
,p_button_name=>'Abrir_caja'
,p_static_id=>'abrir-caja_1'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Abrir caja'
,p_grid_new_row=>'Y'
,p_created_on=>wwv_flow_imp.dz('20260929191301Z')
,p_updated_on=>wwv_flow_imp.dz('20261007182255Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(42625265339419567517)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(41212212027593592645)
,p_button_name=>'Agregar_mov'
,p_static_id=>'agregar-mov'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Agregar movimiento'
,p_grid_new_row=>'Y'
,p_created_on=>wwv_flow_imp.dz('20260929191301Z')
,p_updated_on=>wwv_flow_imp.dz('20261007182255Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(42625265492472567518)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(41212212290622592647)
,p_button_name=>'Cerrar_caja'
,p_static_id=>'cerrar-caja'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Cerrar caja'
,p_grid_new_row=>'Y'
,p_created_on=>wwv_flow_imp.dz('20260929191301Z')
,p_updated_on=>wwv_flow_imp.dz('20261007182255Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41212211126668592636)
,p_name=>'P10_CATEGORIA_MOV'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(41212212027593592645)
,p_prompt=>unistr('Categor\00EDa')
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nombre as display_name, categoria_id as return_value from categorias_movimiento',
'where activo = ''S''',
'and tipo = nvl(:P10_TIPO_MOV, ''GASTO'')',
'order by nombre'))
,p_lov_cascade_parent_items=>'P10_TIPO_MOV'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260929152428Z')
,p_updated_on=>wwv_flow_imp.dz('20260929204519Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41212210356371592628)
,p_name=>'P10_CIERRE_ID'
,p_item_sequence=>10
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260929152427Z')
,p_updated_on=>wwv_flow_imp.dz('20260929152427Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41212210953350592634)
,p_name=>'P10_DESC_MOV'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(41212212027593592645)
,p_prompt=>unistr('Descripci\00F3n')
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260929152428Z')
,p_updated_on=>wwv_flow_imp.dz('20260929191301Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41212210654767592631)
,p_name=>'P10_EFECTIVO_CONTADO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(41212212290622592647)
,p_prompt=>'Efectivo Contado'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260929152427Z')
,p_updated_on=>wwv_flow_imp.dz('20260929182303Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42625266062393567524)
,p_name=>'P10_MENSAJE_BLOQUEO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(41212212290622592647)
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260930000624Z')
,p_updated_on=>wwv_flow_imp.dz('20260930000624Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41212210599476592630)
,p_name=>'P10_MONTO_INICIAL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(41212211828967592643)
,p_prompt=>'Monto Inicial'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260929152427Z')
,p_updated_on=>wwv_flow_imp.dz('20260929182303Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41212211253498592637)
,p_name=>'P10_MONTO_MOV'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(41212212027593592645)
,p_prompt=>'Monto Mov'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260929152428Z')
,p_updated_on=>wwv_flow_imp.dz('20260929182303Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41212210798222592632)
,p_name=>'P10_OBSERVACIONES'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(41212212290622592647)
,p_prompt=>'Observaciones'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260929152427Z')
,p_updated_on=>wwv_flow_imp.dz('20260929182303Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41212211031001592635)
,p_name=>'P10_REFRESH'
,p_item_sequence=>115
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260929152428Z')
,p_updated_on=>wwv_flow_imp.dz('20260929182303Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41212210885893592633)
,p_name=>'P10_TIPO_MOV'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(41212212027593592645)
,p_item_default=>'GASTO'
,p_prompt=>'Tipo'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Retiro;RETIRO,Gasto;GASTO,Ingreso;INGRESO'
,p_cHeight=>1
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260929152428Z')
,p_updated_on=>wwv_flow_imp.dz('20260929182303Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41212210467729592629)
,p_name=>'P10_TURNO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(41212211828967592643)
,p_item_default=>'UNICO'
,p_prompt=>'Turno'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>unistr('STATIC:\00DAnico;UNICO,Ma\00F1ana;MA\00D1ANA,Tarde;TARDE,Noche;NOCHE')
,p_cHeight=>1
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260929152427Z')
,p_updated_on=>wwv_flow_imp.dz('20260929182303Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(42625265575493567519)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Abrir caja'
,p_static_id=>'abrir-caja'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_existe number;',
'begin',
'    select count(*) into v_existe',
'    from cierres_caja',
'    where estado = ''ABIERTO'';',
'',
'    if v_existe > 0 then',
unistr('        apex_application.g_print_success_message := ''\26A0\FE0F Ya hay una caja abierta. Cerrala antes de abrir otra.'';'),
'        return;',
'    end if;',
'',
'    if :P10_MONTO_INICIAL is null or :P10_MONTO_INICIAL < 0 then',
unistr('        apex_application.g_print_success_message := ''\26A0\FE0F Ingres\00E1 un monto inicial v\00E1lido.'';'),
'        return;',
'    end if;',
'',
unistr('    -- Aqu\00ED usamos :APP_USER directamente, adi\00F3s al ''sucutrule'''),
'    insert into cierres_caja (',
'        fecha_apertura, turno, usuario, monto_inicial, estado',
'    ) values (',
'        sysdate, nvl(:P10_TURNO, ''INICIO''), :APP_USER, nvl(:P10_MONTO_INICIAL, 0), ''ABIERTO''',
'    );',
'',
'    :P10_MONTO_INICIAL := null;',
'    :P10_TURNO := ''UNICO'';',
'',
unistr('    apex_application.g_print_success_message := ''\2705 Caja abierta correctamente.'';'),
'exception',
'    when others then',
unistr('        apex_application.g_print_success_message := ''\274C Error: '' || SQLERRM;'),
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'Abrir_caja'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_internal_uid=>42625265575493567519
,p_created_on=>wwv_flow_imp.dz('20260929191301Z')
,p_updated_on=>wwv_flow_imp.dz('20261020135455Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(42625265650879567520)
,p_process_sequence=>20
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Agregar movimiento'
,p_static_id=>'agregar-movimiento'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_cierre_id number;',
'begin',
'    -- Obtener el cierre abierto',
'    select max(cierre_id) into v_cierre_id',
'    from cierres_caja',
'    where estado = ''ABIERTO'';',
'',
'    if v_cierre_id is null then',
'        apex_error.add_error(',
unistr('            p_message => ''\26A0\FE0F No hay caja abierta.'','),
'            p_display_location => apex_error.c_inline_in_notification',
'        );',
'        return;',
'    end if;',
'',
'    -- Validar monto',
'    if :P10_MONTO_MOV is null or :P10_MONTO_MOV <= 0 then',
'        apex_error.add_error(',
unistr('            p_message => ''\26A0\FE0F Ingres\00E1 un monto mayor a 0.'','),
'            p_display_location => apex_error.c_inline_with_field_and_notif,',
'            p_page_item_name => ''P10_MONTO_MOV''',
'        );',
'        return;',
'    end if;',
'',
unistr('    -- Validar categor\00EDa'),
'    if :P10_CATEGORIA_MOV is null then',
'        apex_error.add_error(',
unistr('            p_message => ''\26A0\FE0F Eleg\00ED una categor\00EDa.'','),
'            p_display_location => apex_error.c_inline_with_field_and_notif,',
'            p_page_item_name => ''P10_CATEGORIA_MOV''',
'        );',
'        return;',
'    end if;',
'',
'    -- Insertar movimiento',
'    insert into movimientos_caja (',
'        cierre_id, tipo, categoria_id, monto, descripcion',
'    ) values(',
'        v_cierre_id, :P10_TIPO_MOV, :P10_CATEGORIA_MOV, :P10_MONTO_MOV, :P10_DESC_MOV',
'    );',
'',
'    -- Actualizar totales en cierres_caja',
'    if :P10_TIPO_MOV = ''RETIRO'' then',
'        update cierres_caja',
'        set retiros = nvl(retiros, 0) + :P10_MONTO_MOV',
'        where cierre_id = v_cierre_id;',
'    elsif :P10_TIPO_MOV = ''GASTO'' then',
'        update cierres_caja',
'        set gastos = nvl(gastos, 0) + :P10_MONTO_MOV',
'        where cierre_id = v_cierre_id;',
'    end if;',
'',
'    -- Limpiar campos',
'    :P10_MONTO_MOV := null;',
'    :P10_DESC_MOV := null;',
'    :P10_REFRESH := sysdate;',
'',
unistr('    -- Mensaje de \00E9xito (Este s\00ED va en verde)'),
unistr('    apex_application.g_print_success_message := ''\2705 Movimiento registrado.'';'),
'    ',
'exception',
'    when others then',
'        apex_error.add_error(',
unistr('            p_message => ''\274C Error: '' || SQLERRM,'),
'            p_display_location => apex_error.c_inline_in_notification',
'        );',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'Agregar_mov'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_internal_uid=>42625265650879567520
,p_created_on=>wwv_flow_imp.dz('20260929191301Z')
,p_updated_on=>wwv_flow_imp.dz('20261020135456Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(42625265713022567521)
,p_process_sequence=>30
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Cerrar caja'
,p_static_id=>'cerrar-caja'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  v_cierre_id NUMBER;',
'  v_ventas_efectivo NUMBER := 0;',
'  v_ventas_tarjeta NUMBER := 0;',
'  v_ventas_transf NUMBER := 0;',
'  v_monto_inicial NUMBER := 0;',
'  v_retiros NUMBER := 0;',
'  v_gastos NUMBER := 0;',
'  v_esperado NUMBER := 0;',
'  v_diferencia NUMBER := 0;',
'  v_contado NUMBER := 0;',
'BEGIN',
'  -- Validar que se haya ingresado el efectivo contado (AHORA CON ERROR EN ROJO)',
'  IF :P10_EFECTIVO_CONTADO IS NULL THEN',
'    apex_error.add_error(',
unistr('        p_message => ''\26A0\FE0F Ingres\00E1 el efectivo contado antes de cerrar la caja.'','),
'        p_display_location => apex_error.c_inline_with_field_and_notif,',
'        p_page_item_name => ''P10_EFECTIVO_CONTADO''',
'    );',
'    RETURN;',
'  END IF;',
'',
'  v_contado := :P10_EFECTIVO_CONTADO;',
'',
'  -- Obtener el cierre abierto',
'  SELECT cierre_id, monto_inicial',
'    INTO v_cierre_id, v_monto_inicial',
'    FROM cierres_caja',
'   WHERE estado = ''ABIERTO'';',
'  ',
'  -- Calcular ventas del turno (desde la apertura)',
'  SELECT ',
'    NVL(SUM(CASE WHEN metodo_pago = ''EFECTIVO'' THEN total_venta ELSE 0 END), 0),',
'    NVL(SUM(CASE WHEN metodo_pago IN (''DEBITO'',''CREDITO'') THEN total_venta ELSE 0 END), 0),',
'    NVL(SUM(CASE WHEN metodo_pago IN (''TRANSFERENCIA'',''QR'') THEN total_venta ELSE 0 END), 0)',
'  INTO v_ventas_efectivo, v_ventas_tarjeta, v_ventas_transf',
'  FROM ventas_cabecera v',
'  WHERE v.fecha >= (SELECT fecha_apertura FROM cierres_caja WHERE cierre_id = v_cierre_id);',
'  ',
'  -- Obtener retiros y gastos',
'  SELECT NVL(SUM(CASE WHEN tipo = ''RETIRO'' THEN monto ELSE 0 END), 0),',
'         NVL(SUM(CASE WHEN tipo = ''GASTO'' THEN monto ELSE 0 END), 0)',
'    INTO v_retiros, v_gastos',
'    FROM movimientos_caja',
'   WHERE cierre_id = v_cierre_id;',
'  ',
'  -- Calcular esperado y diferencia',
'  v_esperado := v_monto_inicial + v_ventas_efectivo - v_retiros - v_gastos;',
'  v_diferencia := v_contado - v_esperado;',
'  ',
'  -- Actualizar cierre',
'  UPDATE cierres_caja',
'     SET fecha_cierre = SYSDATE,',
'         ventas_efectivo = v_ventas_efectivo,',
'         ventas_tarjeta = v_ventas_tarjeta,',
'         ventas_transf = v_ventas_transf,',
'         retiros = v_retiros,',
'         gastos = v_gastos,',
'         efectivo_esperado = v_esperado,',
'         efectivo_contado = v_contado,',
'         diferencia = v_diferencia,',
'         estado = ''CERRADO'',',
'         observaciones = :P10_OBSERVACIONES',
'   WHERE cierre_id = v_cierre_id;',
'  ',
'  -- Armar el mensaje ANTES de limpiar',
'  APEX_APPLICATION.G_PRINT_SUCCESS_MESSAGE := ',
unistr('    ''\2705 Caja cerrada. Esperado: $'' || TO_CHAR(v_esperado, ''FM999G999G999D00'') || '),
'    '' - Contado: $'' || TO_CHAR(v_contado, ''FM999G999G999D00'') ||',
'    '' - Diferencia: $'' || TO_CHAR(v_diferencia, ''FM999G999G9990D00'');',
'  ',
unistr('  -- Limpiar campos DESPU\00C9S del mensaje'),
'  :P10_EFECTIVO_CONTADO := NULL;',
'  :P10_OBSERVACIONES := NULL;',
'EXCEPTION',
'  WHEN NO_DATA_FOUND THEN',
'    apex_error.add_error(',
unistr('        p_message => ''\26A0\FE0F No hay caja abierta.'','),
'        p_display_location => apex_error.c_inline_in_notification',
'    );',
'  WHEN OTHERS THEN',
'    apex_error.add_error(',
unistr('        p_message => ''\274C Error: '' || SQLERRM,'),
'        p_display_location => apex_error.c_inline_in_notification',
'    );',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'Cerrar_caja'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_internal_uid=>42625265713022567521
,p_created_on=>wwv_flow_imp.dz('20260929191301Z')
,p_updated_on=>wwv_flow_imp.dz('20261020135456Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
end;
/
prompt --application/pages/page_00011
begin
wwv_flow_imp_page.create_page(
 p_id=>11
,p_name=>'Ayuda'
,p_alias=>'AYUDA'
,p_step_title=>'Ayuda'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
,p_created_on=>wwv_flow_imp.dz('20261005181906Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261022022707Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_last_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(42625267497227567538)
,p_plug_name=>'Ayuda - Cerrar caja'
,p_static_id=>'ayuda-cerrar-caja'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>40
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="background: #1e1e1e; padding: 25px; border-radius: 10px; border-left: 4px solid #9B59B6; margin-bottom: 20px;">',
unistr('  <h2 style="color: #9B59B6; margin-top: 0; font-size: 1.4rem;">\D83D\DD12 Cerrar la caja</h2>'),
'  ',
'  <p style="color: #c8d9f0; line-height: 1.6;">',
unistr('    Al terminar el turno, ten\00E9s que cerrar la caja. Este paso es importante para <strong>controlar el efectivo</strong>.'),
'  </p>',
'  ',
'  <h3 style="color: #ffffff; font-size: 1.1rem;">Pasos para cerrar</h3>',
'  <ol style="color: #c8d9f0; line-height: 1.8;">',
unistr('    <li><strong>Cont\00E1 el efectivo real</strong> que hay en la caja (plata f\00EDsica).</li>'),
unistr('    <li>And\00E1 a <code style="background: #2a2a2a; padding: 2px 6px; border-radius: 4px;">Caja</code> \2192 secci\00F3n <strong>"Cerrar caja"</strong>.</li>'),
unistr('    <li>Ingres\00E1 el <strong>efectivo contado</strong> (el monto real que contaste).</li>'),
unistr('    <li>Escrib\00ED observaciones si es necesario.</li>'),
'    <li>Clic en <strong>"Cerrar caja"</strong>.</li>',
'  </ol>',
'  ',
unistr('  <h3 style="color: #ffffff; font-size: 1.1rem;">Interpretaci\00F3n de la diferencia</h3>'),
'  <ul style="color: #c8d9f0; line-height: 1.8;">',
unistr('    <li><strong>Diferencia = $0</strong>: Todo cuadra perfecto. \2705</li>'),
unistr('    <li><strong>Diferencia positiva</strong> (+): Hay m\00E1s plata de la esperada. \D83E\DDD0</li>'),
unistr('    <li><strong>Diferencia negativa</strong> (-): Falta plata. \26A0\FE0F</li>'),
'  </ul>',
'  ',
'  <p style="color: #F5A623; background: #2a2010; padding: 10px 15px; border-radius: 6px; margin-top: 15px;">',
unistr('    \26A0\FE0F Si la diferencia es mayor a $100, <strong>avisar al encargado</strong> antes de cerrar.'),
'  </p>',
'  <p style="color: #E74C3C; background: #2a1010; padding: 10px 15px; border-radius: 6px; margin-top: 10px;">',
unistr('    \274C Si intent\00E1s cerrar la caja sin poner el efectivo contado, el sistema te mostrar\00E1 una <strong>alerta roja</strong> en la parte superior y no te dejar\00E1 avanzar.'),
'  </p>',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261005185215Z')
,p_updated_on=>wwv_flow_imp.dz('20261022022549Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(42625267718439567541)
,p_plug_name=>'Ayuda - FAQ'
,p_static_id=>'ayuda-faq'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>80
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="background: #1e1e1e; padding: 25px; border-radius: 10px; border-left: 4px solid #E74C3C; margin-bottom: 20px;">',
unistr('  <h2 style="color: #E74C3C; margin-top: 0; font-size: 1.4rem;">\2753 Preguntas frecuentes</h2>'),
'  ',
unistr('  <h3 style="color: #ffffff; font-size: 1.05rem;">\00BFQu\00E9 hago si la caja no cuadra?</h3>'),
'  <p style="color: #c8d9f0; line-height: 1.6;">',
unistr('    Revis\00E1 los movimientos del d\00EDa. Si hay una diferencia chica (menos de $100), anotala en observaciones al cerrar. '),
unistr('    Si es mayor, avis\00E1 al encargado <strong>antes</strong> de cerrar.'),
'  </p>',
'  ',
unistr('  <h3 style="color: #ffffff; font-size: 1.05rem;">\00BFPuedo vender sin abrir la caja?</h3>'),
'  <p style="color: #c8d9f0; line-height: 1.6;">',
'    <strong>No</strong>. El sistema bloquea la venta si no hay una caja abierta. ',
unistr('    And\00E1 a <code style="background: #2a2a2a; padding: 2px 6px; border-radius: 4px;">Caja</code> '),
'    y abrila primero.',
'  </p>',
'  ',
unistr('  <h3 style="color: #ffffff; font-size: 1.05rem;">\00BFQu\00E9 pasa si me olvido de cerrar la caja?</h3>'),
'  <p style="color: #c8d9f0; line-height: 1.6;">',
'    El Panel de Control te va a mostrar una <strong>alerta celeste</strong> avisando que hay una caja abierta. ',
'    Cerrala antes de irte.',
'  </p>',
'  ',
unistr('  <h3 style="color: #ffffff; font-size: 1.05rem;">\00BFC\00F3mo s\00E9 qu\00E9 productos tienen poco stock?</h3>'),
'  <p style="color: #c8d9f0; line-height: 1.6;">',
unistr('    En el Panel de Control hay una secci\00F3n <strong>"Stock bajo - Reponer"</strong> que lista los productos '),
unistr('    con poco stock. Los <span style="color: #FFA500;">CR\00CDTICOS (naranja)</span> tienen \22645 unidades. '),
unistr('    Los <span style="color: #FFD700;">BAJOS (amarillo)</span> tienen \226410.'),
'  </p>',
'  ',
unistr('  <h3 style="color: #ffffff; font-size: 1.05rem;">\00BFPuedo ver el historial de ventas de otro turno?</h3>'),
'  <p style="color: #c8d9f0; line-height: 1.6;">',
unistr('    S\00ED, en <code style="background: #2a2a2a; padding: 2px 6px; border-radius: 4px;">Reportes</code> '),
unistr('    pod\00E9s filtrar por fecha y ver todas las ventas, sin importar el turno o el usuario.'),
'  </p>',
'',
unistr('    <h3 style="color: #ffffff; font-size: 1.05rem;">\00BFPor qu\00E9 no me deja vender un producto?</h3>'),
'  <p style="color: #c8d9f0; line-height: 1.6;">',
unistr('    Si intent\00E1s vender m\00E1s cantidad de la que hay en stock, el sistema te frenar\00E1 con una <strong>alerta roja en la parte superior</strong>. '),
unistr('    Revis\00E1 el stock en la secci\00F3n "Productos" o avis\00E1 al encargado para que reponga mercader\00EDa.'),
'  </p>',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261005185215Z')
,p_updated_on=>wwv_flow_imp.dz('20261022022707Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(42625267346391567537)
,p_plug_name=>'Ayuda - Gastos y retiros'
,p_static_id=>'ayuda-gastos-y-retiros'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="background: #1e1e1e; padding: 25px; border-radius: 10px; border-left: 4px solid #F5A623; margin-bottom: 20px;">',
unistr('  <h2 style="color: #F5A623; margin-top: 0; font-size: 1.4rem;">\D83D\DCB8 Registrar gastos y retiros</h2>'),
'  ',
'  <p style="color: #c8d9f0; line-height: 1.6;">',
unistr('    Durante el d\00EDa pueden pasar dos cosas: pag\00E1s algo con la plata de la caja o retir\00E1s efectivo.'),
'    <strong>Es importante registrarlo</strong> para que el cierre cuadre.',
'  </p>',
'  ',
unistr('  <h3 style="color: #ffffff; font-size: 1.1rem;">C\00F3mo registrar</h3>'),
'  <ol style="color: #c8d9f0; line-height: 1.8;">',
unistr('    <li>And\00E1 a <code style="background: #2a2a2a; padding: 2px 6px; border-radius: 4px;">Caja</code> \2192 secci\00F3n <strong>"Registrar movimiento"</strong>.</li>'),
unistr('    <li>Seleccion\00E1 el <strong>tipo</strong>: Retiro, Gasto o Ingreso.</li>'),
unistr('    <li>Eleg\00ED una <strong>categor\00EDa</strong> (Proveedor, Due\00F1o, Varios, etc.).</li>'),
unistr('    <li>Ingres\00E1 el <strong>monto</strong> (mayor a 0).</li>'),
unistr('    <li>Escrib\00ED una <strong>descripci\00F3n</strong> breve (ej: "Compra Coca Cola").</li>'),
'    <li>Clic en <strong>"Agregar movimiento"</strong>.</li>',
'  </ol>',
'  ',
'  <p style="color: #F5A623; background: #2a2010; padding: 10px 15px; border-radius: 6px; margin-top: 15px;">',
unistr('    \D83D\DCA1 <strong>Ejemplo:</strong> si pag\00E1s $2,000 a un proveedor, es un <strong>GASTO</strong>. Si sac\00E1s $5,000 para llevar a casa, es un <strong>RETIRO</strong>.'),
'  </p>',
'  <p style="color: #E74C3C; background: #2a1010; padding: 10px 15px; border-radius: 6px; margin-top: 10px;">',
unistr('    \274C Si te olvid\00E1s de poner el monto o la categor\00EDa, el sistema te mostrar\00E1 una <strong>alerta roja</strong> en la parte superior de la pantalla y no guardar\00E1 el movimiento.'),
'  </p>',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261005185215Z')
,p_updated_on=>wwv_flow_imp.dz('20261022022549Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(42625267126281567535)
,p_plug_name=>'Ayuda - Primeros pasos'
,p_static_id=>'ayuda-primeros-pasos'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="background: #1e1e1e; padding: 25px; border-radius: 10px; border-left: 4px solid #4A90E2; margin-bottom: 20px;">',
unistr('  <h2 style="color: #4A90E2; margin-top: 0; font-size: 1.4rem;">\D83D\DE80 Primeros pasos</h2>'),
'  ',
unistr('  <h3 style="color: #ffffff; font-size: 1.1rem;">1. Iniciar sesi\00F3n</h3>'),
'  <p style="color: #c8d9f0; line-height: 1.6;">',
unistr('    Ingres\00E1 tu <strong>usuario</strong> y <strong>contrase\00F1a</strong> en la pantalla de inicio. '),
unistr('    Si es la primera vez que entr\00E1s, el sistema te va a pedir que cambies la contrase\00F1a.'),
'  </p>',
'  ',
'  <h3 style="color: #ffffff; font-size: 1.1rem;">2. Abrir la caja</h3>',
'  <p style="color: #c8d9f0; line-height: 1.6;">',
unistr('    Antes de empezar a vender, ten\00E9s que <strong>abrir la caja</strong>. '),
unistr('    And\00E1 a <code style="background: #2a2a2a; padding: 2px 6px; border-radius: 4px;">Caja</code> en el men\00FA:'),
'  </p>',
'  <ul style="color: #c8d9f0; line-height: 1.8;">',
unistr('    <li>Seleccion\00E1 el <strong>turno</strong> (Ma\00F1ana, Tarde, Noche o \00DAnico).</li>'),
unistr('    <li>Ingres\00E1 el <strong>monto inicial</strong> (la plata que hay en la caja al empezar).</li>'),
'    <li>Clic en <strong>"Abrir caja"</strong>.</li>',
'  </ul>',
'  ',
'  <p style="color: #F5A623; background: #2a2010; padding: 10px 15px; border-radius: 6px; margin-top: 15px;">',
unistr('    \26A0\FE0F <strong>Importante:</strong> no pod\00E9s registrar ventas si la caja est\00E1 cerrada.'),
'  </p>',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261005185215Z')
,p_updated_on=>wwv_flow_imp.dz('20261022022549Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(42625267559666567539)
,p_plug_name=>'Ayuda - Productos'
,p_static_id=>'ayuda-productos'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>50
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="background: #1e1e1e; padding: 25px; border-radius: 10px; border-left: 4px solid #2980B9; margin-bottom: 20px;">',
unistr('  <h2 style="color: #2980B9; margin-top: 0; font-size: 1.4rem;">\D83D\DCE6 Productos</h2>'),
'  ',
'  <h3 style="color: #ffffff; font-size: 1.1rem;">Agregar un producto nuevo</h3>',
'  <ol style="color: #c8d9f0; line-height: 1.8;">',
unistr('    <li>Ir a <code style="background: #2a2a2a; padding: 2px 6px; border-radius: 4px;">Productos</code> en el men\00FA.</li>'),
'    <li>Clic en <strong>"Add Row"</strong> (agregar fila).</li>',
'    <li>Completar: Nombre, Precio y Stock.</li>',
unistr('    <li>Clic en <strong>"Guardar"</strong> (bot\00F3n verde).</li>'),
'  </ol>',
'  ',
'  <h3 style="color: #ffffff; font-size: 1.1rem;">Editar un producto</h3>',
'  <p style="color: #c8d9f0; line-height: 1.6;">',
unistr('    Hac\00E9 clic sobre la celda que quer\00E9s modificar, cambi\00E1 el valor y guard\00E1. Ver\00E1s un cartel verde confirmando el cambio.'),
'  </p>',
'  ',
'  <h3 style="color: #ffffff; font-size: 1.1rem;">Eliminar producto(s)</h3>',
'  <ol style="color: #c8d9f0; line-height: 1.8;">',
unistr('    <li>Seleccion\00E1 los productos con el <strong>checkbox</strong> de la izquierda.</li>'),
unistr('    <li>Clic en <strong>"Eliminar"</strong> (bot\00F3n rojo).</li>'),
'    <li>Confirmar en el cartel del navegador.</li>',
'  </ol>',
'  ',
'  <p style="color: #F5A623; background: #2a2010; padding: 10px 15px; border-radius: 6px; margin-top: 15px;">',
unistr('    \26A0\FE0F <strong>Ojo:</strong> No se pueden eliminar productos que tengan ventas asociadas. Si intentas hacerlo, aparecer\00E1 una <strong>alerta roja</strong> en la parte superior indicando el error. Tampoco se pueden crear productos con nombres duplicado')
||'s.',
'  </p>',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261005185215Z')
,p_updated_on=>wwv_flow_imp.dz('20261022022549Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2707658178717991944)
,p_plug_name=>'Ayuda - Proveedores y Compras'
,p_static_id=>'ayuda-proveedores-y-compras'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>60
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="background: #1e1e1e; padding: 25px; border-radius: 10px; border-left: 4px solid #9B59B6; margin-bottom: 20px;">',
unistr('  <h2 style="color: #9B59B6; margin-top: 0; font-size: 1.4rem;">\D83D\DE9A Proveedores y Compras</h2>'),
'  ',
'  <h3 style="color: #ffffff; font-size: 1.1rem;">Cargar un Proveedor</h3>',
'  <p style="color: #c8d9f0; line-height: 1.6;">',
unistr('    En la secci\00F3n <code style="background: #2a2a2a; padding: 2px 6px; border-radius: 4px;">Proveedores</code>, agreg\00E1 el nombre, CUIT y tel\00E9fono. '),
unistr('    <strong>No se permite duplicar el CUIT ni poner un email sin el "@"</strong> (el sistema te avisar\00E1 con una alerta roja si lo intent\00E1s).'),
'  </p>',
'  ',
'  <h3 style="color: #ffffff; font-size: 1.1rem;">Registrar una Compra</h3>',
'  <ul style="color: #c8d9f0; line-height: 1.8;">',
unistr('    <li>And\00E1 a <code style="background: #2a2a2a; padding: 2px 6px; border-radius: 4px;">Registrar compra</code>.</li>'),
unistr('    <li>Seleccion\00E1 el proveedor y la fecha.</li>'),
unistr('    <li>Ingres\00E1 el <strong>Total</strong> de la factura.</li>'),
unistr('    <li>Eleg\00ED el <strong>Estado</strong> (Pagado o Pendiente). Si es Pendiente, aparecer\00E1 en el Inicio como deuda.</li>'),
'  </ul>',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261022022549Z')
,p_updated_on=>wwv_flow_imp.dz('20261022022549Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(42625267202955567536)
,p_plug_name=>'Ayuda - Registrar venta'
,p_static_id=>'ayuda-registrar-venta'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="background: #1e1e1e; padding: 25px; border-radius: 10px; border-left: 4px solid #50C878; margin-bottom: 20px;">',
unistr('  <h2 style="color: #50C878; margin-top: 0; font-size: 1.4rem;">\D83D\DED2 Registrar una venta</h2>'),
'  ',
'  <h3 style="color: #ffffff; font-size: 1.1rem;">1. Ir a "Nueva venta"</h3>',
'  <p style="color: #c8d9f0; line-height: 1.6;">',
unistr('    En el men\00FA lateral, clic en <code style="background: #2a2a2a; padding: 2px 6px; border-radius: 4px;">Nueva venta</code>.'),
'  </p>',
'  ',
'  <h3 style="color: #ffffff; font-size: 1.1rem;">2. Agregar productos</h3>',
'  <ul style="color: #c8d9f0; line-height: 1.8;">',
unistr('    <li>Seleccion\00E1 el <strong>producto</strong> en el buscador.</li>'),
unistr('    <li>Ingres\00E1 la <strong>cantidad</strong>.</li>'),
'    <li>Clic en <strong>"Agregar producto"</strong>.</li>',
unistr('    <li>Repet\00ED para cada producto de la venta.</li>'),
'  </ul>',
'  ',
'  <h3 style="color: #ffffff; font-size: 1.1rem;">3. Confirmar la venta</h3>',
'  <ul style="color: #c8d9f0; line-height: 1.8;">',
unistr('    <li>Seleccion\00E1 el <strong>m\00E9todo de pago</strong> (Efectivo, Tarjeta, Transferencia, etc.).</li>'),
unistr('    <li>Verific\00E1 el <strong>total</strong>.</li>'),
'    <li>Clic en <strong>"Crear venta"</strong>.</li>',
'  </ul>',
'  ',
'  <p style="color: #50C878; background: #0f2a1a; padding: 10px 15px; border-radius: 6px; margin-top: 15px;">',
unistr('    \2705 Al crear la venta, el <strong>stock</strong> se descuenta autom\00E1ticamente.'),
'  </p>',
'  <p style="color: #F5A623; background: #2a2010; padding: 10px 15px; border-radius: 6px; margin-top: 10px;">',
unistr('    \26A0\FE0F <strong>Importante:</strong> El sistema no te dejar\00E1 vender m\00E1s cantidad de la que hay en stock. Si intentas hacerlo, aparecer\00E1 una <strong>alerta roja en la parte superior derecha</strong>.'),
'  </p>',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261005185215Z')
,p_updated_on=>wwv_flow_imp.dz('20261022022549Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(42625267614558567540)
,p_plug_name=>'Ayuda - Reportes'
,p_static_id=>'ayuda-reportes'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>70
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="background: #1e1e1e; padding: 25px; border-radius: 10px; border-left: 4px solid #16A085; margin-bottom: 20px;">',
unistr('  <h2 style="color: #16A085; margin-top: 0; font-size: 1.4rem;">\D83D\DCCA Reportes</h2>'),
'  ',
'  <p style="color: #c8d9f0; line-height: 1.6;">',
unistr('    En la secci\00F3n <code style="background: #2a2a2a; padding: 2px 6px; border-radius: 4px;">Reportes</code> '),
unistr('    pod\00E9s ver las ventas filtradas por fecha y m\00E9todo de pago.'),
'  </p>',
'  ',
unistr('  <h3 style="color: #ffffff; font-size: 1.1rem;">C\00F3mo usar los filtros</h3>'),
'  <ul style="color: #c8d9f0; line-height: 1.8;">',
unistr('    <li><strong>Desde / Hasta</strong>: eleg\00ED el rango de fechas.</li>'),
unistr('    <li><strong>M\00E9todo de pago</strong>: filtr\00E1 solo Efectivo, Tarjeta, etc.</li>'),
'    <li>Clic en <strong>"Aplicar filtro"</strong>.</li>',
'  </ul>',
'  ',
'  <h3 style="color: #ffffff; font-size: 1.1rem;">Exportar a Excel</h3>',
'  <ol style="color: #c8d9f0; line-height: 1.8;">',
'    <li>En cualquier tabla, clic en <strong>"Actions"</strong>.</li>',
unistr('    <li>Eleg\00ED <strong>"Download"</strong>.</li>'),
unistr('    <li>Seleccion\00E1 el formato: <strong>Excel, CSV o PDF</strong>.</li>'),
'  </ol>',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261005185215Z')
,p_updated_on=>wwv_flow_imp.dz('20261022022549Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(42625267058055567534)
,p_plug_name=>'Banner ayuda'
,p_static_id=>'banner-ayuda'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4504868307683981366
,p_plug_display_sequence=>5
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="background: linear-gradient(135deg, #4A90E2 0%, #2E5C9E 100%); ',
'            padding: 25px 30px; ',
'            border-radius: 10px; ',
'            display: flex; ',
'            align-items: center; ',
'            gap: 20px;',
'            box-shadow: 0 4px 12px rgba(0,0,0,0.3);',
'            margin-bottom: 25px;">',
'  ',
unistr('  <div style="font-size: 4rem; line-height: 1;">\D83D\DCD6</div>'),
'  ',
'  <div style="flex: 1;">',
'    <h1 style="margin: 0; color: #ffffff; font-size: 1.6rem; font-weight: 700;">',
'      Manual de uso del sistema',
'    </h1>',
'    <p style="margin: 8px 0 0 0; color: #e8f0ff; font-size: 1.1rem;">',
unistr('      Todo lo que necesit\00E1s saber para operar el kiosco'),
'    </p>',
'  </div>',
'  ',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261005185215Z')
,p_updated_on=>wwv_flow_imp.dz('20261005201424Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(45816092196294446857)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2534890969069732905
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(11569956826024240755)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4075790987805660140
,p_created_on=>wwv_flow_imp.dz('20261005181907Z')
,p_updated_on=>wwv_flow_imp.dz('20261005200931Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
end;
/
prompt --application/pages/page_00014
begin
wwv_flow_imp_page.create_page(
 p_id=>14
,p_name=>'Reportes Proveedores'
,p_alias=>'REPORTES-PROVEEDORES'
,p_step_title=>'Reportes Proveedores'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3748731866027892630)
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20261008204204Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261014201406Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_last_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1271214539720224584)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2534890969069732905
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(11569956826024240755)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4075790987805660140
,p_created_on=>wwv_flow_imp.dz('20261008204204Z')
,p_updated_on=>wwv_flow_imp.dz('20261008204204Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1274880581453386909)
,p_plug_name=>unistr('Comparaci\00F3n de precios')
,p_static_id=>unistr('comparaci\00F3n-de-precios')
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2103954283454391425
,p_plug_display_sequence=>35
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  pr.nombre as producto,',
'        p.nombre as proveedor,',
'        to_char(pp.precio_compra, ''FML999G999G999G990D00'') as precio_compra,',
'        to_char(pp.ultima_compra, ''DD/MM/YYYY'') as ultima_compra,',
'        row_number() over (partition by pr.producto_id order by pp.precio_compra asc) as ranking_precio',
'from productos_proveedores pp',
'join productos pr on pr.producto_id = pp.producto_id',
'join proveedores p on p.proveedor_id = pp.proveedor_id',
'where pp.precio_compra is not null'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20261008210907Z')
,p_updated_on=>wwv_flow_imp.dz('20261008210921Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(1274880669319386910)
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>1274880669319386910
,p_created_on=>wwv_flow_imp.dz('20261008210907Z')
,p_updated_on=>wwv_flow_imp.dz('20261008210921Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1274880982990386913)
,p_db_column_name=>'PRECIO_COMPRA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Precio Compra'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261008210907Z')
,p_updated_on=>wwv_flow_imp.dz('20261008210907Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1274880766015386911)
,p_db_column_name=>'PRODUCTO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Producto'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261008210907Z')
,p_updated_on=>wwv_flow_imp.dz('20261008210907Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1274880834574386912)
,p_db_column_name=>'PROVEEDOR'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Proveedor'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261008210907Z')
,p_updated_on=>wwv_flow_imp.dz('20261008210907Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1274881189459386915)
,p_db_column_name=>'RANKING_PRECIO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Ranking Precio'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261008210907Z')
,p_updated_on=>wwv_flow_imp.dz('20261008210907Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1274881029397386914)
,p_db_column_name=>'ULTIMA_COMPRA'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Ultima Compra'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261008210907Z')
,p_updated_on=>wwv_flow_imp.dz('20261008210907Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(1276101295427432661)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PRODUCTO:PROVEEDOR:PRECIO_COMPRA:ULTIMA_COMPRA:RANKING_PRECIO'
,p_created_on=>wwv_flow_imp.dz('20261008210921Z')
,p_updated_on=>wwv_flow_imp.dz('20261008210921Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1637489057291948828)
,p_plug_name=>'Cuenta corriente'
,p_static_id=>'cuenta-corriente'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2103954283454391425
,p_plug_display_sequence=>95
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.nombre as proveedor,',
'       count(*) as compras_pendientes,',
'       to_char(sum(c.total), ''FML999G999G999G990D00'') as total_pendiente,',
'       to_char(min(c.fecha), ''DD/MM/YYYY'') as mas_antigua,',
'       to_char(max(c.fecha), ''DD/MM/YYYY'') as mas_reciente',
'from compras c',
'join proveedores p on p.proveedor_id = c.proveedor_id',
'where upper(c.estado) = ''PENDIENTE''',
'group by p.nombre'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>'select 1 from compras where upper(estado) = ''PENDIENTE'' and rownum = 1'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20261012002024Z')
,p_updated_on=>wwv_flow_imp.dz('20261012181756Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(1637489257457948830)
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>1637489257457948830
,p_created_on=>wwv_flow_imp.dz('20261012002024Z')
,p_updated_on=>wwv_flow_imp.dz('20261012181756Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1637489405836948832)
,p_db_column_name=>'COMPRAS_PENDIENTES'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Compras Pendientes'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261012002024Z')
,p_updated_on=>wwv_flow_imp.dz('20261012002024Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1637489635001948834)
,p_db_column_name=>'MAS_ANTIGUA'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Mas Antigua'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261012002024Z')
,p_updated_on=>wwv_flow_imp.dz('20261012002024Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1637489729111948835)
,p_db_column_name=>'MAS_RECIENTE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Mas Reciente'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261012002024Z')
,p_updated_on=>wwv_flow_imp.dz('20261012002024Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1637489318641948831)
,p_db_column_name=>'PROVEEDOR'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Proveedor'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261012002024Z')
,p_updated_on=>wwv_flow_imp.dz('20261012002024Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1637489573573948833)
,p_db_column_name=>'TOTAL_PENDIENTE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Total Pendiente'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261012002024Z')
,p_updated_on=>wwv_flow_imp.dz('20261012002024Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(2664371121927919828)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PROVEEDOR:COMPRAS_PENDIENTES:TOTAL_PENDIENTE:MAS_ANTIGUA:MAS_RECIENTE'
,p_created_on=>wwv_flow_imp.dz('20261012181756Z')
,p_updated_on=>wwv_flow_imp.dz('20261012181756Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1637487749105948815)
,p_plug_name=>'Historial de compras'
,p_static_id=>'historial-de-compras'
,p_title=>'Historial de compras'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2103954283454391425
,p_plug_display_sequence=>90
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT c.compra_id,',
'       TO_CHAR(c.fecha, ''DD/MM/YYYY'') AS fecha,',
'       p.nombre AS proveedor,',
'       TO_CHAR(c.total, ''FML999G999G999G990D00'') AS total,',
'       c.estado,',
'       CASE ',
'         WHEN UPPER(c.estado) = ''PAGADO'' THEN ''estado-pagado''',
'         WHEN UPPER(c.estado) = ''PENDIENTE'' THEN ''estado-pendiente''',
'         ELSE ''''',
'       END AS clase_estado,',
'       TO_CHAR(c.fecha_pago, ''DD/MM/YYYY'') AS fecha_pago,',
'       c.observaciones,',
'       CASE ',
'         WHEN UPPER(c.estado) = ''PENDIENTE'' THEN ',
'           ''<a href="javascript:void(0);" ',
'               onclick="apex.submit({request:''''MARCAR_PAGADA'''', set:{''''P14_COMPRA_A_PAGAR'''':'''''' || c.compra_id || ''''''}});" ',
'               class="t-Button t-Button--small t-Button--hot" ',
'               style="padding: 4px 12px; font-size: 0.8rem; text-decoration: none; cursor: pointer;">',
'              Marcar pagada',
'            </a>''',
'         ELSE ''''',
'       END AS accion',
'  FROM compras c',
'  JOIN proveedores p ON p.proveedor_id = c.proveedor_id'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Historial de compras'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20261011203450Z')
,p_updated_on=>wwv_flow_imp.dz('20261012191806Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(1637487845437948816)
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>1637487845437948816
,p_created_on=>wwv_flow_imp.dz('20261011203450Z')
,p_updated_on=>wwv_flow_imp.dz('20261012183918Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1637488747121948825)
,p_db_column_name=>'ACCION'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Accion'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261012000826Z')
,p_updated_on=>wwv_flow_imp.dz('20261012183918Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1637488515544948823)
,p_db_column_name=>'CLASE_ESTADO'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Clase Estado'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261011204523Z')
,p_updated_on=>wwv_flow_imp.dz('20261011204523Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1637487962085948817)
,p_db_column_name=>'COMPRA_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Compra Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261011203450Z')
,p_updated_on=>wwv_flow_imp.dz('20261011203450Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1637488321718948821)
,p_db_column_name=>'ESTADO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Estado'
,p_column_html_expression=>'<span class="#CLASE_ESTADO#" style="font-weight: 600;">#ESTADO#</span>'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261011203450Z')
,p_updated_on=>wwv_flow_imp.dz('20261011205102Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1637488009797948818)
,p_db_column_name=>'FECHA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Fecha'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261011203450Z')
,p_updated_on=>wwv_flow_imp.dz('20261011205102Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1637488660502948824)
,p_db_column_name=>'FECHA_PAGO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Fecha Pago'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261012000826Z')
,p_updated_on=>wwv_flow_imp.dz('20261012000826Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1637488407099948822)
,p_db_column_name=>'OBSERVACIONES'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Observaciones'
,p_column_type=>'STRING'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261011203450Z')
,p_updated_on=>wwv_flow_imp.dz('20261011203450Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1637488108226948819)
,p_db_column_name=>'PROVEEDOR'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Proveedor'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261011203450Z')
,p_updated_on=>wwv_flow_imp.dz('20261011203450Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1637488233537948820)
,p_db_column_name=>'TOTAL'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Total'
,p_column_type=>'STRING'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261011203450Z')
,p_updated_on=>wwv_flow_imp.dz('20261011203450Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(2171260864596175028)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COMPRA_ID:FECHA:PROVEEDOR:TOTAL:ESTADO:OBSERVACIONES:CLASE_ESTADO'
,p_created_on=>wwv_flow_imp.dz('20261011204708Z')
,p_updated_on=>wwv_flow_imp.dz('20261011204708Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1274882706717386931)
,p_plug_name=>unistr('M\00E1rgenes de ganancia')
,p_static_id=>unistr('m\00E1rgenes-de-ganancia')
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2103954283454391425
,p_plug_display_sequence=>60
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT pr.nombre AS producto,',
'       pr.stock,',
'       TO_CHAR(pr.precio, ''FML999G999G999G990D00'') AS precio_venta,',
'       TO_CHAR(NVL(',
'         (SELECT MIN(pp.precio_compra)',
'            FROM productos_proveedores pp',
'           WHERE pp.producto_id = pr.producto_id), 0),',
'         ''FML999G999G999G990D00'') AS precio_compra,',
'       TO_CHAR(pr.precio - NVL(',
'         (SELECT MIN(pp.precio_compra)',
'            FROM productos_proveedores pp',
'           WHERE pp.producto_id = pr.producto_id), 0),',
'         ''FML999G999G999G990D00'') AS margen_pesos,',
'       CASE',
'         WHEN NVL((SELECT MIN(pp.precio_compra)',
'                     FROM productos_proveedores pp',
'                    WHERE pp.producto_id = pr.producto_id), 0) = 0',
unistr('           THEN ''\2014'''),
'         ELSE',
'           TO_CHAR(',
'             ROUND((pr.precio / (SELECT MIN(pp.precio_compra)',
'                                   FROM productos_proveedores pp',
'                                  WHERE pp.producto_id = pr.producto_id) - 1) * 100, 1)',
'             , ''FM990D0'') || ''%''',
'       END AS margen_porcentaje,',
'       case',
'        when nvl((select min(pp.precio_compra)',
'                  from productos_proveedores pp',
'                  where pp.producto_id = pr.producto_id), 0) = 0',
'            then ''''',
'        when (pr.precio / (select min(pp.precio_compra)',
'                           from productos_proveedores pp',
'                           where pp.producto_id = pr.producto_id) - 1) * 100 >= 100',
'            then ''margen-alto''',
'        when (pr.precio / (select min(pp.precio_compra)',
'                           from productos_proveedores pp',
'                           where pp.producto_id = pr.producto_id) - 1) * 100 >= 50',
'            then ''margen-medio''',
'            else ''margen-bajo''',
'        end as color_margen',
'  FROM productos pr',
' WHERE EXISTS (',
'       SELECT 1 FROM productos_proveedores pp',
'        WHERE pp.producto_id = pr.producto_id',
'       )'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20261009144645Z')
,p_updated_on=>wwv_flow_imp.dz('20261009150023Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(1274882835410386932)
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>1274882835410386932
,p_created_on=>wwv_flow_imp.dz('20261009144645Z')
,p_updated_on=>wwv_flow_imp.dz('20261009150023Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1274883500601386939)
,p_db_column_name=>'COLOR_MARGEN'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Color Margen'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261009145837Z')
,p_updated_on=>wwv_flow_imp.dz('20261009145837Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1274883311108386937)
,p_db_column_name=>'MARGEN_PESOS'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Margen Pesos'
,p_column_type=>'STRING'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261009144645Z')
,p_updated_on=>wwv_flow_imp.dz('20261009144908Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1274883469021386938)
,p_db_column_name=>'MARGEN_PORCENTAJE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Margen Porcentaje'
,p_column_html_expression=>'<span class="#COLOR_MARGEN#" style="font-weight: 600;">#MARGEN_PORCENTAJE#</span>'
,p_column_type=>'STRING'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261009144645Z')
,p_updated_on=>wwv_flow_imp.dz('20261009145837Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1274883251659386936)
,p_db_column_name=>'PRECIO_COMPRA'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Precio Compra'
,p_column_type=>'STRING'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261009144645Z')
,p_updated_on=>wwv_flow_imp.dz('20261009144908Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1274883105679386935)
,p_db_column_name=>'PRECIO_VENTA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Precio Venta'
,p_column_type=>'STRING'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261009144645Z')
,p_updated_on=>wwv_flow_imp.dz('20261009150023Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1274882953969386933)
,p_db_column_name=>'PRODUCTO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Producto'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261009144645Z')
,p_updated_on=>wwv_flow_imp.dz('20261009144645Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1274883048271386934)
,p_db_column_name=>'STOCK'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Stock'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261009144645Z')
,p_updated_on=>wwv_flow_imp.dz('20261009144645Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(1581554010314808955)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PRODUCTO:STOCK:PRECIO_VENTA:PRECIO_COMPRA:MARGEN_PESOS:MARGEN_PORCENTAJE:COLOR_MARGEN'
,p_created_on=>wwv_flow_imp.dz('20261009145928Z')
,p_updated_on=>wwv_flow_imp.dz('20261009145928Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1274879752448386901)
,p_plug_name=>'Productos por proveedor'
,p_static_id=>'productos-por-proveedor'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2103954283454391425
,p_plug_display_sequence=>25
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  p.nombre as proveedor,',
'        pr.nombre as producto,',
'        pr.stock as stock_actual,',
'        to_char(pp.precio_compra, ''FML999G999G999G990D00'') as precio_compra,',
'        to_char(pp.ultima_compra, ''DD/MM/YYYY'') as ultima_compra',
'from productos_proveedores pp',
'join proveedores p on p.proveedor_id = pp.proveedor_id',
'join productos pr on pr.producto_id = pp.producto_id'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20261008210520Z')
,p_updated_on=>wwv_flow_imp.dz('20261012233536Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(1274879858883386902)
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>1274879858883386902
,p_created_on=>wwv_flow_imp.dz('20261008210520Z')
,p_updated_on=>wwv_flow_imp.dz('20261012233536Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1274880252727386906)
,p_db_column_name=>'PRECIO_COMPRA'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Precio Compra'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261008210520Z')
,p_updated_on=>wwv_flow_imp.dz('20261008210520Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1274880029347386904)
,p_db_column_name=>'PRODUCTO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Producto'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261008210520Z')
,p_updated_on=>wwv_flow_imp.dz('20261008210520Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1274879946973386903)
,p_db_column_name=>'PROVEEDOR'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Proveedor'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261008210520Z')
,p_updated_on=>wwv_flow_imp.dz('20261008210520Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1274880128646386905)
,p_db_column_name=>'STOCK_ACTUAL'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Stock Actual'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261008210520Z')
,p_updated_on=>wwv_flow_imp.dz('20261008210520Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1274880419417386908)
,p_db_column_name=>'ULTIMA_COMPRA'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Ultima Compra'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261008210520Z')
,p_updated_on=>wwv_flow_imp.dz('20261012233536Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(1276100780784432651)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PROVEEDOR:PRODUCTO:STOCK_ACTUAL:PRECIO_COMPRA:ULTIMA_COMPRA'
,p_created_on=>wwv_flow_imp.dz('20261008210921Z')
,p_updated_on=>wwv_flow_imp.dz('20261008210952Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1274881248262386916)
,p_plug_name=>'Productos sin proveedor'
,p_static_id=>'productos-sin-proveedor'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2103954283454391425
,p_plug_display_sequence=>40
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  p.nombre as producto,',
'        p.stock,',
'        to_char(p.precio, ''FML999G999G999G990D00'') as precio_venta,',
'        case',
'            when p.stock = 0 then ''SIN STOCK''',
unistr('            when p.stock <= 5 then ''CR\00CDTICO'''),
'            when p.stock <= 10 then ''BAJO''',
'            else ''OK''',
'        end as estado',
'from productos p',
'where not exists (',
'    select 1 from productos_proveedores pp',
'    where pp.producto_id = p.producto_id',
')',
'order by p.nombre'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from productos p',
'    where not exists (',
'        select 1 from productos_proveedores pp',
'        where pp.producto_id = p.producto_id',
'    )',
'    and rownum = 1'))
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20261009140408Z')
,p_updated_on=>wwv_flow_imp.dz('20261009143231Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(1274881368049386917)
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>1274881368049386917
,p_created_on=>wwv_flow_imp.dz('20261009140408Z')
,p_updated_on=>wwv_flow_imp.dz('20261009142559Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1274881727502386921)
,p_db_column_name=>'ESTADO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261009140408Z')
,p_updated_on=>wwv_flow_imp.dz('20261009140408Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1274881622268386920)
,p_db_column_name=>'PRECIO_VENTA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Precio Venta'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261009140408Z')
,p_updated_on=>wwv_flow_imp.dz('20261009140408Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1274881492957386918)
,p_db_column_name=>'PRODUCTO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Producto'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261009140408Z')
,p_updated_on=>wwv_flow_imp.dz('20261009140408Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1274881548975386919)
,p_db_column_name=>'STOCK'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Stock'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261009140408Z')
,p_updated_on=>wwv_flow_imp.dz('20261009140408Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(1574957479454608064)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PRODUCTO:STOCK:PRECIO_VENTA:ESTADO'
,p_created_on=>wwv_flow_imp.dz('20261009142559Z')
,p_updated_on=>wwv_flow_imp.dz('20261009142559Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1274884509190386949)
,p_plug_name=>'Productos vendidos del mes'
,p_static_id=>'productos-vendidos-del-mes'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2103954283454391425
,p_plug_display_sequence=>80
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT p.nombre AS producto,',
'       SUM(d.cantidad) AS unidades_vendidas,',
'       COUNT(DISTINCT c.venta_id) AS cantidad_ventas,',
'       TO_CHAR(SUM(d.total_linea), ''FML999G999G999G990D00'') AS total_facturado',
'  FROM ventas_detalle d',
'  JOIN ventas_cabecera c ON c.venta_id = d.venta_id',
'  JOIN productos p ON p.producto_id = d.producto_id',
' WHERE TRUNC(c.fecha, ''MM'') = TRUNC(SYSDATE, ''MM'')',
' GROUP BY p.nombre',
' ORDER BY SUM(d.cantidad) DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20261009205631Z')
,p_updated_on=>wwv_flow_imp.dz('20261009205742Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(1274884649884386950)
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>1274884649884386950
,p_created_on=>wwv_flow_imp.dz('20261009205631Z')
,p_updated_on=>wwv_flow_imp.dz('20261009205742Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1637486581527948803)
,p_db_column_name=>'CANTIDAD_VENTAS'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Cantidad Ventas'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261009205632Z')
,p_updated_on=>wwv_flow_imp.dz('20261009205632Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1637486347245948801)
,p_db_column_name=>'PRODUCTO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Producto'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261009205631Z')
,p_updated_on=>wwv_flow_imp.dz('20261009205631Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1637486661327948804)
,p_db_column_name=>'TOTAL_FACTURADO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Total Facturado'
,p_column_type=>'STRING'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261009205632Z')
,p_updated_on=>wwv_flow_imp.dz('20261009205742Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1637486420516948802)
,p_db_column_name=>'UNIDADES_VENDIDAS'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Unidades Vendidas'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261009205632Z')
,p_updated_on=>wwv_flow_imp.dz('20261009205632Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(1637513391702951849)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PRODUCTO:UNIDADES_VENDIDAS:CANTIDAD_VENTAS:TOTAL_FACTURADO'
,p_created_on=>wwv_flow_imp.dz('20261009205636Z')
,p_updated_on=>wwv_flow_imp.dz('20261009205636Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1274881853571386922)
,p_plug_name=>'Ranking de proveedores'
,p_static_id=>'ranking-de-proveedores'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2103954283454391425
,p_plug_display_sequence=>50
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  row_number() over (order by count(pp.id) desc, p.nombre) as ranking,',
'        p.nombre as proveedor,',
'        count(pp.id) as cantidad_productos,',
'        to_char(nvl(avg(pp.precio_compra), 0), ''FML999G999G999G990D00'') as precio_promedio,',
'        to_char(nvl(min(pp.precio_compra), 0), ''FML999G999G999G990D00'') as precio_minimo,',
'        to_char(nvl(max(pp.precio_compra), 0), ''FML999G999G999G990D00'') as precio_maximo,',
'        to_char(max(pp.ultima_compra), ''DD/MM/YYYY'') as ultima_compra',
'from proveedores p',
'left join productos_proveedores pp on pp.proveedor_id = p.proveedor_id',
'where p.activo = ''S''',
'group by p.proveedor_id, p.nombre'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20261009141831Z')
,p_updated_on=>wwv_flow_imp.dz('20261009150023Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(1274881924198386923)
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>1274881924198386923
,p_created_on=>wwv_flow_imp.dz('20261009141831Z')
,p_updated_on=>wwv_flow_imp.dz('20261009150023Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1274882275512386926)
,p_db_column_name=>'CANTIDAD_PRODUCTOS'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Cantidad Productos'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261009141831Z')
,p_updated_on=>wwv_flow_imp.dz('20261009141831Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1274882508862386929)
,p_db_column_name=>'PRECIO_MAXIMO'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Precio Maximo'
,p_column_type=>'STRING'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261009141831Z')
,p_updated_on=>wwv_flow_imp.dz('20261009150023Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1274882462603386928)
,p_db_column_name=>'PRECIO_MINIMO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Precio Minimo'
,p_column_type=>'STRING'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261009141831Z')
,p_updated_on=>wwv_flow_imp.dz('20261009150023Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1274882302396386927)
,p_db_column_name=>'PRECIO_PROMEDIO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Precio Promedio'
,p_column_type=>'STRING'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261009141831Z')
,p_updated_on=>wwv_flow_imp.dz('20261009150023Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1274882158325386925)
,p_db_column_name=>'PROVEEDOR'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Proveedor'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261009141831Z')
,p_updated_on=>wwv_flow_imp.dz('20261009141831Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1274882022763386924)
,p_db_column_name=>'RANKING'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Ranking'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261009141831Z')
,p_updated_on=>wwv_flow_imp.dz('20261009150023Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1274882690028386930)
,p_db_column_name=>'ULTIMA_COMPRA'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Ultima Compra'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD/MM/YYYY'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261009141831Z')
,p_updated_on=>wwv_flow_imp.dz('20261009142110Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(1574957866866608073)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'RANKING:PROVEEDOR:CANTIDAD_PRODUCTOS:PRECIO_PROMEDIO:PRECIO_MINIMO:PRECIO_MAXIMO:ULTIMA_COMPRA'
,p_created_on=>wwv_flow_imp.dz('20261009142559Z')
,p_updated_on=>wwv_flow_imp.dz('20261009142559Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(980705093050091841)
,p_plug_name=>'Resumen de proveedores'
,p_static_id=>'resumen-de-proveedores'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2103954283454391425
,p_plug_display_sequence=>15
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT p.proveedor_id,',
'       p.nombre AS proveedor,',
'       p.telefono,',
'       p.contacto,',
'       COUNT(pp.id) AS cantidad_productos,',
'       TO_CHAR(NVL(AVG(pp.precio_compra), 0), ''FML999G999G999G990D00'') AS precio_promedio,',
'       MAX(pp.ultima_compra) AS ultima_compra,',
'       p.activo',
'  FROM proveedores p',
'  LEFT JOIN productos_proveedores pp ON pp.proveedor_id = p.proveedor_id',
' GROUP BY p.proveedor_id, p.nombre, p.telefono, p.contacto, p.activo'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20261008210011Z')
,p_updated_on=>wwv_flow_imp.dz('20261013000518Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(1637491263177948850)
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>1637491263177948850
,p_created_on=>wwv_flow_imp.dz('20261013000455Z')
,p_updated_on=>wwv_flow_imp.dz('20261013000518Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2707654558330991908)
,p_db_column_name=>'ACTIVO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Activo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261013000455Z')
,p_updated_on=>wwv_flow_imp.dz('20261013000455Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2707654267224991905)
,p_db_column_name=>'CANTIDAD_PRODUCTOS'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Cantidad Productos'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261013000455Z')
,p_updated_on=>wwv_flow_imp.dz('20261013000455Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2707654122309991904)
,p_db_column_name=>'CONTACTO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Contacto'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261013000455Z')
,p_updated_on=>wwv_flow_imp.dz('20261013000455Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2707654337924991906)
,p_db_column_name=>'PRECIO_PROMEDIO'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Precio Promedio'
,p_column_type=>'STRING'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261013000455Z')
,p_updated_on=>wwv_flow_imp.dz('20261013000455Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2707653932814991902)
,p_db_column_name=>'PROVEEDOR'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Proveedor'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261013000455Z')
,p_updated_on=>wwv_flow_imp.dz('20261013000455Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2707653825126991901)
,p_db_column_name=>'PROVEEDOR_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Proveedor'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261013000455Z')
,p_updated_on=>wwv_flow_imp.dz('20261013000455Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2707654033264991903)
,p_db_column_name=>'TELEFONO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Telefono'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261013000455Z')
,p_updated_on=>wwv_flow_imp.dz('20261013000455Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2707654466053991907)
,p_db_column_name=>'ULTIMA_COMPRA'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Ultima Compra'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD/MON/YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261013000455Z')
,p_updated_on=>wwv_flow_imp.dz('20261013000518Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(2707683827124002263)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PROVEEDOR_ID:PROVEEDOR:TELEFONO:CONTACTO:CANTIDAD_PRODUCTOS:PRECIO_PROMEDIO:ULTIMA_COMPRA:ACTIVO'
,p_created_on=>wwv_flow_imp.dz('20261013000501Z')
,p_updated_on=>wwv_flow_imp.dz('20261013000501Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2707654769299991910)
,p_plug_name=>unistr('Header - Comparaci\00F3n de precios')
,p_static_id=>'sec-comparacion'
,p_region_css_classes=>'sec-comparacion'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4504868307683981366
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="background: linear-gradient(90deg, #F5A623 0%, #B8720E 100%); ',
'            padding: 15px 25px; border-radius: 8px; margin: 20px 0 10px 0;',
'            display: flex; align-items: center; gap: 15px;',
'            box-shadow: 0 3px 8px rgba(0,0,0,0.2);">',
unistr('  <div style="font-size: 2rem; line-height: 1;">\D83D\DCB2</div>'),
'  <div style="flex: 1;">',
'    <h2 style="margin: 0; color: #ffffff; font-size: 1.3rem; font-weight: 700;">',
unistr('      Comparaci\00F3n de Precios'),
'    </h2>',
'    <p style="margin: 3px 0 0 0; color: #ffe8c8; font-size: 0.9rem;">',
'      Mismo producto en distintos proveedores',
'    </p>',
'  </div>',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261013001138Z')
,p_updated_on=>wwv_flow_imp.dz('20261014135559Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2707655409729991917)
,p_plug_name=>'Header - Cuenta corriente'
,p_static_id=>'sec-cuentacorriente'
,p_region_css_classes=>'sec-cuentacorriente'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4504868307683981366
,p_plug_display_sequence=>94
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="background: linear-gradient(90deg, #C0392B 0%, #7B241C 100%); ',
'            padding: 15px 25px; border-radius: 8px; margin: 20px 0 10px 0;',
'            display: flex; align-items: center; gap: 15px;',
'            box-shadow: 0 3px 8px rgba(0,0,0,0.2);">',
unistr('  <div style="font-size: 2rem; line-height: 1;">\D83D\DCB8</div>'),
'  <div style="flex: 1;">',
'    <h2 style="margin: 0; color: #ffffff; font-size: 1.3rem; font-weight: 700;">',
'      Cuenta Corriente',
'    </h2>',
'    <p style="margin: 3px 0 0 0; color: #fadbd8; font-size: 0.9rem;">',
'      Totales pendientes agrupados por proveedor',
'    </p>',
'  </div>',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261013002724Z')
,p_updated_on=>wwv_flow_imp.dz('20261014135559Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2707655361546991916)
,p_plug_name=>'Header - Historial compras'
,p_static_id=>'sec-historial'
,p_region_css_classes=>'sec-historial'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4504868307683981366
,p_plug_display_sequence=>85
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="background: linear-gradient(90deg, #34495E 0%, #1C2833 100%); ',
'            padding: 15px 25px; border-radius: 8px; margin: 20px 0 10px 0;',
'            display: flex; align-items: center; gap: 15px;',
'            box-shadow: 0 3px 8px rgba(0,0,0,0.2);">',
unistr('  <div style="font-size: 2rem; line-height: 1;">\D83D\DCCB</div>'),
'  <div style="flex: 1;">',
'    <h2 style="margin: 0; color: #ffffff; font-size: 1.3rem; font-weight: 700;">',
'      Historial de Compras',
'    </h2>',
'    <p style="margin: 3px 0 0 0; color: #c8d9f0; font-size: 0.9rem;">',
unistr('      Todas las compras registradas. Pod\00E9s marcar como pagada las pendientes.'),
'    </p>',
'  </div>',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261013002724Z')
,p_updated_on=>wwv_flow_imp.dz('20261014135559Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2707655040433991913)
,p_plug_name=>unistr('Header - M\00E1rgenes')
,p_static_id=>'sec-margenes'
,p_region_css_classes=>'sec-margenes'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4504868307683981366
,p_plug_display_sequence=>55
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="background: linear-gradient(90deg, #27AE60 0%, #186A3B 100%); ',
'            padding: 15px 25px; border-radius: 8px; margin: 20px 0 10px 0;',
'            display: flex; align-items: center; gap: 15px;',
'            box-shadow: 0 3px 8px rgba(0,0,0,0.2);">',
unistr('  <div style="font-size: 2rem; line-height: 1;">\D83D\DCC8</div>'),
'  <div style="flex: 1;">',
'    <h2 style="margin: 0; color: #ffffff; font-size: 1.3rem; font-weight: 700;">',
unistr('      M\00E1rgenes de Ganancia'),
'    </h2>',
'    <p style="margin: 3px 0 0 0; color: #d4f0dc; font-size: 0.9rem;">',
unistr('      Rentabilidad por producto (verde \2265100%, naranja 50-99%, rojo &lt;50%)'),
'    </p>',
'  </div>',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261013002724Z')
,p_updated_on=>wwv_flow_imp.dz('20261014135559Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2707655295962991915)
,p_plug_name=>unistr('Header - M\00E1s vendidos')
,p_static_id=>'sec-masvendidos'
,p_region_css_classes=>'sec-masvendidos'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4504868307683981366
,p_plug_display_sequence=>75
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="background: linear-gradient(90deg, #2980B9 0%, #1B4F72 100%); ',
'            padding: 15px 25px; border-radius: 8px; margin: 20px 0 10px 0;',
'            display: flex; align-items: center; gap: 15px;',
'            box-shadow: 0 3px 8px rgba(0,0,0,0.2);">',
unistr('  <div style="font-size: 2rem; line-height: 1;">\D83D\DD25</div>'),
'  <div style="flex: 1;">',
'    <h2 style="margin: 0; color: #ffffff; font-size: 1.3rem; font-weight: 700;">',
unistr('      Productos m\00E1s Vendidos del Mes'),
'    </h2>',
'    <p style="margin: 3px 0 0 0; color: #c8d9f0; font-size: 0.9rem;">',
'      Top de productos por unidades vendidas en el mes actual',
'    </p>',
'  </div>',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261013002724Z')
,p_updated_on=>wwv_flow_imp.dz('20261014135559Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2707654636538991909)
,p_plug_name=>'Header - Productos por proveedor'
,p_static_id=>'sec-productos'
,p_region_css_classes=>'sec-productos'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4504868307683981366
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="background: linear-gradient(90deg, #50C878 0%, #2E8B57 100%); ',
'            padding: 15px 25px; border-radius: 8px; margin: 20px 0 10px 0;',
'            display: flex; align-items: center; gap: 15px;',
'            box-shadow: 0 3px 8px rgba(0,0,0,0.2);">',
unistr('  <div style="font-size: 2rem; line-height: 1;">\D83C\DFED</div>'),
'  <div style="flex: 1;">',
'    <h2 style="margin: 0; color: #ffffff; font-size: 1.3rem; font-weight: 700;">',
'      Productos por Proveedor',
'    </h2>',
'    <p style="margin: 3px 0 0 0; color: #d0f0dc; font-size: 0.9rem;">',
unistr('      Detalle de qu\00E9 provee cada proveedor'),
'    </p>',
'  </div>',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261013000843Z')
,p_updated_on=>wwv_flow_imp.dz('20261014135559Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2707654996947991912)
,p_plug_name=>'Header - Ranking proveedores'
,p_static_id=>'sec-ranking'
,p_region_css_classes=>'sec-ranking'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4504868307683981366
,p_plug_display_sequence=>45
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="background: linear-gradient(90deg, #9B59B6 0%, #6C3483 100%); ',
'            padding: 15px 25px; border-radius: 8px; margin: 20px 0 10px 0;',
'            display: flex; align-items: center; gap: 15px;',
'            box-shadow: 0 3px 8px rgba(0,0,0,0.2);">',
unistr('  <div style="font-size: 2rem; line-height: 1;">\D83C\DFC6</div>'),
'  <div style="flex: 1;">',
'    <h2 style="margin: 0; color: #ffffff; font-size: 1.3rem; font-weight: 700;">',
'      Ranking de Proveedores',
'    </h2>',
'    <p style="margin: 3px 0 0 0; color: #e8d5f0; font-size: 0.9rem;">',
'      Los proveedores ordenados por actividad',
'    </p>',
'  </div>',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261013001138Z')
,p_updated_on=>wwv_flow_imp.dz('20261014135559Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1637490393899948841)
,p_plug_name=>'Header - Resumen de proveedores'
,p_static_id=>'sec-resumen'
,p_region_css_classes=>'sec-resumen'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4504868307683981366
,p_plug_display_sequence=>9
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="background: linear-gradient(90deg, #4A90E2 0%, #2E5C9E 100%); ',
'            padding: 15px 25px; ',
'            border-radius: 8px; ',
'            margin: 20px 0 10px 0;',
'            display: flex;',
'            align-items: center;',
'            gap: 15px;',
'            box-shadow: 0 3px 8px rgba(0,0,0,0.2);">',
'  ',
unistr('  <div style="font-size: 2rem; line-height: 1;">\D83D\DCCA</div>'),
'  ',
'  <div style="flex: 1;">',
'    <h2 style="margin: 0; color: #ffffff; font-size: 1.3rem; font-weight: 700;">',
'      Resumen de Proveedores',
'    </h2>',
'    <p style="margin: 3px 0 0 0; color: #c8d9f0; font-size: 0.9rem;">',
'      Vista general de todos los proveedores activos',
'    </p>',
'  </div>',
'  ',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261012234854Z')
,p_updated_on=>wwv_flow_imp.dz('20261014135559Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2707654876342991911)
,p_plug_name=>'Header - Productos sin proveedor'
,p_static_id=>'sec-sinprov'
,p_region_css_classes=>'sec-sinprov'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4504868307683981366
,p_plug_display_sequence=>39
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="background: linear-gradient(90deg, #E74C3C 0%, #A93226 100%); ',
'            padding: 15px 25px; border-radius: 8px; margin: 20px 0 10px 0;',
'            display: flex; align-items: center; gap: 15px;',
'            box-shadow: 0 3px 8px rgba(0,0,0,0.2);">',
unistr('  <div style="font-size: 2rem; line-height: 1;">\26A0\FE0F</div>'),
'  <div style="flex: 1;">',
'    <h2 style="margin: 0; color: #ffffff; font-size: 1.3rem; font-weight: 700;">',
'      Productos sin Proveedor',
'    </h2>',
'    <p style="margin: 3px 0 0 0; color: #fadbd8; font-size: 0.9rem;">',
'      Productos que no tienen proveedor asignado',
'    </p>',
'  </div>',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261013001138Z')
,p_updated_on=>wwv_flow_imp.dz('20261014135559Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2707655109502991914)
,p_plug_name=>'Header - Ventas por turno'
,p_static_id=>'sec-turno'
,p_region_css_classes=>'sec-turno'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4504868307683981366
,p_plug_display_sequence=>65
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="background: linear-gradient(90deg, #16A085 0%, #0E6655 100%); ',
'            padding: 15px 25px; border-radius: 8px; margin: 20px 0 10px 0;',
'            display: flex; align-items: center; gap: 15px;',
'            box-shadow: 0 3px 8px rgba(0,0,0,0.2);">',
unistr('  <div style="font-size: 2rem; line-height: 1;">\D83D\DD50</div>'),
'  <div style="flex: 1;">',
'    <h2 style="margin: 0; color: #ffffff; font-size: 1.3rem; font-weight: 700;">',
'      Ventas por Turno',
'    </h2>',
'    <p style="margin: 3px 0 0 0; color: #c8e8e0; font-size: 0.9rem;">',
unistr('      Desempe\00F1o de cada turno (Ma\00F1ana, Tarde, Noche)'),
'    </p>',
'  </div>',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261013002724Z')
,p_updated_on=>wwv_flow_imp.dz('20261014135559Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1274883786621386941)
,p_plug_name=>'Ventas por turno'
,p_static_id=>'ventas-por-turno'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2103954283454391425
,p_plug_display_sequence=>70
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  c.turno,',
'        count(distinct c.venta_id) as cantidad_ventas,',
'        sum(case when c.metodo_pago = ''EFECTIVO'' then c.total_venta else 0 end) as efectivo,',
'        sum(case when c.metodo_pago in (''DEBITO'', ''CREDITO'') then c.total_venta else 0 end) as tarjeta,',
'        sum(case when c.metodo_pago in (''TRANSFERENCIA'', ''QR'') then c.total_venta else 0 end) as transferencia,',
'        sum(c.total_venta) as total',
'from ventas_cabecera c',
'where c.fecha >= trunc(sysdate) - 30',
'and c.turno is not null',
'group by c.turno',
'order by c.turno'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20261009200329Z')
,p_updated_on=>wwv_flow_imp.dz('20261009200900Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(1274883862325386942)
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>1274883862325386942
,p_created_on=>wwv_flow_imp.dz('20261009200329Z')
,p_updated_on=>wwv_flow_imp.dz('20261009200900Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1274884099361386944)
,p_db_column_name=>'CANTIDAD_VENTAS'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cantidad Ventas'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261009200329Z')
,p_updated_on=>wwv_flow_imp.dz('20261009200329Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1274884128421386945)
,p_db_column_name=>'EFECTIVO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Efectivo'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261009200329Z')
,p_updated_on=>wwv_flow_imp.dz('20261009200329Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1274884204008386946)
,p_db_column_name=>'TARJETA'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Tarjeta'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261009200329Z')
,p_updated_on=>wwv_flow_imp.dz('20261009200329Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1274884402391386948)
,p_db_column_name=>'TOTAL'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Total'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261009200329Z')
,p_updated_on=>wwv_flow_imp.dz('20261009200329Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1274884386243386947)
,p_db_column_name=>'TRANSFERENCIA'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Transferencia'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261009200329Z')
,p_updated_on=>wwv_flow_imp.dz('20261009200329Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1274883921969386943)
,p_db_column_name=>'TURNO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Turno'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261009200329Z')
,p_updated_on=>wwv_flow_imp.dz('20261009200329Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(1626344345573710504)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'TURNO:CANTIDAD_VENTAS:EFECTIVO:TARJETA:TRANSFERENCIA:TOTAL'
,p_created_on=>wwv_flow_imp.dz('20261009200900Z')
,p_updated_on=>wwv_flow_imp.dz('20261009200900Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2707655531402991918)
,p_plug_name=>unistr('\00CDndice de reportes')
,p_static_id=>unistr('\00EDndice-de-reportes')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4504868307683981366
,p_plug_display_sequence=>1
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="background: #1e1e1e; padding: 20px 25px; border-radius: 10px; ',
'            margin-bottom: 20px; border-left: 4px solid #4A90E2;',
'            box-shadow: 0 3px 8px rgba(0,0,0,0.2);">',
'  ',
'  <h3 style="margin: 0 0 15px 0; color: #ffffff; font-size: 1.1rem; font-weight: 600;">',
unistr('    \D83D\DCD1 \00CDndice de Reportes'),
'  </h3>',
'  ',
'  <div style="display: flex; flex-wrap: wrap; gap: 10px;">',
'    ',
'    <a href="javascript:void(0);" onclick="var el=document.querySelector(''.sec-resumen''); if(el) el.scrollIntoView({behavior:''smooth'',block:''start''});" ',
'       style="background: #4A90E2; color: #fff; padding: 8px 16px; border-radius: 20px; ',
'              text-decoration: none; font-size: 0.85rem; font-weight: 500; cursor: pointer;">',
unistr('      \D83D\DCCA Resumen'),
'    </a>',
'    ',
'    <a href="javascript:void(0);" onclick="var el=document.querySelector(''.sec-productos''); if(el) el.scrollIntoView({behavior:''smooth'',block:''start''});" ',
'       style="background: #50C878; color: #fff; padding: 8px 16px; border-radius: 20px; ',
'              text-decoration: none; font-size: 0.85rem; font-weight: 500; cursor: pointer;">',
unistr('      \D83C\DFED Productos'),
'    </a>',
'    ',
'    <a href="javascript:void(0);" onclick="var el=document.querySelector(''.sec-comparacion''); if(el) el.scrollIntoView({behavior:''smooth'',block:''start''});" ',
'       style="background: #F5A623; color: #fff; padding: 8px 16px; border-radius: 20px; ',
'              text-decoration: none; font-size: 0.85rem; font-weight: 500; cursor: pointer;">',
unistr('      \D83D\DCB2 Comparaci\00F3n'),
'    </a>',
'    ',
'    <a href="javascript:void(0);" onclick="var el=document.querySelector(''.sec-sinprov''); if(el) el.scrollIntoView({behavior:''smooth'',block:''start''});" ',
'       style="background: #E74C3C; color: #fff; padding: 8px 16px; border-radius: 20px; ',
'              text-decoration: none; font-size: 0.85rem; font-weight: 500; cursor: pointer;">',
unistr('      \26A0\FE0F Sin Proveedor'),
'    </a>',
'    ',
'    <a href="javascript:void(0);" onclick="var el=document.querySelector(''.sec-ranking''); if(el) el.scrollIntoView({behavior:''smooth'',block:''start''});" ',
'       style="background: #9B59B6; color: #fff; padding: 8px 16px; border-radius: 20px; ',
'              text-decoration: none; font-size: 0.85rem; font-weight: 500; cursor: pointer;">',
unistr('      \D83C\DFC6 Ranking'),
'    </a>',
'    ',
'    <a href="javascript:void(0);" onclick="var el=document.querySelector(''.sec-margenes''); if(el) el.scrollIntoView({behavior:''smooth'',block:''start''});" ',
'       style="background: #27AE60; color: #fff; padding: 8px 16px; border-radius: 20px; ',
'              text-decoration: none; font-size: 0.85rem; font-weight: 500; cursor: pointer;">',
unistr('      \D83D\DCC8 M\00E1rgenes'),
'    </a>',
'    ',
'    <a href="javascript:void(0);" onclick="var el=document.querySelector(''.sec-turno''); if(el) el.scrollIntoView({behavior:''smooth'',block:''start''});" ',
'       style="background: #16A085; color: #fff; padding: 8px 16px; border-radius: 20px; ',
'              text-decoration: none; font-size: 0.85rem; font-weight: 500; cursor: pointer;">',
unistr('      \D83D\DD50 Ventas por Turno'),
'    </a>',
'    ',
'    <a href="javascript:void(0);" onclick="var el=document.querySelector(''.sec-masvendidos''); if(el) el.scrollIntoView({behavior:''smooth'',block:''start''});" ',
'       style="background: #2980B9; color: #fff; padding: 8px 16px; border-radius: 20px; ',
'              text-decoration: none; font-size: 0.85rem; font-weight: 500; cursor: pointer;">',
unistr('      \D83D\DD25 M\00E1s Vendidos'),
'    </a>',
'    ',
'    <a href="javascript:void(0);" onclick="var el=document.querySelector(''.sec-historial''); if(el) el.scrollIntoView({behavior:''smooth'',block:''start''});" ',
'       style="background: #34495E; color: #fff; padding: 8px 16px; border-radius: 20px; ',
'              text-decoration: none; font-size: 0.85rem; font-weight: 500; cursor: pointer;">',
unistr('      \D83D\DCCB Historial Compras'),
'    </a>',
'    ',
'    <a href="javascript:void(0);" onclick="var el=document.querySelector(''.sec-cuentacorriente''); if(el) el.scrollIntoView({behavior:''smooth'',block:''start''});" ',
'       style="background: #C0392B; color: #fff; padding: 8px 16px; border-radius: 20px; ',
'              text-decoration: none; font-size: 0.85rem; font-weight: 500; cursor: pointer;">',
unistr('      \D83D\DCB8 Cuenta Corriente'),
'    </a>',
'    ',
'  </div>',
'  ',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261013020822Z')
,p_updated_on=>wwv_flow_imp.dz('20261014135600Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1637488884775948826)
,p_name=>'P14_COMPRA_A_PAGAR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1637487749105948815)
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261012000914Z')
,p_updated_on=>wwv_flow_imp.dz('20261012193533Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1637488997231948827)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Marcar como pagado'
,p_static_id=>'marcar-como-pagado'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if :P14_COMPRA_A_PAGAR is null then',
unistr('        apex_application.g_print_success_message := ''\26A0\FE0F No se especific\00F3 la compra.'';'),
'        return;',
'    end if;',
'',
'    update compras',
'    set estado = ''Pagado'',',
'        fecha_pago = sysdate',
'    where compra_id = :P14_COMPRA_A_PAGAR;',
'',
'    if sql%rowcount = 0 then',
unistr('        apex_application.g_print_success_message := ''\26A0\FE0F No se encontr\00F3 la compra.'';'),
'    else',
unistr('        apex_application.g_print_success_message := ''\2705 Compra marcada como pagada.'';'),
'    end if;',
'exception',
'    when others then',
unistr('        apex_application.g_print_success_message := ''\274C Error: '' || SQLERRM;'),
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'MARCAR_PAGADA'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_internal_uid=>1637488997231948827
,p_created_on=>wwv_flow_imp.dz('20261012001528Z')
,p_updated_on=>wwv_flow_imp.dz('20261012001528Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
end;
/
prompt --application/pages/page_00015
begin
wwv_flow_imp_page.create_page(
 p_id=>15
,p_name=>'Registrar compra'
,p_alias=>'REGISTRAR-COMPRA'
,p_step_title=>'Registrar compra'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3748731866027892630)
,p_protection_level=>'C'
,p_page_component_map=>'16'
,p_created_on=>wwv_flow_imp.dz('20261009210750Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261021231453Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_last_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1639849251611063579)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2534890969069732905
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(11569956826024240755)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4075790987805660140
,p_created_on=>wwv_flow_imp.dz('20261009210750Z')
,p_updated_on=>wwv_flow_imp.dz('20261009210750Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1637486744638948805)
,p_plug_name=>'Registrar compra'
,p_static_id=>'registrar-compra'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4504868307683981366
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'COMPRAS'
,p_include_rowid_column=>false
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20261009224723Z')
,p_updated_on=>wwv_flow_imp.dz('20261009230549Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1637487689269948814)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(1637486744638948805)
,p_button_name=>'Crear'
,p_static_id=>'crear'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Crear'
,p_grid_new_row=>'Y'
,p_created_on=>wwv_flow_imp.dz('20261009230131Z')
,p_updated_on=>wwv_flow_imp.dz('20261009230549Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1637486913601948807)
,p_name=>'P15_COMPRA_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1637486744638948805)
,p_item_source_plug_id=>wwv_flow_imp.id(1637486744638948805)
,p_source=>'COMPRA_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261009224723Z')
,p_updated_on=>wwv_flow_imp.dz('20261009230549Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1637487304917948811)
,p_name=>'P15_ESTADO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1637486744638948805)
,p_item_source_plug_id=>wwv_flow_imp.id(1637486744638948805)
,p_prompt=>'Estado'
,p_source=>'ESTADO'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Pagado;Pagado,Pendiente;Pendiente'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- Seleccione el estado --'
,p_cHeight=>1
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261009224723Z')
,p_updated_on=>wwv_flow_imp.dz('20261011193401Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1637487121824948809)
,p_name=>'P15_FECHA'
,p_source_data_type=>'DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1637486744638948805)
,p_item_source_plug_id=>wwv_flow_imp.id(1637486744638948805)
,p_item_default=>'sysdate'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Fecha'
,p_format_mask=>'DD/MM/YYYY'
,p_source=>'FECHA'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261009224723Z')
,p_updated_on=>wwv_flow_imp.dz('20261021230353Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1637487428463948812)
,p_name=>'P15_OBSERVACIONES'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1637486744638948805)
,p_item_source_plug_id=>wwv_flow_imp.id(1637486744638948805)
,p_prompt=>'Observaciones'
,p_source=>'OBSERVACIONES'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>500
,p_cHeight=>5
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261009224723Z')
,p_updated_on=>wwv_flow_imp.dz('20261009230549Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1637487049281948808)
,p_name=>'P15_PROVEEDOR_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1637486744638948805)
,p_item_source_plug_id=>wwv_flow_imp.id(1637486744638948805)
,p_prompt=>'Proveedor'
,p_source=>'PROVEEDOR_ID'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nombre as display_value, proveedor_id as return_value from proveedores',
'where activo = ''S''',
'order by nombre'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- Seleccione un proveedor --'
,p_cSize=>30
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261009224723Z')
,p_updated_on=>wwv_flow_imp.dz('20261011201442Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1637487264324948810)
,p_name=>'P15_TOTAL'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1637486744638948805)
,p_item_source_plug_id=>wwv_flow_imp.id(1637486744638948805)
,p_prompt=>'Total'
,p_source=>'TOTAL'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261009224723Z')
,p_updated_on=>wwv_flow_imp.dz('20261009230549Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1637486803428948806)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(1637486744638948805)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Registrar compra'
,p_static_id=>'initialize-form-registrar-compra'
,p_internal_uid=>1637486803428948806
,p_created_on=>wwv_flow_imp.dz('20261009224723Z')
,p_updated_on=>wwv_flow_imp.dz('20261009224723Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1637487580102948813)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Insertar compra'
,p_static_id=>'procesar-compra'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_fecha date;',
'begin',
'    -- 1. Validar proveedor',
'    if :P15_PROVEEDOR_ID is null or :P15_PROVEEDOR_ID = 0 then',
'        apex_error.add_error(',
unistr('            p_message => ''\26A0\FE0F Deb\00E9s elegir un proveedor.'','),
'            p_display_location => apex_error.c_inline_with_field_and_notif,',
'            p_page_item_name => ''P15_PROVEEDOR_ID''',
'        );',
'        return;',
'    end if;',
'',
'    -- 2. Validar total',
'    if :P15_TOTAL is null or :P15_TOTAL <= 0 then',
'        apex_error.add_error(',
unistr('            p_message => ''\26A0\FE0F Ingres\00E1 un total mayor a 0.'','),
'            p_display_location => apex_error.c_inline_with_field_and_notif,',
'            p_page_item_name => ''P15_TOTAL''',
'        );',
'        return;',
'    end if;',
'',
unistr('    -- 3. NUEVA VALIDACI\00D3N: Obligar a elegir el estado'),
'    if :P15_ESTADO is null then',
'        apex_error.add_error(',
unistr('            p_message => ''\26A0\FE0F Deb\00E9s elegir un estado (Pagado o Pendiente).'','),
'            p_display_location => apex_error.c_inline_with_field_and_notif,',
'            p_page_item_name => ''P15_ESTADO''',
'        );',
'        return;',
'    end if;',
'',
unistr('    -- 4. Conversi\00F3n de fecha a prueba de balas'),
'    if :P15_FECHA is not null then',
'        v_fecha := to_date(SUBSTR(:P15_FECHA, 1, 10), CASE WHEN INSTR(:P15_FECHA, ''/'') > 0 THEN ''DD/MM/YYYY'' ELSE ''YYYY-MM-DD'' END);',
'    else',
'        v_fecha := sysdate;',
'    end if;',
'',
'    -- 5. Insertar compra (Quitamos el NVL porque ya validamos que no sea nulo)',
'    insert into compras (',
'        fecha, proveedor_id, total, estado, observaciones, fecha_pago',
'    ) values (',
'        v_fecha,',
'        :P15_PROVEEDOR_ID,',
'        :P15_TOTAL,',
'        upper(:P15_ESTADO),',
'        :P15_OBSERVACIONES,',
'        case when upper(:P15_ESTADO) = ''PAGADO''',
'             then v_fecha',
'             else null',
'        end',
'    );',
'',
'    -- 6. Limpiar campos',
'    :P15_FECHA := null;',
'    :P15_PROVEEDOR_ID := null;',
'    :P15_TOTAL := null;',
'    :P15_ESTADO := null; -- Lo dejamos nulo para que el usuario deba elegir siempre',
'    :P15_OBSERVACIONES := null;',
'',
'exception',
'    when others then',
'        apex_error.add_error(',
unistr('            p_message => ''\274C Error: '' || SQLERRM,'),
'            p_display_location => apex_error.c_inline_in_notification',
'        );',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(1637487689269948814)
,p_process_success_message=>unistr('\2705 Compra registrada correctamente.')
,p_internal_uid=>1637487580102948813
,p_created_on=>wwv_flow_imp.dz('20261009230131Z')
,p_updated_on=>wwv_flow_imp.dz('20261021231453Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
end;
/
prompt --application/pages/page_00016
begin
wwv_flow_imp_page.create_page(
 p_id=>16
,p_name=>unistr('Cambiar contrase\00F1a')
,p_alias=>unistr('CAMBIAR-CONTRASE\00D1A')
,p_step_title=>unistr('Cambiar contrase\00F1a')
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* ============================================',
unistr('   BOTONES - P\00C1GINA 16 (CAMBIAR CONTRASE\00D1A)'),
'   ============================================ */',
unistr('/* Usamos el ID din\00E1mico para empujar la columna derecha */'),
'#R2707657557030991938 .col-end {',
'    display: flex !important;',
'    justify-content: flex-end !important;',
'}'))
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'16'
,p_created_on=>wwv_flow_imp.dz('20261015203114Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261018010319Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_last_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2707657557030991938)
,p_plug_name=>'Botones'
,p_static_id=>'botones-cambiar-pw'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>60
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261016225510Z')
,p_updated_on=>wwv_flow_imp.dz('20261017003721Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4326656916972683984)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2534890969069732905
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(11569956826024240755)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4075790987805660140
,p_created_on=>wwv_flow_imp.dz('20261015203115Z')
,p_updated_on=>wwv_flow_imp.dz('20261015203115Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2707656974466991932)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2707657557030991938)
,p_button_name=>unistr('Cambiar_contrase\00F1a')
,p_static_id=>unistr('cambiar-contrase\00F1a_1')
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Cambiar contrase\00F1a')
,p_grid_new_row=>'Y'
,p_created_on=>wwv_flow_imp.dz('20261015203958Z')
,p_updated_on=>wwv_flow_imp.dz('20261016234445Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2707657421127991937)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(2707657557030991938)
,p_button_name=>'Cancelar'
,p_static_id=>'cancelar'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Cancelar'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_created_on=>wwv_flow_imp.dz('20261016220351Z')
,p_updated_on=>wwv_flow_imp.dz('20261016234445Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(2707657370502991936)
,p_branch_name=>'Redirigir al inicio'
,p_branch_action=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(2707656974466991932)
,p_branch_sequence=>10
,p_created_on=>wwv_flow_imp.dz('20261016220351Z')
,p_updated_on=>wwv_flow_imp.dz('20261016220351Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2707656603726991929)
,p_name=>'P16_PASSWORD_ACTUAL'
,p_item_sequence=>10
,p_prompt=>unistr('Contrase\00F1a actual')
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261015203843Z')
,p_updated_on=>wwv_flow_imp.dz('20261016221833Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2707656873074991931)
,p_name=>'P16_PASSWORD_CONFIRMAR'
,p_item_sequence=>30
,p_prompt=>unistr('Confirmar contrase\00F1a nueva')
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261015203843Z')
,p_updated_on=>wwv_flow_imp.dz('20261016221833Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2707656758761991930)
,p_name=>'P16_PASSWORD_NUEVA'
,p_item_sequence=>20
,p_prompt=>unistr('Contrase\00F1a nueva')
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261015203843Z')
,p_updated_on=>wwv_flow_imp.dz('20261016221833Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(2707657284537991935)
,p_validation_name=>'Validar password actual'
,p_static_id=>'validar-password-actual'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
unistr('    -- Controlar si el campo est\00E1 vac\00EDo (porque APEX lo borra al fallar)'),
'    IF :P16_PASSWORD_ACTUAL IS NULL THEN',
'        RETURN FALSE; -- Muestra el mensaje de error rojo',
'    END IF;',
'',
'    -- Intentar autenticar al usuario',
'    APEX_AUTHENTICATION.LOGIN(',
'        p_username => :APP_USER,',
'        p_password => :P16_PASSWORD_ACTUAL',
'    );',
'    RETURN TRUE; -- Si el login es exitoso, devuelve VERDADERO',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        RETURN FALSE; -- Si falla, devuelve FALSO',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>unistr('\274C La contrase\00F1a actual es incorrecta.')
,p_when_button_pressed=>wwv_flow_imp.id(2707656974466991932)
,p_associated_item=>wwv_flow_imp.id(2707656603726991929)
,p_error_display_location=>'INLINE_WITH_FIELD'
,p_created_on=>wwv_flow_imp.dz('20261016220351Z')
,p_updated_on=>wwv_flow_imp.dz('20261016221833Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2707657040228991933)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Cambiar password'
,p_static_id=>'cambiar-password'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  v_user VARCHAR2(100) := :APP_USER;',
'BEGIN',
unistr('  -- 1. Validar que los campos de la nueva contrase\00F1a no est\00E9n vac\00EDos'),
unistr('  -- (Esto es necesario porque APEX borra las contrase\00F1as al recargar la p\00E1gina por un error)'),
'  IF :P16_PASSWORD_NUEVA IS NULL OR :P16_PASSWORD_CONFIRMAR IS NULL THEN',
'    apex_error.add_error(',
unistr('        p_message          => ''\26A0\FE0F Debes ingresar y confirmar la nueva contrase\00F1a.'','),
'        p_display_location => apex_error.c_inline_in_notification',
'    );',
'    RETURN;',
'  END IF;',
'',
unistr('  -- 2. Validar que las contrase\00F1as nuevas coincidan'),
'  IF :P16_PASSWORD_NUEVA != :P16_PASSWORD_CONFIRMAR THEN',
'    apex_error.add_error(',
unistr('        p_message          => ''\26A0\FE0F Las contrase\00F1as nuevas no coinciden.'','),
'        p_display_location => apex_error.c_inline_with_field_and_notif,',
'        p_page_item_name   => ''P16_PASSWORD_CONFIRMAR''',
'    );',
'    RETURN;',
'  END IF;',
'',
unistr('  -- 3. Validar largo m\00EDnimo'),
'  IF LENGTH(:P16_PASSWORD_NUEVA) < 8 THEN',
'    apex_error.add_error(',
unistr('        p_message          => ''\26A0\FE0F La contrase\00F1a debe tener al menos 8 caracteres.'','),
'        p_display_location => apex_error.c_inline_with_field_and_notif,',
'        p_page_item_name   => ''P16_PASSWORD_NUEVA''',
'    );',
'    RETURN;',
'  END IF;',
'',
unistr('  -- 4. Cambiar la contrase\00F1a'),
'  BEGIN',
'    APEX_UTIL.CHANGE_CURRENT_USER_PW(p_new_password => :P16_PASSWORD_NUEVA);',
'    ',
unistr('    -- Limpiar campos por seguridad (Buena pr\00E1ctica)'),
'    :P16_PASSWORD_ACTUAL := NULL;',
'    :P16_PASSWORD_NUEVA := NULL;',
'    :P16_PASSWORD_CONFIRMAR := NULL;',
'    ',
unistr('    -- \26A0\FE0F NOTA: El mensaje de \00E9xito NO va aqu\00ED. '),
unistr('    -- Se configura en las propiedades del proceso en la secci\00F3n "Success Message".'),
'    ',
'  EXCEPTION',
'    WHEN OTHERS THEN',
'      apex_error.add_error(',
unistr('          p_message          => ''\274C Error al cambiar la contrase\00F1a: '' || SQLERRM,'),
'          p_display_location => apex_error.c_inline_in_notification',
'      );',
'  END;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(2707656974466991932)
,p_process_success_message=>unistr('\2705 Contrase\00F1a cambiada correctamente.')
,p_internal_uid=>2707657040228991933
,p_created_on=>wwv_flow_imp.dz('20261015204804Z')
,p_updated_on=>wwv_flow_imp.dz('20261016221833Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
end;
/
prompt --application/pages/page_09999
begin
wwv_flow_imp_page.create_page(
 p_id=>9999
,p_name=>'Login Page'
,p_alias=>'LOGIN'
,p_step_title=>'Kiosco'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2104585595298951431
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'12'
,p_created_on=>wwv_flow_imp.dz('20260622222059Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261005144516Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_last_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11569962614897240769)
,p_plug_name=>'Kiosco'
,p_static_id=>'kiosco'
,p_title=>'Kiosco'
,p_icon_css_classes=>'fa-store'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2677585639786677191
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260622222059Z')
,p_updated_on=>wwv_flow_imp.dz('20261005144516Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11569964288525240771)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(11569962614897240769)
,p_button_name=>'LOGIN'
,p_static_id=>'login'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Iniciar sesi\00F3n')
,p_button_position=>'NEXT'
,p_created_on=>wwv_flow_imp.dz('20260622222059Z')
,p_updated_on=>wwv_flow_imp.dz('20261005143417Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11569963576563240770)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(11569962614897240769)
,p_prompt=>unistr('Contrase\00F1a')
,p_placeholder=>unistr('Ingrese su contrase\00F1a')
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="current-password"'
,p_field_template=>2044213549383960320
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260622222059Z')
,p_updated_on=>wwv_flow_imp.dz('20261005143417Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11569963966297240771)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(11569962614897240769)
,p_prompt=>'Recordar usuario'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_display_when=>'apex_authentication.persistent_cookies_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>2044213549383960320
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260622222059Z')
,p_updated_on=>wwv_flow_imp.dz('20261005143417Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11569963159636240770)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11569962614897240769)
,p_prompt=>'Usuario'
,p_placeholder=>'Ingrese su usuario'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="username"'
,p_field_template=>2044213549383960320
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260622222059Z')
,p_updated_on=>wwv_flow_imp.dz('20261005143417Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11569968379986240775)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_static_id=>'clear-page-s-cache'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'type', 'CLEAR_CACHE_CURRENT_PAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>11569968379986240775
,p_created_on=>wwv_flow_imp.dz('20260622222059Z')
,p_updated_on=>wwv_flow_imp.dz('20260622222059Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11569967937154240774)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_static_id=>'get-username-cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>11569967937154240774
,p_created_on=>wwv_flow_imp.dz('20260622222059Z')
,p_updated_on=>wwv_flow_imp.dz('20260622222059Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11569964642387240772)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Login'
,p_static_id=>'login'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'package', 'APEX_AUTHENTICATION',
  'package_method', 'LOGIN',
  'type', 'PLSQL_PACKAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>11569964642387240772
,p_created_on=>wwv_flow_imp.dz('20260622222059Z')
,p_updated_on=>wwv_flow_imp.dz('20260622222059Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(11569965625311240773)
,p_page_process_id=>wwv_flow_imp.id(11569964642387240772)
,p_page_id=>9999
,p_name=>'p_password'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_PASSWORD'
,p_created_on=>wwv_flow_imp.dz('20260622222059Z')
,p_updated_on=>wwv_flow_imp.dz('20260622222059Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(11569966166340240773)
,p_page_process_id=>wwv_flow_imp.id(11569964642387240772)
,p_page_id=>9999
,p_name=>'p_set_persistent_auth'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'API_DEFAULT'
,p_created_on=>wwv_flow_imp.dz('20260622222059Z')
,p_updated_on=>wwv_flow_imp.dz('20260622222059Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(11569965157221240772)
,p_page_process_id=>wwv_flow_imp.id(11569964642387240772)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P9999_USERNAME'
,p_created_on=>wwv_flow_imp.dz('20260622222059Z')
,p_updated_on=>wwv_flow_imp.dz('20260622222059Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11569966544923240773)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Set Username Cookie'
,p_static_id=>'set-username-cookie'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'package', 'APEX_AUTHENTICATION',
  'package_method', 'SEND_LOGIN_USERNAME_COOKIE',
  'type', 'PLSQL_PACKAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>11569966544923240773
,p_created_on=>wwv_flow_imp.dz('20260622222059Z')
,p_updated_on=>wwv_flow_imp.dz('20260622222059Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(11569967500272240774)
,p_page_process_id=>wwv_flow_imp.id(11569966544923240773)
,p_page_id=>9999
,p_name=>'p_consent'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_REMEMBER'
,p_created_on=>wwv_flow_imp.dz('20260622222059Z')
,p_updated_on=>wwv_flow_imp.dz('20260622222059Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(11569967031094240774)
,p_page_process_id=>wwv_flow_imp.id(11569966544923240773)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'EXPRESSION'
,p_value_language=>'PLSQL'
,p_value=>'lower( :P9999_USERNAME )'
,p_created_on=>wwv_flow_imp.dz('20260622222059Z')
,p_updated_on=>wwv_flow_imp.dz('20260622222059Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
end;
/
prompt --application/deployment/definition
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp_shared.create_install(
 p_id=>wwv_flow_imp.id(7195983220617056758)
,p_deinstall_script_clob=>wwv_flow_imp.varchar2_to_clob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20261023140649Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261023144053Z')
,p_created_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
,p_last_updated_by=>'DESDEABAJOOTRAVEZ2@GMAIL.COM'
);
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false)
);
commit;
end;
/
set verify on feedback on define on
prompt  ...done
