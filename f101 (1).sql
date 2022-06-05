set define off
set verify off
set serveroutput on size 1000000
set feedback off
WHENEVER SQLERROR EXIT SQL.SQLCODE ROLLBACK
begin wwv_flow.g_import_in_progress := true; end; 
/
 
 
--application/set_environment
prompt  APPLICATION 101 - StaffTraining
--
-- Application Export:
--   Application:     101
--   Name:            StaffTraining
--   Date and Time:   22:26 Sunday June 5, 2022
--   Exported By:     ADMIN
--   Flashback:       0
--   Export Type:     Application Export
--   Version: 4.0.2.00.09
 
-- Import:
--   Using application builder
--   or
--   Using SQL*Plus as the Oracle user APEX_040000 or as the owner (parsing schema) of the application.
 
-- Application Statistics:
--   Pages:                   18
--     Items:                 23
--     Computations:           0
--     Validations:           47
--     Processes:             32
--     Regions:               20
--     Buttons:               55
--     Dynamic Actions:        0
--   Shared Components
--     Breadcrumbs:            1
--        Entries              1
--     Items:                  4
--     Computations:           0
--     Processes:              0
--     Parent Tabs:            1
--     Tab Sets:               1
--        Tabs:               14
--     NavBars:                1
--     Lists:                  0
--     Shortcuts:              1
--     Themes:                 1
--     Templates:
--        Page:               15
--        List:               20
--        Report:             10
--        Label:               5
--        Region:             30
--     Messages:               0
--     Build Options:          0
 
 
--       AAAA       PPPPP   EEEEEE  XX      XX
--      AA  AA      PP  PP  EE       XX    XX
--     AA    AA     PP  PP  EE        XX  XX
--    AAAAAAAAAA    PPPPP   EEEE       XXXX
--   AA        AA   PP      EE        XX  XX
--  AA          AA  PP      EE       XX    XX
--  AA          AA  PP      EEEEEE  XX      XX
prompt  Set Credentials...
 
begin
 
  -- Assumes you are running the script connected to SQL*Plus as the Oracle user APEX_040000 or as the owner (parsing schema) of the application.
  wwv_flow_api.set_security_group_id(p_security_group_id=>nvl(wwv_flow_application_install.get_workspace_id,4816321566903264));
 
end;
/

begin wwv_flow.g_import_in_progress := true; end;
/
begin 

select value into wwv_flow_api.g_nls_numeric_chars from nls_session_parameters where parameter='NLS_NUMERIC_CHARACTERS';

end;

/
begin execute immediate 'alter session set nls_numeric_characters=''.,''';

end;

/
begin wwv_flow.g_browser_language := 'en'; end;
/
prompt  Check Compatibility...
 
begin
 
-- This date identifies the minimum version required to import this file.
wwv_flow_api.set_version(p_version_yyyy_mm_dd=>'2010.05.13');
 
end;
/

prompt  Set Application ID...
 
begin
 
   -- SET APPLICATION ID
   wwv_flow.g_flow_id := nvl(wwv_flow_application_install.get_application_id,101);
   wwv_flow_api.g_id_offset := nvl(wwv_flow_application_install.get_offset,0);
null;
 
end;
/

--application/delete_application
 
begin
 
   -- Remove Application
wwv_flow_api.remove_flow(nvl(wwv_flow_application_install.get_application_id,101));
 
end;
/

 
begin
 
wwv_flow_audit.remove_audit_trail(nvl(wwv_flow_application_install.get_application_id,101));
null;
 
end;
/

--application/create_application
 
begin
 
wwv_flow_api.create_flow(
  p_id    => nvl(wwv_flow_application_install.get_application_id,101),
  p_display_id=> nvl(wwv_flow_application_install.get_application_id,101),
  p_owner => nvl(wwv_flow_application_install.get_schema,'EMP_PROFILE'),
  p_name  => nvl(wwv_flow_application_install.get_application_name,'StaffTraining'),
  p_alias => nvl(wwv_flow_application_install.get_application_alias,'F101'),
  p_page_view_logging => 'YES',
  p_default_page_template=> 4886631484313786 + wwv_flow_api.g_id_offset,
  p_printer_friendly_template=> 4886817804313786 + wwv_flow_api.g_id_offset,
  p_default_region_template=> 4889906514313789 + wwv_flow_api.g_id_offset,
  p_error_template=> 4886224423313785 + wwv_flow_api.g_id_offset,
  p_page_protection_enabled_y_n=> 'Y',
  p_checksum_salt_last_reset => '20220605222654',
  p_max_session_length_sec=> 28800,
  p_home_link=> 'f?p=&APP_ID.:1:&SESSION.',
  p_flow_language=> 'en',
  p_flow_language_derived_from=> '0',
  p_allow_feedback_yn=> 'N',
  p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'/i/'),
  p_publish_yn=> 'N',
  p_documentation_banner=> '',
  p_authentication=> 'CUSTOM2',
  p_login_url=> '',
  p_logout_url=> 'wwv_flow_custom_auth_std.logout?p_this_flow=&APP_ID.&amp;p_next_flow_page_sess=&APP_ID.:1',
  p_application_tab_set=> 0,
  p_public_url_prefix => '',
  p_public_user=> 'APEX_PUBLIC_USER',
  p_dbauth_url_prefix => '',
  p_proxy_server=> nvl(wwv_flow_application_install.get_proxy,''),
  p_cust_authentication_process=> '.'||to_char(4895509731313794 + wwv_flow_api.g_id_offset)||'.',
  p_cust_authentication_page=> '',
  p_custom_auth_login_url=> '',
  p_flow_version=> 'release 1.0',
  p_flow_status=> 'AVAILABLE_W_EDIT_LINK',
  p_flow_unavailable_text=> 'This application is currently unavailable at this time.',
  p_build_status=> 'RUN_AND_BUILD',
  p_exact_substitutions_only=> 'Y',
  p_vpd=> '',
  p_csv_encoding=> 'Y',
  p_auto_time_zone=> 'N',
  p_default_error_display_loc=> 'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_theme_id => 21,
  p_default_label_template => 4894215352313793 + wwv_flow_api.g_id_offset,
  p_default_report_template => 4893522550313792 + wwv_flow_api.g_id_offset,
  p_default_list_template => 4892516885313791 + wwv_flow_api.g_id_offset,
  p_default_menu_template => 4894521001313793 + wwv_flow_api.g_id_offset,
  p_default_button_template => 4887330298313787 + wwv_flow_api.g_id_offset,
  p_default_chart_template => 4888921186313788 + wwv_flow_api.g_id_offset,
  p_default_form_template => 4889029118313788 + wwv_flow_api.g_id_offset,
  p_default_wizard_template => 4890802022313789 + wwv_flow_api.g_id_offset,
  p_default_tabform_template => 4889906514313789 + wwv_flow_api.g_id_offset,
  p_default_reportr_template   =>4889906514313789 + wwv_flow_api.g_id_offset,
  p_default_menur_template => 4888416219313788 + wwv_flow_api.g_id_offset,
  p_default_listr_template => 4888824520313788 + wwv_flow_api.g_id_offset,
  p_default_irr_template => 4889515414313789 + wwv_flow_api.g_id_offset,
  p_last_updated_by => 'ADMIN',
  p_last_upd_yyyymmddhh24miss=> '20220605222654',
  p_required_roles=> wwv_flow_utilities.string_to_table2(''));
 
 
end;
/

prompt  ...authorization schemes
--
 
begin
 
null;
 
end;
/

--application/shared_components/navigation/navigation_bar
prompt  ...navigation bar entries
--
 
begin
 
wwv_flow_api.create_icon_bar_item(
  p_id => 4895819378313794 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_icon_sequence=> 200,
  p_icon_image => '',
  p_icon_subtext=> 'Logout',
  p_icon_target=> '&LOGOUT_URL.',
  p_icon_image_alt=> 'Logout',
  p_icon_height=> 32,
  p_icon_width=> 32,
  p_icon_height2=> 24,
  p_icon_width2=> 24,
  p_nav_entry_is_feedback_yn => 'N',
  p_icon_bar_disp_cond=> '',
  p_icon_bar_disp_cond_type=> '',
  p_begins_on_new_line=> '',
  p_cell_colspan      => 1,
  p_onclick=> '',
  p_icon_bar_comment=> '');
 
 
end;
/

prompt  ...application processes
--
prompt  ...application items
--
--application/shared_components/logic/application_items/fsp_after_login_url
 
begin
 
wwv_flow_api.create_flow_item(
  p_id=> 5059403237607447 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'FSP_AFTER_LOGIN_URL',
  p_data_type=> 'VARCHAR',
  p_is_persistent=> 'Y',
  p_protection_level=> '',
  p_item_comment=> '');
 
null;
 
end;
/

--application/shared_components/logic/application_items/login_message
 
begin
 
wwv_flow_api.create_flow_item(
  p_id=> 4901032507330474 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'LOGIN_MESSAGE',
  p_data_type=> 'VARCHAR',
  p_is_persistent=> 'Y',
  p_protection_level=> 'I',
  p_item_comment=> '');
 
null;
 
end;
/

--application/shared_components/logic/application_items/session_email
 
begin
 
wwv_flow_api.create_flow_item(
  p_id=> 5058718942545745 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'SESSION_EMAIL',
  p_data_type=> 'VARCHAR',
  p_is_persistent=> 'Y',
  p_protection_level=> 'I',
  p_item_comment=> '');
 
null;
 
end;
/

--application/shared_components/logic/application_items/session_user_name
 
begin
 
wwv_flow_api.create_flow_item(
  p_id=> 5058926907548110 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'SESSION_USER_NAME',
  p_data_type=> 'VARCHAR',
  p_is_persistent=> 'Y',
  p_protection_level=> 'I',
  p_item_comment=> '');
 
null;
 
end;
/

prompt  ...application level computations
--
 
begin
 
null;
 
end;
/

prompt  ...Application Tabs
--
 
begin
 
--application/shared_components/navigation/tabs/standard/t_staff_training
wwv_flow_api.create_tab (
  p_id=> 4897212852313795 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> 'TS1',
  p_tab_sequence=> 10,
  p_tab_name=> 'T_STAFF_TRAINING',
  p_tab_text => 'Staff Training',
  p_tab_step => 1,
  p_tab_also_current_for_pages => '2,3',
  p_tab_parent_tabset=>'TS1',
  p_tab_plsql_condition=>'if v(''APP_USER'') = ''ADMIN'' THEN'||chr(10)||
'RETURN TRUE;'||chr(10)||
'ELSE'||chr(10)||
'RETURN FALSE;'||chr(10)||
'END IF;',
  p_display_condition_type=> 'FUNCTION_BODY',
  p_tab_comment  => '');
 
--application/shared_components/navigation/tabs/standard/bank
wwv_flow_api.create_tab (
  p_id=> 4902618529339535 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> 'TS1',
  p_tab_sequence=> 20,
  p_tab_name=> 'Bank',
  p_tab_text => 'Bank',
  p_tab_step => 2,
  p_tab_also_current_for_pages => '',
  p_tab_parent_tabset=>'TS1',
  p_tab_plsql_condition=>'1',
  p_display_condition_type=> 'VAL_OF_ITEM_IN_COND_EQ_COND2',
  p_tab_disp_cond_text=> '2',
  p_tab_comment  => '');
 
--application/shared_components/navigation/tabs/standard/course_master
wwv_flow_api.create_tab (
  p_id=> 4915627291527667 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> 'TS1',
  p_tab_sequence=> 30,
  p_tab_name=> 'Course Master',
  p_tab_text => 'Course Master',
  p_tab_step => 3,
  p_tab_also_current_for_pages => '',
  p_tab_parent_tabset=>'TS1',
  p_tab_plsql_condition=>'if v(''APP_USER'') = ''ADMIN'' THEN'||chr(10)||
'RETURN TRUE;'||chr(10)||
'ELSE'||chr(10)||
'RETURN FALSE;'||chr(10)||
'END IF;',
  p_display_condition_type=> 'FUNCTION_BODY',
  p_tab_comment  => '');
 
--application/shared_components/navigation/tabs/standard/department_master
wwv_flow_api.create_tab (
  p_id=> 4923004607590604 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> 'TS1',
  p_tab_sequence=> 40,
  p_tab_name=> 'Department Master',
  p_tab_text => 'Department Master',
  p_tab_step => 4,
  p_tab_also_current_for_pages => '',
  p_tab_parent_tabset=>'TS1',
  p_tab_plsql_condition=>'1',
  p_display_condition_type=> 'VAL_OF_ITEM_IN_COND_EQ_COND2',
  p_tab_disp_cond_text=> '2',
  p_tab_comment  => '');
 
--application/shared_components/navigation/tabs/standard/employee_master
wwv_flow_api.create_tab (
  p_id=> 4926615692605850 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> 'TS1',
  p_tab_sequence=> 50,
  p_tab_name=> 'Employee Master',
  p_tab_text => 'Employee Master',
  p_tab_step => 5,
  p_tab_also_current_for_pages => '14,5',
  p_tab_parent_tabset=>'TS1',
  p_tab_plsql_condition=>'if v(''APP_USER'') = ''ADMIN'' THEN'||chr(10)||
'RETURN TRUE;'||chr(10)||
'ELSE'||chr(10)||
'RETURN FALSE;'||chr(10)||
'END IF;',
  p_display_condition_type=> 'FUNCTION_BODY',
  p_tab_comment  => '');
 
--application/shared_components/navigation/tabs/standard/job_details
wwv_flow_api.create_tab (
  p_id=> 4934432531628363 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> 'TS1',
  p_tab_sequence=> 60,
  p_tab_name=> 'Job Details',
  p_tab_text => 'Job Details',
  p_tab_step => 6,
  p_tab_also_current_for_pages => '',
  p_tab_parent_tabset=>'TS1',
  p_tab_plsql_condition=>'1',
  p_display_condition_type=> 'VAL_OF_ITEM_IN_COND_EQ_COND2',
  p_tab_disp_cond_text=> '2',
  p_tab_comment  => '');
 
--application/shared_components/navigation/tabs/standard/nationality
wwv_flow_api.create_tab (
  p_id=> 4937832764643406 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> 'TS1',
  p_tab_sequence=> 70,
  p_tab_name=> 'Nationality',
  p_tab_text => 'Nationality',
  p_tab_step => 7,
  p_tab_also_current_for_pages => '',
  p_tab_parent_tabset=>'TS1',
  p_tab_plsql_condition=>'1',
  p_display_condition_type=> 'VAL_OF_ITEM_IN_COND_EQ_COND2',
  p_tab_disp_cond_text=> '2',
  p_tab_comment  => '');
 
--application/shared_components/navigation/tabs/standard/shift_work
wwv_flow_api.create_tab (
  p_id=> 4942615472760446 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> 'TS1',
  p_tab_sequence=> 80,
  p_tab_name=> 'Shift Work',
  p_tab_text => 'Shift Work',
  p_tab_step => 8,
  p_tab_also_current_for_pages => '',
  p_tab_parent_tabset=>'TS1',
  p_tab_plsql_condition=>'1',
  p_display_condition_type=> 'VAL_OF_ITEM_IN_COND_EQ_COND2',
  p_tab_disp_cond_text=> '2',
  p_tab_comment  => '');
 
--application/shared_components/navigation/tabs/standard/training_advertisement
wwv_flow_api.create_tab (
  p_id=> 4947019548785538 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> 'TS1',
  p_tab_sequence=> 90,
  p_tab_name=> 'Training Advertisement',
  p_tab_text => 'Training Advertisement',
  p_tab_step => 9,
  p_tab_also_current_for_pages => '',
  p_tab_parent_tabset=>'TS1',
  p_tab_plsql_condition=>'if v(''APP_USER'') = ''ADMIN'' THEN'||chr(10)||
'RETURN TRUE;'||chr(10)||
'ELSE'||chr(10)||
'RETURN FALSE;'||chr(10)||
'END IF;',
  p_display_condition_type=> 'FUNCTION_BODY',
  p_tab_comment  => '');
 
--application/shared_components/navigation/tabs/standard/training_details
wwv_flow_api.create_tab (
  p_id=> 4953404469806856 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> 'TS1',
  p_tab_sequence=> 100,
  p_tab_name=> 'Training Details',
  p_tab_text => 'Training Details',
  p_tab_step => 10,
  p_tab_also_current_for_pages => '',
  p_tab_parent_tabset=>'TS1',
  p_tab_plsql_condition=>'if v(''APP_USER'') = ''ADMIN'' THEN'||chr(10)||
'RETURN TRUE;'||chr(10)||
'ELSE'||chr(10)||
'RETURN FALSE;'||chr(10)||
'END IF;',
  p_tab_comment  => '');
 
--application/shared_components/navigation/tabs/standard/training_request
wwv_flow_api.create_tab (
  p_id=> 4958332140814033 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> 'TS1',
  p_tab_sequence=> 110,
  p_tab_name=> 'Training Request',
  p_tab_text => 'Training Request',
  p_tab_step => 11,
  p_tab_also_current_for_pages => '',
  p_tab_parent_tabset=>'TS1',
  p_tab_plsql_condition=>'if v(''APP_USER'') = ''ADMIN'' THEN'||chr(10)||
'RETURN TRUE;'||chr(10)||
'ELSE'||chr(10)||
'RETURN FALSE;'||chr(10)||
'END IF;',
  p_tab_comment  => '');
 
--application/shared_components/navigation/tabs/standard/training_request_approval
wwv_flow_api.create_tab (
  p_id=> 4963021521828982 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> 'TS1',
  p_tab_sequence=> 120,
  p_tab_name=> 'Training Request Approval',
  p_tab_text => 'Training Request Approval',
  p_tab_step => 21,
  p_tab_also_current_for_pages => '22',
  p_tab_parent_tabset=>'TS1',
  p_tab_plsql_condition=>'if v(''APP_USER'') = ''ADMIN'' THEN'||chr(10)||
'RETURN TRUE;'||chr(10)||
'ELSE'||chr(10)||
'RETURN FALSE;'||chr(10)||
'END IF;',
  p_tab_comment  => '');
 
--application/shared_components/navigation/tabs/standard/training_type_master
wwv_flow_api.create_tab (
  p_id=> 4967101112842386 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> 'TS1',
  p_tab_sequence=> 130,
  p_tab_name=> 'Training Type Master',
  p_tab_text => 'Training Type Master',
  p_tab_step => 13,
  p_tab_also_current_for_pages => '',
  p_tab_parent_tabset=>'TS1',
  p_tab_plsql_condition=>'1',
  p_display_condition_type=> 'VAL_OF_ITEM_IN_COND_EQ_COND2',
  p_tab_disp_cond_text=> '2',
  p_tab_comment  => '');
 
--application/shared_components/navigation/tabs/standard/report_1
wwv_flow_api.create_tab (
  p_id=> 5101010908901478 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> 'TS1',
  p_tab_sequence=> 140,
  p_tab_name=> 'Report 1',
  p_tab_text => 'Reports',
  p_tab_step => 16,
  p_tab_also_current_for_pages => '',
  p_tab_parent_tabset=>'TS1',
  p_tab_plsql_condition=>'if v(''APP_USER'') = ''ADMIN'' THEN'||chr(10)||
'RETURN TRUE;'||chr(10)||
'ELSE'||chr(10)||
'RETURN FALSE;'||chr(10)||
'END IF;',
  p_display_condition_type=> 'FUNCTION_BODY',
  p_tab_comment  => '');
 
 
end;
/

prompt  ...Application Parent Tabs
--
 
begin
 
--application/shared_components/navigation/tabs/parent/t_ts2
wwv_flow_api.create_toplevel_tab (
  p_id=> 5000618269261663 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> 'TS1',
  p_tab_sequence=> 10,
  p_tab_name  => 'T_TS2',
  p_tab_text  => 'TS2',
  p_tab_target=> 'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:RP::',
  p_current_on_tabset=> 'TS1',
  p_tab_comment=> '');
 
 
end;
/

prompt  ...Shared Lists of values
--
prompt  ...Application Trees
--
--application/pages/page_groups
prompt  ...page groups
--
 
begin
 
null;
 
end;
/

--application/comments
prompt  ...comments: requires application express 2.2 or higher
--
 
--application/pages/page_00001
prompt  ...PAGE 1: Staff Training
--
 
begin
 
wwv_flow_api.create_page (
  p_flow_id => wwv_flow.g_flow_id
 ,p_id => 1
 ,p_tab_set => 'TS1'
 ,p_name => 'Staff Training'
 ,p_step_title => 'Staff Training'
 ,p_step_sub_title => 'Staff Training'
 ,p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS'
 ,p_include_apex_css_js_yn => 'Y'
 ,p_cache_page_yn => 'N'
 ,p_help_text => 
'No help is available for this page.'
 ,p_last_updated_by => 'ADMIN'
 ,p_last_upd_yyyymmddhh24miss => '20220512135841'
  );
null;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 4897319405313796 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 1,
  p_plug_name=> 'Staff Training',
  p_region_name=>'test',
  p_plug_template=> 4889906514313789+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 10,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'AFTER_SHOW_ITEMS',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_header=> '<html>'||chr(10)||
'<body>'||chr(10)||
''||chr(10)||
'<p style="font-family:Copperplate;color:Green;bold;font-size:26px;">Staff Training & Development</p>  '||chr(10)||
''||chr(10)||
'</body>'||chr(10)||
'</html>',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_region_image=>'#APP_IMAGES#StaffTraining.jpg',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 4897523056313796 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 1,
  p_plug_name=> 'Breadcrumbs',
  p_region_name=>'',
  p_plug_template=> 4888416219313788+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 1,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'REGION_POSITION_01',
  p_plug_source=> s,
  p_plug_source_type=> 'M'|| to_char(4896921431313795 + wwv_flow_api.g_id_offset),
  p_menu_template_id=> 4894521001313793+ wwv_flow_api.g_id_offset,
  p_plug_display_error_message=> 'Unable to show breadcrumb.',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
 
begin
 
null;
 
end;
/

 
begin
 
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 1
--
 
begin
 
null;
end;
null;
 
end;
/

 
--application/pages/page_00002
prompt  ...PAGE 2: BANK
--
 
begin
 
wwv_flow_api.create_page (
  p_flow_id => wwv_flow.g_flow_id
 ,p_id => 2
 ,p_tab_set => 'TS1'
 ,p_name => 'BANK'
 ,p_step_title => 'BANK'
 ,p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS'
 ,p_first_item => 'NO_FIRST_ITEM'
 ,p_include_apex_css_js_yn => 'Y'
 ,p_javascript_code => 
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
 ,p_cache_page_yn => 'N'
 ,p_help_text => 
'No help is available for this page.'
 ,p_last_updated_by => 'ADMIN'
 ,p_last_upd_yyyymmddhh24miss => '20220512135841'
  );
null;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'select '||chr(10)||
'"BANK_ID",'||chr(10)||
'"BANK_ID" BANK_ID_DISPLAY,'||chr(10)||
'"BANK_NAME"'||chr(10)||
'from "#OWNER#"."BANK"'||chr(10)||
'';

wwv_flow_api.create_report_region (
  p_id=> 4902700871339535 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 2,
  p_name=> 'Bank Details',
  p_region_name=>'',
  p_template=> 4889906514313789+ wwv_flow_api.g_id_offset,
  p_display_sequence=> 15,
  p_include_in_reg_disp_sel_yn=> 'Y',
  p_display_column=> 1,
  p_display_point=> 'AFTER_SHOW_ITEMS',
  p_source=> s,
  p_source_type=> 'UPDATABLE_SQL_QUERY',
  p_display_error_message=> '#SQLERRM#',
  p_plug_caching=> 'NOT_CACHED',
  p_customized=> '0',
  p_translate_title=> 'Y',
  p_ajax_enabled=> 'N',
  p_query_row_template=> 4893522550313792+ wwv_flow_api.g_id_offset,
  p_query_headings_type=> 'COLON_DELMITED_LIST',
  p_query_num_rows=> '10',
  p_query_options=> 'DERIVED_REPORT_COLUMNS',
  p_query_show_nulls_as=> '(null)',
  p_query_break_cols=> '0',
  p_query_no_data_found=> 'No data found.',
  p_query_num_rows_type=> 'ROW_RANGES_IN_SELECT_LIST',
  p_query_row_count_max=> '500',
  p_pagination_display_position=> 'BOTTOM_RIGHT',
  p_csv_output=> 'N',
  p_query_asc_image=> 'apex/builder/dup.gif',
  p_query_asc_image_attr=> 'width="16" height="16" alt="" ',
  p_query_desc_image=> 'apex/builder/ddown.gif',
  p_query_desc_image_attr=> 'width="16" height="16" alt="" ',
  p_plug_query_strip_html=> 'Y',
  p_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 4904907723339536 + wwv_flow_api.g_id_offset,
  p_region_id=> 4902700871339535 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 1,
  p_form_element_id=> null,
  p_column_alias=> 'CHECK$01',
  p_column_display_sequence=> 1,
  p_column_heading=> '&nbsp;',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'CHECKBOX',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_derived_column=> 'Y',
  p_include_in_export=> 'Y',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 4903017299339535 + wwv_flow_api.g_id_offset,
  p_region_id=> 4902700871339535 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 2,
  p_form_element_id=> null,
  p_column_alias=> 'BANK_ID',
  p_column_display_sequence=> 2,
  p_column_heading=> 'Bank Id',
  p_column_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'Y',
  p_display_as=>'HIDDEN',
  p_column_width=> '16',
  p_is_required=> false,
  p_pk_col_source_type=> 'T',
  p_ref_schema=> 'EMP_PROFILE',
  p_ref_table_name=> 'BANK',
  p_ref_column_name=> 'BANK_ID',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 4903127379339535 + wwv_flow_api.g_id_offset,
  p_region_id=> 4902700871339535 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 3,
  p_form_element_id=> null,
  p_column_alias=> 'BANK_ID_DISPLAY',
  p_column_display_sequence=> 3,
  p_column_heading=> 'Bank Id',
  p_column_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_column_width=> '16',
  p_is_required=> false,
  p_ref_schema=> 'EMP_PROFILE',
  p_ref_table_name=> 'BANK',
  p_ref_column_name=> 'BANK_ID_DISPLAY',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 4903228258339535 + wwv_flow_api.g_id_offset,
  p_region_id=> 4902700871339535 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 4,
  p_form_element_id=> null,
  p_column_alias=> 'BANK_NAME',
  p_column_display_sequence=> 4,
  p_column_heading=> 'Bank Name',
  p_column_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'TEXT',
  p_column_width=> '16',
  p_is_required=> false,
  p_ref_schema=> 'EMP_PROFILE',
  p_ref_table_name=> 'BANK',
  p_ref_column_name=> 'BANK_NAME',
  p_column_comment=>'');
end;
/
 
begin
 
wwv_flow_api.create_page_button(
  p_id             => 4903625915339535 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 2,
  p_button_sequence=> 40,
  p_button_plug_id => 4902700871339535+wwv_flow_api.g_id_offset,
  p_button_name    => 'ADD',
  p_button_image   => 'template:'||to_char(4887330298313787+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Add Row',
  p_button_position=> 'BOTTOM',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'javascript:addRow();',
  p_button_execute_validations=>'N',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 4903422401339535 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 2,
  p_button_sequence=> 30,
  p_button_plug_id => 4902700871339535+wwv_flow_api.g_id_offset,
  p_button_name    => 'SUBMIT',
  p_button_image   => 'template:'||to_char(4887330298313787+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Submit',
  p_button_position=> 'REGION_TEMPLATE_CHANGE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> '',
  p_button_execute_validations=>'Y',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 4903301920339535 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 2,
  p_button_sequence=> 10,
  p_button_plug_id => 4902700871339535+wwv_flow_api.g_id_offset,
  p_button_name    => 'CANCEL',
  p_button_image   => 'template:'||to_char(4887330298313787+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Cancel',
  p_button_position=> 'REGION_TEMPLATE_CLOSE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 4903508840339535 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 2,
  p_button_sequence=> 20,
  p_button_plug_id => 4902700871339535+wwv_flow_api.g_id_offset,
  p_button_name    => 'MULTI_ROW_DELETE',
  p_button_image   => 'template:'||to_char(4887330298313787+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Delete',
  p_button_position=> 'REGION_TEMPLATE_DELETE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'javascript:apex.confirm(htmldb_delete_message,''MULTI_ROW_DELETE'');',
  p_button_execute_validations=>'N',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_branch(
  p_id=>4905014372339536 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 2,
  p_branch_action=> 'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#',
  p_branch_point=> 'AFTER_PROCESSING',
  p_branch_type=> 'REDIRECT_URL',
  p_branch_sequence=> 1,
  p_save_state_before_branch_yn=>'Y',
  p_branch_comment=> '');
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 4904417140339536 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 2,
  p_tabular_form_region_id => 4902700871339535 + wwv_flow_api.g_id_offset,
  p_validation_name => 'BANK_NAME not null',
  p_validation_sequence=> 30,
  p_validation => 'BANK_NAME',
  p_validation_type => 'COL_NOT_NULL',
  p_error_message => '#COLUMN_HEADER# must have a value.',
  p_when_button_pressed=> 4903422401339535 + wwv_flow_api.g_id_offset,
  p_associated_column=> 'BANK_NAME',
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'#OWNER#:BANK:BANK_ID';

wwv_flow_api.create_page_process(
  p_id     => 4904520167339536 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 2,
  p_process_sequence=> 10,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'MULTI_ROW_UPDATE',
  p_process_name=> 'ApplyMRU',
  p_process_sql_clob => p, 
  p_process_error_message=> 'Unable to process update.',
  p_process_when_button_id=>4903422401339535 + wwv_flow_api.g_id_offset,
  p_process_success_message=> '#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'#OWNER#:BANK:BANK_ID';

wwv_flow_api.create_page_process(
  p_id     => 4904732088339536 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 2,
  p_process_sequence=> 20,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'MULTI_ROW_DELETE',
  p_process_name=> 'ApplyMRD',
  p_process_sql_clob => p, 
  p_process_error_message=> 'Unable to process delete.',
  p_process_when=>'MULTI_ROW_DELETE',
  p_process_when_type=>'REQUEST_EQUALS_CONDITION',
  p_process_success_message=> '#MRD_COUNT# row(s) deleted.',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 2
--
 
begin
 
wwv_flow_api.create_region_rpt_cols (
  p_id     => 4922323447573891 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_plug_id=> 4902700871339535 + wwv_flow_api.g_id_offset,
  p_column_sequence=> 1,
  p_query_column_name=> 'BANK_ID',
  p_display_as=> 'TEXT',
  p_column_comment=> '');
 
wwv_flow_api.create_region_rpt_cols (
  p_id     => 4922402669573891 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_plug_id=> 4902700871339535 + wwv_flow_api.g_id_offset,
  p_column_sequence=> 2,
  p_query_column_name=> 'BANK_ID_DISPLAY',
  p_display_as=> 'TEXT',
  p_column_comment=> '');
 
wwv_flow_api.create_region_rpt_cols (
  p_id     => 4922527352573891 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_plug_id=> 4902700871339535 + wwv_flow_api.g_id_offset,
  p_column_sequence=> 3,
  p_query_column_name=> 'BANK_NAME',
  p_display_as=> 'TEXT',
  p_column_comment=> '');
 
null;
end;
null;
 
end;
/

 
--application/pages/page_00003
prompt  ...PAGE 3: COURSE_MASTER
--
 
begin
 
wwv_flow_api.create_page (
  p_flow_id => wwv_flow.g_flow_id
 ,p_id => 3
 ,p_tab_set => 'TS1'
 ,p_name => 'COURSE_MASTER'
 ,p_step_title => 'COURSE_MASTER'
 ,p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS'
 ,p_first_item => 'NO_FIRST_ITEM'
 ,p_include_apex_css_js_yn => 'Y'
 ,p_javascript_code => 
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
 ,p_cache_page_yn => 'N'
 ,p_help_text => 
'No help is available for this page.'
 ,p_last_updated_by => 'ADMIN'
 ,p_last_upd_yyyymmddhh24miss => '20220512181345'
  );
null;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'select '||chr(10)||
'"CM_COURSE_ID",'||chr(10)||
'"CM_COURSE_ID" CM_COURSE_ID_DISPLAY,'||chr(10)||
'"CM_COURSE_NAME",'||chr(10)||
'"CM_DETAIL",'||chr(10)||
'"CM_INSTITUTE_NAME",'||chr(10)||
'"CM_INSTRUCTOR_NAME",'||chr(10)||
'"CM_TOTAL_HOURS"'||chr(10)||
'from "#OWNER#"."COURSE_MASTER"'||chr(10)||
'';

wwv_flow_api.create_report_region (
  p_id=> 4915729576527667 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 3,
  p_name=> 'Course Details',
  p_region_name=>'',
  p_template=> 4889906514313789+ wwv_flow_api.g_id_offset,
  p_display_sequence=> 15,
  p_display_column=> 1,
  p_display_point=> 'AFTER_SHOW_ITEMS',
  p_source=> s,
  p_source_type=> 'UPDATABLE_SQL_QUERY',
  p_display_error_message=> '#SQLERRM#',
  p_plug_caching=> 'NOT_CACHED',
  p_customized=> '0',
  p_translate_title=> 'Y',
  p_ajax_enabled=> 'N',
  p_query_row_template=> 4893522550313792+ wwv_flow_api.g_id_offset,
  p_query_headings_type=> 'COLON_DELMITED_LIST',
  p_query_num_rows=> '10',
  p_query_options=> 'DERIVED_REPORT_COLUMNS',
  p_query_show_nulls_as=> '(null)',
  p_query_break_cols=> '0',
  p_query_no_data_found=> 'No data found.',
  p_query_num_rows_type=> 'ROW_RANGES_IN_SELECT_LIST',
  p_query_row_count_max=> '500',
  p_pagination_display_position=> 'BOTTOM_RIGHT',
  p_csv_output=> 'N',
  p_prn_output=> 'N',
  p_prn_format=> 'PDF',
  p_prn_output_show_link=> 'Y',
  p_prn_output_link_text=> 'Print',
  p_prn_content_disposition=> 'ATTACHMENT',
  p_prn_document_header=> 'APEX',
  p_prn_units=> 'INCHES',
  p_prn_paper_size=> 'LETTER',
  p_prn_width_units=> 'PERCENTAGE',
  p_prn_width=> 11,
  p_prn_height=> 8.5,
  p_prn_orientation=> 'HORIZONTAL',
  p_prn_page_header_font_color=> '#000000',
  p_prn_page_header_font_family=> 'Helvetica',
  p_prn_page_header_font_weight=> 'normal',
  p_prn_page_header_font_size=> '12',
  p_prn_page_footer_font_color=> '#000000',
  p_prn_page_footer_font_family=> 'Helvetica',
  p_prn_page_footer_font_weight=> 'normal',
  p_prn_page_footer_font_size=> '12',
  p_prn_header_bg_color=> '#9bafde',
  p_prn_header_font_color=> '#ffffff',
  p_prn_header_font_family=> 'Helvetica',
  p_prn_header_font_weight=> 'normal',
  p_prn_header_font_size=> '10',
  p_prn_body_bg_color=> '#efefef',
  p_prn_body_font_color=> '#000000',
  p_prn_body_font_family=> 'Helvetica',
  p_prn_body_font_weight=> 'normal',
  p_prn_body_font_size=> '10',
  p_prn_border_width=> .5,
  p_prn_page_header_alignment=> 'CENTER',
  p_prn_page_footer_alignment=> 'CENTER',
  p_query_asc_image=> 'apex/builder/dup.gif',
  p_query_asc_image_attr=> 'width="16" height="16" alt="" ',
  p_query_desc_image=> 'apex/builder/ddown.gif',
  p_query_desc_image_attr=> 'width="16" height="16" alt="" ',
  p_plug_query_strip_html=> 'Y',
  p_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 4919301681527668 + wwv_flow_api.g_id_offset,
  p_region_id=> 4915729576527667 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 1,
  p_form_element_id=> null,
  p_column_alias=> 'CHECK$01',
  p_column_display_sequence=> 1,
  p_column_heading=> '&nbsp;',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'CHECKBOX',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_derived_column=> 'Y',
  p_include_in_export=> 'Y',
  p_print_col_width=> '14',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 4916011969527667 + wwv_flow_api.g_id_offset,
  p_region_id=> 4915729576527667 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 2,
  p_form_element_id=> null,
  p_column_alias=> 'CM_COURSE_ID',
  p_column_display_sequence=> 3,
  p_column_heading=> 'Course Id',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'Y',
  p_display_as=>'HIDDEN',
  p_lov_show_nulls=> 'NO',
  p_column_width=> '16',
  p_is_required=> false,
  p_pk_col_source_type=> 'T',
  p_pk_col_source=> s,
  p_lov_display_extra=> 'YES',
  p_include_in_export=> 'N',
  p_print_col_width=> '0',
  p_ref_schema=> 'EMP_PROFILE',
  p_ref_table_name=> 'COURSE_MASTER',
  p_ref_column_name=> 'CM_COURSE_ID',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 4916104570527667 + wwv_flow_api.g_id_offset,
  p_region_id=> 4915729576527667 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 3,
  p_form_element_id=> null,
  p_column_alias=> 'CM_COURSE_ID_DISPLAY',
  p_column_display_sequence=> 2,
  p_column_heading=> 'Course Id',
  p_column_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_column_width=> '16',
  p_is_required=> false,
  p_include_in_export=> 'Y',
  p_print_col_width=> '14',
  p_ref_schema=> 'EMP_PROFILE',
  p_ref_table_name=> 'COURSE_MASTER',
  p_ref_column_name=> 'CM_COURSE_ID_DISPLAY',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 4916221401527667 + wwv_flow_api.g_id_offset,
  p_region_id=> 4915729576527667 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 4,
  p_form_element_id=> null,
  p_column_alias=> 'CM_COURSE_NAME',
  p_column_display_sequence=> 4,
  p_column_heading=> 'Course Name',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'TEXT',
  p_lov_show_nulls=> 'NO',
  p_column_width=> '16',
  p_is_required=> false,
  p_lov_display_extra=> 'YES',
  p_include_in_export=> 'Y',
  p_print_col_width=> '14',
  p_ref_schema=> 'EMP_PROFILE',
  p_ref_table_name=> 'COURSE_MASTER',
  p_ref_column_name=> 'CM_COURSE_NAME',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 4916330553527667 + wwv_flow_api.g_id_offset,
  p_region_id=> 4915729576527667 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 5,
  p_form_element_id=> null,
  p_column_alias=> 'CM_DETAIL',
  p_column_display_sequence=> 5,
  p_column_heading=> 'Detail',
  p_column_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'TEXT',
  p_column_width=> '16',
  p_is_required=> false,
  p_include_in_export=> 'Y',
  p_print_col_width=> '14',
  p_ref_schema=> 'EMP_PROFILE',
  p_ref_table_name=> 'COURSE_MASTER',
  p_ref_column_name=> 'CM_DETAIL',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 5095206665293829 + wwv_flow_api.g_id_offset,
  p_region_id=> 4915729576527667 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 6,
  p_form_element_id=> null,
  p_column_alias=> 'CM_INSTITUTE_NAME',
  p_column_display_sequence=> 6,
  p_column_heading=> 'Institute Name',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'TEXT',
  p_lov_show_nulls=> 'NO',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_lov_display_extra=> 'YES',
  p_include_in_export=> 'Y',
  p_print_col_width=> '14',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 4916530830527667 + wwv_flow_api.g_id_offset,
  p_region_id=> 4915729576527667 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 7,
  p_form_element_id=> null,
  p_column_alias=> 'CM_INSTRUCTOR_NAME',
  p_column_display_sequence=> 7,
  p_column_heading=> 'Instructor Name',
  p_column_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'TEXT',
  p_column_width=> '16',
  p_is_required=> false,
  p_include_in_export=> 'Y',
  p_print_col_width=> '14',
  p_ref_schema=> 'EMP_PROFILE',
  p_ref_table_name=> 'COURSE_MASTER',
  p_ref_column_name=> 'CM_INSTRUCTOR_NAME',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 4916608064527667 + wwv_flow_api.g_id_offset,
  p_region_id=> 4915729576527667 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 8,
  p_form_element_id=> null,
  p_column_alias=> 'CM_TOTAL_HOURS',
  p_column_display_sequence=> 8,
  p_column_heading=> 'Total Hours',
  p_column_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'TEXT',
  p_column_width=> '16',
  p_is_required=> false,
  p_include_in_export=> 'Y',
  p_print_col_width=> '14',
  p_ref_schema=> 'EMP_PROFILE',
  p_ref_table_name=> 'COURSE_MASTER',
  p_ref_column_name=> 'CM_TOTAL_HOURS',
  p_column_comment=>'');
end;
/
 
begin
 
wwv_flow_api.create_page_button(
  p_id             => 4917008218527668 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 3,
  p_button_sequence=> 40,
  p_button_plug_id => 4915729576527667+wwv_flow_api.g_id_offset,
  p_button_name    => 'ADD',
  p_button_image   => 'template:'||to_char(4887330298313787+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Add Row',
  p_button_position=> 'BOTTOM',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'javascript:addRow();',
  p_button_execute_validations=>'N',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 4916818455527668 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 3,
  p_button_sequence=> 30,
  p_button_plug_id => 4915729576527667+wwv_flow_api.g_id_offset,
  p_button_name    => 'SUBMIT',
  p_button_image   => 'template:'||to_char(4887330298313787+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Submit',
  p_button_position=> 'REGION_TEMPLATE_CHANGE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> '',
  p_button_execute_validations=>'Y',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 4916717288527668 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 3,
  p_button_sequence=> 10,
  p_button_plug_id => 4915729576527667+wwv_flow_api.g_id_offset,
  p_button_name    => 'CANCEL',
  p_button_image   => 'template:'||to_char(4887330298313787+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Cancel',
  p_button_position=> 'REGION_TEMPLATE_CLOSE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 4916930738527668 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 3,
  p_button_sequence=> 20,
  p_button_plug_id => 4915729576527667+wwv_flow_api.g_id_offset,
  p_button_name    => 'MULTI_ROW_DELETE',
  p_button_image   => 'template:'||to_char(4887330298313787+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Delete',
  p_button_position=> 'REGION_TEMPLATE_DELETE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'javascript:apex.confirm(htmldb_delete_message,''MULTI_ROW_DELETE'');',
  p_button_execute_validations=>'N',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_branch(
  p_id=>4919423167527668 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 3,
  p_branch_action=> 'f?p=&APP_ID.:3:&SESSION.&success_msg=#SUCCESS_MSG#',
  p_branch_point=> 'AFTER_PROCESSING',
  p_branch_type=> 'REDIRECT_URL',
  p_branch_sequence=> 1,
  p_save_state_before_branch_yn=>'Y',
  p_branch_comment=> '');
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 4917816474527668 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 3,
  p_tabular_form_region_id => 4915729576527667 + wwv_flow_api.g_id_offset,
  p_validation_name => 'CM_COURSE_NAME not null',
  p_validation_sequence=> 30,
  p_validation => 'CM_COURSE_NAME',
  p_validation_type => 'COL_NOT_NULL',
  p_error_message => '#COLUMN_HEADER# must have a value.',
  p_when_button_pressed=> 4916818455527668 + wwv_flow_api.g_id_offset,
  p_associated_column=> 'CM_COURSE_NAME',
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 4918006071527668 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 3,
  p_tabular_form_region_id => 4915729576527667 + wwv_flow_api.g_id_offset,
  p_validation_name => 'CM_DETAIL not null',
  p_validation_sequence=> 40,
  p_validation => 'CM_DETAIL',
  p_validation_type => 'COL_NOT_NULL',
  p_error_message => '#COLUMN_HEADER# must have a value.',
  p_when_button_pressed=> 4916818455527668 + wwv_flow_api.g_id_offset,
  p_associated_column=> 'CM_DETAIL',
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 4918225077527668 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 3,
  p_tabular_form_region_id => 4915729576527667 + wwv_flow_api.g_id_offset,
  p_validation_name => 'CM_INSTITUTE_NAME  not null',
  p_validation_sequence=> 50,
  p_validation => 'CM_INSTITUTE_NAME',
  p_validation_type => 'COL_NOT_NULL',
  p_error_message => '#COLUMN_HEADER# must have a value.',
  p_when_button_pressed=> 4916818455527668 + wwv_flow_api.g_id_offset,
  p_associated_column=> 'CM_INSTITUTE_NAME ',
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 4918432202527668 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 3,
  p_tabular_form_region_id => 4915729576527667 + wwv_flow_api.g_id_offset,
  p_validation_name => 'CM_INSTRUCTOR_NAME not null',
  p_validation_sequence=> 60,
  p_validation => 'CM_INSTRUCTOR_NAME',
  p_validation_type => 'COL_NOT_NULL',
  p_error_message => '#COLUMN_HEADER# must have a value.',
  p_when_button_pressed=> 4916818455527668 + wwv_flow_api.g_id_offset,
  p_associated_column=> 'CM_INSTRUCTOR_NAME',
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 4918617287527668 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 3,
  p_tabular_form_region_id => 4915729576527667 + wwv_flow_api.g_id_offset,
  p_validation_name => 'CM_TOTAL_HOURS not null',
  p_validation_sequence=> 70,
  p_validation => 'CM_TOTAL_HOURS',
  p_validation_type => 'COL_NOT_NULL',
  p_error_message => '#COLUMN_HEADER# must have a value.',
  p_when_button_pressed=> 4916818455527668 + wwv_flow_api.g_id_offset,
  p_associated_column=> 'CM_TOTAL_HOURS',
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 4918805364527668 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 3,
  p_tabular_form_region_id => 4915729576527667 + wwv_flow_api.g_id_offset,
  p_validation_name => 'CM_TOTAL_HOURS must be numeric',
  p_validation_sequence=> 70,
  p_validation => 'CM_TOTAL_HOURS',
  p_validation_type => 'COL_IS_NUMERIC',
  p_error_message => '#COLUMN_HEADER# must be numeric.',
  p_when_button_pressed=> 4916818455527668 + wwv_flow_api.g_id_offset,
  p_associated_column=> 'CM_TOTAL_HOURS',
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'#OWNER#:COURSE_MASTER:CM_COURSE_ID';

wwv_flow_api.create_page_process(
  p_id     => 4918922525527668 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 3,
  p_process_sequence=> 10,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'MULTI_ROW_UPDATE',
  p_process_name=> 'ApplyMRU',
  p_process_sql_clob => p, 
  p_process_error_message=> 'Unable to process update.',
  p_process_when_button_id=>4916818455527668 + wwv_flow_api.g_id_offset,
  p_process_success_message=> '#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'#OWNER#:COURSE_MASTER:CM_COURSE_ID';

wwv_flow_api.create_page_process(
  p_id     => 4919120473527668 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 3,
  p_process_sequence=> 20,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'MULTI_ROW_DELETE',
  p_process_name=> 'ApplyMRD',
  p_process_sql_clob => p, 
  p_process_error_message=> 'Unable to process delete.',
  p_process_when=>'MULTI_ROW_DELETE',
  p_process_when_type=>'REQUEST_EQUALS_CONDITION',
  p_process_success_message=> '#MRD_COUNT# row(s) deleted.',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 3
--
 
begin
 
wwv_flow_api.create_region_rpt_cols (
  p_id     => 4919928248546941 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_plug_id=> 4915729576527667 + wwv_flow_api.g_id_offset,
  p_column_sequence=> 1,
  p_query_column_name=> 'CM_COURSE_ID',
  p_display_as=> 'TEXT',
  p_column_comment=> '');
 
wwv_flow_api.create_region_rpt_cols (
  p_id     => 4920028129546941 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_plug_id=> 4915729576527667 + wwv_flow_api.g_id_offset,
  p_column_sequence=> 2,
  p_query_column_name=> 'CM_COURSE_ID_DISPLAY',
  p_display_as=> 'TEXT',
  p_column_comment=> '');
 
wwv_flow_api.create_region_rpt_cols (
  p_id     => 4920113698546941 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_plug_id=> 4915729576527667 + wwv_flow_api.g_id_offset,
  p_column_sequence=> 3,
  p_query_column_name=> 'CM_COURSE_NAME',
  p_display_as=> 'TEXT',
  p_column_comment=> '');
 
wwv_flow_api.create_region_rpt_cols (
  p_id     => 4920230903546942 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_plug_id=> 4915729576527667 + wwv_flow_api.g_id_offset,
  p_column_sequence=> 4,
  p_query_column_name=> 'CM_DETAIL',
  p_display_as=> 'TEXT',
  p_column_comment=> '');
 
wwv_flow_api.create_region_rpt_cols (
  p_id     => 5094918642293828 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_plug_id=> 4915729576527667 + wwv_flow_api.g_id_offset,
  p_column_sequence=> 5,
  p_query_column_name=> 'CM_INSTITUTE_NAME',
  p_display_as=> 'TEXT',
  p_column_comment=> '');
 
wwv_flow_api.create_region_rpt_cols (
  p_id     => 4920417809546942 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_plug_id=> 4915729576527667 + wwv_flow_api.g_id_offset,
  p_column_sequence=> 6,
  p_query_column_name=> 'CM_INSTRUCTOR_NAME',
  p_display_as=> 'TEXT',
  p_column_comment=> '');
 
wwv_flow_api.create_region_rpt_cols (
  p_id     => 4920501548546942 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_plug_id=> 4915729576527667 + wwv_flow_api.g_id_offset,
  p_column_sequence=> 7,
  p_query_column_name=> 'CM_TOTAL_HOURS',
  p_display_as=> 'TEXT',
  p_column_comment=> '');
 
null;
end;
null;
 
end;
/

 
--application/pages/page_00004
prompt  ...PAGE 4: DEPARTMENT_MASTER
--
 
begin
 
wwv_flow_api.create_page (
  p_flow_id => wwv_flow.g_flow_id
 ,p_id => 4
 ,p_tab_set => 'TS1'
 ,p_name => 'DEPARTMENT_MASTER'
 ,p_step_title => 'Update DEPARTMENT_MASTER'
 ,p_allow_duplicate_submissions => 'Y'
 ,p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS'
 ,p_first_item => 'NO_FIRST_ITEM'
 ,p_include_apex_css_js_yn => 'Y'
 ,p_autocomplete_on_off => 'ON'
 ,p_javascript_code => 
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
 ,p_page_is_public_y_n => 'N'
 ,p_protection_level => 'N'
 ,p_cache_page_yn => 'N'
 ,p_cache_timeout_seconds => 21600
 ,p_cache_by_user_yn => 'N'
 ,p_help_text => 
'No help is available for this page.'
 ,p_last_updated_by => 'ADMIN'
 ,p_last_upd_yyyymmddhh24miss => '20211211151605'
  );
null;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'select '||chr(10)||
'"DEPT_ID",'||chr(10)||
'"DEPT_ID" DEPT_ID_DISPLAY,'||chr(10)||
'"DEPT_NAME"'||chr(10)||
'from "#OWNER#"."DEPARTMENT_MASTER"'||chr(10)||
'';

wwv_flow_api.create_report_region (
  p_id=> 4923100813590604 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 4,
  p_name=> 'Department details',
  p_region_name=>'',
  p_template=> 4889906514313789+ wwv_flow_api.g_id_offset,
  p_display_sequence=> 15,
  p_display_column=> 1,
  p_display_point=> 'AFTER_SHOW_ITEMS',
  p_source=> s,
  p_source_type=> 'UPDATABLE_SQL_QUERY',
  p_display_error_message=> '#SQLERRM#',
  p_plug_caching=> 'NOT_CACHED',
  p_customized=> '0',
  p_translate_title=> 'Y',
  p_ajax_enabled=> 'N',
  p_query_row_template=> 4893522550313792+ wwv_flow_api.g_id_offset,
  p_query_headings_type=> 'COLON_DELMITED_LIST',
  p_query_num_rows=> '10',
  p_query_options=> 'DERIVED_REPORT_COLUMNS',
  p_query_show_nulls_as=> '(null)',
  p_query_break_cols=> '0',
  p_query_no_data_found=> 'No data found.',
  p_query_num_rows_type=> 'ROW_RANGES_IN_SELECT_LIST',
  p_query_row_count_max=> '500',
  p_pagination_display_position=> 'BOTTOM_RIGHT',
  p_csv_output=> 'N',
  p_query_asc_image=> 'apex/builder/dup.gif',
  p_query_asc_image_attr=> 'width="16" height="16" alt="" ',
  p_query_desc_image=> 'apex/builder/ddown.gif',
  p_query_desc_image_attr=> 'width="16" height="16" alt="" ',
  p_plug_query_strip_html=> 'Y',
  p_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 4925301071590605 + wwv_flow_api.g_id_offset,
  p_region_id=> 4923100813590604 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 1,
  p_form_element_id=> null,
  p_column_alias=> 'CHECK$01',
  p_column_display_sequence=> 1,
  p_column_heading=> '&nbsp;',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'CHECKBOX',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_derived_column=> 'Y',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 4923405956590604 + wwv_flow_api.g_id_offset,
  p_region_id=> 4923100813590604 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 2,
  p_form_element_id=> null,
  p_column_alias=> 'DEPT_ID',
  p_column_display_sequence=> 2,
  p_column_heading=> 'Department Id',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'Y',
  p_display_as=>'HIDDEN',
  p_lov_show_nulls=> 'NO',
  p_column_width=> '16',
  p_is_required=> false,
  p_pk_col_source_type=> 'T',
  p_pk_col_source=> s,
  p_lov_display_extra=> 'YES',
  p_include_in_export=> 'Y',
  p_ref_schema=> 'EMP_PROFILE',
  p_ref_table_name=> 'DEPARTMENT_MASTER',
  p_ref_column_name=> 'DEPT_ID',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 4923500325590604 + wwv_flow_api.g_id_offset,
  p_region_id=> 4923100813590604 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 3,
  p_form_element_id=> null,
  p_column_alias=> 'DEPT_ID_DISPLAY',
  p_column_display_sequence=> 3,
  p_column_heading=> 'Department Id',
  p_column_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_column_width=> '16',
  p_is_required=> false,
  p_ref_schema=> 'EMP_PROFILE',
  p_ref_table_name=> 'DEPARTMENT_MASTER',
  p_ref_column_name=> 'DEPT_ID_DISPLAY',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 4923625655590604 + wwv_flow_api.g_id_offset,
  p_region_id=> 4923100813590604 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 4,
  p_form_element_id=> null,
  p_column_alias=> 'DEPT_NAME',
  p_column_display_sequence=> 4,
  p_column_heading=> 'Department Name',
  p_column_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'TEXT',
  p_column_width=> '16',
  p_is_required=> false,
  p_ref_schema=> 'EMP_PROFILE',
  p_ref_table_name=> 'DEPARTMENT_MASTER',
  p_ref_column_name=> 'DEPT_NAME',
  p_column_comment=>'');
end;
/
 
begin
 
wwv_flow_api.create_page_button(
  p_id             => 4924019857590605 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 4,
  p_button_sequence=> 40,
  p_button_plug_id => 4923100813590604+wwv_flow_api.g_id_offset,
  p_button_name    => 'ADD',
  p_button_image   => 'template:'||to_char(4887330298313787+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Add Row',
  p_button_position=> 'BOTTOM',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'javascript:addRow();',
  p_button_execute_validations=>'N',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 4923820758590605 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 4,
  p_button_sequence=> 30,
  p_button_plug_id => 4923100813590604+wwv_flow_api.g_id_offset,
  p_button_name    => 'SUBMIT',
  p_button_image   => 'template:'||to_char(4887330298313787+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Submit',
  p_button_position=> 'REGION_TEMPLATE_CHANGE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> '',
  p_button_execute_validations=>'Y',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 4923710541590605 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 4,
  p_button_sequence=> 10,
  p_button_plug_id => 4923100813590604+wwv_flow_api.g_id_offset,
  p_button_name    => 'CANCEL',
  p_button_image   => 'template:'||to_char(4887330298313787+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Cancel',
  p_button_position=> 'REGION_TEMPLATE_CLOSE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 4923929944590605 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 4,
  p_button_sequence=> 20,
  p_button_plug_id => 4923100813590604+wwv_flow_api.g_id_offset,
  p_button_name    => 'MULTI_ROW_DELETE',
  p_button_image   => 'template:'||to_char(4887330298313787+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Delete',
  p_button_position=> 'REGION_TEMPLATE_DELETE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'javascript:apex.confirm(htmldb_delete_message,''MULTI_ROW_DELETE'');',
  p_button_execute_validations=>'N',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_branch(
  p_id=>4925421390590605 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 4,
  p_branch_action=> 'f?p=&APP_ID.:4:&SESSION.&success_msg=#SUCCESS_MSG#',
  p_branch_point=> 'AFTER_PROCESSING',
  p_branch_type=> 'REDIRECT_URL',
  p_branch_sequence=> 1,
  p_save_state_before_branch_yn=>'Y',
  p_branch_comment=> '');
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 4924804749590605 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 4,
  p_tabular_form_region_id => 4923100813590604 + wwv_flow_api.g_id_offset,
  p_validation_name => 'DEPT_NAME not null',
  p_validation_sequence=> 30,
  p_validation => 'DEPT_NAME',
  p_validation_type => 'COL_NOT_NULL',
  p_error_message => '#COLUMN_HEADER# must have a value.',
  p_when_button_pressed=> 4923820758590605 + wwv_flow_api.g_id_offset,
  p_associated_column=> 'DEPT_NAME',
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'#OWNER#:DEPARTMENT_MASTER:DEPT_ID';

wwv_flow_api.create_page_process(
  p_id     => 4924921417590605 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 4,
  p_process_sequence=> 10,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'MULTI_ROW_UPDATE',
  p_process_name=> 'ApplyMRU',
  p_process_sql_clob => p, 
  p_process_error_message=> 'Unable to process update.',
  p_process_when_button_id=>4923820758590605 + wwv_flow_api.g_id_offset,
  p_process_success_message=> '#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'#OWNER#:DEPARTMENT_MASTER:DEPT_ID';

wwv_flow_api.create_page_process(
  p_id     => 4925118778590605 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 4,
  p_process_sequence=> 20,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'MULTI_ROW_DELETE',
  p_process_name=> 'ApplyMRD',
  p_process_sql_clob => p, 
  p_process_error_message=> 'Unable to process delete.',
  p_process_when=>'MULTI_ROW_DELETE',
  p_process_when_type=>'REQUEST_EQUALS_CONDITION',
  p_process_success_message=> '#MRD_COUNT# row(s) deleted.',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 4
--
 
begin
 
wwv_flow_api.create_region_rpt_cols (
  p_id     => 4925827172593930 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_plug_id=> 4923100813590604 + wwv_flow_api.g_id_offset,
  p_column_sequence=> 1,
  p_query_column_name=> 'DEPT_ID',
  p_display_as=> 'TEXT',
  p_column_comment=> '');
 
wwv_flow_api.create_region_rpt_cols (
  p_id     => 4925925073593930 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_plug_id=> 4923100813590604 + wwv_flow_api.g_id_offset,
  p_column_sequence=> 2,
  p_query_column_name=> 'DEPT_ID_DISPLAY',
  p_display_as=> 'TEXT',
  p_column_comment=> '');
 
wwv_flow_api.create_region_rpt_cols (
  p_id     => 4926002271593930 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_plug_id=> 4923100813590604 + wwv_flow_api.g_id_offset,
  p_column_sequence=> 3,
  p_query_column_name=> 'DEPT_NAME',
  p_display_as=> 'TEXT',
  p_column_comment=> '');
 
null;
end;
null;
 
end;
/

 
--application/pages/page_00005
prompt  ...PAGE 5: EMPLOYEE LIST
--
 
begin
 
wwv_flow_api.create_page (
  p_flow_id => wwv_flow.g_flow_id
 ,p_id => 5
 ,p_tab_set => 'TS1'
 ,p_name => 'EMPLOYEE LIST'
 ,p_step_title => 'EMPLOYEE LIST'
 ,p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS'
 ,p_include_apex_css_js_yn => 'Y'
 ,p_cache_page_yn => 'N'
 ,p_help_text => 
'No help is available for this page.'
 ,p_last_updated_by => 'ADMIN'
 ,p_last_upd_yyyymmddhh24miss => '20220512154604'
  );
null;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'SELECT EMPLOYEE_ID, NAME, ADDRESS, MARITAL_STATUS, DATE_OF_BIRTH,'||chr(10)||
'  CONTACT_NO, DATE_JOINED, AMOUNT_SALARY'||chr(10)||
'FROM EMPLOYEE';

wwv_flow_api.create_page_plug (
  p_id=> 4981716714875937 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 5,
  p_plug_name=> 'EMPLOYEE''S LIST',
  p_region_name=>'',
  p_plug_template=> 4889515414313789+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 10,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'AFTER_SHOW_ITEMS',
  p_plug_source=> s,
  p_plug_source_type=> 'DYNAMIC_QUERY',
  p_translate_title=> 'Y',
  p_plug_display_error_message=> 'Unable to show report.',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
 a1 varchar2(32767) := null;
begin
a1:=a1||'SELECT EMPLOYEE_ID, NAME, ADDRESS, MARITAL_STATUS, DATE_OF_BIRTH,'||chr(10)||
'  CONTACT_NO, DATE_JOINED, AMOUNT_SALARY'||chr(10)||
'FROM EMPLOYEE';

wwv_flow_api.create_worksheet(
  p_id=> 4981918654875937+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 5,
  p_region_id=> 4981716714875937+wwv_flow_api.g_id_offset,
  p_name=> 'EMPLOYEE''S LIST',
  p_folder_id=> null, 
  p_alias=> '',
  p_report_id_item=> '',
  p_max_row_count=> '10000',
  p_max_row_count_message=> 'This query returns more than #MAX_ROW_COUNT# rows, please filter your data to ensure complete results.',
  p_no_data_found_message=> 'No data found.',
  p_max_rows_per_page=>'',
  p_search_button_label=>'',
  p_page_items_to_submit=>'',
  p_sort_asc_image=>'',
  p_sort_asc_image_attr=>'',
  p_sort_desc_image=>'',
  p_sort_desc_image_attr=>'',
  p_sql_query => a1,
  p_status=>'AVAILABLE_FOR_OWNER',
  p_allow_report_saving=>'Y',
  p_allow_save_rpt_public=>'N',
  p_allow_report_categories=>'N',
  p_show_nulls_as=>'-',
  p_pagination_type=>'ROWS_X_TO_Y',
  p_pagination_display_pos=>'BOTTOM_RIGHT',
  p_show_finder_drop_down=>'Y',
  p_show_display_row_count=>'N',
  p_show_search_bar=>'Y',
  p_show_search_textbox=>'Y',
  p_show_actions_menu=>'Y',
  p_report_list_mode=>'TABS',
  p_show_detail_link=>'C',
  p_show_select_columns=>'Y',
  p_show_rows_per_page=>'Y',
  p_show_filter=>'Y',
  p_show_sort=>'Y',
  p_show_control_break=>'Y',
  p_show_highlight=>'Y',
  p_show_computation=>'Y',
  p_show_aggregate=>'Y',
  p_show_chart=>'Y',
  p_show_group_by=>'Y',
  p_show_notify=>'N',
  p_show_calendar=>'N',
  p_show_flashback=>'Y',
  p_show_reset=>'Y',
  p_show_download=>'Y',
  p_show_help=>'Y',
  p_download_formats=>'CSV:HTML:EMAIL',
  p_detail_link=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.::P14_EMPLOYEE_ID:#EMPLOYEE_ID#',
  p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif"  border="0">',
  p_allow_exclude_null_values=>'N',
  p_allow_hide_extra_columns=>'N',
  p_icon_view_enabled_yn=>'N',
  p_icon_view_columns_per_row=>1,
  p_detail_view_enabled_yn=>'N',
  p_owner=>'ADMIN');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 4982000093875938+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 5,
  p_worksheet_id => 4981918654875937+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'EMPLOYEE_ID',
  p_display_order          =>1,
  p_group_id               =>null+wwv_flow_api.g_id_offset,
  p_column_identifier      =>'A',
  p_column_label           =>'Employee Id',
  p_report_label           =>'Employee Id',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_highlighting     =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_allow_group_by         =>'Y',
  p_allow_hide             =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'NUMBER',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'LEFT',
  p_tz_dependent           =>'N',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 4982111804875939+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 5,
  p_worksheet_id => 4981918654875937+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'NAME',
  p_display_order          =>2,
  p_group_id               =>null+wwv_flow_api.g_id_offset,
  p_column_identifier      =>'B',
  p_column_label           =>'Name',
  p_report_label           =>'Name',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_highlighting     =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_allow_group_by         =>'Y',
  p_allow_hide             =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'STRING',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'LEFT',
  p_tz_dependent           =>'N',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 4982208907875940+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 5,
  p_worksheet_id => 4981918654875937+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'ADDRESS',
  p_display_order          =>3,
  p_group_id               =>null+wwv_flow_api.g_id_offset,
  p_column_identifier      =>'C',
  p_column_label           =>'Address',
  p_report_label           =>'Address',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_highlighting     =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_allow_group_by         =>'Y',
  p_allow_hide             =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'STRING',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'LEFT',
  p_tz_dependent           =>'N',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 4982329344875940+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 5,
  p_worksheet_id => 4981918654875937+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'MARITAL_STATUS',
  p_display_order          =>4,
  p_group_id               =>null+wwv_flow_api.g_id_offset,
  p_column_identifier      =>'D',
  p_column_label           =>'Marital Status',
  p_report_label           =>'Marital Status',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_highlighting     =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_allow_group_by         =>'Y',
  p_allow_hide             =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'STRING',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'LEFT',
  p_tz_dependent           =>'N',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 4982418228875940+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 5,
  p_worksheet_id => 4981918654875937+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'DATE_OF_BIRTH',
  p_display_order          =>5,
  p_group_id               =>null+wwv_flow_api.g_id_offset,
  p_column_identifier      =>'E',
  p_column_label           =>'Date Of Birth',
  p_report_label           =>'Date Of Birth',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_highlighting     =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_allow_group_by         =>'Y',
  p_allow_hide             =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'DATE',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'LEFT',
  p_tz_dependent           =>'N',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 4982510674875940+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 5,
  p_worksheet_id => 4981918654875937+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'CONTACT_NO',
  p_display_order          =>6,
  p_group_id               =>null+wwv_flow_api.g_id_offset,
  p_column_identifier      =>'F',
  p_column_label           =>'Contact No',
  p_report_label           =>'Contact No',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_highlighting     =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_allow_group_by         =>'Y',
  p_allow_hide             =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'NUMBER',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'LEFT',
  p_tz_dependent           =>'N',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 4982613463875940+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 5,
  p_worksheet_id => 4981918654875937+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'DATE_JOINED',
  p_display_order          =>7,
  p_group_id               =>null+wwv_flow_api.g_id_offset,
  p_column_identifier      =>'G',
  p_column_label           =>'Date Joined',
  p_report_label           =>'Date Joined',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_highlighting     =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_allow_group_by         =>'Y',
  p_allow_hide             =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'DATE',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'LEFT',
  p_tz_dependent           =>'N',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 4983203576875941+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 5,
  p_worksheet_id => 4981918654875937+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'AMOUNT_SALARY',
  p_display_order          =>13,
  p_group_id               =>null+wwv_flow_api.g_id_offset,
  p_column_identifier      =>'M',
  p_column_label           =>'Amount Salary',
  p_report_label           =>'Amount Salary',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_highlighting     =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_allow_group_by         =>'Y',
  p_allow_hide             =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'NUMBER',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'LEFT',
  p_tz_dependent           =>'N',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
declare
    rc1 varchar2(32767) := null;
begin
rc1:=rc1||'EMPLOYEE_ID:NAME:ADDRESS:MARITAL_STATUS:DATE_OF_BIRTH:CONTACT_NO:DATE_JOINED:DEPT_ID:BANK_ID:JOB_ID:NATIONALITY_ID:SHIFT_ID:AMOUNT_SALARY';

wwv_flow_api.create_worksheet_rpt(
  p_id => 4983511053876095+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 5,
  p_worksheet_id => 4981918654875937+wwv_flow_api.g_id_offset,
  p_session_id  => null,
  p_base_report_id  => null+wwv_flow_api.g_id_offset,
  p_application_user => 'APXWS_DEFAULT',
  p_report_seq              =>10,
  p_report_alias            =>'49836',
  p_status                  =>'PUBLIC',
  p_category_id             =>null+wwv_flow_api.g_id_offset,
  p_is_default              =>'Y',
  p_display_rows            =>15,
  p_report_columns          =>rc1,
  p_flashback_enabled       =>'N',
  p_calendar_display_column =>'');
end;
/
 
begin
 
wwv_flow_api.create_page_button(
  p_id             => 4983405476875941 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 5,
  p_button_sequence=> 30,
  p_button_plug_id => 4981716714875937+wwv_flow_api.g_id_offset,
  p_button_name    => 'CREATE',
  p_button_image   => 'template:'||to_char(4887330298313787+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Create',
  p_button_position=> 'RIGHT_OF_IR_SEARCH_BAR',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'f?p=101:14:&SESSION.::&DEBUG.:14',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
 
end;
/

 
begin
 
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 5
--
 
begin
 
null;
end;
null;
 
end;
/

 
--application/pages/page_00006
prompt  ...PAGE 6: JOB_MASTER
--
 
begin
 
wwv_flow_api.create_page (
  p_flow_id => wwv_flow.g_flow_id
 ,p_id => 6
 ,p_tab_set => 'TS1'
 ,p_name => 'JOB_MASTER'
 ,p_step_title => 'Update JOB_MASTER'
 ,p_allow_duplicate_submissions => 'Y'
 ,p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS'
 ,p_first_item => 'NO_FIRST_ITEM'
 ,p_include_apex_css_js_yn => 'Y'
 ,p_autocomplete_on_off => 'ON'
 ,p_javascript_code => 
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
 ,p_page_is_public_y_n => 'N'
 ,p_protection_level => 'N'
 ,p_cache_page_yn => 'N'
 ,p_cache_timeout_seconds => 21600
 ,p_cache_by_user_yn => 'N'
 ,p_help_text => 
'No help is available for this page.'
 ,p_last_updated_by => 'ADMIN'
 ,p_last_upd_yyyymmddhh24miss => '20211211222850'
  );
null;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'select '||chr(10)||
'"JOB_ID",'||chr(10)||
'"JOB_ID" JOB_ID_DISPLAY,'||chr(10)||
'"JOB_DESCRIPTION"'||chr(10)||
'from "#OWNER#"."JOB_MASTER"'||chr(10)||
'';

wwv_flow_api.create_report_region (
  p_id=> 4934507172628363 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 6,
  p_name=> 'Job Details ',
  p_region_name=>'',
  p_template=> 4889906514313789+ wwv_flow_api.g_id_offset,
  p_display_sequence=> 15,
  p_display_column=> 1,
  p_display_point=> 'AFTER_SHOW_ITEMS',
  p_source=> s,
  p_source_type=> 'UPDATABLE_SQL_QUERY',
  p_display_error_message=> '#SQLERRM#',
  p_plug_caching=> 'NOT_CACHED',
  p_customized=> '0',
  p_translate_title=> 'Y',
  p_ajax_enabled=> 'N',
  p_query_row_template=> 4893522550313792+ wwv_flow_api.g_id_offset,
  p_query_headings_type=> 'COLON_DELMITED_LIST',
  p_query_num_rows=> '10',
  p_query_options=> 'DERIVED_REPORT_COLUMNS',
  p_query_show_nulls_as=> '(null)',
  p_query_break_cols=> '0',
  p_query_no_data_found=> 'No data found.',
  p_query_num_rows_type=> 'ROW_RANGES_IN_SELECT_LIST',
  p_query_row_count_max=> '500',
  p_pagination_display_position=> 'BOTTOM_RIGHT',
  p_csv_output=> 'N',
  p_query_asc_image=> 'apex/builder/dup.gif',
  p_query_asc_image_attr=> 'width="16" height="16" alt="" ',
  p_query_desc_image=> 'apex/builder/ddown.gif',
  p_query_desc_image_attr=> 'width="16" height="16" alt="" ',
  p_plug_query_strip_html=> 'Y',
  p_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 4936718198628364 + wwv_flow_api.g_id_offset,
  p_region_id=> 4934507172628363 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 1,
  p_form_element_id=> null,
  p_column_alias=> 'CHECK$01',
  p_column_display_sequence=> 1,
  p_column_heading=> '&nbsp;',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'CHECKBOX',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_derived_column=> 'Y',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 4934824337628364 + wwv_flow_api.g_id_offset,
  p_region_id=> 4934507172628363 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 2,
  p_form_element_id=> null,
  p_column_alias=> 'JOB_ID',
  p_column_display_sequence=> 2,
  p_column_heading=> 'Job Id',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'Y',
  p_display_as=>'TEXT_FROM_LOV',
  p_lov_show_nulls=> 'NO',
  p_column_width=> '16',
  p_is_required=> false,
  p_pk_col_source_type=> 'T',
  p_pk_col_source=> s,
  p_lov_display_extra=> 'YES',
  p_include_in_export=> 'Y',
  p_ref_schema=> 'EMP_PROFILE',
  p_ref_table_name=> 'JOB_MASTER',
  p_ref_column_name=> 'JOB_ID',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 4934925808628364 + wwv_flow_api.g_id_offset,
  p_region_id=> 4934507172628363 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 3,
  p_form_element_id=> null,
  p_column_alias=> 'JOB_ID_DISPLAY',
  p_column_display_sequence=> 3,
  p_column_heading=> 'Job Id',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'TEXT_FROM_LOV',
  p_lov_show_nulls=> 'NO',
  p_column_width=> '16',
  p_is_required=> false,
  p_lov_display_extra=> 'YES',
  p_include_in_export=> 'Y',
  p_ref_schema=> 'EMP_PROFILE',
  p_ref_table_name=> 'JOB_MASTER',
  p_ref_column_name=> 'JOB_ID_DISPLAY',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 4935010910628364 + wwv_flow_api.g_id_offset,
  p_region_id=> 4934507172628363 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 4,
  p_form_element_id=> null,
  p_column_alias=> 'JOB_DESCRIPTION',
  p_column_display_sequence=> 4,
  p_column_heading=> 'Job Description',
  p_column_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'TEXT',
  p_column_width=> '16',
  p_is_required=> false,
  p_ref_schema=> 'EMP_PROFILE',
  p_ref_table_name=> 'JOB_MASTER',
  p_ref_column_name=> 'JOB_DESCRIPTION',
  p_column_comment=>'');
end;
/
 
begin
 
wwv_flow_api.create_page_button(
  p_id             => 4935403014628364 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 6,
  p_button_sequence=> 40,
  p_button_plug_id => 4934507172628363+wwv_flow_api.g_id_offset,
  p_button_name    => 'ADD',
  p_button_image   => 'template:'||to_char(4887330298313787+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Add Row',
  p_button_position=> 'BOTTOM',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'javascript:addRow();',
  p_button_execute_validations=>'N',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 4935227937628364 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 6,
  p_button_sequence=> 30,
  p_button_plug_id => 4934507172628363+wwv_flow_api.g_id_offset,
  p_button_name    => 'SUBMIT',
  p_button_image   => 'template:'||to_char(4887330298313787+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Submit',
  p_button_position=> 'REGION_TEMPLATE_CHANGE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> '',
  p_button_execute_validations=>'Y',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 4935122667628364 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 6,
  p_button_sequence=> 10,
  p_button_plug_id => 4934507172628363+wwv_flow_api.g_id_offset,
  p_button_name    => 'CANCEL',
  p_button_image   => 'template:'||to_char(4887330298313787+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Cancel',
  p_button_position=> 'REGION_TEMPLATE_CLOSE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 4935332695628364 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 6,
  p_button_sequence=> 20,
  p_button_plug_id => 4934507172628363+wwv_flow_api.g_id_offset,
  p_button_name    => 'MULTI_ROW_DELETE',
  p_button_image   => 'template:'||to_char(4887330298313787+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Delete',
  p_button_position=> 'REGION_TEMPLATE_DELETE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'javascript:apex.confirm(htmldb_delete_message,''MULTI_ROW_DELETE'');',
  p_button_execute_validations=>'N',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_branch(
  p_id=>4936818085628364 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 6,
  p_branch_action=> 'f?p=&APP_ID.:6:&SESSION.&success_msg=#SUCCESS_MSG#',
  p_branch_point=> 'AFTER_PROCESSING',
  p_branch_type=> 'REDIRECT_URL',
  p_branch_sequence=> 1,
  p_save_state_before_branch_yn=>'Y',
  p_branch_comment=> '');
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 4936201557628364 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 6,
  p_tabular_form_region_id => 4934507172628363 + wwv_flow_api.g_id_offset,
  p_validation_name => 'JOB_DESCRIPTION not null',
  p_validation_sequence=> 30,
  p_validation => 'JOB_DESCRIPTION',
  p_validation_type => 'COL_NOT_NULL',
  p_error_message => '#COLUMN_HEADER# must have a value.',
  p_when_button_pressed=> 4935227937628364 + wwv_flow_api.g_id_offset,
  p_associated_column=> 'JOB_DESCRIPTION',
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'#OWNER#:JOB_MASTER:JOB_ID';

wwv_flow_api.create_page_process(
  p_id     => 4936307928628364 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 6,
  p_process_sequence=> 10,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'MULTI_ROW_UPDATE',
  p_process_name=> 'ApplyMRU',
  p_process_sql_clob => p, 
  p_process_error_message=> 'Unable to process update.',
  p_process_when_button_id=>4935227937628364 + wwv_flow_api.g_id_offset,
  p_process_success_message=> '#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'#OWNER#:JOB_MASTER:JOB_ID';

wwv_flow_api.create_page_process(
  p_id     => 4936523539628364 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 6,
  p_process_sequence=> 20,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'MULTI_ROW_DELETE',
  p_process_name=> 'ApplyMRD',
  p_process_sql_clob => p, 
  p_process_error_message=> 'Unable to process delete.',
  p_process_when=>'MULTI_ROW_DELETE',
  p_process_when_type=>'REQUEST_EQUALS_CONDITION',
  p_process_success_message=> '#MRD_COUNT# row(s) deleted.',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 6
--
 
begin
 
wwv_flow_api.create_region_rpt_cols (
  p_id     => 4941122763649433 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_plug_id=> 4934507172628363 + wwv_flow_api.g_id_offset,
  p_column_sequence=> 1,
  p_query_column_name=> 'JOB_ID',
  p_display_as=> 'TEXT',
  p_column_comment=> '');
 
wwv_flow_api.create_region_rpt_cols (
  p_id     => 4941203685649433 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_plug_id=> 4934507172628363 + wwv_flow_api.g_id_offset,
  p_column_sequence=> 2,
  p_query_column_name=> 'JOB_ID_DISPLAY',
  p_display_as=> 'TEXT',
  p_column_comment=> '');
 
wwv_flow_api.create_region_rpt_cols (
  p_id     => 4941328516649433 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_plug_id=> 4934507172628363 + wwv_flow_api.g_id_offset,
  p_column_sequence=> 3,
  p_query_column_name=> 'JOB_DESCRIPTION',
  p_display_as=> 'TEXT',
  p_column_comment=> '');
 
null;
end;
null;
 
end;
/

 
--application/pages/page_00007
prompt  ...PAGE 7: NATIONALITY
--
 
begin
 
wwv_flow_api.create_page (
  p_flow_id => wwv_flow.g_flow_id
 ,p_id => 7
 ,p_tab_set => 'TS1'
 ,p_name => 'NATIONALITY'
 ,p_step_title => 'Update NATIONALITY'
 ,p_allow_duplicate_submissions => 'Y'
 ,p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS'
 ,p_first_item => 'NO_FIRST_ITEM'
 ,p_include_apex_css_js_yn => 'Y'
 ,p_autocomplete_on_off => 'ON'
 ,p_javascript_code => 
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
 ,p_page_is_public_y_n => 'N'
 ,p_protection_level => 'N'
 ,p_cache_page_yn => 'N'
 ,p_cache_timeout_seconds => 21600
 ,p_cache_by_user_yn => 'N'
 ,p_help_text => 
'No help is available for this page.'
 ,p_last_updated_by => 'ADMIN'
 ,p_last_upd_yyyymmddhh24miss => '20211211151827'
  );
null;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'select '||chr(10)||
'"NATIONALITY_ID",'||chr(10)||
'"NATIONALITY_ID" NATIONALITY_ID_DISPLAY,'||chr(10)||
'"NATIONALITY"'||chr(10)||
'from "#OWNER#"."NATIONALITY"'||chr(10)||
'';

wwv_flow_api.create_report_region (
  p_id=> 4937920845643406 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 7,
  p_name=> 'Nationality Details',
  p_region_name=>'',
  p_template=> 4889906514313789+ wwv_flow_api.g_id_offset,
  p_display_sequence=> 15,
  p_display_column=> 1,
  p_display_point=> 'AFTER_SHOW_ITEMS',
  p_source=> s,
  p_source_type=> 'UPDATABLE_SQL_QUERY',
  p_display_error_message=> '#SQLERRM#',
  p_plug_caching=> 'NOT_CACHED',
  p_customized=> '0',
  p_translate_title=> 'Y',
  p_ajax_enabled=> 'N',
  p_query_row_template=> 4893522550313792+ wwv_flow_api.g_id_offset,
  p_query_headings_type=> 'COLON_DELMITED_LIST',
  p_query_num_rows=> '10',
  p_query_options=> 'DERIVED_REPORT_COLUMNS',
  p_query_show_nulls_as=> '(null)',
  p_query_no_data_found=> 'No data found.',
  p_query_num_rows_type=> 'ROW_RANGES_IN_SELECT_LIST',
  p_query_row_count_max=> '500',
  p_query_asc_image=> 'apex/builder/dup.gif',
  p_query_asc_image_attr=> 'width="16" height="16" alt="" ',
  p_query_desc_image=> 'apex/builder/ddown.gif',
  p_query_desc_image_attr=> 'width="16" height="16" alt="" ',
  p_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 4940111064643407 + wwv_flow_api.g_id_offset,
  p_region_id=> 4937920845643406 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 1,
  p_form_element_id=> null,
  p_column_alias=> 'CHECK$01',
  p_column_display_sequence=> 1,
  p_column_heading=> '&nbsp;',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'CHECKBOX',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_derived_column=> 'Y',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 4938214141643406 + wwv_flow_api.g_id_offset,
  p_region_id=> 4937920845643406 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 2,
  p_form_element_id=> null,
  p_column_alias=> 'NATIONALITY_ID',
  p_column_display_sequence=> 2,
  p_column_heading=> 'Nationality Id',
  p_column_alignment=>'LEFT',
  p_disable_sort_column=>'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'Y',
  p_display_as=>'HIDDEN',
  p_column_width=> '16',
  p_is_required=> false,
  p_pk_col_source_type=> 'T',
  p_ref_schema=> 'EMP_PROFILE',
  p_ref_table_name=> 'NATIONALITY',
  p_ref_column_name=> 'NATIONALITY_ID',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 4938328539643406 + wwv_flow_api.g_id_offset,
  p_region_id=> 4937920845643406 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 3,
  p_form_element_id=> null,
  p_column_alias=> 'NATIONALITY_ID_DISPLAY',
  p_column_display_sequence=> 3,
  p_column_heading=> 'Nationality Id',
  p_column_alignment=>'LEFT',
  p_disable_sort_column=>'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_column_width=> '16',
  p_is_required=> false,
  p_ref_schema=> 'EMP_PROFILE',
  p_ref_table_name=> 'NATIONALITY',
  p_ref_column_name=> 'NATIONALITY_ID_DISPLAY',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 4938420214643406 + wwv_flow_api.g_id_offset,
  p_region_id=> 4937920845643406 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 4,
  p_form_element_id=> null,
  p_column_alias=> 'NATIONALITY',
  p_column_display_sequence=> 4,
  p_column_heading=> 'Nationality',
  p_column_alignment=>'LEFT',
  p_disable_sort_column=>'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'TEXT',
  p_column_width=> '16',
  p_is_required=> false,
  p_ref_schema=> 'EMP_PROFILE',
  p_ref_table_name=> 'NATIONALITY',
  p_ref_column_name=> 'NATIONALITY',
  p_column_comment=>'');
end;
/
 
begin
 
wwv_flow_api.create_page_button(
  p_id             => 4938804959643406 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 7,
  p_button_sequence=> 40,
  p_button_plug_id => 4937920845643406+wwv_flow_api.g_id_offset,
  p_button_name    => 'ADD',
  p_button_image   => 'template:'||to_char(4887330298313787+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Add Row',
  p_button_position=> 'BOTTOM',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'javascript:addRow();',
  p_button_execute_validations=>'N',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 4938601347643406 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 7,
  p_button_sequence=> 30,
  p_button_plug_id => 4937920845643406+wwv_flow_api.g_id_offset,
  p_button_name    => 'SUBMIT',
  p_button_image   => 'template:'||to_char(4887330298313787+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Submit',
  p_button_position=> 'REGION_TEMPLATE_CHANGE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> '',
  p_button_execute_validations=>'Y',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 4938505621643406 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 7,
  p_button_sequence=> 10,
  p_button_plug_id => 4937920845643406+wwv_flow_api.g_id_offset,
  p_button_name    => 'CANCEL',
  p_button_image   => 'template:'||to_char(4887330298313787+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Cancel',
  p_button_position=> 'REGION_TEMPLATE_CLOSE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 4938722324643406 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 7,
  p_button_sequence=> 20,
  p_button_plug_id => 4937920845643406+wwv_flow_api.g_id_offset,
  p_button_name    => 'MULTI_ROW_DELETE',
  p_button_image   => 'template:'||to_char(4887330298313787+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Delete',
  p_button_position=> 'REGION_TEMPLATE_DELETE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'javascript:apex.confirm(htmldb_delete_message,''MULTI_ROW_DELETE'');',
  p_button_execute_validations=>'N',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_branch(
  p_id=>4940219890643407 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 7,
  p_branch_action=> 'f?p=&APP_ID.:7:&SESSION.&success_msg=#SUCCESS_MSG#',
  p_branch_point=> 'AFTER_PROCESSING',
  p_branch_type=> 'REDIRECT_URL',
  p_branch_sequence=> 1,
  p_save_state_before_branch_yn=>'Y',
  p_branch_comment=> '');
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 4939621052643407 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 7,
  p_tabular_form_region_id => 4937920845643406 + wwv_flow_api.g_id_offset,
  p_validation_name => 'NATIONALITY not null',
  p_validation_sequence=> 30,
  p_validation => 'NATIONALITY',
  p_validation_type => 'COL_NOT_NULL',
  p_error_message => '#COLUMN_HEADER# must have a value.',
  p_when_button_pressed=> 4938601347643406 + wwv_flow_api.g_id_offset,
  p_associated_column=> 'NATIONALITY',
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'#OWNER#:NATIONALITY:NATIONALITY_ID';

wwv_flow_api.create_page_process(
  p_id     => 4939719996643407 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 7,
  p_process_sequence=> 10,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'MULTI_ROW_UPDATE',
  p_process_name=> 'ApplyMRU',
  p_process_sql_clob => p, 
  p_process_error_message=> 'Unable to process update.',
  p_process_when_button_id=>4938601347643406 + wwv_flow_api.g_id_offset,
  p_process_success_message=> '#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'#OWNER#:NATIONALITY:NATIONALITY_ID';

wwv_flow_api.create_page_process(
  p_id     => 4939922752643407 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 7,
  p_process_sequence=> 20,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'MULTI_ROW_DELETE',
  p_process_name=> 'ApplyMRD',
  p_process_sql_clob => p, 
  p_process_error_message=> 'Unable to process delete.',
  p_process_when=>'MULTI_ROW_DELETE',
  p_process_when_type=>'REQUEST_EQUALS_CONDITION',
  p_process_success_message=> '#MRD_COUNT# row(s) deleted.',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 7
--
 
begin
 
wwv_flow_api.create_region_rpt_cols (
  p_id     => 4940713067646641 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_plug_id=> 4937920845643406 + wwv_flow_api.g_id_offset,
  p_column_sequence=> 1,
  p_query_column_name=> 'NATIONALITY_ID',
  p_display_as=> 'TEXT',
  p_column_comment=> '');
 
wwv_flow_api.create_region_rpt_cols (
  p_id     => 4940809724646641 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_plug_id=> 4937920845643406 + wwv_flow_api.g_id_offset,
  p_column_sequence=> 2,
  p_query_column_name=> 'NATIONALITY_ID_DISPLAY',
  p_display_as=> 'TEXT',
  p_column_comment=> '');
 
wwv_flow_api.create_region_rpt_cols (
  p_id     => 4940919576646641 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_plug_id=> 4937920845643406 + wwv_flow_api.g_id_offset,
  p_column_sequence=> 3,
  p_query_column_name=> 'NATIONALITY',
  p_display_as=> 'TEXT',
  p_column_comment=> '');
 
null;
end;
null;
 
end;
/

 
--application/pages/page_00008
prompt  ...PAGE 8: SHIFT_WORK
--
 
begin
 
wwv_flow_api.create_page (
  p_flow_id => wwv_flow.g_flow_id
 ,p_id => 8
 ,p_tab_set => 'TS1'
 ,p_name => 'SHIFT_WORK'
 ,p_step_title => 'Update SHIFT_WORK'
 ,p_allow_duplicate_submissions => 'Y'
 ,p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS'
 ,p_first_item => 'NO_FIRST_ITEM'
 ,p_include_apex_css_js_yn => 'Y'
 ,p_autocomplete_on_off => 'ON'
 ,p_javascript_code => 
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
 ,p_page_is_public_y_n => 'N'
 ,p_protection_level => 'N'
 ,p_cache_page_yn => 'N'
 ,p_cache_timeout_seconds => 21600
 ,p_cache_by_user_yn => 'N'
 ,p_help_text => 
'No help is available for this page.'
 ,p_last_updated_by => 'ADMIN'
 ,p_last_upd_yyyymmddhh24miss => '20211211214549'
  );
null;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'select '||chr(10)||
'"SHIFT_CODE",'||chr(10)||
'"SHIFT_CODE" SHIFT_CODE_DISPLAY,'||chr(10)||
'"SHIFT_NAME",'||chr(10)||
'"SHIFT_FROM_TIME",'||chr(10)||
'"SHIFT_TO_TIME"'||chr(10)||
'from "#OWNER#"."SHIFT_WORK"'||chr(10)||
'';

wwv_flow_api.create_report_region (
  p_id=> 4942714593760446 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 8,
  p_name=> 'Shift Details',
  p_region_name=>'',
  p_template=> 4889906514313789+ wwv_flow_api.g_id_offset,
  p_display_sequence=> 15,
  p_display_column=> 1,
  p_display_point=> 'AFTER_SHOW_ITEMS',
  p_source=> s,
  p_source_type=> 'UPDATABLE_SQL_QUERY',
  p_display_error_message=> '#SQLERRM#',
  p_plug_caching=> 'NOT_CACHED',
  p_customized=> '0',
  p_translate_title=> 'Y',
  p_ajax_enabled=> 'N',
  p_query_row_template=> 4893522550313792+ wwv_flow_api.g_id_offset,
  p_query_headings_type=> 'COLON_DELMITED_LIST',
  p_query_num_rows=> '10',
  p_query_options=> 'DERIVED_REPORT_COLUMNS',
  p_query_show_nulls_as=> '(null)',
  p_query_break_cols=> '0',
  p_query_no_data_found=> 'No data found.',
  p_query_num_rows_type=> 'ROW_RANGES_IN_SELECT_LIST',
  p_query_row_count_max=> '500',
  p_pagination_display_position=> 'BOTTOM_RIGHT',
  p_csv_output=> 'N',
  p_query_asc_image=> 'apex/builder/dup.gif',
  p_query_asc_image_attr=> 'width="16" height="16" alt="" ',
  p_query_desc_image=> 'apex/builder/ddown.gif',
  p_query_desc_image_attr=> 'width="16" height="16" alt="" ',
  p_plug_query_strip_html=> 'Y',
  p_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 4945520056760447 + wwv_flow_api.g_id_offset,
  p_region_id=> 4942714593760446 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 1,
  p_form_element_id=> null,
  p_column_alias=> 'CHECK$01',
  p_column_display_sequence=> 1,
  p_column_heading=> '&nbsp;',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'CHECKBOX',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_derived_column=> 'Y',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 4943022597760446 + wwv_flow_api.g_id_offset,
  p_region_id=> 4942714593760446 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 2,
  p_form_element_id=> null,
  p_column_alias=> 'SHIFT_CODE',
  p_column_display_sequence=> 2,
  p_column_heading=> 'Shift Code',
  p_column_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'Y',
  p_display_as=>'HIDDEN',
  p_column_width=> '16',
  p_is_required=> false,
  p_pk_col_source_type=> 'T',
  p_ref_schema=> 'EMP_PROFILE',
  p_ref_table_name=> 'SHIFT_WORK',
  p_ref_column_name=> 'SHIFT_CODE',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 4943126269760446 + wwv_flow_api.g_id_offset,
  p_region_id=> 4942714593760446 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 3,
  p_form_element_id=> null,
  p_column_alias=> 'SHIFT_CODE_DISPLAY',
  p_column_display_sequence=> 3,
  p_column_heading=> 'Shift Code',
  p_column_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_column_width=> '16',
  p_is_required=> false,
  p_ref_schema=> 'EMP_PROFILE',
  p_ref_table_name=> 'SHIFT_WORK',
  p_ref_column_name=> 'SHIFT_CODE_DISPLAY',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 4943224169760446 + wwv_flow_api.g_id_offset,
  p_region_id=> 4942714593760446 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 4,
  p_form_element_id=> null,
  p_column_alias=> 'SHIFT_NAME',
  p_column_display_sequence=> 4,
  p_column_heading=> 'Shift Name',
  p_column_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'TEXT',
  p_column_width=> '16',
  p_is_required=> false,
  p_ref_schema=> 'EMP_PROFILE',
  p_ref_table_name=> 'SHIFT_WORK',
  p_ref_column_name=> 'SHIFT_NAME',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 4943331953760446 + wwv_flow_api.g_id_offset,
  p_region_id=> 4942714593760446 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 5,
  p_form_element_id=> null,
  p_column_alias=> 'SHIFT_FROM_TIME',
  p_column_display_sequence=> 5,
  p_column_heading=> 'Shift From Time',
  p_column_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'TEXT',
  p_column_width=> '12',
  p_is_required=> false,
  p_ref_schema=> 'EMP_PROFILE',
  p_ref_table_name=> 'SHIFT_WORK',
  p_ref_column_name=> 'SHIFT_FROM_TIME',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 4943412327760446 + wwv_flow_api.g_id_offset,
  p_region_id=> 4942714593760446 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 6,
  p_form_element_id=> null,
  p_column_alias=> 'SHIFT_TO_TIME',
  p_column_display_sequence=> 6,
  p_column_heading=> 'Shift To Time',
  p_column_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'TEXT',
  p_column_width=> '12',
  p_is_required=> false,
  p_ref_schema=> 'EMP_PROFILE',
  p_ref_table_name=> 'SHIFT_WORK',
  p_ref_column_name=> 'SHIFT_TO_TIME',
  p_column_comment=>'');
end;
/
 
begin
 
wwv_flow_api.create_page_button(
  p_id             => 4943809773760446 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 8,
  p_button_sequence=> 40,
  p_button_plug_id => 4942714593760446+wwv_flow_api.g_id_offset,
  p_button_name    => 'ADD',
  p_button_image   => 'template:'||to_char(4887330298313787+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Add Row',
  p_button_position=> 'BOTTOM',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'javascript:addRow();',
  p_button_execute_validations=>'N',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 4943609184760446 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 8,
  p_button_sequence=> 30,
  p_button_plug_id => 4942714593760446+wwv_flow_api.g_id_offset,
  p_button_name    => 'SUBMIT',
  p_button_image   => 'template:'||to_char(4887330298313787+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Submit',
  p_button_position=> 'REGION_TEMPLATE_CHANGE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> '',
  p_button_execute_validations=>'Y',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 4943521822760446 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 8,
  p_button_sequence=> 10,
  p_button_plug_id => 4942714593760446+wwv_flow_api.g_id_offset,
  p_button_name    => 'CANCEL',
  p_button_image   => 'template:'||to_char(4887330298313787+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Cancel',
  p_button_position=> 'REGION_TEMPLATE_CLOSE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 4943731486760446 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 8,
  p_button_sequence=> 20,
  p_button_plug_id => 4942714593760446+wwv_flow_api.g_id_offset,
  p_button_name    => 'MULTI_ROW_DELETE',
  p_button_image   => 'template:'||to_char(4887330298313787+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Delete',
  p_button_position=> 'REGION_TEMPLATE_DELETE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'javascript:apex.confirm(htmldb_delete_message,''MULTI_ROW_DELETE'');',
  p_button_execute_validations=>'N',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_branch(
  p_id=>4945600806760447 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 8,
  p_branch_action=> 'f?p=&APP_ID.:8:&SESSION.&success_msg=#SUCCESS_MSG#',
  p_branch_point=> 'AFTER_PROCESSING',
  p_branch_type=> 'REDIRECT_URL',
  p_branch_sequence=> 1,
  p_save_state_before_branch_yn=>'Y',
  p_branch_comment=> '');
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 4944603631760447 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 8,
  p_tabular_form_region_id => 4942714593760446 + wwv_flow_api.g_id_offset,
  p_validation_name => 'SHIFT_NAME not null',
  p_validation_sequence=> 30,
  p_validation => 'SHIFT_NAME',
  p_validation_type => 'COL_NOT_NULL',
  p_error_message => '#COLUMN_HEADER# must have a value.',
  p_when_button_pressed=> 4943609184760446 + wwv_flow_api.g_id_offset,
  p_associated_column=> 'SHIFT_NAME',
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 4944822411760447 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 8,
  p_tabular_form_region_id => 4942714593760446 + wwv_flow_api.g_id_offset,
  p_validation_name => 'SHIFT_FROM_TIME not null',
  p_validation_sequence=> 40,
  p_validation => 'SHIFT_FROM_TIME',
  p_validation_type => 'COL_NOT_NULL',
  p_error_message => '#COLUMN_HEADER# must have a value.',
  p_when_button_pressed=> 4943609184760446 + wwv_flow_api.g_id_offset,
  p_associated_column=> 'SHIFT_FROM_TIME',
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 4945029973760447 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 8,
  p_tabular_form_region_id => 4942714593760446 + wwv_flow_api.g_id_offset,
  p_validation_name => 'SHIFT_TO_TIME not null',
  p_validation_sequence=> 50,
  p_validation => 'SHIFT_TO_TIME',
  p_validation_type => 'COL_NOT_NULL',
  p_error_message => '#COLUMN_HEADER# must have a value.',
  p_when_button_pressed=> 4943609184760446 + wwv_flow_api.g_id_offset,
  p_associated_column=> 'SHIFT_TO_TIME',
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'#OWNER#:SHIFT_WORK:SHIFT_CODE';

wwv_flow_api.create_page_process(
  p_id     => 4945130041760447 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 8,
  p_process_sequence=> 10,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'MULTI_ROW_UPDATE',
  p_process_name=> 'ApplyMRU',
  p_process_sql_clob => p, 
  p_process_error_message=> 'Unable to process update.',
  p_process_when_button_id=>4943609184760446 + wwv_flow_api.g_id_offset,
  p_process_success_message=> '#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'#OWNER#:SHIFT_WORK:SHIFT_CODE';

wwv_flow_api.create_page_process(
  p_id     => 4945332116760447 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 8,
  p_process_sequence=> 20,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'MULTI_ROW_DELETE',
  p_process_name=> 'ApplyMRD',
  p_process_sql_clob => p, 
  p_process_error_message=> 'Unable to process delete.',
  p_process_when=>'MULTI_ROW_DELETE',
  p_process_when_type=>'REQUEST_EQUALS_CONDITION',
  p_process_success_message=> '#MRD_COUNT# row(s) deleted.',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 8
--
 
begin
 
wwv_flow_api.create_region_rpt_cols (
  p_id     => 4946029876764994 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_plug_id=> 4942714593760446 + wwv_flow_api.g_id_offset,
  p_column_sequence=> 1,
  p_query_column_name=> 'SHIFT_CODE',
  p_display_as=> 'TEXT',
  p_column_comment=> '');
 
wwv_flow_api.create_region_rpt_cols (
  p_id     => 4946116526764994 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_plug_id=> 4942714593760446 + wwv_flow_api.g_id_offset,
  p_column_sequence=> 2,
  p_query_column_name=> 'SHIFT_CODE_DISPLAY',
  p_display_as=> 'TEXT',
  p_column_comment=> '');
 
wwv_flow_api.create_region_rpt_cols (
  p_id     => 4946223138764994 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_plug_id=> 4942714593760446 + wwv_flow_api.g_id_offset,
  p_column_sequence=> 3,
  p_query_column_name=> 'SHIFT_NAME',
  p_display_as=> 'TEXT',
  p_column_comment=> '');
 
wwv_flow_api.create_region_rpt_cols (
  p_id     => 4946318324764994 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_plug_id=> 4942714593760446 + wwv_flow_api.g_id_offset,
  p_column_sequence=> 4,
  p_query_column_name=> 'SHIFT_FROM_TIME',
  p_display_as=> 'TEXT',
  p_column_comment=> '');
 
wwv_flow_api.create_region_rpt_cols (
  p_id     => 4946417104764994 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_plug_id=> 4942714593760446 + wwv_flow_api.g_id_offset,
  p_column_sequence=> 5,
  p_query_column_name=> 'SHIFT_TO_TIME',
  p_display_as=> 'TEXT',
  p_column_comment=> '');
 
null;
end;
null;
 
end;
/

 
--application/pages/page_00009
prompt  ...PAGE 9: TRAINING_ADVERTISEMENT
--
 
begin
 
wwv_flow_api.create_page (
  p_flow_id => wwv_flow.g_flow_id
 ,p_id => 9
 ,p_tab_set => 'TS1'
 ,p_name => 'TRAINING_ADVERTISEMENT'
 ,p_step_title => 'TRAINING_ADVERTISEMENT'
 ,p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS'
 ,p_first_item => 'NO_FIRST_ITEM'
 ,p_include_apex_css_js_yn => 'Y'
 ,p_javascript_code => 
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
 ,p_cache_page_yn => 'N'
 ,p_help_text => 
'No help is available for this page.'
 ,p_last_updated_by => 'ADMIN'
 ,p_last_upd_yyyymmddhh24miss => '20220512180633'
  );
null;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'select '||chr(10)||
'"ADVERTISEMENT_ID",'||chr(10)||
'"ADVERTISEMENT_ID" ADVERTISEMENT_ID_DISPLAY,'||chr(10)||
'"TRAINING_NAME",'||chr(10)||
'"CONTACT_NO",'||chr(10)||
'"EMAIL_ADDRESS",'||chr(10)||
'"TRAINING_TYPE",'||chr(10)||
'"START_DATE",'||chr(10)||
'"END_DATE",'||chr(10)||
'"COURSE_ID",'||chr(10)||
'"PUBLISHED_DATE"'||chr(10)||
'from "#OWNER#"."TRAINING_ADVERTISEMENT"'||chr(10)||
'';

wwv_flow_api.create_report_region (
  p_id=> 4947122130785538 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 9,
  p_name=> 'Advertisement Details',
  p_region_name=>'',
  p_template=> 4889906514313789+ wwv_flow_api.g_id_offset,
  p_display_sequence=> 15,
  p_display_column=> 1,
  p_display_point=> 'AFTER_SHOW_ITEMS',
  p_source=> s,
  p_source_type=> 'UPDATABLE_SQL_QUERY',
  p_display_error_message=> '#SQLERRM#',
  p_plug_caching=> 'NOT_CACHED',
  p_customized=> '0',
  p_translate_title=> 'Y',
  p_ajax_enabled=> 'N',
  p_query_row_template=> 4893522550313792+ wwv_flow_api.g_id_offset,
  p_query_headings_type=> 'COLON_DELMITED_LIST',
  p_query_num_rows=> '10',
  p_query_options=> 'DERIVED_REPORT_COLUMNS',
  p_query_show_nulls_as=> '(null)',
  p_query_break_cols=> '0',
  p_query_no_data_found=> 'No data found.',
  p_query_num_rows_type=> 'ROW_RANGES_IN_SELECT_LIST',
  p_query_row_count_max=> '500',
  p_pagination_display_position=> 'BOTTOM_RIGHT',
  p_csv_output=> 'N',
  p_query_asc_image=> 'apex/builder/dup.gif',
  p_query_asc_image_attr=> 'width="16" height="16" alt="" ',
  p_query_desc_image=> 'apex/builder/ddown.gif',
  p_query_desc_image_attr=> 'width="16" height="16" alt="" ',
  p_plug_query_strip_html=> 'Y',
  p_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 4952628503785540 + wwv_flow_api.g_id_offset,
  p_region_id=> 4947122130785538 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 1,
  p_form_element_id=> null,
  p_column_alias=> 'CHECK$01',
  p_column_display_sequence=> 1,
  p_column_heading=> '&nbsp;',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'CHECKBOX',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_derived_column=> 'Y',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 4947420407785538 + wwv_flow_api.g_id_offset,
  p_region_id=> 4947122130785538 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 2,
  p_form_element_id=> null,
  p_column_alias=> 'ADVERTISEMENT_ID',
  p_column_display_sequence=> 2,
  p_column_heading=> 'Adv Id',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'Y',
  p_display_as=>'HIDDEN',
  p_lov_show_nulls=> 'NO',
  p_column_width=> '16',
  p_is_required=> false,
  p_pk_col_source_type=> 'T',
  p_pk_col_source=> s,
  p_lov_display_extra=> 'YES',
  p_include_in_export=> 'Y',
  p_ref_schema=> 'EMP_PROFILE',
  p_ref_table_name=> 'TRAINING_ADVERTISEMENT',
  p_ref_column_name=> 'ADVERTISEMENT_ID',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 4947501080785538 + wwv_flow_api.g_id_offset,
  p_region_id=> 4947122130785538 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 3,
  p_form_element_id=> null,
  p_column_alias=> 'ADVERTISEMENT_ID_DISPLAY',
  p_column_display_sequence=> 3,
  p_column_heading=> 'Adv Id',
  p_column_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_column_width=> '16',
  p_is_required=> false,
  p_ref_schema=> 'EMP_PROFILE',
  p_ref_table_name=> 'TRAINING_ADVERTISEMENT',
  p_ref_column_name=> 'ADVERTISEMENT_ID_DISPLAY',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 4947632691785538 + wwv_flow_api.g_id_offset,
  p_region_id=> 4947122130785538 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 4,
  p_form_element_id=> null,
  p_column_alias=> 'TRAINING_NAME',
  p_column_display_sequence=> 4,
  p_column_heading=> 'Training Name',
  p_column_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'TEXT',
  p_column_width=> '16',
  p_is_required=> false,
  p_ref_schema=> 'EMP_PROFILE',
  p_ref_table_name=> 'TRAINING_ADVERTISEMENT',
  p_ref_column_name=> 'TRAINING_NAME',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 4947710995785538 + wwv_flow_api.g_id_offset,
  p_region_id=> 4947122130785538 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 5,
  p_form_element_id=> null,
  p_column_alias=> 'CONTACT_NO',
  p_column_display_sequence=> 5,
  p_column_heading=> 'Contact #',
  p_column_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'TEXT',
  p_column_width=> '16',
  p_is_required=> false,
  p_ref_schema=> 'EMP_PROFILE',
  p_ref_table_name=> 'TRAINING_ADVERTISEMENT',
  p_ref_column_name=> 'CONTACT_NO',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 4947800679785538 + wwv_flow_api.g_id_offset,
  p_region_id=> 4947122130785538 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 6,
  p_form_element_id=> null,
  p_column_alias=> 'EMAIL_ADDRESS',
  p_column_display_sequence=> 6,
  p_column_heading=> 'Email',
  p_column_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'TEXT',
  p_column_width=> '16',
  p_is_required=> false,
  p_ref_schema=> 'EMP_PROFILE',
  p_ref_table_name=> 'TRAINING_ADVERTISEMENT',
  p_ref_column_name=> 'EMAIL_ADDRESS',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 4947910008785538 + wwv_flow_api.g_id_offset,
  p_region_id=> 4947122130785538 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 7,
  p_form_element_id=> null,
  p_column_alias=> 'TRAINING_TYPE',
  p_column_display_sequence=> 7,
  p_column_heading=> 'Training Type',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'SELECT_LIST_FROM_QUERY',
  p_inline_lov=> 'SELECT TRAINING_TYPE_DESCRIPTION,TTM_ID FROM TRAINING_TYPE_MASTER',
  p_lov_show_nulls=> 'NO',
  p_column_width=> '16',
  p_is_required=> false,
  p_lov_display_extra=> 'YES',
  p_include_in_export=> 'Y',
  p_ref_schema=> 'EMP_PROFILE',
  p_ref_table_name=> 'TRAINING_ADVERTISEMENT',
  p_ref_column_name=> 'TRAINING_TYPE',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 4948027174785538 + wwv_flow_api.g_id_offset,
  p_region_id=> 4947122130785538 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 8,
  p_form_element_id=> null,
  p_column_alias=> 'START_DATE',
  p_column_display_sequence=> 8,
  p_column_heading=> 'Start Date',
  p_column_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'DATE_PICKER',
  p_column_width=> '12',
  p_is_required=> false,
  p_ref_schema=> 'EMP_PROFILE',
  p_ref_table_name=> 'TRAINING_ADVERTISEMENT',
  p_ref_column_name=> 'START_DATE',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 4948116584785538 + wwv_flow_api.g_id_offset,
  p_region_id=> 4947122130785538 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 9,
  p_form_element_id=> null,
  p_column_alias=> 'END_DATE',
  p_column_display_sequence=> 9,
  p_column_heading=> 'End Date',
  p_column_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'DATE_PICKER',
  p_column_width=> '12',
  p_is_required=> false,
  p_ref_schema=> 'EMP_PROFILE',
  p_ref_table_name=> 'TRAINING_ADVERTISEMENT',
  p_ref_column_name=> 'END_DATE',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 4948204444785538 + wwv_flow_api.g_id_offset,
  p_region_id=> 4947122130785538 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 10,
  p_form_element_id=> null,
  p_column_alias=> 'COURSE_ID',
  p_column_display_sequence=> 10,
  p_column_heading=> 'Course',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'SELECT_LIST_FROM_QUERY',
  p_inline_lov=> 'SELECT CM_COURSE_NAME||'' Institute: ''||CM_INSTITUTE_NAME||'' Instructor: ''||CM_INSTRUCTOR_NAME COURSE_DESC,CM_COURSE_ID FROM COURSE_MASTER',
  p_lov_show_nulls=> 'NO',
  p_column_width=> '16',
  p_is_required=> false,
  p_lov_display_extra=> 'YES',
  p_include_in_export=> 'Y',
  p_ref_schema=> 'EMP_PROFILE',
  p_ref_table_name=> 'TRAINING_ADVERTISEMENT',
  p_ref_column_name=> 'COURSE_ID',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 4948300369785538 + wwv_flow_api.g_id_offset,
  p_region_id=> 4947122130785538 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 11,
  p_form_element_id=> null,
  p_column_alias=> 'PUBLISHED_DATE',
  p_column_display_sequence=> 11,
  p_column_heading=> 'Published Date',
  p_column_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'DATE_PICKER',
  p_column_width=> '12',
  p_is_required=> false,
  p_ref_schema=> 'EMP_PROFILE',
  p_ref_table_name=> 'TRAINING_ADVERTISEMENT',
  p_ref_column_name=> 'PUBLISHED_DATE',
  p_column_comment=>'');
end;
/
 
begin
 
wwv_flow_api.create_page_button(
  p_id             => 4948706612785539 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 9,
  p_button_sequence=> 40,
  p_button_plug_id => 4947122130785538+wwv_flow_api.g_id_offset,
  p_button_name    => 'ADD',
  p_button_image   => 'template:'||to_char(4887330298313787+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Add Row',
  p_button_position=> 'BOTTOM',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'javascript:addRow();',
  p_button_execute_validations=>'N',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 4948522557785539 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 9,
  p_button_sequence=> 30,
  p_button_plug_id => 4947122130785538+wwv_flow_api.g_id_offset,
  p_button_name    => 'SUBMIT',
  p_button_image   => 'template:'||to_char(4887330298313787+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Submit',
  p_button_position=> 'REGION_TEMPLATE_CHANGE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> '',
  p_button_execute_validations=>'Y',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 4948402524785539 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 9,
  p_button_sequence=> 10,
  p_button_plug_id => 4947122130785538+wwv_flow_api.g_id_offset,
  p_button_name    => 'CANCEL',
  p_button_image   => 'template:'||to_char(4887330298313787+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Cancel',
  p_button_position=> 'REGION_TEMPLATE_CLOSE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 4948631218785539 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 9,
  p_button_sequence=> 20,
  p_button_plug_id => 4947122130785538+wwv_flow_api.g_id_offset,
  p_button_name    => 'MULTI_ROW_DELETE',
  p_button_image   => 'template:'||to_char(4887330298313787+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Delete',
  p_button_position=> 'REGION_TEMPLATE_DELETE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'javascript:apex.confirm(htmldb_delete_message,''MULTI_ROW_DELETE'');',
  p_button_execute_validations=>'N',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_branch(
  p_id=>4952712990785540 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 9,
  p_branch_action=> 'f?p=&APP_ID.:9:&SESSION.&success_msg=#SUCCESS_MSG#',
  p_branch_point=> 'AFTER_PROCESSING',
  p_branch_type=> 'REDIRECT_URL',
  p_branch_sequence=> 1,
  p_save_state_before_branch_yn=>'Y',
  p_branch_comment=> '');
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 4949532673785539 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 9,
  p_tabular_form_region_id => 4947122130785538 + wwv_flow_api.g_id_offset,
  p_validation_name => 'TRAINING_NAME not null',
  p_validation_sequence=> 30,
  p_validation => 'TRAINING_NAME',
  p_validation_type => 'COL_NOT_NULL',
  p_error_message => '#COLUMN_HEADER# must have a value.',
  p_when_button_pressed=> 4948522557785539 + wwv_flow_api.g_id_offset,
  p_associated_column=> 'TRAINING_NAME',
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 4949726784785539 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 9,
  p_tabular_form_region_id => 4947122130785538 + wwv_flow_api.g_id_offset,
  p_validation_name => 'CONTACT_NO not null',
  p_validation_sequence=> 40,
  p_validation => 'CONTACT_NO',
  p_validation_type => 'COL_NOT_NULL',
  p_error_message => '#COLUMN_HEADER# must have a value.',
  p_when_button_pressed=> 4948522557785539 + wwv_flow_api.g_id_offset,
  p_associated_column=> 'CONTACT_NO',
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 4949906601785539 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 9,
  p_tabular_form_region_id => 4947122130785538 + wwv_flow_api.g_id_offset,
  p_validation_name => 'CONTACT_NO must be numeric',
  p_validation_sequence=> 40,
  p_validation => 'CONTACT_NO',
  p_validation_type => 'COL_IS_NUMERIC',
  p_error_message => '#COLUMN_HEADER# must be numeric.',
  p_when_button_pressed=> 4948522557785539 + wwv_flow_api.g_id_offset,
  p_associated_column=> 'CONTACT_NO',
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 4950124330785539 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 9,
  p_tabular_form_region_id => 4947122130785538 + wwv_flow_api.g_id_offset,
  p_validation_name => 'EMAIL_ADDRESS not null',
  p_validation_sequence=> 50,
  p_validation => 'EMAIL_ADDRESS',
  p_validation_type => 'COL_NOT_NULL',
  p_error_message => '#COLUMN_HEADER# must have a value.',
  p_when_button_pressed=> 4948522557785539 + wwv_flow_api.g_id_offset,
  p_associated_column=> 'EMAIL_ADDRESS',
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 4950321810785539 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 9,
  p_tabular_form_region_id => 4947122130785538 + wwv_flow_api.g_id_offset,
  p_validation_name => 'TRAINING_TYPE not null',
  p_validation_sequence=> 60,
  p_validation => 'TRAINING_TYPE',
  p_validation_type => 'COL_NOT_NULL',
  p_error_message => '#COLUMN_HEADER# must have a value.',
  p_when_button_pressed=> 4948522557785539 + wwv_flow_api.g_id_offset,
  p_associated_column=> 'TRAINING_TYPE',
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 4950522329785539 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 9,
  p_tabular_form_region_id => 4947122130785538 + wwv_flow_api.g_id_offset,
  p_validation_name => 'TRAINING_TYPE must be numeric',
  p_validation_sequence=> 60,
  p_validation => 'TRAINING_TYPE',
  p_validation_type => 'COL_IS_NUMERIC',
  p_error_message => '#COLUMN_HEADER# must be numeric.',
  p_when_button_pressed=> 4948522557785539 + wwv_flow_api.g_id_offset,
  p_associated_column=> 'TRAINING_TYPE',
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 4950705485785539 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 9,
  p_tabular_form_region_id => 4947122130785538 + wwv_flow_api.g_id_offset,
  p_validation_name => 'START_DATE not null',
  p_validation_sequence=> 70,
  p_validation => 'START_DATE',
  p_validation_type => 'COL_NOT_NULL',
  p_error_message => '#COLUMN_HEADER# must have a value.',
  p_when_button_pressed=> 4948522557785539 + wwv_flow_api.g_id_offset,
  p_associated_column=> 'START_DATE',
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 4950905102785539 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 9,
  p_tabular_form_region_id => 4947122130785538 + wwv_flow_api.g_id_offset,
  p_validation_name => 'START_DATE must be a valid date',
  p_validation_sequence=> 70,
  p_validation => 'START_DATE',
  p_validation_type => 'COL_IS_DATE',
  p_error_message => '#COLUMN_HEADER# must be a valid date.',
  p_when_button_pressed=> 4948522557785539 + wwv_flow_api.g_id_offset,
  p_associated_column=> 'START_DATE',
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 4951122983785539 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 9,
  p_tabular_form_region_id => 4947122130785538 + wwv_flow_api.g_id_offset,
  p_validation_name => 'END_DATE not null',
  p_validation_sequence=> 80,
  p_validation => 'END_DATE',
  p_validation_type => 'COL_NOT_NULL',
  p_error_message => '#COLUMN_HEADER# must have a value.',
  p_when_button_pressed=> 4948522557785539 + wwv_flow_api.g_id_offset,
  p_associated_column=> 'END_DATE',
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 4951318190785539 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 9,
  p_tabular_form_region_id => 4947122130785538 + wwv_flow_api.g_id_offset,
  p_validation_name => 'END_DATE must be a valid date',
  p_validation_sequence=> 80,
  p_validation => 'END_DATE',
  p_validation_type => 'COL_IS_DATE',
  p_error_message => '#COLUMN_HEADER# must be a valid date.',
  p_when_button_pressed=> 4948522557785539 + wwv_flow_api.g_id_offset,
  p_associated_column=> 'END_DATE',
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 4951525798785539 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 9,
  p_tabular_form_region_id => 4947122130785538 + wwv_flow_api.g_id_offset,
  p_validation_name => 'COURSE_ID not null',
  p_validation_sequence=> 90,
  p_validation => 'COURSE_ID',
  p_validation_type => 'COL_NOT_NULL',
  p_error_message => '#COLUMN_HEADER# must have a value.',
  p_when_button_pressed=> 4948522557785539 + wwv_flow_api.g_id_offset,
  p_associated_column=> 'COURSE_ID',
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 4951715499785539 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 9,
  p_tabular_form_region_id => 4947122130785538 + wwv_flow_api.g_id_offset,
  p_validation_name => 'COURSE_ID must be numeric',
  p_validation_sequence=> 90,
  p_validation => 'COURSE_ID',
  p_validation_type => 'COL_IS_NUMERIC',
  p_error_message => '#COLUMN_HEADER# must be numeric.',
  p_when_button_pressed=> 4948522557785539 + wwv_flow_api.g_id_offset,
  p_associated_column=> 'COURSE_ID',
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 4951916610785540 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 9,
  p_tabular_form_region_id => 4947122130785538 + wwv_flow_api.g_id_offset,
  p_validation_name => 'PUBLISHED_DATE not null',
  p_validation_sequence=> 100,
  p_validation => 'PUBLISHED_DATE',
  p_validation_type => 'COL_NOT_NULL',
  p_error_message => '#COLUMN_HEADER# must have a value.',
  p_when_button_pressed=> 4948522557785539 + wwv_flow_api.g_id_offset,
  p_associated_column=> 'PUBLISHED_DATE',
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 4952108631785540 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 9,
  p_tabular_form_region_id => 4947122130785538 + wwv_flow_api.g_id_offset,
  p_validation_name => 'PUBLISHED_DATE must be a valid date',
  p_validation_sequence=> 100,
  p_validation => 'PUBLISHED_DATE',
  p_validation_type => 'COL_IS_DATE',
  p_error_message => '#COLUMN_HEADER# must be a valid date.',
  p_when_button_pressed=> 4948522557785539 + wwv_flow_api.g_id_offset,
  p_associated_column=> 'PUBLISHED_DATE',
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'#OWNER#:TRAINING_ADVERTISEMENT:ADVERTISEMENT_ID';

wwv_flow_api.create_page_process(
  p_id     => 4952220352785540 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 9,
  p_process_sequence=> 10,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'MULTI_ROW_UPDATE',
  p_process_name=> 'ApplyMRU',
  p_process_sql_clob => p, 
  p_process_error_message=> 'Unable to process update.',
  p_process_when_button_id=>4948522557785539 + wwv_flow_api.g_id_offset,
  p_process_success_message=> '#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'#OWNER#:TRAINING_ADVERTISEMENT:ADVERTISEMENT_ID';

wwv_flow_api.create_page_process(
  p_id     => 4952418550785540 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 9,
  p_process_sequence=> 20,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'MULTI_ROW_DELETE',
  p_process_name=> 'ApplyMRD',
  p_process_sql_clob => p, 
  p_process_error_message=> 'Unable to process delete.',
  p_process_when=>'MULTI_ROW_DELETE',
  p_process_when_type=>'REQUEST_EQUALS_CONDITION',
  p_process_success_message=> '#MRD_COUNT# row(s) deleted.',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 9
--
 
begin
 
wwv_flow_api.create_region_rpt_cols (
  p_id     => 5090424518250579 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_plug_id=> 4947122130785538 + wwv_flow_api.g_id_offset,
  p_column_sequence=> 1,
  p_query_column_name=> 'ADVERTISEMENT_ID',
  p_display_as=> 'TEXT',
  p_column_comment=> '');
 
wwv_flow_api.create_region_rpt_cols (
  p_id     => 5090506448250579 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_plug_id=> 4947122130785538 + wwv_flow_api.g_id_offset,
  p_column_sequence=> 2,
  p_query_column_name=> 'ADVERTISEMENT_ID_DISPLAY',
  p_display_as=> 'TEXT',
  p_column_comment=> '');
 
wwv_flow_api.create_region_rpt_cols (
  p_id     => 5090623873250579 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_plug_id=> 4947122130785538 + wwv_flow_api.g_id_offset,
  p_column_sequence=> 3,
  p_query_column_name=> 'TRAINING_NAME',
  p_display_as=> 'TEXT',
  p_column_comment=> '');
 
wwv_flow_api.create_region_rpt_cols (
  p_id     => 5090724950250579 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_plug_id=> 4947122130785538 + wwv_flow_api.g_id_offset,
  p_column_sequence=> 4,
  p_query_column_name=> 'CONTACT_NO',
  p_display_as=> 'TEXT',
  p_column_comment=> '');
 
wwv_flow_api.create_region_rpt_cols (
  p_id     => 5090808966250579 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_plug_id=> 4947122130785538 + wwv_flow_api.g_id_offset,
  p_column_sequence=> 5,
  p_query_column_name=> 'EMAIL_ADDRESS',
  p_display_as=> 'TEXT',
  p_column_comment=> '');
 
wwv_flow_api.create_region_rpt_cols (
  p_id     => 5090926028250579 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_plug_id=> 4947122130785538 + wwv_flow_api.g_id_offset,
  p_column_sequence=> 6,
  p_query_column_name=> 'TRAINING_TYPE',
  p_display_as=> 'TEXT',
  p_column_comment=> '');
 
wwv_flow_api.create_region_rpt_cols (
  p_id     => 5091011114250579 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_plug_id=> 4947122130785538 + wwv_flow_api.g_id_offset,
  p_column_sequence=> 7,
  p_query_column_name=> 'START_DATE',
  p_display_as=> 'TEXT',
  p_column_comment=> '');
 
wwv_flow_api.create_region_rpt_cols (
  p_id     => 5091119628250579 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_plug_id=> 4947122130785538 + wwv_flow_api.g_id_offset,
  p_column_sequence=> 8,
  p_query_column_name=> 'END_DATE',
  p_display_as=> 'TEXT',
  p_column_comment=> '');
 
wwv_flow_api.create_region_rpt_cols (
  p_id     => 5091213749250579 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_plug_id=> 4947122130785538 + wwv_flow_api.g_id_offset,
  p_column_sequence=> 9,
  p_query_column_name=> 'COURSE_ID',
  p_display_as=> 'TEXT',
  p_column_comment=> '');
 
wwv_flow_api.create_region_rpt_cols (
  p_id     => 5091302764250579 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_plug_id=> 4947122130785538 + wwv_flow_api.g_id_offset,
  p_column_sequence=> 10,
  p_query_column_name=> 'PUBLISHED_DATE',
  p_display_as=> 'TEXT',
  p_column_comment=> '');
 
null;
end;
null;
 
end;
/

 
--application/pages/page_00010
prompt  ...PAGE 10: TRAINING_DETAILS
--
 
begin
 
wwv_flow_api.create_page (
  p_flow_id => wwv_flow.g_flow_id
 ,p_id => 10
 ,p_tab_set => 'TS1'
 ,p_name => 'TRAINING_DETAILS'
 ,p_step_title => 'TRAINING_DETAILS'
 ,p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS'
 ,p_first_item => 'NO_FIRST_ITEM'
 ,p_include_apex_css_js_yn => 'Y'
 ,p_javascript_code => 
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
 ,p_cache_page_yn => 'N'
 ,p_help_text => 
'No help is available for this page.'
 ,p_last_updated_by => 'ADMIN'
 ,p_last_upd_yyyymmddhh24miss => '20220512180329'
  );
null;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'select '||chr(10)||
'"TRAINING_CODE",'||chr(10)||
'"TRAINING_CODE" TRAINING_CODE_DISPLAY,'||chr(10)||
'ADV_ID,'||chr(10)||
'"NAME",'||chr(10)||
'"STAFF_CODE",'||chr(10)||
'"TRAINING_START_DATE",'||chr(10)||
'"TYPE",'||chr(10)||
'"TRAINING_END_DATE"'||chr(10)||
'from "#OWNER#"."TRAINING_DETAILS"'||chr(10)||
'WHERE STAFF_CODE = DECODE(v(''APP_USER''),''ADMIN'',STAFF_CODE , v(''APP_USER''))'||chr(10)||
''||chr(10)||
'';

wwv_flow_api.create_report_region (
  p_id=> 4953512338806856 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 10,
  p_name=> 'Training Details',
  p_region_name=>'',
  p_template=> 4889906514313789+ wwv_flow_api.g_id_offset,
  p_display_sequence=> 15,
  p_display_column=> 1,
  p_display_point=> 'AFTER_SHOW_ITEMS',
  p_source=> s,
  p_source_type=> 'UPDATABLE_SQL_QUERY',
  p_display_error_message=> '#SQLERRM#',
  p_plug_caching=> 'NOT_CACHED',
  p_customized=> '0',
  p_translate_title=> 'Y',
  p_ajax_enabled=> 'N',
  p_query_row_template=> 4893522550313792+ wwv_flow_api.g_id_offset,
  p_query_headings_type=> 'COLON_DELMITED_LIST',
  p_query_num_rows=> '10',
  p_query_options=> 'DERIVED_REPORT_COLUMNS',
  p_query_show_nulls_as=> '(null)',
  p_query_break_cols=> '0',
  p_query_no_data_found=> 'No data found.',
  p_query_num_rows_type=> 'ROW_RANGES_IN_SELECT_LIST',
  p_query_row_count_max=> '500',
  p_pagination_display_position=> 'BOTTOM_RIGHT',
  p_csv_output=> 'N',
  p_query_asc_image=> 'apex/builder/dup.gif',
  p_query_asc_image_attr=> 'width="16" height="16" alt="" ',
  p_query_desc_image=> 'apex/builder/ddown.gif',
  p_query_desc_image_attr=> 'width="16" height="16" alt="" ',
  p_plug_query_strip_html=> 'Y',
  p_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 4957502331806858 + wwv_flow_api.g_id_offset,
  p_region_id=> 4953512338806856 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 1,
  p_form_element_id=> null,
  p_column_alias=> 'CHECK$01',
  p_column_display_sequence=> 1,
  p_column_heading=> '&nbsp;',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'CHECKBOX',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_derived_column=> 'Y',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 4953809931806857 + wwv_flow_api.g_id_offset,
  p_region_id=> 4953512338806856 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 2,
  p_form_element_id=> null,
  p_column_alias=> 'TRAINING_CODE',
  p_column_display_sequence=> 2,
  p_column_heading=> 'Training Code',
  p_column_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'Y',
  p_display_as=>'HIDDEN',
  p_column_width=> '16',
  p_is_required=> false,
  p_pk_col_source_type=> 'T',
  p_ref_schema=> 'EMP_PROFILE',
  p_ref_table_name=> 'TRAINING_DETAILS',
  p_ref_column_name=> 'TRAINING_CODE',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 4953917303806857 + wwv_flow_api.g_id_offset,
  p_region_id=> 4953512338806856 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 3,
  p_form_element_id=> null,
  p_column_alias=> 'TRAINING_CODE_DISPLAY',
  p_column_display_sequence=> 3,
  p_column_heading=> 'Training Code',
  p_column_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_column_width=> '16',
  p_is_required=> false,
  p_ref_schema=> 'EMP_PROFILE',
  p_ref_table_name=> 'TRAINING_DETAILS',
  p_ref_column_name=> 'TRAINING_CODE_DISPLAY',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 5090219024232203 + wwv_flow_api.g_id_offset,
  p_region_id=> 4953512338806856 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 4,
  p_form_element_id=> null,
  p_column_alias=> 'ADV_ID',
  p_column_display_sequence=> 4,
  p_column_heading=> 'Adv Id',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'SELECT_LIST_FROM_QUERY',
  p_inline_lov=> 'select TRAINING_NAME, ADVERTISEMENT_ID from TRAINING_ADVERTISEMENT',
  p_lov_show_nulls=> 'NO',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_lov_display_extra=> 'YES',
  p_include_in_export=> 'Y',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 4954003500806857 + wwv_flow_api.g_id_offset,
  p_region_id=> 4953512338806856 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 5,
  p_form_element_id=> null,
  p_column_alias=> 'NAME',
  p_column_display_sequence=> 5,
  p_column_heading=> 'Name',
  p_column_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'TEXT',
  p_column_width=> '16',
  p_is_required=> false,
  p_ref_schema=> 'EMP_PROFILE',
  p_ref_table_name=> 'TRAINING_DETAILS',
  p_ref_column_name=> 'NAME',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 4954121670806857 + wwv_flow_api.g_id_offset,
  p_region_id=> 4953512338806856 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 6,
  p_form_element_id=> null,
  p_column_alias=> 'STAFF_CODE',
  p_column_display_sequence=> 6,
  p_column_heading=> 'Staff Code',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'SELECT_LIST_FROM_QUERY',
  p_inline_lov=> 'SELECT NAME, EMPLOYEE_ID FROM EMPLOYEE WHERE EMPLOYEE_ID = DECODE(v(''APP_USER''),''ADMIN'',EMPLOYEE_ID , v(''APP_USER''))',
  p_lov_show_nulls=> 'NO',
  p_column_width=> '16',
  p_is_required=> false,
  p_lov_display_extra=> 'YES',
  p_include_in_export=> 'Y',
  p_ref_schema=> 'EMP_PROFILE',
  p_ref_table_name=> 'TRAINING_DETAILS',
  p_ref_column_name=> 'STAFF_CODE',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 4954216121806857 + wwv_flow_api.g_id_offset,
  p_region_id=> 4953512338806856 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 7,
  p_form_element_id=> null,
  p_column_alias=> 'TRAINING_START_DATE',
  p_column_display_sequence=> 7,
  p_column_heading=> 'Training Start Date',
  p_column_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'DATE_PICKER',
  p_column_width=> '12',
  p_is_required=> false,
  p_ref_schema=> 'EMP_PROFILE',
  p_ref_table_name=> 'TRAINING_DETAILS',
  p_ref_column_name=> 'TRAINING_START_DATE',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 4954315126806857 + wwv_flow_api.g_id_offset,
  p_region_id=> 4953512338806856 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 8,
  p_form_element_id=> null,
  p_column_alias=> 'TYPE',
  p_column_display_sequence=> 8,
  p_column_heading=> 'Type',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'SELECT_LIST',
  p_inline_lov=> 'BEGINNER, INTERMEDIATE, PROFESSIONAL',
  p_lov_show_nulls=> 'NO',
  p_column_width=> '16',
  p_is_required=> false,
  p_lov_display_extra=> 'NO',
  p_include_in_export=> 'Y',
  p_ref_schema=> 'EMP_PROFILE',
  p_ref_table_name=> 'TRAINING_DETAILS',
  p_ref_column_name=> 'TYPE',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 4954401056806857 + wwv_flow_api.g_id_offset,
  p_region_id=> 4953512338806856 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 9,
  p_form_element_id=> null,
  p_column_alias=> 'TRAINING_END_DATE',
  p_column_display_sequence=> 9,
  p_column_heading=> 'Training End Date',
  p_column_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'DATE_PICKER',
  p_column_width=> '12',
  p_is_required=> false,
  p_ref_schema=> 'EMP_PROFILE',
  p_ref_table_name=> 'TRAINING_DETAILS',
  p_ref_column_name=> 'TRAINING_END_DATE',
  p_column_comment=>'');
end;
/
 
begin
 
wwv_flow_api.create_page_button(
  p_id             => 4954818285806857 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 10,
  p_button_sequence=> 40,
  p_button_plug_id => 4953512338806856+wwv_flow_api.g_id_offset,
  p_button_name    => 'ADD',
  p_button_image   => 'template:'||to_char(4887330298313787+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Add Row',
  p_button_position=> 'BOTTOM',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'javascript:addRow();',
  p_button_execute_validations=>'N',
  p_button_condition=> 'if v(''APP_USER'') = ''ADMIN'' THEN'||chr(10)||
'RETURN TRUE;'||chr(10)||
'ELSE'||chr(10)||
'RETURN FALSE;'||chr(10)||
'END IF;',
  p_button_condition_type=> 'FUNCTION_BODY',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 4954623420806857 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 10,
  p_button_sequence=> 30,
  p_button_plug_id => 4953512338806856+wwv_flow_api.g_id_offset,
  p_button_name    => 'SUBMIT',
  p_button_image   => 'template:'||to_char(4887330298313787+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Submit',
  p_button_position=> 'REGION_TEMPLATE_CHANGE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> '',
  p_button_execute_validations=>'Y',
  p_button_condition=> 'if v(''APP_USER'') = ''ADMIN'' THEN'||chr(10)||
'RETURN TRUE;'||chr(10)||
'ELSE'||chr(10)||
'RETURN FALSE;'||chr(10)||
'END IF;',
  p_button_condition_type=> 'FUNCTION_BODY',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 4954519996806857 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 10,
  p_button_sequence=> 10,
  p_button_plug_id => 4953512338806856+wwv_flow_api.g_id_offset,
  p_button_name    => 'CANCEL',
  p_button_image   => 'template:'||to_char(4887330298313787+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Cancel',
  p_button_position=> 'REGION_TEMPLATE_CLOSE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 4954717053806857 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 10,
  p_button_sequence=> 20,
  p_button_plug_id => 4953512338806856+wwv_flow_api.g_id_offset,
  p_button_name    => 'MULTI_ROW_DELETE',
  p_button_image   => 'template:'||to_char(4887330298313787+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Delete',
  p_button_position=> 'REGION_TEMPLATE_DELETE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'javascript:apex.confirm(htmldb_delete_message,''MULTI_ROW_DELETE'');',
  p_button_execute_validations=>'N',
  p_button_condition=> 'if v(''APP_USER'') = ''ADMIN'' THEN'||chr(10)||
'RETURN TRUE;'||chr(10)||
'ELSE'||chr(10)||
'RETURN FALSE;'||chr(10)||
'END IF;',
  p_button_condition_type=> 'FUNCTION_BODY',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_branch(
  p_id=>4957617442806858 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 10,
  p_branch_action=> 'f?p=&APP_ID.:10:&SESSION.&success_msg=#SUCCESS_MSG#',
  p_branch_point=> 'AFTER_PROCESSING',
  p_branch_type=> 'REDIRECT_URL',
  p_branch_sequence=> 1,
  p_save_state_before_branch_yn=>'Y',
  p_branch_comment=> '');
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 4955610781806857 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 10,
  p_tabular_form_region_id => 4953512338806856 + wwv_flow_api.g_id_offset,
  p_validation_name => 'NAME not null',
  p_validation_sequence=> 30,
  p_validation => 'NAME',
  p_validation_type => 'COL_NOT_NULL',
  p_error_message => '#COLUMN_HEADER# must have a value.',
  p_when_button_pressed=> 4954623420806857 + wwv_flow_api.g_id_offset,
  p_associated_column=> 'NAME',
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 4955809501806857 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 10,
  p_tabular_form_region_id => 4953512338806856 + wwv_flow_api.g_id_offset,
  p_validation_name => 'STAFF_CODE not null',
  p_validation_sequence=> 40,
  p_validation => 'STAFF_CODE',
  p_validation_type => 'COL_NOT_NULL',
  p_error_message => '#COLUMN_HEADER# must have a value.',
  p_when_button_pressed=> 4954623420806857 + wwv_flow_api.g_id_offset,
  p_associated_column=> 'STAFF_CODE',
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 4956023352806857 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 10,
  p_tabular_form_region_id => 4953512338806856 + wwv_flow_api.g_id_offset,
  p_validation_name => 'STAFF_CODE must be numeric',
  p_validation_sequence=> 40,
  p_validation => 'STAFF_CODE',
  p_validation_type => 'ITEM_IS_NUMERIC',
  p_error_message => '#COLUMN_HEADER# must be numeric.',
  p_always_execute=>'N',
  p_when_button_pressed=> 4954623420806857 + wwv_flow_api.g_id_offset,
  p_associated_column=> 'STAFF_CODE',
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 4956210481806857 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 10,
  p_tabular_form_region_id => 4953512338806856 + wwv_flow_api.g_id_offset,
  p_validation_name => 'TRAINING_START_DATE not null',
  p_validation_sequence=> 50,
  p_validation => 'TRAINING_START_DATE',
  p_validation_type => 'COL_NOT_NULL',
  p_error_message => '#COLUMN_HEADER# must have a value.',
  p_when_button_pressed=> 4954623420806857 + wwv_flow_api.g_id_offset,
  p_associated_column=> 'TRAINING_START_DATE',
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 4956420107806857 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 10,
  p_tabular_form_region_id => 4953512338806856 + wwv_flow_api.g_id_offset,
  p_validation_name => 'TRAINING_START_DATE must be a valid date',
  p_validation_sequence=> 50,
  p_validation => 'TRAINING_START_DATE',
  p_validation_type => 'COL_IS_DATE',
  p_error_message => '#COLUMN_HEADER# must be a valid date.',
  p_when_button_pressed=> 4954623420806857 + wwv_flow_api.g_id_offset,
  p_associated_column=> 'TRAINING_START_DATE',
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 4956622019806858 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 10,
  p_tabular_form_region_id => 4953512338806856 + wwv_flow_api.g_id_offset,
  p_validation_name => 'TYPE not null',
  p_validation_sequence=> 60,
  p_validation => 'TYPE',
  p_validation_type => 'COL_NOT_NULL',
  p_error_message => '#COLUMN_HEADER# must have a value.',
  p_when_button_pressed=> 4954623420806857 + wwv_flow_api.g_id_offset,
  p_associated_column=> 'TYPE',
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 4956827479806858 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 10,
  p_tabular_form_region_id => 4953512338806856 + wwv_flow_api.g_id_offset,
  p_validation_name => 'TRAINING_END_DATE not null',
  p_validation_sequence=> 70,
  p_validation => 'TRAINING_END_DATE',
  p_validation_type => 'COL_NOT_NULL',
  p_error_message => '#COLUMN_HEADER# must have a value.',
  p_when_button_pressed=> 4954623420806857 + wwv_flow_api.g_id_offset,
  p_associated_column=> 'TRAINING_END_DATE',
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 4957000846806858 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 10,
  p_tabular_form_region_id => 4953512338806856 + wwv_flow_api.g_id_offset,
  p_validation_name => 'TRAINING_END_DATE must be a valid date',
  p_validation_sequence=> 70,
  p_validation => 'TRAINING_END_DATE',
  p_validation_type => 'COL_IS_DATE',
  p_error_message => '#COLUMN_HEADER# must be a valid date.',
  p_when_button_pressed=> 4954623420806857 + wwv_flow_api.g_id_offset,
  p_associated_column=> 'TRAINING_END_DATE',
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'#OWNER#:TRAINING_DETAILS:TRAINING_CODE';

wwv_flow_api.create_page_process(
  p_id     => 4957127976806858 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 10,
  p_process_sequence=> 10,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'MULTI_ROW_UPDATE',
  p_process_name=> 'ApplyMRU',
  p_process_sql_clob => p, 
  p_process_error_message=> 'Unable to process update.',
  p_process_when_button_id=>4954623420806857 + wwv_flow_api.g_id_offset,
  p_process_success_message=> '#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'#OWNER#:TRAINING_DETAILS:TRAINING_CODE';

wwv_flow_api.create_page_process(
  p_id     => 4957305193806858 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 10,
  p_process_sequence=> 20,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'MULTI_ROW_DELETE',
  p_process_name=> 'ApplyMRD',
  p_process_sql_clob => p, 
  p_process_error_message=> 'Unable to process delete.',
  p_process_when=>'MULTI_ROW_DELETE',
  p_process_when_type=>'REQUEST_EQUALS_CONDITION',
  p_process_success_message=> '#MRD_COUNT# row(s) deleted.',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 10
--
 
begin
 
wwv_flow_api.create_region_rpt_cols (
  p_id     => 5086122890032509 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_plug_id=> 4953512338806856 + wwv_flow_api.g_id_offset,
  p_column_sequence=> 1,
  p_query_column_name=> 'TRAINING_CODE',
  p_display_as=> 'TEXT',
  p_column_comment=> '');
 
wwv_flow_api.create_region_rpt_cols (
  p_id     => 5086218051032509 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_plug_id=> 4953512338806856 + wwv_flow_api.g_id_offset,
  p_column_sequence=> 2,
  p_query_column_name=> 'TRAINING_CODE_DISPLAY',
  p_display_as=> 'TEXT',
  p_column_comment=> '');
 
wwv_flow_api.create_region_rpt_cols (
  p_id     => 5089625976232203 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_plug_id=> 4953512338806856 + wwv_flow_api.g_id_offset,
  p_column_sequence=> 3,
  p_query_column_name=> 'ADV_ID',
  p_display_as=> 'TEXT',
  p_column_comment=> '');
 
wwv_flow_api.create_region_rpt_cols (
  p_id     => 5086314434032509 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_plug_id=> 4953512338806856 + wwv_flow_api.g_id_offset,
  p_column_sequence=> 4,
  p_query_column_name=> 'NAME',
  p_display_as=> 'TEXT',
  p_column_comment=> '');
 
wwv_flow_api.create_region_rpt_cols (
  p_id     => 5086404760032509 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_plug_id=> 4953512338806856 + wwv_flow_api.g_id_offset,
  p_column_sequence=> 5,
  p_query_column_name=> 'STAFF_CODE',
  p_display_as=> 'TEXT',
  p_column_comment=> '');
 
wwv_flow_api.create_region_rpt_cols (
  p_id     => 5086500849032509 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_plug_id=> 4953512338806856 + wwv_flow_api.g_id_offset,
  p_column_sequence=> 6,
  p_query_column_name=> 'TRAINING_START_DATE',
  p_display_as=> 'TEXT',
  p_column_comment=> '');
 
wwv_flow_api.create_region_rpt_cols (
  p_id     => 5086629756032509 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_plug_id=> 4953512338806856 + wwv_flow_api.g_id_offset,
  p_column_sequence=> 7,
  p_query_column_name=> 'TYPE',
  p_display_as=> 'TEXT',
  p_column_comment=> '');
 
wwv_flow_api.create_region_rpt_cols (
  p_id     => 5086730796032509 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_plug_id=> 4953512338806856 + wwv_flow_api.g_id_offset,
  p_column_sequence=> 8,
  p_query_column_name=> 'TRAINING_END_DATE',
  p_display_as=> 'TEXT',
  p_column_comment=> '');
 
null;
end;
null;
 
end;
/

 
--application/pages/page_00011
prompt  ...PAGE 11: TRAINING_REQUEST
--
 
begin
 
wwv_flow_api.create_page (
  p_flow_id => wwv_flow.g_flow_id
 ,p_id => 11
 ,p_tab_set => 'TS1'
 ,p_name => 'TRAINING_REQUEST'
 ,p_step_title => 'TRAINING_REQUEST'
 ,p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS'
 ,p_first_item => 'NO_FIRST_ITEM'
 ,p_include_apex_css_js_yn => 'Y'
 ,p_javascript_code => 
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
 ,p_cache_page_yn => 'N'
 ,p_help_text => 
'No help is available for this page.'
 ,p_last_updated_by => 'ADMIN'
 ,p_last_upd_yyyymmddhh24miss => '20220602043212'
  );
null;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'select '||chr(10)||
'"TR_ID",'||chr(10)||
'"TR_ID" TR_ID_DISPLAY,'||chr(10)||
'"TR_ADVERTISEMENT_ID",'||chr(10)||
'"TR_EMP_ID",'||chr(10)||
'"TR_DATE",'||chr(10)||
'TR_STATUS'||chr(10)||
'from "#OWNER#"."TRAINING_REQUEST"'||chr(10)||
'where tr_emp_id = DECODE(v(''APP_USER''),''ADMIN'',tr_emp_id , v(''APP_USER''))'||chr(10)||
'';

wwv_flow_api.create_report_region (
  p_id=> 4958421028814033 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 11,
  p_name=> 'Training Request',
  p_region_name=>'',
  p_template=> 4889906514313789+ wwv_flow_api.g_id_offset,
  p_display_sequence=> 15,
  p_display_column=> 1,
  p_display_point=> 'AFTER_SHOW_ITEMS',
  p_source=> s,
  p_source_type=> 'UPDATABLE_SQL_QUERY',
  p_display_error_message=> '#SQLERRM#',
  p_plug_caching=> 'NOT_CACHED',
  p_customized=> '0',
  p_translate_title=> 'Y',
  p_ajax_enabled=> 'N',
  p_query_row_template=> 4893522550313792+ wwv_flow_api.g_id_offset,
  p_query_headings_type=> 'COLON_DELMITED_LIST',
  p_query_num_rows=> '10',
  p_query_options=> 'DERIVED_REPORT_COLUMNS',
  p_query_show_nulls_as=> '(null)',
  p_query_break_cols=> '0',
  p_query_no_data_found=> 'No data found.',
  p_query_num_rows_type=> 'ROW_RANGES_IN_SELECT_LIST',
  p_query_row_count_max=> '500',
  p_pagination_display_position=> 'BOTTOM_RIGHT',
  p_csv_output=> 'N',
  p_query_asc_image=> 'apex/builder/dup.gif',
  p_query_asc_image_attr=> 'width="16" height="16" alt="" ',
  p_query_desc_image=> 'apex/builder/ddown.gif',
  p_query_desc_image_attr=> 'width="16" height="16" alt="" ',
  p_plug_query_strip_html=> 'Y',
  p_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 4962125731814035 + wwv_flow_api.g_id_offset,
  p_region_id=> 4958421028814033 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 1,
  p_form_element_id=> null,
  p_column_alias=> 'CHECK$01',
  p_column_display_sequence=> 1,
  p_column_heading=> '&nbsp;',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'CHECKBOX',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_derived_column=> 'Y',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 4958717005814033 + wwv_flow_api.g_id_offset,
  p_region_id=> 4958421028814033 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 2,
  p_form_element_id=> null,
  p_column_alias=> 'TR_ID',
  p_column_display_sequence=> 2,
  p_column_heading=> 'Training Request ID',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'Y',
  p_display_as=>'HIDDEN',
  p_lov_show_nulls=> 'NO',
  p_column_width=> '16',
  p_is_required=> false,
  p_pk_col_source_type=> 'T',
  p_pk_col_source=> s,
  p_lov_display_extra=> 'YES',
  p_include_in_export=> 'Y',
  p_ref_schema=> 'EMP_PROFILE',
  p_ref_table_name=> 'TRAINING_REQUEST',
  p_ref_column_name=> 'TR_ID',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 4958818171814033 + wwv_flow_api.g_id_offset,
  p_region_id=> 4958421028814033 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 3,
  p_form_element_id=> null,
  p_column_alias=> 'TR_ID_DISPLAY',
  p_column_display_sequence=> 3,
  p_column_heading=> 'Training ID',
  p_column_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_column_width=> '16',
  p_is_required=> false,
  p_ref_schema=> 'EMP_PROFILE',
  p_ref_table_name=> 'TRAINING_REQUEST',
  p_ref_column_name=> 'TR_ID_DISPLAY',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 4958904247814033 + wwv_flow_api.g_id_offset,
  p_region_id=> 4958421028814033 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 4,
  p_form_element_id=> null,
  p_column_alias=> 'TR_ADVERTISEMENT_ID',
  p_column_display_sequence=> 4,
  p_column_heading=> 'Training  Advertisement Id',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'SELECT_LIST_FROM_QUERY',
  p_inline_lov=> 'SELECT TRAINING_NAME, ADVERTISEMENT_ID FROM TRAINING_ADVERTISEMENT',
  p_lov_show_nulls=> 'NO',
  p_column_width=> '16',
  p_is_required=> false,
  p_lov_display_extra=> 'YES',
  p_include_in_export=> 'Y',
  p_ref_schema=> 'EMP_PROFILE',
  p_ref_table_name=> 'TRAINING_REQUEST',
  p_ref_column_name=> 'TR_ADVERTISEMENT_ID',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 4959003126814033 + wwv_flow_api.g_id_offset,
  p_region_id=> 4958421028814033 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 5,
  p_form_element_id=> null,
  p_column_alias=> 'TR_EMP_ID',
  p_column_display_sequence=> 5,
  p_column_heading=> 'Training Employee ID',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'SELECT_LIST_FROM_QUERY',
  p_inline_lov=> 'select name, EMPLOYEE_ID from EMPLOYEE WHERE EMPLOYEE_ID = DECODE(v(''APP_USER''),''ADMIN'',EMPLOYEE_ID, v(''APP_USER''))',
  p_lov_show_nulls=> 'NO',
  p_column_width=> '16',
  p_is_required=> false,
  p_lov_display_extra=> 'YES',
  p_include_in_export=> 'Y',
  p_ref_schema=> 'EMP_PROFILE',
  p_ref_table_name=> 'TRAINING_REQUEST',
  p_ref_column_name=> 'TR_EMP_ID',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 4959126879814033 + wwv_flow_api.g_id_offset,
  p_region_id=> 4958421028814033 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 6,
  p_form_element_id=> null,
  p_column_alias=> 'TR_DATE',
  p_column_display_sequence=> 6,
  p_column_heading=> 'Training Date',
  p_column_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'DATE_PICKER',
  p_column_width=> '12',
  p_is_required=> false,
  p_ref_schema=> 'EMP_PROFILE',
  p_ref_table_name=> 'TRAINING_REQUEST',
  p_ref_column_name=> 'TR_DATE',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 5009906964488084 + wwv_flow_api.g_id_offset,
  p_region_id=> 4958421028814033 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 7,
  p_form_element_id=> null,
  p_column_alias=> 'TR_STATUS',
  p_column_display_sequence=> 7,
  p_column_heading=> 'Status',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'SELECT_LIST',
  p_inline_lov=> 'COMPLETED;C,OPEN;O',
  p_lov_show_nulls=> 'NO',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_lov_display_extra=> 'YES',
  p_include_in_export=> 'Y',
  p_column_comment=>'');
end;
/
 
begin
 
wwv_flow_api.create_page_button(
  p_id             => 5088410657170920 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 11,
  p_button_sequence=> 40,
  p_button_plug_id => 4958421028814033+wwv_flow_api.g_id_offset,
  p_button_name    => 'ADD',
  p_button_image   => 'template:'||to_char(4887330298313787+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Add Row',
  p_button_position=> 'BOTTOM',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'javascript:addRow();',
  p_button_execute_validations=>'N',
  p_button_condition=> 'if v(''APP_USER'') = ''ADMIN'' THEN'||chr(10)||
'RETURN TRUE;'||chr(10)||
'ELSE'||chr(10)||
'RETURN FALSE;'||chr(10)||
'END IF;',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 4959426688814034 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 11,
  p_button_sequence=> 30,
  p_button_plug_id => 4958421028814033+wwv_flow_api.g_id_offset,
  p_button_name    => 'SUBMIT',
  p_button_image   => 'template:'||to_char(4887330298313787+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Submit',
  p_button_position=> 'REGION_TEMPLATE_CHANGE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> '',
  p_button_execute_validations=>'Y',
  p_button_condition=> '1',
  p_button_condition2=> '2',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 4959313919814034 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 11,
  p_button_sequence=> 10,
  p_button_plug_id => 4958421028814033+wwv_flow_api.g_id_offset,
  p_button_name    => 'CANCEL',
  p_button_image   => 'template:'||to_char(4887330298313787+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Cancel',
  p_button_position=> 'REGION_TEMPLATE_CLOSE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 4959518757814034 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 11,
  p_button_sequence=> 20,
  p_button_plug_id => 4958421028814033+wwv_flow_api.g_id_offset,
  p_button_name    => 'MULTI_ROW_DELETE',
  p_button_image   => 'template:'||to_char(4887330298313787+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Delete',
  p_button_position=> 'REGION_TEMPLATE_DELETE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'javascript:apex.confirm(htmldb_delete_message,''MULTI_ROW_DELETE'');',
  p_button_execute_validations=>'N',
  p_button_condition=> '1',
  p_button_condition2=> '2',
  p_button_condition_type=> 'VAL_OF_ITEM_IN_COND_EQ_COND2',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_branch(
  p_id=>4962200480814035 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 11,
  p_branch_action=> 'f?p=&APP_ID.:11:&SESSION.&success_msg=#SUCCESS_MSG#',
  p_branch_point=> 'AFTER_PROCESSING',
  p_branch_type=> 'REDIRECT_URL',
  p_branch_sequence=> 1,
  p_save_state_before_branch_yn=>'Y',
  p_branch_comment=> '');
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 4960430074814034 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 11,
  p_tabular_form_region_id => 4958421028814033 + wwv_flow_api.g_id_offset,
  p_validation_name => 'TR_ADVERTISEMENT_ID not null',
  p_validation_sequence=> 30,
  p_validation => 'TR_ADVERTISEMENT_ID',
  p_validation_type => 'COL_NOT_NULL',
  p_error_message => '#COLUMN_HEADER# must have a value.',
  p_when_button_pressed=> 4959426688814034 + wwv_flow_api.g_id_offset,
  p_associated_column=> 'TR_ADVERTISEMENT_ID',
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 4960622493814034 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 11,
  p_tabular_form_region_id => 4958421028814033 + wwv_flow_api.g_id_offset,
  p_validation_name => 'TR_ADVERTISEMENT_ID must be numeric',
  p_validation_sequence=> 30,
  p_validation => 'TR_ADVERTISEMENT_ID',
  p_validation_type => 'COL_IS_NUMERIC',
  p_error_message => '#COLUMN_HEADER# must be numeric.',
  p_when_button_pressed=> 4959426688814034 + wwv_flow_api.g_id_offset,
  p_associated_column=> 'TR_ADVERTISEMENT_ID',
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 4960806314814034 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 11,
  p_tabular_form_region_id => 4958421028814033 + wwv_flow_api.g_id_offset,
  p_validation_name => 'TR_EMP_ID not null',
  p_validation_sequence=> 40,
  p_validation => 'TR_EMP_ID',
  p_validation_type => 'COL_NOT_NULL',
  p_error_message => '#COLUMN_HEADER# must have a value.',
  p_when_button_pressed=> 4959426688814034 + wwv_flow_api.g_id_offset,
  p_associated_column=> 'TR_EMP_ID',
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 4961017472814034 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 11,
  p_tabular_form_region_id => 4958421028814033 + wwv_flow_api.g_id_offset,
  p_validation_name => 'TR_EMP_ID must be numeric',
  p_validation_sequence=> 40,
  p_validation => 'TR_EMP_ID',
  p_validation_type => 'COL_IS_NUMERIC',
  p_error_message => '#COLUMN_HEADER# must be numeric.',
  p_when_button_pressed=> 4959426688814034 + wwv_flow_api.g_id_offset,
  p_associated_column=> 'TR_EMP_ID',
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 4961231594814034 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 11,
  p_tabular_form_region_id => 4958421028814033 + wwv_flow_api.g_id_offset,
  p_validation_name => 'TR_DATE not null',
  p_validation_sequence=> 50,
  p_validation => 'TR_DATE',
  p_validation_type => 'COL_NOT_NULL',
  p_error_message => '#COLUMN_HEADER# must have a value.',
  p_when_button_pressed=> 4959426688814034 + wwv_flow_api.g_id_offset,
  p_associated_column=> 'TR_DATE',
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 4961409543814034 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 11,
  p_tabular_form_region_id => 4958421028814033 + wwv_flow_api.g_id_offset,
  p_validation_name => 'TR_DATE must be a valid date',
  p_validation_sequence=> 50,
  p_validation => 'TR_DATE',
  p_validation_type => 'COL_IS_DATE',
  p_error_message => '#COLUMN_HEADER# must be a valid date.',
  p_when_button_pressed=> 4959426688814034 + wwv_flow_api.g_id_offset,
  p_associated_column=> 'TR_DATE',
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 4961607386814034 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 11,
  p_tabular_form_region_id => 4958421028814033 + wwv_flow_api.g_id_offset,
  p_validation_name => 'TR_DESC not null',
  p_validation_sequence=> 60,
  p_validation => 'TR_DESC',
  p_validation_type => 'COL_NOT_NULL',
  p_error_message => '#COLUMN_HEADER# must have a value.',
  p_when_button_pressed=> 4959426688814034 + wwv_flow_api.g_id_offset,
  p_associated_column=> 'TR_DESC',
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'#OWNER#:TRAINING_REQUEST:TR_ID';

wwv_flow_api.create_page_process(
  p_id     => 4961711006814034 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 11,
  p_process_sequence=> 10,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'MULTI_ROW_UPDATE',
  p_process_name=> 'ApplyMRU',
  p_process_sql_clob => p, 
  p_process_error_message=> 'Unable to process update.',
  p_process_when_button_id=>4959426688814034 + wwv_flow_api.g_id_offset,
  p_process_success_message=> '#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'#OWNER#:TRAINING_REQUEST:TR_ID';

wwv_flow_api.create_page_process(
  p_id     => 4961924220814035 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 11,
  p_process_sequence=> 20,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'MULTI_ROW_DELETE',
  p_process_name=> 'ApplyMRD',
  p_process_sql_clob => p, 
  p_process_error_message=> 'Unable to process delete.',
  p_process_when=>'MULTI_ROW_DELETE',
  p_process_when_type=>'REQUEST_EQUALS_CONDITION',
  p_process_success_message=> '#MRD_COUNT# row(s) deleted.',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 11
--
 
begin
 
wwv_flow_api.create_region_rpt_cols (
  p_id     => 5009227242488081 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_plug_id=> 4958421028814033 + wwv_flow_api.g_id_offset,
  p_column_sequence=> 1,
  p_query_column_name=> 'TR_ID',
  p_display_as=> 'TEXT',
  p_column_comment=> '');
 
wwv_flow_api.create_region_rpt_cols (
  p_id     => 5009304144488081 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_plug_id=> 4958421028814033 + wwv_flow_api.g_id_offset,
  p_column_sequence=> 2,
  p_query_column_name=> 'TR_ID_DISPLAY',
  p_display_as=> 'TEXT',
  p_column_comment=> '');
 
wwv_flow_api.create_region_rpt_cols (
  p_id     => 5009408648488081 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_plug_id=> 4958421028814033 + wwv_flow_api.g_id_offset,
  p_column_sequence=> 3,
  p_query_column_name=> 'TR_ADVERTISEMENT_ID',
  p_display_as=> 'TEXT',
  p_column_comment=> '');
 
wwv_flow_api.create_region_rpt_cols (
  p_id     => 5009528280488081 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_plug_id=> 4958421028814033 + wwv_flow_api.g_id_offset,
  p_column_sequence=> 4,
  p_query_column_name=> 'TR_EMP_ID',
  p_display_as=> 'TEXT',
  p_column_comment=> '');
 
wwv_flow_api.create_region_rpt_cols (
  p_id     => 5009630423488081 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_plug_id=> 4958421028814033 + wwv_flow_api.g_id_offset,
  p_column_sequence=> 5,
  p_query_column_name=> 'TR_DATE',
  p_display_as=> 'TEXT',
  p_column_comment=> '');
 
wwv_flow_api.create_region_rpt_cols (
  p_id     => 5009827182488081 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_plug_id=> 4958421028814033 + wwv_flow_api.g_id_offset,
  p_column_sequence=> 6,
  p_query_column_name=> 'TR_STATUS',
  p_display_as=> 'TEXT',
  p_column_comment=> '');
 
null;
end;
null;
 
end;
/

 
--application/pages/page_00012
prompt  ...PAGE 12: TRAINING_REQUEST_APPROVAL
--
 
begin
 
wwv_flow_api.create_page (
  p_flow_id => wwv_flow.g_flow_id
 ,p_id => 12
 ,p_tab_set => 'TS1'
 ,p_name => 'TRAINING_REQUEST_APPROVAL'
 ,p_step_title => 'TRAINING_REQUEST_APPROVAL'
 ,p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS'
 ,p_first_item => 'NO_FIRST_ITEM'
 ,p_include_apex_css_js_yn => 'Y'
 ,p_javascript_code => 
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
 ,p_cache_page_yn => 'N'
 ,p_help_text => 
'No help is available for this page.'
 ,p_last_updated_by => 'ADMIN'
 ,p_last_upd_yyyymmddhh24miss => '20211211154958'
  );
null;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'select '||chr(10)||
'"TRA_REQUEST_ID",'||chr(10)||
'"TRA_REQUEST_ID" TRA_REQUEST_ID_DISPLAY,'||chr(10)||
'"TRA_SEQUENCE",'||chr(10)||
'"TRA_APPROVED_DATE",'||chr(10)||
'"TRA_APPROVED_BY",'||chr(10)||
'"TRA_REMARKS"'||chr(10)||
'from "#OWNER#"."TRAINING_REQUEST_APPROVAL"'||chr(10)||
'';

wwv_flow_api.create_report_region (
  p_id=> 4963111824828982 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 12,
  p_name=> 'Training Request Approval',
  p_region_name=>'',
  p_template=> 4889906514313789+ wwv_flow_api.g_id_offset,
  p_display_sequence=> 15,
  p_display_column=> 1,
  p_display_point=> 'AFTER_SHOW_ITEMS',
  p_source=> s,
  p_source_type=> 'UPDATABLE_SQL_QUERY',
  p_display_error_message=> '#SQLERRM#',
  p_plug_caching=> 'NOT_CACHED',
  p_ajax_enabled=> 'N',
  p_query_row_template=> 4893522550313792+ wwv_flow_api.g_id_offset,
  p_query_headings_type=> 'COLON_DELMITED_LIST',
  p_query_num_rows=> '10',
  p_query_options=> 'DERIVED_REPORT_COLUMNS',
  p_query_show_nulls_as=> '(null)',
  p_query_break_cols=> '0',
  p_query_no_data_found=> 'No data found.',
  p_query_num_rows_type=> 'ROW_RANGES_IN_SELECT_LIST',
  p_query_row_count_max=> '500',
  p_pagination_display_position=> 'BOTTOM_RIGHT',
  p_csv_output=> 'N',
  p_query_asc_image=> 'apex/builder/dup.gif',
  p_query_asc_image_attr=> 'width="16" height="16" alt="" ',
  p_query_desc_image=> 'apex/builder/ddown.gif',
  p_query_desc_image_attr=> 'width="16" height="16" alt="" ',
  p_plug_query_strip_html=> 'Y',
  p_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 4966223321828984 + wwv_flow_api.g_id_offset,
  p_region_id=> 4963111824828982 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 1,
  p_form_element_id=> null,
  p_column_alias=> 'CHECK$01',
  p_column_display_sequence=> 1,
  p_column_heading=> '&nbsp;',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'CHECKBOX',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_derived_column=> 'Y',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 4963429012828983 + wwv_flow_api.g_id_offset,
  p_region_id=> 4963111824828982 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 2,
  p_form_element_id=> null,
  p_column_alias=> 'TRA_REQUEST_ID',
  p_column_display_sequence=> 2,
  p_column_heading=> 'Training Request ID',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'Y',
  p_display_as=>'HIDDEN',
  p_lov_show_nulls=> 'NO',
  p_column_width=> '16',
  p_is_required=> false,
  p_pk_col_source_type=> 'T',
  p_pk_col_source=> s,
  p_lov_display_extra=> 'YES',
  p_include_in_export=> 'Y',
  p_ref_schema=> 'EMP_PROFILE',
  p_ref_table_name=> 'TRAINING_REQUEST_APPROVAL',
  p_ref_column_name=> 'TRA_REQUEST_ID',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 4963525442828983 + wwv_flow_api.g_id_offset,
  p_region_id=> 4963111824828982 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 3,
  p_form_element_id=> null,
  p_column_alias=> 'TRA_REQUEST_ID_DISPLAY',
  p_column_display_sequence=> 3,
  p_column_heading=> 'Training Request ID',
  p_column_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_column_width=> '16',
  p_is_required=> false,
  p_ref_schema=> 'EMP_PROFILE',
  p_ref_table_name=> 'TRAINING_REQUEST_APPROVAL',
  p_ref_column_name=> 'TRA_REQUEST_ID_DISPLAY',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 4963603074828983 + wwv_flow_api.g_id_offset,
  p_region_id=> 4963111824828982 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 4,
  p_form_element_id=> null,
  p_column_alias=> 'TRA_SEQUENCE',
  p_column_display_sequence=> 4,
  p_column_heading=> 'Training Sequence',
  p_column_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'TEXT',
  p_column_width=> '16',
  p_is_required=> false,
  p_ref_schema=> 'EMP_PROFILE',
  p_ref_table_name=> 'TRAINING_REQUEST_APPROVAL',
  p_ref_column_name=> 'TRA_SEQUENCE',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 4963730028828983 + wwv_flow_api.g_id_offset,
  p_region_id=> 4963111824828982 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 5,
  p_form_element_id=> null,
  p_column_alias=> 'TRA_APPROVED_DATE',
  p_column_display_sequence=> 5,
  p_column_heading=> 'Training Approved Date',
  p_column_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'DATE_PICKER',
  p_column_width=> '12',
  p_is_required=> false,
  p_ref_schema=> 'EMP_PROFILE',
  p_ref_table_name=> 'TRAINING_REQUEST_APPROVAL',
  p_ref_column_name=> 'TRA_APPROVED_DATE',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 4963816524828983 + wwv_flow_api.g_id_offset,
  p_region_id=> 4963111824828982 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 6,
  p_form_element_id=> null,
  p_column_alias=> 'TRA_APPROVED_BY',
  p_column_display_sequence=> 6,
  p_column_heading=> 'Training Approved By',
  p_column_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'TEXT',
  p_column_width=> '16',
  p_is_required=> false,
  p_ref_schema=> 'EMP_PROFILE',
  p_ref_table_name=> 'TRAINING_REQUEST_APPROVAL',
  p_ref_column_name=> 'TRA_APPROVED_BY',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 4963928306828983 + wwv_flow_api.g_id_offset,
  p_region_id=> 4963111824828982 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 7,
  p_form_element_id=> null,
  p_column_alias=> 'TRA_REMARKS',
  p_column_display_sequence=> 7,
  p_column_heading=> 'Training Remarks',
  p_column_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'TEXT',
  p_column_width=> '16',
  p_is_required=> false,
  p_ref_schema=> 'EMP_PROFILE',
  p_ref_table_name=> 'TRAINING_REQUEST_APPROVAL',
  p_ref_column_name=> 'TRA_REMARKS',
  p_column_comment=>'');
end;
/
 
begin
 
wwv_flow_api.create_page_button(
  p_id             => 4964310904828983 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 12,
  p_button_sequence=> 40,
  p_button_plug_id => 4963111824828982+wwv_flow_api.g_id_offset,
  p_button_name    => 'ADD',
  p_button_image   => 'template:'||to_char(4887330298313787+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Add Row',
  p_button_position=> 'BOTTOM',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'javascript:addRow();',
  p_button_execute_validations=>'N',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 4964107860828983 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 12,
  p_button_sequence=> 30,
  p_button_plug_id => 4963111824828982+wwv_flow_api.g_id_offset,
  p_button_name    => 'SUBMIT',
  p_button_image   => 'template:'||to_char(4887330298313787+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Submit',
  p_button_position=> 'REGION_TEMPLATE_CHANGE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> '',
  p_button_execute_validations=>'Y',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 4964005219828983 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 12,
  p_button_sequence=> 10,
  p_button_plug_id => 4963111824828982+wwv_flow_api.g_id_offset,
  p_button_name    => 'CANCEL',
  p_button_image   => 'template:'||to_char(4887330298313787+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Cancel',
  p_button_position=> 'REGION_TEMPLATE_CLOSE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 4964209045828983 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 12,
  p_button_sequence=> 20,
  p_button_plug_id => 4963111824828982+wwv_flow_api.g_id_offset,
  p_button_name    => 'MULTI_ROW_DELETE',
  p_button_image   => 'template:'||to_char(4887330298313787+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Delete',
  p_button_position=> 'REGION_TEMPLATE_DELETE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'javascript:apex.confirm(htmldb_delete_message,''MULTI_ROW_DELETE'');',
  p_button_execute_validations=>'N',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_branch(
  p_id=>4966303993828984 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 12,
  p_branch_action=> 'f?p=&APP_ID.:12:&SESSION.&success_msg=#SUCCESS_MSG#',
  p_branch_point=> 'AFTER_PROCESSING',
  p_branch_type=> 'REDIRECT_URL',
  p_branch_sequence=> 1,
  p_save_state_before_branch_yn=>'Y',
  p_branch_comment=> '');
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 4965127327828983 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 12,
  p_tabular_form_region_id => 4963111824828982 + wwv_flow_api.g_id_offset,
  p_validation_name => 'TRA_SEQUENCE not null',
  p_validation_sequence=> 30,
  p_validation => 'TRA_SEQUENCE',
  p_validation_type => 'COL_NOT_NULL',
  p_error_message => '#COLUMN_HEADER# must have a value.',
  p_when_button_pressed=> 4964107860828983 + wwv_flow_api.g_id_offset,
  p_associated_column=> 'TRA_SEQUENCE',
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 4965308661828983 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 12,
  p_tabular_form_region_id => 4963111824828982 + wwv_flow_api.g_id_offset,
  p_validation_name => 'TRA_SEQUENCE must be numeric',
  p_validation_sequence=> 30,
  p_validation => 'TRA_SEQUENCE',
  p_validation_type => 'COL_IS_NUMERIC',
  p_error_message => '#COLUMN_HEADER# must be numeric.',
  p_when_button_pressed=> 4964107860828983 + wwv_flow_api.g_id_offset,
  p_associated_column=> 'TRA_SEQUENCE',
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 4965524250828983 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 12,
  p_tabular_form_region_id => 4963111824828982 + wwv_flow_api.g_id_offset,
  p_validation_name => 'TRA_APPROVED_DATE not null',
  p_validation_sequence=> 40,
  p_validation => 'TRA_APPROVED_DATE',
  p_validation_type => 'COL_NOT_NULL',
  p_error_message => '#COLUMN_HEADER# must have a value.',
  p_when_button_pressed=> 4964107860828983 + wwv_flow_api.g_id_offset,
  p_associated_column=> 'TRA_APPROVED_DATE',
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 4965702493828983 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 12,
  p_tabular_form_region_id => 4963111824828982 + wwv_flow_api.g_id_offset,
  p_validation_name => 'TRA_APPROVED_DATE must be a valid date',
  p_validation_sequence=> 40,
  p_validation => 'TRA_APPROVED_DATE',
  p_validation_type => 'COL_IS_DATE',
  p_error_message => '#COLUMN_HEADER# must be a valid date.',
  p_when_button_pressed=> 4964107860828983 + wwv_flow_api.g_id_offset,
  p_associated_column=> 'TRA_APPROVED_DATE',
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'#OWNER#:TRAINING_REQUEST_APPROVAL:TRA_REQUEST_ID';

wwv_flow_api.create_page_process(
  p_id     => 4965815504828983 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 12,
  p_process_sequence=> 10,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'MULTI_ROW_UPDATE',
  p_process_name=> 'ApplyMRU',
  p_process_sql_clob => p, 
  p_process_error_message=> 'Unable to process update.',
  p_process_when_button_id=>4964107860828983 + wwv_flow_api.g_id_offset,
  p_process_success_message=> '#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'#OWNER#:TRAINING_REQUEST_APPROVAL:TRA_REQUEST_ID';

wwv_flow_api.create_page_process(
  p_id     => 4966003918828984 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 12,
  p_process_sequence=> 20,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'MULTI_ROW_DELETE',
  p_process_name=> 'ApplyMRD',
  p_process_sql_clob => p, 
  p_process_error_message=> 'Unable to process delete.',
  p_process_when=>'MULTI_ROW_DELETE',
  p_process_when_type=>'REQUEST_EQUALS_CONDITION',
  p_process_success_message=> '#MRD_COUNT# row(s) deleted.',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 12
--
 
begin
 
null;
end;
null;
 
end;
/

 
--application/pages/page_00013
prompt  ...PAGE 13: TRAINING_TYPE_MASTER
--
 
begin
 
wwv_flow_api.create_page (
  p_flow_id => wwv_flow.g_flow_id
 ,p_id => 13
 ,p_tab_set => 'TS1'
 ,p_name => 'TRAINING_TYPE_MASTER'
 ,p_step_title => 'TRAINING_TYPE_MASTER'
 ,p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS'
 ,p_first_item => 'NO_FIRST_ITEM'
 ,p_include_apex_css_js_yn => 'Y'
 ,p_javascript_code => 
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
 ,p_cache_page_yn => 'N'
 ,p_help_text => 
'No help is available for this page.'
 ,p_last_updated_by => 'ADMIN'
 ,p_last_upd_yyyymmddhh24miss => '20211211155146'
  );
null;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'select '||chr(10)||
'"TTM_ID",'||chr(10)||
'"TTM_ID" TTM_ID_DISPLAY,'||chr(10)||
'"TRAINING_TYPE_DESCRIPTION"'||chr(10)||
'from "#OWNER#"."TRAINING_TYPE_MASTER"'||chr(10)||
'';

wwv_flow_api.create_report_region (
  p_id=> 4967229817842386 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 13,
  p_name=> 'Training Type Master',
  p_region_name=>'',
  p_template=> 4889906514313789+ wwv_flow_api.g_id_offset,
  p_display_sequence=> 15,
  p_display_column=> 1,
  p_display_point=> 'AFTER_SHOW_ITEMS',
  p_source=> s,
  p_source_type=> 'UPDATABLE_SQL_QUERY',
  p_display_error_message=> '#SQLERRM#',
  p_plug_caching=> 'NOT_CACHED',
  p_ajax_enabled=> 'N',
  p_query_row_template=> 4893522550313792+ wwv_flow_api.g_id_offset,
  p_query_headings_type=> 'COLON_DELMITED_LIST',
  p_query_num_rows=> '10',
  p_query_options=> 'DERIVED_REPORT_COLUMNS',
  p_query_show_nulls_as=> '(null)',
  p_query_break_cols=> '0',
  p_query_no_data_found=> 'No data found.',
  p_query_num_rows_type=> 'ROW_RANGES_IN_SELECT_LIST',
  p_query_row_count_max=> '500',
  p_pagination_display_position=> 'BOTTOM_RIGHT',
  p_csv_output=> 'N',
  p_query_asc_image=> 'apex/builder/dup.gif',
  p_query_asc_image_attr=> 'width="16" height="16" alt="" ',
  p_query_desc_image=> 'apex/builder/ddown.gif',
  p_query_desc_image_attr=> 'width="16" height="16" alt="" ',
  p_plug_query_strip_html=> 'Y',
  p_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 4969429243842387 + wwv_flow_api.g_id_offset,
  p_region_id=> 4967229817842386 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 1,
  p_form_element_id=> null,
  p_column_alias=> 'CHECK$01',
  p_column_display_sequence=> 1,
  p_column_heading=> '&nbsp;',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'CHECKBOX',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_derived_column=> 'Y',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 4967503038842386 + wwv_flow_api.g_id_offset,
  p_region_id=> 4967229817842386 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 2,
  p_form_element_id=> null,
  p_column_alias=> 'TTM_ID',
  p_column_display_sequence=> 2,
  p_column_heading=> 'Training Type ID',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'Y',
  p_display_as=>'HIDDEN',
  p_lov_show_nulls=> 'NO',
  p_column_width=> '16',
  p_is_required=> false,
  p_pk_col_source_type=> 'T',
  p_pk_col_source=> s,
  p_lov_display_extra=> 'YES',
  p_include_in_export=> 'Y',
  p_ref_schema=> 'EMP_PROFILE',
  p_ref_table_name=> 'TRAINING_TYPE_MASTER',
  p_ref_column_name=> 'TTM_ID',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 4967607034842386 + wwv_flow_api.g_id_offset,
  p_region_id=> 4967229817842386 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 3,
  p_form_element_id=> null,
  p_column_alias=> 'TTM_ID_DISPLAY',
  p_column_display_sequence=> 3,
  p_column_heading=> 'Training Type ID',
  p_column_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_column_width=> '16',
  p_is_required=> false,
  p_ref_schema=> 'EMP_PROFILE',
  p_ref_table_name=> 'TRAINING_TYPE_MASTER',
  p_ref_column_name=> 'TTM_ID_DISPLAY',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 4967730862842386 + wwv_flow_api.g_id_offset,
  p_region_id=> 4967229817842386 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 4,
  p_form_element_id=> null,
  p_column_alias=> 'TRAINING_TYPE_DESCRIPTION',
  p_column_display_sequence=> 4,
  p_column_heading=> 'Training Type Description',
  p_column_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'TEXT',
  p_column_width=> '16',
  p_is_required=> false,
  p_ref_schema=> 'EMP_PROFILE',
  p_ref_table_name=> 'TRAINING_TYPE_MASTER',
  p_ref_column_name=> 'TRAINING_TYPE_DESCRIPTION',
  p_column_comment=>'');
end;
/
 
begin
 
wwv_flow_api.create_page_button(
  p_id             => 4968122787842387 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 13,
  p_button_sequence=> 40,
  p_button_plug_id => 4967229817842386+wwv_flow_api.g_id_offset,
  p_button_name    => 'ADD',
  p_button_image   => 'template:'||to_char(4887330298313787+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Add Row',
  p_button_position=> 'BOTTOM',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'javascript:addRow();',
  p_button_execute_validations=>'N',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 4967903778842387 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 13,
  p_button_sequence=> 30,
  p_button_plug_id => 4967229817842386+wwv_flow_api.g_id_offset,
  p_button_name    => 'SUBMIT',
  p_button_image   => 'template:'||to_char(4887330298313787+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Submit',
  p_button_position=> 'REGION_TEMPLATE_CHANGE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> '',
  p_button_execute_validations=>'Y',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 4967806437842387 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 13,
  p_button_sequence=> 10,
  p_button_plug_id => 4967229817842386+wwv_flow_api.g_id_offset,
  p_button_name    => 'CANCEL',
  p_button_image   => 'template:'||to_char(4887330298313787+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Cancel',
  p_button_position=> 'REGION_TEMPLATE_CLOSE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 4968009988842387 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 13,
  p_button_sequence=> 20,
  p_button_plug_id => 4967229817842386+wwv_flow_api.g_id_offset,
  p_button_name    => 'MULTI_ROW_DELETE',
  p_button_image   => 'template:'||to_char(4887330298313787+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Delete',
  p_button_position=> 'REGION_TEMPLATE_DELETE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'javascript:apex.confirm(htmldb_delete_message,''MULTI_ROW_DELETE'');',
  p_button_execute_validations=>'N',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_branch(
  p_id=>4969506791842387 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 13,
  p_branch_action=> 'f?p=&APP_ID.:13:&SESSION.&success_msg=#SUCCESS_MSG#',
  p_branch_point=> 'AFTER_PROCESSING',
  p_branch_type=> 'REDIRECT_URL',
  p_branch_sequence=> 1,
  p_save_state_before_branch_yn=>'Y',
  p_branch_comment=> '');
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 4968931237842387 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 13,
  p_tabular_form_region_id => 4967229817842386 + wwv_flow_api.g_id_offset,
  p_validation_name => 'TRAINING_TYPE_DESCRIPTION not null',
  p_validation_sequence=> 30,
  p_validation => 'TRAINING_TYPE_DESCRIPTION',
  p_validation_type => 'COL_NOT_NULL',
  p_error_message => '#COLUMN_HEADER# must have a value.',
  p_when_button_pressed=> 4967903778842387 + wwv_flow_api.g_id_offset,
  p_associated_column=> 'TRAINING_TYPE_DESCRIPTION',
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'#OWNER#:TRAINING_TYPE_MASTER:TTM_ID';

wwv_flow_api.create_page_process(
  p_id     => 4969011291842387 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 13,
  p_process_sequence=> 10,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'MULTI_ROW_UPDATE',
  p_process_name=> 'ApplyMRU',
  p_process_sql_clob => p, 
  p_process_error_message=> 'Unable to process update.',
  p_process_when_button_id=>4967903778842387 + wwv_flow_api.g_id_offset,
  p_process_success_message=> '#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'#OWNER#:TRAINING_TYPE_MASTER:TTM_ID';

wwv_flow_api.create_page_process(
  p_id     => 4969209554842387 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 13,
  p_process_sequence=> 20,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'MULTI_ROW_DELETE',
  p_process_name=> 'ApplyMRD',
  p_process_sql_clob => p, 
  p_process_error_message=> 'Unable to process delete.',
  p_process_when=>'MULTI_ROW_DELETE',
  p_process_when_type=>'REQUEST_EQUALS_CONDITION',
  p_process_success_message=> '#MRD_COUNT# row(s) deleted.',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 13
--
 
begin
 
null;
end;
null;
 
end;
/

 
--application/pages/page_00014
prompt  ...PAGE 14: EMPLOYEE ENTRY
--
 
begin
 
wwv_flow_api.create_page (
  p_flow_id => wwv_flow.g_flow_id
 ,p_id => 14
 ,p_tab_set => 'TS1'
 ,p_name => 'EMPLOYEE ENTRY'
 ,p_step_title => 'EMPLOYEE ENTRY'
 ,p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS'
 ,p_include_apex_css_js_yn => 'Y'
 ,p_javascript_code => 
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
 ,p_cache_page_yn => 'N'
 ,p_help_text => 
'No help is available for this page.'
 ,p_last_updated_by => 'ADMIN'
 ,p_last_upd_yyyymmddhh24miss => '20220512154156'
  );
null;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 4976623126875927 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 14,
  p_plug_name=> 'EMPLOYEE ENTRY',
  p_region_name=>'',
  p_plug_template=> 4889029118313788+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 10,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'AFTER_SHOW_ITEMS',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_plug_display_error_message=> '#SQLERRM#',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
 
begin
 
wwv_flow_api.create_page_button(
  p_id             => 4976917659875928 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 14,
  p_button_sequence=> 30,
  p_button_plug_id => 4976623126875927+wwv_flow_api.g_id_offset,
  p_button_name    => 'SAVE',
  p_button_image   => 'template:'||to_char(4887330298313787+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Apply Changes',
  p_button_position=> 'REGION_TEMPLATE_CHANGE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> '',
  p_button_execute_validations=>'Y',
  p_button_condition=> 'P14_EMPLOYEE_ID',
  p_button_condition_type=> 'ITEM_IS_NOT_NULL',
  p_database_action=>'UPDATE',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 4977222105875928 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 14,
  p_button_sequence=> 10,
  p_button_plug_id => 4976623126875927+wwv_flow_api.g_id_offset,
  p_button_name    => 'CANCEL',
  p_button_image   => 'template:'||to_char(4887330298313787+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Cancel',
  p_button_position=> 'REGION_TEMPLATE_CLOSE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:::',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 4976801899875928 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 14,
  p_button_sequence=> 40,
  p_button_plug_id => 4976623126875927+wwv_flow_api.g_id_offset,
  p_button_name    => 'CREATE',
  p_button_image   => 'template:'||to_char(4887330298313787+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Create',
  p_button_position=> 'REGION_TEMPLATE_CREATE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> '',
  p_button_execute_validations=>'Y',
  p_button_condition=> 'P14_EMPLOYEE_ID',
  p_button_condition_type=> 'ITEM_IS_NULL',
  p_database_action=>'INSERT',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 4977019746875928 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 14,
  p_button_sequence=> 20,
  p_button_plug_id => 4976623126875927+wwv_flow_api.g_id_offset,
  p_button_name    => 'DELETE',
  p_button_image   => 'template:'||to_char(4887330298313787+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Delete',
  p_button_position=> 'REGION_TEMPLATE_DELETE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'javascript:apex.confirm(htmldb_delete_message,''DELETE'');',
  p_button_execute_validations=>'N',
  p_button_condition=> 'P14_EMPLOYEE_ID',
  p_button_condition_type=> 'ITEM_IS_NOT_NULL',
  p_database_action=>'DELETE',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_branch(
  p_id=>4977831506875928 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 14,
  p_branch_action=> 'f?p=&APP_ID.:5:&SESSION.&success_msg=#SUCCESS_MSG#',
  p_branch_point=> 'AFTER_PROCESSING',
  p_branch_type=> 'REDIRECT_URL',
  p_branch_sequence=> 1,
  p_save_state_before_branch_yn=>'Y',
  p_branch_comment=> '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>4978024304875929 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 14,
  p_name=>'P14_EMPLOYEE_ID',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 1,
  p_item_plug_id => 4976623126875927+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Employee Id',
  p_source=>'EMPLOYEE_ID',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_HIDDEN',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> null,
  p_cMaxlength=> null,
  p_cHeight=> null,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 4894215352313793+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_attribute_01 => 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>4978216479875932 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 14,
  p_name=>'P14_NAME',
  p_data_type=> 'VARCHAR',
  p_is_required=> true,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 20,
  p_item_plug_id => 4976623126875927+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Name',
  p_source=>'NAME',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_TEXT_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 32,
  p_cMaxlength=> 20,
  p_cHeight=> null,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 4894422955313793+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_attribute_01 => 'N',
  p_attribute_02 => 'N',
  p_attribute_03 => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>4978416409875932 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 14,
  p_name=>'P14_ADDRESS',
  p_data_type=> 'VARCHAR',
  p_is_required=> true,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 30,
  p_item_plug_id => 4976623126875927+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Address',
  p_source=>'ADDRESS',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_TEXT_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 32,
  p_cMaxlength=> 20,
  p_cHeight=> null,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 4894422955313793+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_attribute_01 => 'N',
  p_attribute_02 => 'N',
  p_attribute_03 => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>4978625099875933 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 14,
  p_name=>'P14_MARITAL_STATUS',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 40,
  p_item_plug_id => 4976623126875927+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Marital Status',
  p_source=>'MARITAL_STATUS',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_TEXT_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 32,
  p_cMaxlength=> 1,
  p_cHeight=> null,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 4894215352313793+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_attribute_01 => 'N',
  p_attribute_02 => 'N',
  p_attribute_03 => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>4978830215875933 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 14,
  p_name=>'P14_DATE_OF_BIRTH',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 50,
  p_item_plug_id => 4976623126875927+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Date Of Birth',
  p_source=>'DATE_OF_BIRTH',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_DATE_PICKER',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 32,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 4894215352313793+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_attribute_04 => 'button',
  p_attribute_05 => 'N',
  p_attribute_07 => 'NONE',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>4979004492875933 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 14,
  p_name=>'P14_CONTACT_NO',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 60,
  p_item_plug_id => 4976623126875927+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Contact No',
  p_source=>'CONTACT_NO',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_NUMBER_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 32,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 4894215352313793+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_attribute_03 => 'right',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>4979203861875933 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 14,
  p_name=>'P14_DATE_JOINED',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 70,
  p_item_plug_id => 4976623126875927+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Date Joined',
  p_source=>'DATE_JOINED',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_DATE_PICKER',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 32,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 4894215352313793+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_attribute_04 => 'button',
  p_attribute_05 => 'N',
  p_attribute_07 => 'NONE',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>4979430315875933 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 14,
  p_name=>'P14_DEPT_ID',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 80,
  p_item_plug_id => 4976623126875927+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Dept Id',
  p_source=>'DEPT_ID',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_HIDDEN',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 32,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 4894215352313793+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'Y',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>4979607296875933 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 14,
  p_name=>'P14_BANK_ID',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 90,
  p_item_plug_id => 4976623126875927+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Bank Id',
  p_source=>'BANK_ID',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_HIDDEN',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 32,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 4894215352313793+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'Y',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>4979830046875933 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 14,
  p_name=>'P14_JOB_ID',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 100,
  p_item_plug_id => 4976623126875927+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Job Id',
  p_source=>'JOB_ID',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_HIDDEN',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 32,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 4894215352313793+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'Y',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>4980004262875934 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 14,
  p_name=>'P14_NATIONALITY_ID',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 110,
  p_item_plug_id => 4976623126875927+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Nationality Id',
  p_source=>'NATIONALITY_ID',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_HIDDEN',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 32,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 4894215352313793+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'Y',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>4980221598875934 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 14,
  p_name=>'P14_SHIFT_ID',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 120,
  p_item_plug_id => 4976623126875927+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Shift Id',
  p_source=>'SHIFT_ID',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_HIDDEN',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 32,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 4894215352313793+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'Y',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>4980425940875934 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 14,
  p_name=>'P14_AMOUNT_SALARY',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 130,
  p_item_plug_id => 4976623126875927+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Amount Salary',
  p_source=>'AMOUNT_SALARY',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_NUMBER_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 32,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 4894215352313793+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_attribute_03 => 'right',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>5074318258321532 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 14,
  p_name=>'P14_EMP_PASSWORD',
  p_data_type=> 'VARCHAR',
  p_is_required=> true,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 140,
  p_item_plug_id => 4976623126875927+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Password',
  p_source=>'EMP_PASSWORD',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_PASSWORD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 32,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 4894215352313793+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'Y',
  p_attribute_02 => 'Y',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'F|#OWNER#:EMPLOYEE:P14_EMPLOYEE_ID:EMPLOYEE_ID';

wwv_flow_api.create_page_process(
  p_id     => 4980701691875934 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 14,
  p_process_sequence=> 10,
  p_process_point=> 'AFTER_HEADER',
  p_process_type=> 'DML_FETCH_ROW',
  p_process_name=> 'Fetch Row from EMPLOYEE',
  p_process_sql_clob => p, 
  p_process_error_message=> 'Unable to fetch row.',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'#OWNER#:EMPLOYEE:P14_EMPLOYEE_ID:EMPLOYEE_ID|IUD';

wwv_flow_api.create_page_process(
  p_id     => 4980922736875934 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 14,
  p_process_sequence=> 30,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'DML_PROCESS_ROW',
  p_process_name=> 'Process Row of EMPLOYEE',
  p_process_sql_clob => p, 
  p_process_error_message=> 'Unable to process row of table EMPLOYEE.',
  p_process_success_message=> 'Action Processed.',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'14';

wwv_flow_api.create_page_process(
  p_id     => 4981131848875934 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 14,
  p_process_sequence=> 40,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'CLEAR_CACHE_FOR_PAGES',
  p_process_name=> 'reset page',
  p_process_sql_clob => p, 
  p_process_error_message=> '',
  p_process_when_button_id=>4977019746875928 + wwv_flow_api.g_id_offset,
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 14
--
 
begin
 
null;
end;
null;
 
end;
/

 
--application/pages/page_00016
prompt  ...PAGE 16: Report 1
--
 
begin
 
wwv_flow_api.create_page (
  p_flow_id => wwv_flow.g_flow_id
 ,p_id => 16
 ,p_tab_set => 'TS1'
 ,p_name => 'Report 1'
 ,p_step_title => 'Reports'
 ,p_allow_duplicate_submissions => 'Y'
 ,p_step_sub_title => 'Report 1'
 ,p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS'
 ,p_first_item => 'AUTO_FIRST_ITEM'
 ,p_include_apex_css_js_yn => 'Y'
 ,p_autocomplete_on_off => 'ON'
 ,p_page_is_public_y_n => 'N'
 ,p_protection_level => 'N'
 ,p_cache_page_yn => 'N'
 ,p_cache_timeout_seconds => 21600
 ,p_cache_by_user_yn => 'N'
 ,p_help_text => 
'No help is available for this page.'
 ,p_last_updated_by => 'ADMIN'
 ,p_last_upd_yyyymmddhh24miss => '20220515155352'
  );
null;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'SELECT'||chr(10)||
'COUNT(TR_ID) No_of_request,'||chr(10)||
'TO_CHAR(PUBLISHED_DATE,''YYYY'') Published_Year,'||chr(10)||
'DECODE(TRA_ACTION,''A'',''APPROVED'',''D'',''DECLINE'',NULL,''NO ACTION TAKEN'') ACTION'||chr(10)||
''||chr(10)||
'FROM TRAINING_REQUEST, TRAINING_REQUEST_APPROVAL, TRAINING_ADVERTISEMENT'||chr(10)||
'WHERE TR_ID = TRA_REQUEST_ID'||chr(10)||
'AND   ADVERTISEMENT_ID = TR_ADVERTISEMENT_ID'||chr(10)||
'GROUP BY TO_CHAR(PUBLISHED_DATE,''YYYY''),'||chr(10)||
'TRA_ACTION'||chr(10)||
'ORDER BY TO_NUMBER(TO_CHAR(PUBLISHED_DAT';

s:=s||'E,''YYYY''))'||chr(10)||
'';

wwv_flow_api.create_page_plug (
  p_id=> 5101128623901478 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 16,
  p_plug_name=> 'Training Published By Year',
  p_region_name=>'',
  p_plug_template=> 4889515414313789+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 10,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'AFTER_SHOW_ITEMS',
  p_plug_source=> s,
  p_plug_source_type=> 'DYNAMIC_QUERY',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_display_condition_type => '',
  p_plug_display_when_condition => 'if v(''APP_USER'') = ''ADMIN'' THEN'||chr(10)||
'RETURN TRUE;'||chr(10)||
'ELSE'||chr(10)||
'RETURN FALSE;'||chr(10)||
'END IF;',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
 a1 varchar2(32767) := null;
begin
a1:=a1||'SELECT'||chr(10)||
'COUNT(TR_ID) No_of_request,'||chr(10)||
'TO_CHAR(PUBLISHED_DATE,''YYYY'') Published_Year,'||chr(10)||
'DECODE(TRA_ACTION,''A'',''APPROVED'',''D'',''DECLINE'',NULL,''NO ACTION TAKEN'') ACTION'||chr(10)||
''||chr(10)||
'FROM TRAINING_REQUEST, TRAINING_REQUEST_APPROVAL, TRAINING_ADVERTISEMENT'||chr(10)||
'WHERE TR_ID = TRA_REQUEST_ID'||chr(10)||
'AND   ADVERTISEMENT_ID = TR_ADVERTISEMENT_ID'||chr(10)||
'GROUP BY TO_CHAR(PUBLISHED_DATE,''YYYY''),'||chr(10)||
'TRA_ACTION'||chr(10)||
'ORDER BY TO_NUMBER(TO_CHAR(PUBLISHED_DAT';

a1:=a1||'E,''YYYY''))'||chr(10)||
'';

wwv_flow_api.create_worksheet(
  p_id=> 5101201761901478+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 16,
  p_region_id=> 5101128623901478+wwv_flow_api.g_id_offset,
  p_name=> 'Report 1',
  p_folder_id=> null, 
  p_alias=> '',
  p_report_id_item=> '',
  p_max_row_count=> '10000',
  p_max_row_count_message=> 'This query returns more than #MAX_ROW_COUNT# rows, please filter your data to ensure complete results.',
  p_no_data_found_message=> 'No data found.',
  p_max_rows_per_page=>'',
  p_search_button_label=>'',
  p_page_items_to_submit=>'',
  p_sort_asc_image=>'',
  p_sort_asc_image_attr=>'',
  p_sort_desc_image=>'',
  p_sort_desc_image_attr=>'',
  p_sql_query => a1,
  p_status=>'AVAILABLE_FOR_OWNER',
  p_allow_report_saving=>'Y',
  p_allow_save_rpt_public=>'N',
  p_allow_report_categories=>'Y',
  p_show_nulls_as=>'-',
  p_pagination_type=>'ROWS_X_TO_Y',
  p_pagination_display_pos=>'BOTTOM_RIGHT',
  p_show_finder_drop_down=>'Y',
  p_show_display_row_count=>'N',
  p_show_search_bar=>'Y',
  p_show_search_textbox=>'Y',
  p_show_actions_menu=>'Y',
  p_report_list_mode=>'TABS',
  p_show_detail_link=>'N',
  p_show_select_columns=>'Y',
  p_show_rows_per_page=>'Y',
  p_show_filter=>'Y',
  p_show_sort=>'Y',
  p_show_control_break=>'Y',
  p_show_highlight=>'Y',
  p_show_computation=>'Y',
  p_show_aggregate=>'Y',
  p_show_chart=>'Y',
  p_show_group_by=>'Y',
  p_show_notify=>'N',
  p_show_calendar=>'Y',
  p_show_flashback=>'Y',
  p_show_reset=>'Y',
  p_show_download=>'Y',
  p_show_help=>'Y',
  p_download_formats=>'CSV:HTML:EMAIL',
  p_allow_exclude_null_values=>'Y',
  p_allow_hide_extra_columns=>'Y',
  p_icon_view_enabled_yn=>'N',
  p_detail_view_enabled_yn=>'N',
  p_owner=>'ADMIN');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 5103020016949487+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 16,
  p_worksheet_id => 5101201761901478+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'NO_OF_REQUEST',
  p_display_order          =>1,
  p_group_id               =>null+wwv_flow_api.g_id_offset,
  p_column_identifier      =>'A',
  p_column_label           =>'No Of Request',
  p_report_label           =>'No Of Request',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_highlighting     =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_allow_group_by         =>'Y',
  p_allow_hide             =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'NUMBER',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'RIGHT',
  p_tz_dependent           =>'N',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 5103605602954751+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 16,
  p_worksheet_id => 5101201761901478+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'ACTION',
  p_display_order          =>3,
  p_group_id               =>null+wwv_flow_api.g_id_offset,
  p_column_identifier      =>'C',
  p_column_label           =>'Action',
  p_report_label           =>'Action',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_highlighting     =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_allow_group_by         =>'Y',
  p_allow_hide             =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'STRING',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'LEFT',
  p_tz_dependent           =>'N',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 5103830461056604+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 16,
  p_worksheet_id => 5101201761901478+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'PUBLISHED_YEAR',
  p_display_order          =>4,
  p_group_id               =>null+wwv_flow_api.g_id_offset,
  p_column_identifier      =>'D',
  p_column_label           =>'Published Year',
  p_report_label           =>'Published Year',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_highlighting     =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_allow_group_by         =>'Y',
  p_allow_hide             =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'STRING',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'LEFT',
  p_tz_dependent           =>'N',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
declare
    rc1 varchar2(32767) := null;
begin
rc1:=rc1||'YEAR:NO_OF_REQUEST:ACTION';

wwv_flow_api.create_worksheet_rpt(
  p_id => 5101718322901652+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 16,
  p_worksheet_id => 5101201761901478+wwv_flow_api.g_id_offset,
  p_session_id  => null,
  p_base_report_id  => null+wwv_flow_api.g_id_offset,
  p_application_user => 'APXWS_DEFAULT',
  p_report_seq              =>10,
  p_report_alias            =>'51018',
  p_status                  =>'PUBLIC',
  p_category_id             =>null+wwv_flow_api.g_id_offset,
  p_is_default              =>'Y',
  p_display_rows            =>15,
  p_report_columns          =>rc1,
  p_flashback_enabled       =>'N',
  p_calendar_display_column =>'');
end;
/
 
begin
 
null;
 
end;
/

 
begin
 
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 16
--
 
begin
 
null;
end;
null;
 
end;
/

 
--application/pages/page_00021
prompt  ...PAGE 21: TRAINING_REQUEST_APPROVAL
--
 
begin
 
wwv_flow_api.create_page (
  p_flow_id => wwv_flow.g_flow_id
 ,p_id => 21
 ,p_tab_set => 'TS1'
 ,p_name => 'TRAINING_REQUEST_APPROVAL'
 ,p_step_title => 'TRAINING_REQUEST_APPROVAL'
 ,p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS'
 ,p_include_apex_css_js_yn => 'Y'
 ,p_cache_page_yn => 'N'
 ,p_help_text => 
'No help is available for this page.'
 ,p_last_updated_by => 'ADMIN'
 ,p_last_upd_yyyymmddhh24miss => '20220515154822'
  );
null;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'select "TRA_REQUEST_ID",'||chr(10)||
'TR_EMP_ID,'||chr(10)||
'TR_ADVERTISEMENT_ID,'||chr(10)||
'TRAINING_NAME,'||chr(10)||
'NAME, '||chr(10)||
'"TRA_SEQUENCE",'||chr(10)||
'"TRA_APPROVED_DATE",'||chr(10)||
'"TRA_APPROVED_BY",'||chr(10)||
'"TRA_REMARKS",'||chr(10)||
'DECODE(TRA_ACTION,''A'',''APPROVED'',''D'',''DECLINE'') TRA_ACTION'||chr(10)||
'from "#OWNER#"."TRAINING_REQUEST_APPROVAL", TRAINING_REQUEST, EMPLOYEE, TRAINING_ADVERTISEMENT'||chr(10)||
'WHERE TR_ID = TRA_REQUEST_ID'||chr(10)||
'AND   TR_EMP_ID = EMPLOYEE_ID'||chr(10)||
'AND   TR_ADVERTISEMENT_ID = ADVERTISE';

s:=s||'MENT_ID'||chr(10)||
'AND  TRA_REQUEST_ID IN'||chr(10)||
'(SELECT TR_ID FROM TRAINING_REQUEST, TRAINING_REQUEST_APPROVAL'||chr(10)||
'where TRA_REQUEST_ID = TR_ID'||chr(10)||
'AND   TR_EMP_ID = DECODE(v(''APP_USER''),''ADMIN'',tr_emp_id , v(''APP_USER'')))'||chr(10)||
'order by 1,2 '||chr(10)||
'  '||chr(10)||
'';

wwv_flow_api.create_page_plug (
  p_id=> 4998131472172988 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 21,
  p_plug_name=> 'TRAINING_REQUEST_APPROVAL',
  p_region_name=>'',
  p_plug_template=> 4889515414313789+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 10,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'AFTER_SHOW_ITEMS',
  p_plug_source=> s,
  p_plug_source_type=> 'DYNAMIC_QUERY',
  p_translate_title=> 'Y',
  p_plug_display_error_message=> 'Unable to show report.',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_prn_output_show_link=> 'Y',
  p_prn_content_disposition=> 'ATTACHMENT',
  p_prn_document_header=> 'APEX',
  p_prn_units=> 'INCHES',
  p_prn_paper_size=> 'LETTER',
  p_prn_width=> 11,
  p_prn_height=> 8.5,
  p_prn_orientation=> 'HORIZONTAL',
  p_prn_page_header_font_color=> '#000000',
  p_prn_page_header_font_family=> 'Helvetica',
  p_prn_page_header_font_weight=> 'normal',
  p_prn_page_header_font_size=> '12',
  p_prn_page_footer_font_color=> '#000000',
  p_prn_page_footer_font_family=> 'Helvetica',
  p_prn_page_footer_font_weight=> 'normal',
  p_prn_page_footer_font_size=> '12',
  p_prn_header_bg_color=> '#9bafde',
  p_prn_header_font_color=> '#ffffff',
  p_prn_header_font_family=> 'Helvetica',
  p_prn_header_font_weight=> 'normal',
  p_prn_header_font_size=> '10',
  p_prn_body_bg_color=> '#efefef',
  p_prn_body_font_color=> '#000000',
  p_prn_body_font_family=> 'Helvetica',
  p_prn_body_font_weight=> 'normal',
  p_prn_body_font_size=> '10',
  p_prn_border_width=> .5,
  p_prn_page_header_alignment=> 'CENTER',
  p_prn_page_footer_alignment=> 'CENTER',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
 a1 varchar2(32767) := null;
begin
a1:=a1||'select "TRA_REQUEST_ID",'||chr(10)||
'TR_EMP_ID,'||chr(10)||
'TR_ADVERTISEMENT_ID,'||chr(10)||
'TRAINING_NAME,'||chr(10)||
'NAME, '||chr(10)||
'"TRA_SEQUENCE",'||chr(10)||
'"TRA_APPROVED_DATE",'||chr(10)||
'"TRA_APPROVED_BY",'||chr(10)||
'"TRA_REMARKS",'||chr(10)||
'DECODE(TRA_ACTION,''A'',''APPROVED'',''D'',''DECLINE'') TRA_ACTION'||chr(10)||
'from "#OWNER#"."TRAINING_REQUEST_APPROVAL", TRAINING_REQUEST, EMPLOYEE, TRAINING_ADVERTISEMENT'||chr(10)||
'WHERE TR_ID = TRA_REQUEST_ID'||chr(10)||
'AND   TR_EMP_ID = EMPLOYEE_ID'||chr(10)||
'AND   TR_ADVERTISEMENT_ID = ADVERTISE';

a1:=a1||'MENT_ID'||chr(10)||
'AND  TRA_REQUEST_ID IN'||chr(10)||
'(SELECT TR_ID FROM TRAINING_REQUEST, TRAINING_REQUEST_APPROVAL'||chr(10)||
'where TRA_REQUEST_ID = TR_ID'||chr(10)||
'AND   TR_EMP_ID = DECODE(v(''APP_USER''),''ADMIN'',tr_emp_id , v(''APP_USER'')))'||chr(10)||
'order by 1,2 '||chr(10)||
'  '||chr(10)||
'';

wwv_flow_api.create_worksheet(
  p_id=> 4998304655172988+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 21,
  p_region_id=> 4998131472172988+wwv_flow_api.g_id_offset,
  p_name=> 'TRAINING_REQUEST_APPROVAL',
  p_folder_id=> null, 
  p_alias=> '',
  p_report_id_item=> '',
  p_max_row_count=> '10000',
  p_max_row_count_message=> 'This query returns more than #MAX_ROW_COUNT# rows, please filter your data to ensure complete results.',
  p_no_data_found_message=> 'No data found.',
  p_max_rows_per_page=>'',
  p_search_button_label=>'',
  p_page_items_to_submit=>'',
  p_sort_asc_image=>'',
  p_sort_asc_image_attr=>'',
  p_sort_desc_image=>'',
  p_sort_desc_image_attr=>'',
  p_sql_query => a1,
  p_status=>'AVAILABLE_FOR_OWNER',
  p_allow_report_saving=>'Y',
  p_allow_save_rpt_public=>'N',
  p_allow_report_categories=>'N',
  p_show_nulls_as=>'-',
  p_pagination_type=>'ROWS_X_TO_Y',
  p_pagination_display_pos=>'BOTTOM_RIGHT',
  p_show_finder_drop_down=>'Y',
  p_show_display_row_count=>'N',
  p_show_search_bar=>'Y',
  p_show_search_textbox=>'Y',
  p_show_actions_menu=>'Y',
  p_report_list_mode=>'TABS',
  p_show_detail_link=>'C',
  p_show_select_columns=>'Y',
  p_show_rows_per_page=>'Y',
  p_show_filter=>'Y',
  p_show_sort=>'Y',
  p_show_control_break=>'Y',
  p_show_highlight=>'Y',
  p_show_computation=>'Y',
  p_show_aggregate=>'Y',
  p_show_chart=>'Y',
  p_show_group_by=>'Y',
  p_show_notify=>'N',
  p_show_calendar=>'N',
  p_show_flashback=>'Y',
  p_show_reset=>'Y',
  p_show_download=>'Y',
  p_show_help=>'Y',
  p_download_formats=>'CSV:HTML:EMAIL',
  p_detail_link=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.::P22_TRA_REQUEST_ID,P22_TRA_SEQUENCE:#TRA_REQUEST_ID#,#TRA_SEQUENCE#',
  p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif"  border="0">',
  p_detail_link_condition_type=>'FUNCTION_BODY',
  p_detail_link_cond=>'if v(''APP_USER'') = ''ADMIN'' THEN'||chr(10)||
'RETURN TRUE;'||chr(10)||
'ELSE'||chr(10)||
'RETURN FALSE;'||chr(10)||
'END IF;',
  p_allow_exclude_null_values=>'N',
  p_allow_hide_extra_columns=>'N',
  p_icon_view_enabled_yn=>'N',
  p_icon_view_columns_per_row=>1,
  p_detail_view_enabled_yn=>'N',
  p_owner=>'ADMIN');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 4998407301172989+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 21,
  p_worksheet_id => 4998304655172988+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'TRA_REQUEST_ID',
  p_display_order          =>1,
  p_group_id               =>null+wwv_flow_api.g_id_offset,
  p_column_identifier      =>'A',
  p_column_label           =>'Request Id',
  p_report_label           =>'Request Id',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_highlighting     =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_allow_group_by         =>'Y',
  p_allow_hide             =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'NUMBER',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'LEFT',
  p_tz_dependent           =>'N',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_display_condition      =>'if v(''APP_USER'') = ''ADMIN'' THEN'||chr(10)||
'RETURN TRUE;'||chr(10)||
'ELSE'||chr(10)||
'RETURN FALSE;'||chr(10)||
'END IF;',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 5113422157248346+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 21,
  p_worksheet_id => 4998304655172988+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'TR_ADVERTISEMENT_ID',
  p_display_order          =>2,
  p_group_id               =>null+wwv_flow_api.g_id_offset,
  p_column_identifier      =>'I',
  p_column_label           =>'Advertisement Id',
  p_report_label           =>'Advertisement Id',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_highlighting     =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_allow_group_by         =>'Y',
  p_allow_hide             =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'NUMBER',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'RIGHT',
  p_tz_dependent           =>'N',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 5113601987261366+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 21,
  p_worksheet_id => 4998304655172988+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'TRAINING_NAME',
  p_display_order          =>3,
  p_group_id               =>null+wwv_flow_api.g_id_offset,
  p_column_identifier      =>'J',
  p_column_label           =>'Training Name',
  p_report_label           =>'Training Name',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_highlighting     =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_allow_group_by         =>'Y',
  p_allow_hide             =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'STRING',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'LEFT',
  p_tz_dependent           =>'N',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 4998524199172990+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 21,
  p_worksheet_id => 4998304655172988+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'TRA_SEQUENCE',
  p_display_order          =>4,
  p_group_id               =>null+wwv_flow_api.g_id_offset,
  p_column_identifier      =>'B',
  p_column_label           =>'Sequence',
  p_report_label           =>'Sequence',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_highlighting     =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_allow_group_by         =>'Y',
  p_allow_hide             =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'NUMBER',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'LEFT',
  p_tz_dependent           =>'N',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 4998614822172990+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 21,
  p_worksheet_id => 4998304655172988+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'TRA_APPROVED_DATE',
  p_display_order          =>5,
  p_group_id               =>null+wwv_flow_api.g_id_offset,
  p_column_identifier      =>'C',
  p_column_label           =>'Last Action Date',
  p_report_label           =>'Last Action Date',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_highlighting     =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_allow_group_by         =>'Y',
  p_allow_hide             =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'DATE',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'LEFT',
  p_tz_dependent           =>'N',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 4998724815172990+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 21,
  p_worksheet_id => 4998304655172988+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'TRA_APPROVED_BY',
  p_display_order          =>6,
  p_group_id               =>null+wwv_flow_api.g_id_offset,
  p_column_identifier      =>'D',
  p_column_label           =>'Approved By',
  p_report_label           =>'Approved By',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_highlighting     =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_allow_group_by         =>'Y',
  p_allow_hide             =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'STRING',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'LEFT',
  p_tz_dependent           =>'N',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 4998832522172990+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 21,
  p_worksheet_id => 4998304655172988+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'TRA_REMARKS',
  p_display_order          =>7,
  p_group_id               =>null+wwv_flow_api.g_id_offset,
  p_column_identifier      =>'E',
  p_column_label           =>'Remarks',
  p_report_label           =>'Remarks',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_highlighting     =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_allow_group_by         =>'Y',
  p_allow_hide             =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'STRING',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'LEFT',
  p_tz_dependent           =>'N',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 5005610790344621+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 21,
  p_worksheet_id => 4998304655172988+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'TRA_ACTION',
  p_display_order          =>8,
  p_group_id               =>null+wwv_flow_api.g_id_offset,
  p_column_identifier      =>'F',
  p_column_label           =>'Action',
  p_report_label           =>'Action',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_highlighting     =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_allow_group_by         =>'Y',
  p_allow_hide             =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'STRING',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'LEFT',
  p_tz_dependent           =>'N',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 5097601288366848+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 21,
  p_worksheet_id => 4998304655172988+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'TR_EMP_ID',
  p_display_order          =>9,
  p_group_id               =>null+wwv_flow_api.g_id_offset,
  p_column_identifier      =>'G',
  p_column_label           =>'Emp Id',
  p_report_label           =>'Emp Id',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_highlighting     =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_allow_group_by         =>'Y',
  p_allow_hide             =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'NUMBER',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'RIGHT',
  p_tz_dependent           =>'N',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 5097829685375134+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 21,
  p_worksheet_id => 4998304655172988+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'NAME',
  p_display_order          =>10,
  p_group_id               =>null+wwv_flow_api.g_id_offset,
  p_column_identifier      =>'H',
  p_column_label           =>'Name',
  p_report_label           =>'Name',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_highlighting     =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_allow_group_by         =>'Y',
  p_allow_hide             =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'STRING',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'LEFT',
  p_tz_dependent           =>'N',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
declare
    rc1 varchar2(32767) := null;
begin
rc1:=rc1||'TRA_REQUEST_ID:TRA_SEQUENCE:TR_EMP_ID:NAME:TRA_APPROVED_DATE:TRA_APPROVED_BY:TRA_REMARKS:TRA_ACTION';

wwv_flow_api.create_worksheet_rpt(
  p_id => 4999106700173163+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 21,
  p_worksheet_id => 4998304655172988+wwv_flow_api.g_id_offset,
  p_session_id  => null,
  p_base_report_id  => null+wwv_flow_api.g_id_offset,
  p_application_user => 'APXWS_DEFAULT',
  p_report_seq              =>10,
  p_report_alias            =>'49992',
  p_status                  =>'PUBLIC',
  p_category_id             =>null+wwv_flow_api.g_id_offset,
  p_is_default              =>'Y',
  p_display_rows            =>15,
  p_report_columns          =>rc1,
  p_sort_column_1           =>'TRA_APPROVED_DATE',
  p_sort_direction_1        =>'DESC',
  p_break_on                =>'0:0:0:0:0',
  p_break_enabled_on        =>'0:0:0:0:0',
  p_flashback_enabled       =>'N',
  p_calendar_display_column =>'');
end;
/
 
begin
 
wwv_flow_api.create_page_button(
  p_id             => 4999007590172990 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 21,
  p_button_sequence=> 30,
  p_button_plug_id => 4998131472172988+wwv_flow_api.g_id_offset,
  p_button_name    => 'CREATE',
  p_button_image   => 'template:'||to_char(4887330298313787+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Create',
  p_button_position=> 'RIGHT_OF_IR_SEARCH_BAR',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'f?p=&APP_ID.:22:&SESSION.::&DEBUG.:22::',
  p_button_execute_validations=>'Y',
  p_button_condition=> '1',
  p_button_condition2=> '2',
  p_button_condition_type=> 'VAL_OF_ITEM_IN_COND_EQ_COND2',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 5088925118194029 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 21,
  p_button_sequence=> 40,
  p_button_plug_id => 4998131472172988+wwv_flow_api.g_id_offset,
  p_button_name    => 'CANCEL',
  p_button_image   => 'template:'||to_char(4887330298313787+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Cancel',
  p_button_position=> 'TOP',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::',
  p_button_execute_validations=>'Y',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
 
end;
/

 
begin
 
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 21
--
 
begin
 
null;
end;
null;
 
end;
/

 
--application/pages/page_00022
prompt  ...PAGE 22: Entry TRAINING_REQUEST_APPROVAL
--
 
begin
 
wwv_flow_api.create_page (
  p_flow_id => wwv_flow.g_flow_id
 ,p_id => 22
 ,p_tab_set => 'TS1'
 ,p_name => 'Entry TRAINING_REQUEST_APPROVAL'
 ,p_step_title => 'Entry TRAINING_REQUEST_APPROVAL'
 ,p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS'
 ,p_include_apex_css_js_yn => 'Y'
 ,p_javascript_code => 
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
 ,p_cache_page_yn => 'N'
 ,p_help_text => 
'No help is available for this page.'
 ,p_last_updated_by => 'ADMIN'
 ,p_last_upd_yyyymmddhh24miss => '20220515155427'
  );
null;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 4994630890172973 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 22,
  p_plug_name=> 'Entry TRAINING_REQUEST_APPROVAL',
  p_region_name=>'',
  p_plug_template=> 4889029118313788+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 10,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'AFTER_SHOW_ITEMS',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_display_error_message=> '#SQLERRM#',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
 
begin
 
wwv_flow_api.create_page_button(
  p_id             => 4994922949172975 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 22,
  p_button_sequence=> 30,
  p_button_plug_id => 4994630890172973+wwv_flow_api.g_id_offset,
  p_button_name    => 'SAVE',
  p_button_image   => 'template:'||to_char(4887330298313787+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Apply Changes',
  p_button_position=> 'REGION_TEMPLATE_CHANGE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> '',
  p_button_execute_validations=>'Y',
  p_button_condition=> 'P22_TRA_REQUEST_ID',
  p_button_condition_type=> 'ITEM_IS_NOT_NULL',
  p_database_action=>'UPDATE',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 4995222144172976 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 22,
  p_button_sequence=> 10,
  p_button_plug_id => 4994630890172973+wwv_flow_api.g_id_offset,
  p_button_name    => 'CANCEL',
  p_button_image   => 'template:'||to_char(4887330298313787+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Cancel',
  p_button_position=> 'REGION_TEMPLATE_CLOSE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'f?p=&APP_ID.:21:&SESSION.::&DEBUG.:::',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 4994829780172975 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 22,
  p_button_sequence=> 40,
  p_button_plug_id => 4994630890172973+wwv_flow_api.g_id_offset,
  p_button_name    => 'CREATE',
  p_button_image   => 'template:'||to_char(4887330298313787+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Create',
  p_button_position=> 'REGION_TEMPLATE_CREATE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> '',
  p_button_execute_validations=>'Y',
  p_button_condition=> '1',
  p_button_condition2=> '2',
  p_button_condition_type=> 'VAL_OF_ITEM_IN_COND_EQ_COND2',
  p_database_action=>'INSERT',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 4995027782172975 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 22,
  p_button_sequence=> 20,
  p_button_plug_id => 4994630890172973+wwv_flow_api.g_id_offset,
  p_button_name    => 'DELETE',
  p_button_image   => 'template:'||to_char(4887330298313787+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Delete',
  p_button_position=> 'REGION_TEMPLATE_DELETE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'javascript:apex.confirm(htmldb_delete_message,''DELETE'');',
  p_button_execute_validations=>'N',
  p_button_condition=> '1',
  p_button_condition2=> '2',
  p_button_condition_type=> 'VAL_OF_ITEM_IN_COND_EQ_COND2',
  p_database_action=>'DELETE',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_branch(
  p_id=>4995816421172977 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 22,
  p_branch_action=> 'f?p=&APP_ID.:21:&SESSION.&success_msg=#SUCCESS_MSG#',
  p_branch_point=> 'AFTER_PROCESSING',
  p_branch_type=> 'REDIRECT_URL',
  p_branch_sequence=> 1,
  p_save_state_before_branch_yn=>'Y',
  p_branch_comment=> '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>4996002030172978 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 22,
  p_name=>'P22_TRA_REQUEST_ID',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 1,
  p_item_plug_id => 4994630890172973+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Tra Request Id',
  p_source=>'TRA_REQUEST_ID',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_POPUP_LOV',
  p_lov=> 'select TR_DESC display_value, TR_ID return_value '||chr(10)||
'from TRAINING_REQUEST'||chr(10)||
'order by 1',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 2000,
  p_cHeight=> 1,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 4894215352313793+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'NOT_ENTERABLE',
  p_attribute_02 => 'FIRST_ROWSET',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>4996229845172983 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 22,
  p_name=>'P22_TRA_SEQUENCE',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 20,
  p_item_plug_id => 4994630890172973+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Tra Sequence',
  p_source=>'TRA_SEQUENCE',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_DISPLAY_ONLY',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 32,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 4894422955313793+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'N',
  p_attribute_02 => 'VALUE',
  p_attribute_04 => 'Y',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>4996424927172984 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 22,
  p_name=>'P22_TRA_APPROVED_DATE',
  p_data_type=> 'VARCHAR',
  p_is_required=> true,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 30,
  p_item_plug_id => 4994630890172973+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Tra Approved Date',
  p_source=>'TRA_APPROVED_DATE',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_DATE_PICKER',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 32,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 4894422955313793+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_attribute_04 => 'button',
  p_attribute_05 => 'N',
  p_attribute_07 => 'NONE',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>4996610709172984 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 22,
  p_name=>'P22_TRA_APPROVED_BY',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 40,
  p_item_plug_id => 4994630890172973+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Tra Approved By',
  p_source=>'TRA_APPROVED_BY',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_TEXT_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 32,
  p_cMaxlength=> 50,
  p_cHeight=> null,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 4894215352313793+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_attribute_01 => 'N',
  p_attribute_02 => 'N',
  p_attribute_03 => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>4996806606172984 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 22,
  p_name=>'P22_TRA_REMARKS',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 50,
  p_item_plug_id => 4994630890172973+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Tra Remarks',
  p_source=>'TRA_REMARKS',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_TEXTAREA',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 60,
  p_cMaxlength=> 500,
  p_cHeight=> 4,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 4894215352313793+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_attribute_01 => 'Y',
  p_attribute_02 => 'N',
  p_attribute_03 => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>5005832261350845 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 22,
  p_name=>'P22_TRA_ACTION',
  p_data_type=> 'VARCHAR',
  p_is_required=> true,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 60,
  p_item_plug_id => 4994630890172973+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Action',
  p_source=>'TRA_ACTION',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_POPUP_LOV',
  p_lov=> 'STATIC2:APPROVED;A,DECLINE;D',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 32,
  p_cMaxlength=> 50,
  p_cHeight=> 1,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 4894215352313793+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'NOT_ENTERABLE',
  p_attribute_02 => 'FIRST_ROWSET',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'F|#OWNER#:TRAINING_REQUEST_APPROVAL:P22_TRA_REQUEST_ID:TRA_REQUEST_ID';

wwv_flow_api.create_page_process(
  p_id     => 4997110057172985 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 22,
  p_process_sequence=> 10,
  p_process_point=> 'AFTER_HEADER',
  p_process_type=> 'DML_FETCH_ROW',
  p_process_name=> 'Fetch Row from TRAINING_REQUEST_APPROVAL',
  p_process_sql_clob => p, 
  p_process_error_message=> 'Unable to fetch row.',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'#OWNER#:TRAINING_REQUEST_APPROVAL:P22_TRA_REQUEST_ID:TRA_REQUEST_ID|IUD';

wwv_flow_api.create_page_process(
  p_id     => 4997319622172985 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 22,
  p_process_sequence=> 30,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'DML_PROCESS_ROW',
  p_process_name=> 'Process Row of TRAINING_REQUEST_APPROVAL',
  p_process_sql_clob => p, 
  p_process_error_message=> 'Unable to process row of table TRAINING_REQUEST_APPROVAL.',
  p_process_success_message=> 'Action Processed.',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'22';

wwv_flow_api.create_page_process(
  p_id     => 4997531038172985 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 22,
  p_process_sequence=> 40,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'CLEAR_CACHE_FOR_PAGES',
  p_process_name=> 'reset page',
  p_process_sql_clob => p, 
  p_process_error_message=> '',
  p_process_when_button_id=>4995027782172975 + wwv_flow_api.g_id_offset,
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 22
--
 
begin
 
null;
end;
null;
 
end;
/

 
--application/pages/page_00101
prompt  ...PAGE 101: Login
--
 
begin
 
wwv_flow_api.create_page (
  p_flow_id => wwv_flow.g_flow_id
 ,p_id => 101
 ,p_name => 'Login'
 ,p_alias => 'LOGIN'
 ,p_step_title => 'Login'
 ,p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS'
 ,p_first_item => 'AUTO_FIRST_ITEM'
 ,p_include_apex_css_js_yn => 'Y'
 ,p_autocomplete_on_off => 'OFF'
 ,p_step_template => 4885819916313784 + wwv_flow_api.g_id_offset
 ,p_page_is_public_y_n => 'N'
 ,p_cache_page_yn => 'N'
 ,p_last_updated_by => 'ADMIN'
 ,p_last_upd_yyyymmddhh24miss => '20220512205336'
  );
null;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 4896120812313795 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 101,
  p_plug_name=> 'Login-(Admin/HR Manager use ADMIN)',
  p_region_name=>'',
  p_plug_template=> 4889029118313788+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 10,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'AFTER_SHOW_ITEMS',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'&LOGIN_MESSAGE.';

wwv_flow_api.create_page_plug (
  p_id=> 5059018512564587 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 101,
  p_plug_name=> 'Login Message',
  p_region_name=>'',
  p_plug_template=> 0,
  p_plug_display_sequence=> 20,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'AFTER_SHOW_ITEMS',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT_ESCAPE_SC',
  p_translate_title=> 'Y',
  p_plug_display_error_message=> '#SQLERRM#',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows => 15,
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => 'ITEM_IS_NOT_NULL',
  p_plug_display_when_condition => 'LOGIN_MESSAGE',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
 
begin
 
null;
 
end;
/

 
begin
 
null;
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>4896208487313795 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 101,
  p_name=>'P101_USERNAME',
  p_data_type=> '',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 10,
  p_item_plug_id => 4896120812313795+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Staff ID',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_TEXT_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 40,
  p_cMaxlength=> 100,
  p_cHeight=> 1,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 2,
  p_rowspan=> 1,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 4894215352313793+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'N',
  p_attribute_02 => 'N',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>4896309849313795 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 101,
  p_name=>'P101_PASSWORD',
  p_data_type=> '',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 20,
  p_item_plug_id => 4896120812313795+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Password',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_PASSWORD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 40,
  p_cMaxlength=> 100,
  p_cHeight=> 1,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 4894215352313793+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'Y',
  p_attribute_02 => 'Y',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>4896430363313795 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 101,
  p_name=>'P101_LOGIN',
  p_data_type=> '',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 30,
  p_item_plug_id => 4896120812313795+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> '',
  p_item_default=> 'LOGIN1',
  p_prompt=>'Login',
  p_source=>'LOGIN1',
  p_source_type=> 'STATIC',
  p_display_as=> 'BUTTON',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> null,
  p_cMaxlength=> null,
  p_cHeight=> null,
  p_tag_attributes  => 'template:'||to_char(4887330298313787 + wwv_flow_api.g_id_offset),
  p_begin_on_new_line=> 'NO',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_label_alignment=> 'LEFT',
  p_field_alignment=> 'LEFT',
  p_is_persistent=> 'Y',
  p_button_execute_validations=>'Y',
  p_item_comment => '');
 
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'begin'||chr(10)||
'owa_util.mime_header(''text/html'', FALSE);'||chr(10)||
'owa_cookie.send('||chr(10)||
'    name=>''LOGIN_USERNAME_COOKIE'','||chr(10)||
'    value=>lower(:P101_USERNAME));'||chr(10)||
'exception when others then null;'||chr(10)||
'end;';

wwv_flow_api.create_page_process(
  p_id     => 4896606573313795 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 101,
  p_process_sequence=> 10,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'PLSQL',
  p_process_name=> 'Set Username Cookie',
  p_process_sql_clob => p, 
  p_process_error_message=> '',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'Pkg_Security.Process_Login(:P101_USERNAME,'||chr(10)||
'                           :P101_PASSWORD,'||chr(10)||
'                           :APP_ID);';

wwv_flow_api.create_page_process(
  p_id     => 4896519980313795 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 101,
  p_process_sequence=> 20,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'PLSQL',
  p_process_name=> 'Login',
  p_process_sql_clob => p, 
  p_process_error_message=> '',
  p_process_when=>':P101_USERNAME',
  p_process_when_type=>'',
  p_process_when2=>'ADMIN',
  p_process_when_type2=>'',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'101';

wwv_flow_api.create_page_process(
  p_id     => 4896818303313795 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 101,
  p_process_sequence=> 30,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'CLEAR_CACHE_FOR_PAGES',
  p_process_name=> 'Clear Page(s) Cache',
  p_process_sql_clob => p, 
  p_process_error_message=> '',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'declare'||chr(10)||
'    v varchar2(255) := null;'||chr(10)||
'    c owa_cookie.cookie;'||chr(10)||
'begin'||chr(10)||
'   c := owa_cookie.get(''LOGIN_USERNAME_COOKIE'');'||chr(10)||
'   :P101_USERNAME := c.vals(1);'||chr(10)||
'exception when others then null;'||chr(10)||
'end;';

wwv_flow_api.create_page_process(
  p_id     => 4896720141313795 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 101,
  p_process_sequence=> 10,
  p_process_point=> 'BEFORE_HEADER',
  p_process_type=> 'PLSQL',
  p_process_name=> 'Get Username Cookie',
  p_process_sql_clob => p, 
  p_process_error_message=> '',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 101
--
 
begin
 
null;
end;
null;
 
end;
/

prompt  ...lists
--
--application/shared_components/navigation/breadcrumbs
prompt  ...breadcrumbs
--
 
begin
 
wwv_flow_api.create_menu (
  p_id=> 4896921431313795 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> ' Breadcrumb');
 
wwv_flow_api.create_menu_option (
  p_id=>4897402790313796 + wwv_flow_api.g_id_offset,
  p_menu_id=>4896921431313795 + wwv_flow_api.g_id_offset,
  p_parent_id=>0,
  p_option_sequence=>10,
  p_short_name=>'Staff Training',
  p_long_name=>'',
  p_link=>'f?p=101:1:&SESSION.',
  p_page_id=>1,
  p_also_current_for_pages=> '');
 
null;
 
end;
/

prompt  ...page templates for application: 101
--
--application/shared_components/user_interface/templates/page/login
prompt  ......Page template 4885819916313784
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">'||chr(10)||
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">'||chr(10)||
'<head>'||chr(10)||
'  <title>#TITLE#</title>'||chr(10)||
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||chr(10)||
'  <link rel="shortcut icon" href="#IMAG';

c1:=c1||'E_PREFIX#favicon.ico" type="image/x-icon">'||chr(10)||
'  #HEAD#'||chr(10)||
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0.css" type="text/css" />'||chr(10)||
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie.css" type="text/css" /><![endif]-->'||chr(10)||
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie6.css" type="text/css" /><![endi';

c1:=c1||'f]-->'||chr(10)||
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>'||chr(10)||
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->'||chr(10)||
'#FORM_OPEN#'||chr(10)||
'';

c2:=c2||'#FORM_CLOSE#'||chr(10)||
'</body>'||chr(10)||
'</html>';

c3:=c3||'<div id="login">'||chr(10)||
'  <div id="messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>'||chr(10)||
'  <div id="login-main">#REGION_POSITION_02##BOX_BODY##REGION_POSITION_03#</div>'||chr(10)||
'</div>'||chr(10)||
'';

wwv_flow_api.create_template(
  p_id=> 4885819916313784 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'Login',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<div class="success" id="success-message">'||chr(10)||
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''success-message'')" style="float:right;" class="remove-message" alt="" />'||chr(10)||
'  #SUCCESS_MESSAGE#'||chr(10)||
'</div>',
  p_current_tab=> '',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<div class="notification" id="notification-message">'||chr(10)||
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''notification-message'')"  style="float:right;" class="remove-message" alt="" />#MESSAGE#'||chr(10)||
'</div>',
  p_navigation_bar=> '#BAR_BODY#',
  p_navbar_entry=> '<div class="navbar-entry"><a href="#LINK#" class="t1NavigationBar">#TEXT#</a></div>',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> ' summary="" cellpadding="0" border="0" cellspacing="0"',
  p_theme_id  => 21,
  p_theme_class_id => 6,
  p_translate_this_template => 'N',
  p_template_comment => '18');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/no_tabs_left_sidebar_fixed_width_div_based
prompt  ......Page template 4885921631313785
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">'||chr(10)||
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">'||chr(10)||
'<head>'||chr(10)||
'  <title>#TITLE#</title>'||chr(10)||
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||chr(10)||
'  <link rel="shortcut icon" href="#IMAG';

c1:=c1||'E_PREFIX#favicon.ico" type="image/x-icon">'||chr(10)||
'  #HEAD#'||chr(10)||
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0.css" type="text/css" />'||chr(10)||
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie.css" type="text/css" /><![endif]-->'||chr(10)||
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie6.css" type="text/css" /><![endi';

c1:=c1||'f]-->'||chr(10)||
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>'||chr(10)||
'#FORM_OPEN#'||chr(10)||
'';

c2:=c2||'<div id="footer"><div class="content">'||chr(10)||
'<div id="customize">#CUSTOMIZE#</div>'||chr(10)||
'<div class="app-version">#APP_VERSION#</div>'||chr(10)||
'<div class="clear"></div>'||chr(10)||
'  #REGION_POSITION_05#'||chr(10)||
'</div></div>'||chr(10)||
'#FORM_CLOSE#'||chr(10)||
'</body>'||chr(10)||
'</html>';

c3:=c3||'<div id="header">'||chr(10)||
'  <div id="logo"><a href="#HOME_LINK#">#LOGO##REGION_POSITION_06#</a></div>'||chr(10)||
'  #REGION_POSITION_07#'||chr(10)||
'  <div id="navbar">'||chr(10)||
'    #NAVIGATION_BAR#'||chr(10)||
'    <div class="app-user">#WELCOME_USER#</div>'||chr(10)||
'    #REGION_POSITION_08#'||chr(10)||
'  </div>'||chr(10)||
'</div>'||chr(10)||
'<div id="tabs">'||chr(10)||
'  <div class="frame">'||chr(10)||
'    <div class="bg">'||chr(10)||
'      <div class="tab-holder">'||chr(10)||
'        &nbsp;'||chr(10)||
'      </div>'||chr(10)||
'    </div>'||chr(10)||
'  </div>'||chr(10)||
'</div>'||chr(10)||
'<div id="';

c3:=c3||'topbar">#REGION_POSITION_01##REGION_POSITION_04#</div>'||chr(10)||
'<div id="messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>'||chr(10)||
'<div id="body">'||chr(10)||
'  <div id="two-col-sb-left">'||chr(10)||
'    <div id="left-sidebar">#REGION_POSITION_02#</div>'||chr(10)||
'    <div id="main-sb-left">'||chr(10)||
'      #BOX_BODY##REGION_POSITION_03#'||chr(10)||
'    </div>'||chr(10)||
'  </div>'||chr(10)||
'</div>';

wwv_flow_api.create_template(
  p_id=> 4885921631313785 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'No Tabs - Left Sidebar (fixed-width / DIV based)',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<div class="success" id="success-message">'||chr(10)||
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''success-message'')" style="float:right;" class="remove-message" alt="" />'||chr(10)||
'  #SUCCESS_MESSAGE#'||chr(10)||
'</div>',
  p_current_tab=> '',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<div class="notification" id="notification-message">'||chr(10)||
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''notification-message'')"  style="float:right;" class="remove-message" alt="" />#MESSAGE#'||chr(10)||
'</div>',
  p_navigation_bar=> '#BAR_BODY#',
  p_navbar_entry=> '<div class="navbar-entry"><a href="#LINK#" class="t1NavigationBar">#TEXT#</a></div>',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> 'summary="" cellpadding="0" border="0" cellspacing="0" width="100%"',
  p_sidebar_def_reg_pos => 'REGION_POSITION_02',
  p_breadcrumb_def_reg_pos => 'REGION_POSITION_01',
  p_theme_id  => 21,
  p_theme_class_id => 17,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/no_tabs_left_and_right_sidebar_fixed_width_div_left_and_optional_table_based_right
prompt  ......Page template 4886014266313785
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">'||chr(10)||
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">'||chr(10)||
'<head>'||chr(10)||
'  <title>#TITLE#</title>'||chr(10)||
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||chr(10)||
'  <link rel="shortcut icon" href="#IMAG';

c1:=c1||'E_PREFIX#favicon.ico" type="image/x-icon">'||chr(10)||
'  #HEAD#'||chr(10)||
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0.css" type="text/css" />'||chr(10)||
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie.css" type="text/css" /><![endif]-->'||chr(10)||
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie6.css" type="text/css" /><![endi';

c1:=c1||'f]-->'||chr(10)||
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>'||chr(10)||
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->'||chr(10)||
'#FORM_OPEN#'||chr(10)||
'';

c2:=c2||'<div id="footer"><div class="content">'||chr(10)||
'<div id="customize">#CUSTOMIZE#</div>'||chr(10)||
'<div class="app-version">#APP_VERSION#</div>'||chr(10)||
'<div class="clear"></div>'||chr(10)||
'  #REGION_POSITION_05#'||chr(10)||
'</div></div>'||chr(10)||
'#FORM_CLOSE#'||chr(10)||
'</body>'||chr(10)||
'</html>';

c3:=c3||'<div id="header">'||chr(10)||
'  <div id="logo"><a href="#HOME_LINK#">#LOGO##REGION_POSITION_06#</a></div>'||chr(10)||
'  #REGION_POSITION_07#'||chr(10)||
'  <div id="navbar">'||chr(10)||
'    <div class="app-user">#WELCOME_USER#</div>'||chr(10)||
'    #NAVIGATION_BAR#'||chr(10)||
'    #REGION_POSITION_08#'||chr(10)||
'  </div>'||chr(10)||
'</div>'||chr(10)||
'<div id="tabs">'||chr(10)||
'  <div class="frame">'||chr(10)||
'    <div class="bg">'||chr(10)||
'      <div class="tab-holder">'||chr(10)||
'        &nbsp;'||chr(10)||
'      </div>'||chr(10)||
'    </div>'||chr(10)||
'  </div>'||chr(10)||
'</div>'||chr(10)||
'<div id="';

c3:=c3||'topbar">#REGION_POSITION_01##REGION_POSITION_04#</div>'||chr(10)||
'<div id="messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>'||chr(10)||
'<div id="body">'||chr(10)||
'  <div id="three-col">'||chr(10)||
'    <div id="left-sidebar">#REGION_POSITION_02#</div>'||chr(10)||
'    <div id="two-col-tbl">'||chr(10)||
'      <table class="tbl-body" cellspacing="0" cellpadding="0" border="0" summary="">'||chr(10)||
'        <tbody>'||chr(10)||
'          <tr>'||chr(10)||
'            <td class="';

c3:=c3||'tbl-main" width="100%">#BOX_BODY#</td>'||chr(10)||
'            <td class="tbl-sidebar">#REGION_POSITION_03#</td>     '||chr(10)||
'          </tr>'||chr(10)||
'        </tbody>'||chr(10)||
'      </table>'||chr(10)||
'    </div>'||chr(10)||
'  </div>'||chr(10)||
'</div>';

wwv_flow_api.create_template(
  p_id=> 4886014266313785 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'No Tabs - Left and Right Sidebar (fixed-width / DIV left and optional table-based right)',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<div class="success" id="success-message">'||chr(10)||
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''success-message'')" style="float:right;" class="remove-message" alt="" />'||chr(10)||
'  #SUCCESS_MESSAGE#'||chr(10)||
'</div>',
  p_current_tab=> '',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<div class="notification" id="notification-message">'||chr(10)||
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''notification-message'')"  style="float:right;" class="remove-message" alt="" />#MESSAGE#'||chr(10)||
'</div>',
  p_navigation_bar=> '#BAR_BODY#',
  p_navbar_entry=> '<div class="navbar-entry"><a href="#LINK#" class="t1NavigationBar">#TEXT#</a></div>',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> 'summary="" cellpadding="0" border="0" cellspacing="0" width="100%"',
  p_sidebar_def_reg_pos => 'REGION_POSITION_02',
  p_breadcrumb_def_reg_pos => 'REGION_POSITION_01',
  p_theme_id  => 21,
  p_theme_class_id => 17,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/no_tabs_right_sidebar_fixed_width_div_based
prompt  ......Page template 4886122404313785
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">'||chr(10)||
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">'||chr(10)||
'<head>'||chr(10)||
'  <title>#TITLE#</title>'||chr(10)||
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||chr(10)||
'  <link rel="shortcut icon" href="#IMAG';

c1:=c1||'E_PREFIX#favicon.ico" type="image/x-icon">'||chr(10)||
'  #HEAD#'||chr(10)||
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0.css" type="text/css" />'||chr(10)||
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie.css" type="text/css" /><![endif]-->'||chr(10)||
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie6.css" type="text/css" /><![endi';

c1:=c1||'f]-->'||chr(10)||
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>'||chr(10)||
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->'||chr(10)||
'#FORM_OPEN#'||chr(10)||
'';

c2:=c2||'<div id="footer"><div class="content">'||chr(10)||
'<div id="customize">#CUSTOMIZE#</div>'||chr(10)||
'<div class="app-version">#APP_VERSION#</div>'||chr(10)||
'<div class="clear"></div>'||chr(10)||
'  #REGION_POSITION_05#'||chr(10)||
'</div></div>'||chr(10)||
'#FORM_CLOSE#'||chr(10)||
'</body>'||chr(10)||
'</html>';

c3:=c3||'<div id="header">'||chr(10)||
'  <div id="logo"><a href="#HOME_LINK#">#LOGO##REGION_POSITION_06#</a></div>'||chr(10)||
'  #REGION_POSITION_07#'||chr(10)||
'  <div id="navbar">'||chr(10)||
'    <div class="app-user">#WELCOME_USER#</div>'||chr(10)||
'    #NAVIGATION_BAR#'||chr(10)||
'    #REGION_POSITION_08#'||chr(10)||
'  </div>'||chr(10)||
'</div>'||chr(10)||
'<div id="tabs">'||chr(10)||
'  <div class="frame">'||chr(10)||
'    <div class="bg">'||chr(10)||
'      <div class="tab-holder">'||chr(10)||
'        &nbsp;'||chr(10)||
'      </div>'||chr(10)||
'    </div>'||chr(10)||
'  </div>'||chr(10)||
'</div>'||chr(10)||
'<div id="';

c3:=c3||'topbar">#REGION_POSITION_01##REGION_POSITION_04#</div>'||chr(10)||
'<div id="messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>'||chr(10)||
'<div id="body">'||chr(10)||
'  <div id="two-col">'||chr(10)||
'    <div id="sidebar">#REGION_POSITION_03#</div>     '||chr(10)||
'    <div id="main">#REGION_POSITION_02##BOX_BODY#</div>'||chr(10)||
'  </div>'||chr(10)||
'</div>'||chr(10)||
'';

wwv_flow_api.create_template(
  p_id=> 4886122404313785 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'No Tabs - Right Sidebar (fixed-width / DIV based)',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<div class="success" id="success-message">'||chr(10)||
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''success-message'')" style="float:right;" class="remove-message" alt="" />'||chr(10)||
'  #SUCCESS_MESSAGE#'||chr(10)||
'</div>',
  p_current_tab=> '',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<div class="notification" id="notification-message">'||chr(10)||
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''notification-message'')"  style="float:right;" class="remove-message" alt="" />#MESSAGE#'||chr(10)||
'</div>',
  p_navigation_bar=> '#BAR_BODY#',
  p_navbar_entry=> '<div class="navbar-entry"><a href="#LINK#" class="t1NavigationBar">#TEXT#</a></div>',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> ' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"',
  p_sidebar_def_reg_pos => 'REGION_POSITION_02',
  p_breadcrumb_def_reg_pos => 'REGION_POSITION_01',
  p_theme_id  => 21,
  p_theme_class_id => 3,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/no_tabs_right_sidebar_optional_table_based
prompt  ......Page template 4886224423313785
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">'||chr(10)||
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">'||chr(10)||
'<head>'||chr(10)||
'  <title>#TITLE#</title>'||chr(10)||
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||chr(10)||
'  <link rel="shortcut icon" href="#IMAG';

c1:=c1||'E_PREFIX#favicon.ico" type="image/x-icon">'||chr(10)||
'  #HEAD#'||chr(10)||
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0.css" type="text/css" />'||chr(10)||
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie.css" type="text/css" /><![endif]-->'||chr(10)||
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie6.css" type="text/css" /><![endi';

c1:=c1||'f]-->'||chr(10)||
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>'||chr(10)||
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->'||chr(10)||
'#FORM_OPEN#'||chr(10)||
'';

c2:=c2||'<div id="footer"><div class="content">'||chr(10)||
'<div id="customize">#CUSTOMIZE#</div>'||chr(10)||
'<div class="app-version">#APP_VERSION#</div>'||chr(10)||
'<div class="clear"></div>'||chr(10)||
'  #REGION_POSITION_05#'||chr(10)||
'</div></div>'||chr(10)||
'#FORM_CLOSE#'||chr(10)||
'</body>'||chr(10)||
'</html>';

c3:=c3||'<div id="header">'||chr(10)||
'  <div id="logo"><a href="#HOME_LINK#">#LOGO##REGION_POSITION_06#</a></div>'||chr(10)||
'  #REGION_POSITION_07#'||chr(10)||
'  <div id="navbar">'||chr(10)||
'    <div class="app-user">#WELCOME_USER#</div>'||chr(10)||
'    #NAVIGATION_BAR#'||chr(10)||
'    #REGION_POSITION_08#'||chr(10)||
'  </div>'||chr(10)||
'</div>'||chr(10)||
'<div id="tabs">'||chr(10)||
'  <div class="frame">'||chr(10)||
'    <div class="bg">'||chr(10)||
'      <div class="tab-holder">'||chr(10)||
'      </div>'||chr(10)||
'    </div>'||chr(10)||
'  </div>'||chr(10)||
'</div>'||chr(10)||
'<div id="topbar">#REGION';

c3:=c3||'_POSITION_01##REGION_POSITION_04#</div>'||chr(10)||
'<div id="messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>'||chr(10)||
'<div id="body">'||chr(10)||
'  <table class="tbl-body" cellspacing="0" cellpadding="0" border="0" summary="">'||chr(10)||
'    <tbody>'||chr(10)||
'      <tr>'||chr(10)||
'        <td class="tbl-main" width="100%">#REGION_POSITION_02##BOX_BODY#</td>'||chr(10)||
'        <td class="tbl-sidebar">#REGION_POSITION_03#</td>     '||chr(10)||
'      </tr>'||chr(10)||
' ';

c3:=c3||'   </tbody>'||chr(10)||
'  </table>'||chr(10)||
'</div>';

wwv_flow_api.create_template(
  p_id=> 4886224423313785 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'No Tabs - Right Sidebar (optional / table-based)',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<div class="success" id="success-message">'||chr(10)||
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''success-message'')" style="float:right;" class="remove-message" alt="" />'||chr(10)||
'  #SUCCESS_MESSAGE#'||chr(10)||
'</div>',
  p_current_tab=> '',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<div class="notification" id="notification-message">'||chr(10)||
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''notification-message'')"  style="float:right;" class="remove-message" alt="" />#MESSAGE#'||chr(10)||
'</div>',
  p_navigation_bar=> '#BAR_BODY#',
  p_navbar_entry=> '<div class="navbar-entry"><a href="#LINK#" class="t1NavigationBar">#TEXT#</a></div>',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> ' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"',
  p_sidebar_def_reg_pos => 'REGION_POSITION_02',
  p_breadcrumb_def_reg_pos => 'REGION_POSITION_01',
  p_theme_id  => 21,
  p_theme_class_id => 3,
  p_error_page_template => '<div class="error_container">'||chr(10)||
'	<div class="rounded-corner-region-blank-alt">'||chr(10)||
'		<div class="rc-gray-top">'||chr(10)||
'			<div class="rc-gray-top-r"></div>'||chr(10)||
'		</div>'||chr(10)||
'		<div class="rc-body">'||chr(10)||
'			<div class="rc-body-r">'||chr(10)||
'				<div class="rc-content-main">'||chr(10)||
'					<div class="sErrorText">'||chr(10)||
'					<strong>#INTERNAL_MESSAGE#</strong>'||chr(10)||
'					<strong>#MESSAGE#</strong>'||chr(10)||
'					<p>'||chr(10)||
'						<button onclick="#BACK_LINK#" class="button-default" type="button">'||chr(10)||
'						  <span>#OK#</span>'||chr(10)||
'						</button>'||chr(10)||
'					</p>'||chr(10)||
'					</div>'||chr(10)||
'					<div class="clear"></div>'||chr(10)||
'				</div>'||chr(10)||
'				<div class="clear"></div>'||chr(10)||
'			</div>'||chr(10)||
'		</div>'||chr(10)||
'		<div class="rc-bottom">'||chr(10)||
'			<div class="rc-bottom-r"></div>'||chr(10)||
'		</div>'||chr(10)||
'	</div>'||chr(10)||
'</div>',
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/one_level_tabs_left_sidebar_fixed_width_div_based
prompt  ......Page template 4886300384313785
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">'||chr(10)||
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">'||chr(10)||
'<head>'||chr(10)||
'  <title>#TITLE#</title>'||chr(10)||
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||chr(10)||
'  <link rel="shortcut icon" href="#IMAG';

c1:=c1||'E_PREFIX#favicon.ico" type="image/x-icon">'||chr(10)||
'  #HEAD#'||chr(10)||
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0.css" type="text/css" />'||chr(10)||
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie.css" type="text/css" /><![endif]-->'||chr(10)||
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie6.css" type="text/css" /><![endi';

c1:=c1||'f]-->'||chr(10)||
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>'||chr(10)||
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->'||chr(10)||
'#FORM_OPEN#'||chr(10)||
'';

c2:=c2||'<div id="footer"><div class="content">'||chr(10)||
'<div id="customize">#CUSTOMIZE#</div>'||chr(10)||
'<div class="app-version">#APP_VERSION#</div>'||chr(10)||
'<div class="clear"></div>'||chr(10)||
'  #REGION_POSITION_05#'||chr(10)||
'</div></div>'||chr(10)||
'#FORM_CLOSE#'||chr(10)||
'</body>'||chr(10)||
'</html>';

c3:=c3||'<div id="header">'||chr(10)||
'  <div id="logo"><a href="#HOME_LINK#">#LOGO##REGION_POSITION_06#</a></div>'||chr(10)||
'  #REGION_POSITION_07#'||chr(10)||
'  <div id="navbar">'||chr(10)||
'    <div class="app-user">#WELCOME_USER#</div>'||chr(10)||
'    #NAVIGATION_BAR#'||chr(10)||
'    #REGION_POSITION_08#'||chr(10)||
'  </div>'||chr(10)||
'</div>'||chr(10)||
'<ul id="tabs">'||chr(10)||
'#TAB_CELLS#'||chr(10)||
'<li class="last"><span></span></li>'||chr(10)||
'</ul>'||chr(10)||
'<div id="topbar">#REGION_POSITION_01##REGION_POSITION_04#</div>'||chr(10)||
'<div id="messages">#S';

c3:=c3||'UCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>'||chr(10)||
'<div id="body">'||chr(10)||
'  <div id="two-col-sb-left">'||chr(10)||
'    <div id="left-sidebar">#REGION_POSITION_02#</div>'||chr(10)||
'    <div id="main-sb-left">'||chr(10)||
'      #BOX_BODY##REGION_POSITION_03#'||chr(10)||
'    </div>'||chr(10)||
'  </div>'||chr(10)||
'</div>';

wwv_flow_api.create_template(
  p_id=> 4886300384313785 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'One Level Tabs - Left Sidebar (fixed-width / DIV based)',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<div class="success" id="success-message">'||chr(10)||
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''success-message'')" style="float:right;" class="remove-message" alt="" />'||chr(10)||
'  #SUCCESS_MESSAGE#'||chr(10)||
'</div>',
  p_current_tab=> '<li class="#TAB_STATUS#">'||chr(10)||
'<a class="tab_link" href="#TAB_LINK#"><span></span>#TAB_LABEL#</a>#TAB_INLINE_EDIT#'||chr(10)||
'</li>',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '<li class="#TAB_STATUS#">'||chr(10)||
'<a class="tab_link" href="#TAB_LINK#"><span></span>#TAB_LABEL#</a>#TAB_INLINE_EDIT#'||chr(10)||
'</li>',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<div class="notification" id="notification-message">'||chr(10)||
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''notification-message'')"  style="float:right;" class="remove-message" alt="" />#MESSAGE#'||chr(10)||
'</div>',
  p_navigation_bar=> '#BAR_BODY#',
  p_navbar_entry=> '<div class="navbar-entry"><a href="#LINK#" class="t1NavigationBar">#TEXT#</a></div>',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> ' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"',
  p_sidebar_def_reg_pos => 'REGION_POSITION_02',
  p_breadcrumb_def_reg_pos => 'REGION_POSITION_01',
  p_theme_id  => 21,
  p_theme_class_id => 16,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/one_level_tabs_left_and_right_sidebar_fixed_width_div_left_and_optional_table_based_right
prompt  ......Page template 4886404357313785
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">'||chr(10)||
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">'||chr(10)||
'<head>'||chr(10)||
'  <title>#TITLE#</title>'||chr(10)||
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||chr(10)||
'  <link rel="shortcut icon" href="#IMAG';

c1:=c1||'E_PREFIX#favicon.ico" type="image/x-icon">'||chr(10)||
'  #HEAD#'||chr(10)||
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0.css" type="text/css" />'||chr(10)||
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie.css" type="text/css" /><![endif]-->'||chr(10)||
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie6.css" type="text/css" /><![endi';

c1:=c1||'f]-->'||chr(10)||
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>'||chr(10)||
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->'||chr(10)||
'#FORM_OPEN#'||chr(10)||
'';

c2:=c2||'<div id="footer"><div class="content">'||chr(10)||
'<div id="customize">#CUSTOMIZE#</div>'||chr(10)||
'<div class="app-version">#APP_VERSION#</div>'||chr(10)||
'<div class="clear"></div>'||chr(10)||
'  #REGION_POSITION_05#'||chr(10)||
'</div></div>'||chr(10)||
'#FORM_CLOSE#'||chr(10)||
'</body>'||chr(10)||
'</html>';

c3:=c3||'<div id="header">'||chr(10)||
'  <div id="logo"><a href="#HOME_LINK#">#LOGO##REGION_POSITION_06#</a></div>'||chr(10)||
'  #REGION_POSITION_07#'||chr(10)||
'  <div id="navbar">'||chr(10)||
'    <div class="app-user">#WELCOME_USER#</div>'||chr(10)||
'    #NAVIGATION_BAR#'||chr(10)||
'    #REGION_POSITION_08#'||chr(10)||
'  </div>'||chr(10)||
'</div>'||chr(10)||
'<ul id="tabs">'||chr(10)||
'#TAB_CELLS#'||chr(10)||
'<li class="last"><span></span></li>'||chr(10)||
'</ul>'||chr(10)||
'<div id="topbar">#REGION_POSITION_01##REGION_POSITION_04#</div>'||chr(10)||
'<div id="messages">#S';

c3:=c3||'UCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>'||chr(10)||
'<div id="body">'||chr(10)||
'  <div id="three-col">'||chr(10)||
'    <div id="left-sidebar">#REGION_POSITION_02#</div>'||chr(10)||
'    <div id="two-col-tbl">'||chr(10)||
'      <table class="tbl-body" cellspacing="0" cellpadding="0" border="0" summary="">'||chr(10)||
'        <tbody>'||chr(10)||
'          <tr>'||chr(10)||
'            <td class="tbl-main" width="100%">#BOX_BODY#</td>'||chr(10)||
'            <td class="tbl-sidebar">#';

c3:=c3||'REGION_POSITION_03#</td>     '||chr(10)||
'          </tr>'||chr(10)||
'        </tbody>'||chr(10)||
'      </table>'||chr(10)||
'    </div>'||chr(10)||
'  </div>'||chr(10)||
'</div>';

wwv_flow_api.create_template(
  p_id=> 4886404357313785 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'One Level Tabs - Left and Right Sidebar (fixed-width / DIV left and optional table-based right)',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<div class="success" id="success-message">'||chr(10)||
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''success-message'')" style="float:right;" class="remove-message" alt="" />'||chr(10)||
'  #SUCCESS_MESSAGE#'||chr(10)||
'</div>',
  p_current_tab=> '<li class="#TAB_STATUS#">'||chr(10)||
'<a class="tab_link" href="#TAB_LINK#"><span></span>#TAB_LABEL#</a>#TAB_INLINE_EDIT#'||chr(10)||
'</li>',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '<li class="#TAB_STATUS#">'||chr(10)||
'<a class="tab_link" href="#TAB_LINK#"><span></span>#TAB_LABEL#</a>#TAB_INLINE_EDIT#'||chr(10)||
'</li>',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<div class="notification" id="notification-message">'||chr(10)||
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''notification-message'')"  style="float:right;" class="remove-message" alt="" />#MESSAGE#'||chr(10)||
'</div>',
  p_navigation_bar=> '#BAR_BODY#',
  p_navbar_entry=> '<div class="navbar-entry"><a href="#LINK#" class="t1NavigationBar">#TEXT#</a></div>',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> ' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"',
  p_sidebar_def_reg_pos => 'REGION_POSITION_02',
  p_breadcrumb_def_reg_pos => 'REGION_POSITION_01',
  p_theme_id  => 21,
  p_theme_class_id => 16,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/one_level_tabs_right_sidebar_fixed_width_div_based
prompt  ......Page template 4886509583313786
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">'||chr(10)||
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">'||chr(10)||
'<head>'||chr(10)||
'  <title>#TITLE#</title>'||chr(10)||
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||chr(10)||
'  <link rel="shortcut icon" href="#IMAG';

c1:=c1||'E_PREFIX#favicon.ico" type="image/x-icon">'||chr(10)||
'  #HEAD#'||chr(10)||
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0.css" type="text/css" />'||chr(10)||
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie.css" type="text/css" /><![endif]-->'||chr(10)||
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie6.css" type="text/css" /><![endi';

c1:=c1||'f]-->'||chr(10)||
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>'||chr(10)||
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->'||chr(10)||
'#FORM_OPEN#'||chr(10)||
'';

c2:=c2||'<div id="footer"><div class="content">'||chr(10)||
'<div id="customize">#CUSTOMIZE#</div>'||chr(10)||
'<div class="app-version">#APP_VERSION#</div>'||chr(10)||
'<div class="clear"></div>'||chr(10)||
'  #REGION_POSITION_05#'||chr(10)||
'</div></div>'||chr(10)||
'#FORM_CLOSE#'||chr(10)||
'</body>'||chr(10)||
'</html>';

c3:=c3||'<div id="header">'||chr(10)||
'  <div id="logo"><a href="#HOME_LINK#">#LOGO##REGION_POSITION_06#</a></div>'||chr(10)||
'  #REGION_POSITION_07#'||chr(10)||
'  <div id="navbar">'||chr(10)||
'    <div class="app-user">#WELCOME_USER#</div>'||chr(10)||
'    #NAVIGATION_BAR#'||chr(10)||
'    #REGION_POSITION_08#'||chr(10)||
'  </div>'||chr(10)||
'</div>'||chr(10)||
'<ul id="tabs">'||chr(10)||
'#TAB_CELLS#'||chr(10)||
'<li class="last"><span></span></li>'||chr(10)||
'</ul>'||chr(10)||
'<div id="topbar">#REGION_POSITION_01##REGION_POSITION_04#</div>'||chr(10)||
'<div id="messages">#S';

c3:=c3||'UCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>'||chr(10)||
'<div id="body">'||chr(10)||
'  <div id="two-col">'||chr(10)||
'    <div id="sidebar">#REGION_POSITION_03#</div>     '||chr(10)||
'    <div id="main">#REGION_POSITION_02##BOX_BODY#</div>'||chr(10)||
'  </div>'||chr(10)||
'</div>'||chr(10)||
'';

wwv_flow_api.create_template(
  p_id=> 4886509583313786 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'One Level Tabs - Right Sidebar (fixed-width / DIV based)',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<div class="success" id="success-message">'||chr(10)||
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''success-message'')" style="float:right;" class="remove-message" alt="" />'||chr(10)||
'  #SUCCESS_MESSAGE#'||chr(10)||
'</div>',
  p_current_tab=> '<li class="#TAB_STATUS#">'||chr(10)||
'<a class="tab_link" href="#TAB_LINK#"><span></span>#TAB_LABEL#</a>#TAB_INLINE_EDIT#'||chr(10)||
'</li>',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '<li class="#TAB_STATUS#">'||chr(10)||
'<a class="tab_link" href="#TAB_LINK#"><span></span>#TAB_LABEL#</a>#TAB_INLINE_EDIT#'||chr(10)||
'</li>',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<div class="notification" id="notification-message">'||chr(10)||
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''notification-message'')"  style="float:right;" class="remove-message" alt="" />#MESSAGE#'||chr(10)||
'</div>',
  p_navigation_bar=> '#BAR_BODY#',
  p_navbar_entry=> '<div class="navbar-entry"><a href="#LINK#" class="t1NavigationBar">#TEXT#</a></div>',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> '',
  p_breadcrumb_def_reg_pos => 'REGION_POSITION_01',
  p_theme_id  => 21,
  p_theme_class_id => 8,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/one_level_tabs_right_sidebar_optional_table_based
prompt  ......Page template 4886631484313786
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">'||chr(10)||
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">'||chr(10)||
'<head>'||chr(10)||
'  <title>#TITLE#</title>'||chr(10)||
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||chr(10)||
'  <link rel="shortcut icon" href="#IMAG';

c1:=c1||'E_PREFIX#favicon.ico" type="image/x-icon">'||chr(10)||
'  #HEAD#'||chr(10)||
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0.css" type="text/css" />'||chr(10)||
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie.css" type="text/css" /><![endif]-->'||chr(10)||
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie6.css" type="text/css" /><![endi';

c1:=c1||'f]-->'||chr(10)||
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>'||chr(10)||
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->'||chr(10)||
'#FORM_OPEN#'||chr(10)||
'';

c2:=c2||'<div id="footer"><div class="content">'||chr(10)||
'<div id="customize">#CUSTOMIZE#</div>'||chr(10)||
'<div class="app-version">#APP_VERSION#</div>'||chr(10)||
'<div class="clear"></div>'||chr(10)||
'  #REGION_POSITION_05#'||chr(10)||
'</div></div>'||chr(10)||
'#FORM_CLOSE#'||chr(10)||
'</body>'||chr(10)||
'</html>';

c3:=c3||'<div id="header">'||chr(10)||
'  <div id="logo"><a href="#HOME_LINK#">#LOGO##REGION_POSITION_06#</a></div>'||chr(10)||
'  #REGION_POSITION_07#'||chr(10)||
'  <div id="navbar">'||chr(10)||
'    <div class="app-user">#WELCOME_USER#</div>'||chr(10)||
'    #NAVIGATION_BAR#'||chr(10)||
'    #REGION_POSITION_08#'||chr(10)||
'  </div>'||chr(10)||
'</div>'||chr(10)||
'<ul id="tabs">'||chr(10)||
'#TAB_CELLS#'||chr(10)||
'<li class="last"><span></span></li>'||chr(10)||
'</ul>'||chr(10)||
'<div id="topbar">#REGION_POSITION_01##REGION_POSITION_04#</div>'||chr(10)||
'<div id="messages">#S';

c3:=c3||'UCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>'||chr(10)||
'<div id="body">'||chr(10)||
'  <table class="tbl-body" cellspacing="0" cellpadding="0" border="0" summary="">'||chr(10)||
'    <tbody>'||chr(10)||
'      <tr>'||chr(10)||
'        <td class="tbl-main" width="100%">#REGION_POSITION_02##BOX_BODY#</td>'||chr(10)||
'        <td class="tbl-sidebar">#REGION_POSITION_03#</td>     '||chr(10)||
'      </tr>'||chr(10)||
'    </tbody>'||chr(10)||
'  </table>'||chr(10)||
'</div>';

wwv_flow_api.create_template(
  p_id=> 4886631484313786 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'One Level Tabs - Right Sidebar (optional / table-based)',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<div class="success" id="success-message">'||chr(10)||
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''success-message'')" style="float:right;" class="remove-message" alt="" />'||chr(10)||
'  #SUCCESS_MESSAGE#'||chr(10)||
'</div>',
  p_current_tab=> '<li class="#TAB_STATUS#">'||chr(10)||
'<a class="tab_link" href="#TAB_LINK#"><span></span>#TAB_LABEL#</a>#TAB_INLINE_EDIT#'||chr(10)||
'</li>',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '<li class="#TAB_STATUS#">'||chr(10)||
'<a class="tab_link" href="#TAB_LINK#"><span></span>#TAB_LABEL#</a>#TAB_INLINE_EDIT#'||chr(10)||
'</li>',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<div class="notification" id="notification-message">'||chr(10)||
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''notification-message'')"  style="float:right;" class="remove-message" alt="" />#MESSAGE#'||chr(10)||
'</div>',
  p_navigation_bar=> '#BAR_BODY#',
  p_navbar_entry=> '<div class="navbar-entry"><a href="#LINK#" class="navbar-link">#TEXT#</a></div>',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> '',
  p_sidebar_def_reg_pos => 'BEFORE_SHOW_ITEMS',
  p_breadcrumb_def_reg_pos => 'REGION_POSITION_01',
  p_theme_id  => 21,
  p_theme_class_id => 1,
  p_template_comment => '');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/popup
prompt  ......Page template 4886725886313786
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">'||chr(10)||
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">'||chr(10)||
'<head>'||chr(10)||
'<title>#TITLE#</title>'||chr(10)||
'<link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||chr(10)||
'<link rel="shortcut icon" href="#IMAGE_PREF';

c1:=c1||'IX#favicon.ico" type="image/x-icon">'||chr(10)||
'#HEAD#'||chr(10)||
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0.css" type="text/css" />'||chr(10)||
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie.css" type="text/css" /><![endif]-->'||chr(10)||
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->'||chr(10)||
'  ';

c1:=c1||'<!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD# class="pop-up-body">#FORM_OPEN#';

c2:=c2||'#FORM_CLOSE#</body>'||chr(10)||
'</html>';

c3:=c3||'<table summary="" cellpadding="0" width="100%" cellspacing="0" border="0">'||chr(10)||
'<tr>'||chr(10)||
'<td width="100%" valign="top"><div class="t1messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>#BOX_BODY##REGION_POSITION_01##REGION_POSITION_02##REGION_POSITION_04##REGION_POSITION_05##REGION_POSITION_06##REGION_POSITION_07##REGION_POSITION_08#</td>'||chr(10)||
'<td valign="top">#REGION_POSITION_03#<br /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>';

wwv_flow_api.create_template(
  p_id=> 4886725886313786 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'Popup',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<div class="t1success" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</div>',
  p_current_tab=> '',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<div class="t1notification" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</div>',
  p_navigation_bar=> '#BAR_BODY#',
  p_navbar_entry=> '<a href="#LINK#">#TEXT#</a>',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> ' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"',
  p_theme_id  => 21,
  p_theme_class_id => 4,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/printer_friendly
prompt  ......Page template 4886817804313786
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">'||chr(10)||
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">'||chr(10)||
'<head>'||chr(10)||
'  <title>#TITLE#</title>'||chr(10)||
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||chr(10)||
'  <link rel="shortcut icon" href="#IMAG';

c1:=c1||'E_PREFIX#favicon.ico" type="image/x-icon">'||chr(10)||
'  #HEAD#'||chr(10)||
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0.css" type="text/css" />'||chr(10)||
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie.css" type="text/css" /><![endif]-->'||chr(10)||
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie6.css" type="text/css" /><![endi';

c1:=c1||'f]-->'||chr(10)||
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>'||chr(10)||
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->'||chr(10)||
'#FORM_OPEN#';

c2:=c2||'#FORM_CLOSE#'||chr(10)||
'</body>'||chr(10)||
'</html>';

c3:=c3||'<div id="header">'||chr(10)||
'  <div id="logo"><a href="#HOME_LINK#">#LOGO##REGION_POSITION_06#</a></div>'||chr(10)||
'  #REGION_POSITION_07#'||chr(10)||
'  <div id="navbar">'||chr(10)||
'    <div class="app-user">#WELCOME_USER#</div>'||chr(10)||
'    #REGION_POSITION_08#'||chr(10)||
'  </div>'||chr(10)||
'</div>'||chr(10)||
'<div id="body">'||chr(10)||
'  <table class="tbl-body" cellspacing="0" cellpadding="0" border="0" summary="">'||chr(10)||
'    <tbody>'||chr(10)||
'      <tr>'||chr(10)||
'        <td class="tbl-sidebar" style="padding-right: 1';

c3:=c3||'0px;">#REGION_POSITION_02#</td>     '||chr(10)||
'        <td class="tbl-main" width="100%">#BOX_BODY#</td>'||chr(10)||
'        <td class="tbl-sidebar">#REGION_POSITION_03#</td>     '||chr(10)||
'      </tr>'||chr(10)||
'    </tbody>'||chr(10)||
'  </table>'||chr(10)||
'</div>'||chr(10)||
'';

wwv_flow_api.create_template(
  p_id=> 4886817804313786 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'Printer Friendly',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '',
  p_current_tab=> '',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '',
  p_navigation_bar=> '',
  p_navbar_entry=> '',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> ' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"',
  p_theme_id  => 21,
  p_theme_class_id => 5,
  p_translate_this_template => 'N',
  p_template_comment => '3');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/two_level_tabs_left_sidebar_fixed_width_div_based
prompt  ......Page template 4886921166313786
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">'||chr(10)||
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">'||chr(10)||
'<head>'||chr(10)||
'  <title>#TITLE#</title>'||chr(10)||
' #HEAD#'||chr(10)||
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0.css" type="text/css" />'||chr(10)||
'  <!-';

c1:=c1||'-[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie.css" type="text/css" /><![endif]-->'||chr(10)||
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->'||chr(10)||
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD';

c1:=c1||'#>'||chr(10)||
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->'||chr(10)||
'#FORM_OPEN#'||chr(10)||
'';

c2:=c2||'<div id="footer"><div class="content">'||chr(10)||
'<div id="customize">#CUSTOMIZE#</div>'||chr(10)||
'<div class="app-version">#APP_VERSION#</div>'||chr(10)||
'<div class="clear"></div>'||chr(10)||
'  #REGION_POSITION_05#'||chr(10)||
'</div></div>'||chr(10)||
'#FORM_CLOSE#'||chr(10)||
'</body>'||chr(10)||
'</html>';

c3:=c3||'<div id="header">'||chr(10)||
'  <div id="logo"><a href="#HOME_LINK#">#LOGO##REGION_POSITION_06#</a></div>'||chr(10)||
'  #REGION_POSITION_07#'||chr(10)||
'  <div id="navbar">'||chr(10)||
'    <div class="app-user">#WELCOME_USER#</div>'||chr(10)||
'    #NAVIGATION_BAR#'||chr(10)||
'    #REGION_POSITION_08#'||chr(10)||
'  </div>'||chr(10)||
'  <div id="parent-tabs">'||chr(10)||
'    <div class="tab-holder">#PARENT_TAB_CELLS#</div>'||chr(10)||
'  </div>'||chr(10)||
'</div>'||chr(10)||
'<ul id="tabs">'||chr(10)||
'#TAB_CELLS#'||chr(10)||
'<li class="last"><span></span></li>'||chr(10)||
'</ul';

c3:=c3||'>'||chr(10)||
''||chr(10)||
'<div id="topbar">#REGION_POSITION_01##REGION_POSITION_04#</div>'||chr(10)||
'<div id="messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>'||chr(10)||
'<div id="body">'||chr(10)||
'  <div id="two-col-sb-left">'||chr(10)||
'    <div id="left-sidebar">#REGION_POSITION_02#</div>'||chr(10)||
'    <div id="main-sb-left">'||chr(10)||
'      #BOX_BODY##REGION_POSITION_03#'||chr(10)||
'    </div>'||chr(10)||
'  </div>'||chr(10)||
'</div>'||chr(10)||
'';

wwv_flow_api.create_template(
  p_id=> 4886921166313786 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'Two Level Tabs - Left Sidebar (fixed-width / DIV based)',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<div class="success" id="success-message">'||chr(10)||
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''success-message'')" style="float:right;" class="remove-message" alt="" />'||chr(10)||
'  #SUCCESS_MESSAGE#'||chr(10)||
'</div>',
  p_current_tab=> '<li class="#TAB_STATUS#">'||chr(10)||
'<a class="tab_link" href="#TAB_LINK#"><span></span>#TAB_LABEL#</a>#TAB_INLINE_EDIT#'||chr(10)||
'</li>',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '<li class="#TAB_STATUS#">'||chr(10)||
'<a class="tab_link" href="#TAB_LINK#"><span></span>#TAB_LABEL#</a>#TAB_INLINE_EDIT#'||chr(10)||
'</li>',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '<div class="current"><div>'||chr(10)||
'#TAB_LABEL##TAB_INLINE_EDIT#'||chr(10)||
'</div></div>'||chr(10)||
''||chr(10)||
'',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '<div class="noncurrent"><div>'||chr(10)||
'<a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#'||chr(10)||
'</div></div>'||chr(10)||
''||chr(10)||
''||chr(10)||
''||chr(10)||
''||chr(10)||
'',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<div class="notification" id="notification-message">'||chr(10)||
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''notification-message'')"  style="float:right;" class="remove-message" alt="" />#MESSAGE#'||chr(10)||
'</div>',
  p_navigation_bar=> '#BAR_BODY#',
  p_navbar_entry=> '<div class="navbar-entry"><a href="#LINK#" class="t1NavigationBar">#TEXT#</a></div>',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> ' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"',
  p_sidebar_def_reg_pos => 'REGION_POSITION_02',
  p_breadcrumb_def_reg_pos => 'REGION_POSITION_01',
  p_theme_id  => 21,
  p_theme_class_id => 18,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/two_level_tabs_left_and_right_sidebar_fixed_width_div_left_and_optional_table_based_right
prompt  ......Page template 4887026273313786
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">'||chr(10)||
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">'||chr(10)||
'<head>'||chr(10)||
'  <title>#TITLE#</title>'||chr(10)||
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||chr(10)||
'  <link rel="shortcut icon" href="#IMAG';

c1:=c1||'E_PREFIX#favicon.ico" type="image/x-icon">'||chr(10)||
' #HEAD#'||chr(10)||
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0.css" type="text/css" />'||chr(10)||
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie.css" type="text/css" /><![endif]-->'||chr(10)||
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie6.css" type="text/css" /><![endif';

c1:=c1||']-->'||chr(10)||
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>'||chr(10)||
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->'||chr(10)||
'#FORM_OPEN#'||chr(10)||
'';

c2:=c2||'<div id="footer"><div class="content">'||chr(10)||
'<div id="customize">#CUSTOMIZE#</div>'||chr(10)||
'<div class="app-version">#APP_VERSION#</div>'||chr(10)||
'<div class="clear"></div>'||chr(10)||
'  #REGION_POSITION_05#'||chr(10)||
'</div></div>'||chr(10)||
'#FORM_CLOSE#'||chr(10)||
'</body>'||chr(10)||
'</html>';

c3:=c3||'<div id="header">'||chr(10)||
'  <div id="logo"><a href="#HOME_LINK#">#LOGO##REGION_POSITION_06#</a></div>'||chr(10)||
'  #REGION_POSITION_07#'||chr(10)||
'  <div id="navbar">'||chr(10)||
'    <div class="app-user">#WELCOME_USER#</div>'||chr(10)||
'    #NAVIGATION_BAR#'||chr(10)||
'    #REGION_POSITION_08#'||chr(10)||
'  </div>'||chr(10)||
'  <div id="parent-tabs">'||chr(10)||
'    <div class="tab-holder">#PARENT_TAB_CELLS#</div>'||chr(10)||
'  </div>'||chr(10)||
'</div>'||chr(10)||
'<ul id="tabs">'||chr(10)||
'#TAB_CELLS#'||chr(10)||
'<li class="last"><span></span></li>'||chr(10)||
'</ul';

c3:=c3||'>'||chr(10)||
'<div id="topbar">#REGION_POSITION_01##REGION_POSITION_04#</div>'||chr(10)||
'<div id="messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>'||chr(10)||
'<div id="body">'||chr(10)||
'  <div id="three-col">'||chr(10)||
'    <div id="left-sidebar">#REGION_POSITION_02#</div>'||chr(10)||
'    <div id="two-col-tbl">'||chr(10)||
'      <table class="tbl-body" cellspacing="0" cellpadding="0" border="0" summary="">'||chr(10)||
'        <tbody>'||chr(10)||
'          <tr>'||chr(10)||
'            ';

c3:=c3||'<td class="tbl-main" width="100%">#BOX_BODY#</td>'||chr(10)||
'            <td class="tbl-sidebar">#REGION_POSITION_03#</td>     '||chr(10)||
'          </tr>'||chr(10)||
'        </tbody>'||chr(10)||
'      </table>'||chr(10)||
'    </div>'||chr(10)||
'  </div>'||chr(10)||
'</div>'||chr(10)||
'';

wwv_flow_api.create_template(
  p_id=> 4887026273313786 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'Two Level Tabs - Left and Right Sidebar (fixed-width / DIV left and optional table-based right)',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<div class="success" id="success-message">'||chr(10)||
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''success-message'')" style="float:right;" class="remove-message" alt="" />'||chr(10)||
'  #SUCCESS_MESSAGE#'||chr(10)||
'</div>',
  p_current_tab=> '<li class="#TAB_STATUS#">'||chr(10)||
'<a class="tab_link" href="#TAB_LINK#"><span></span>#TAB_LABEL#</a>#TAB_INLINE_EDIT#'||chr(10)||
'</li>',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '<li class="#TAB_STATUS#">'||chr(10)||
'<a class="tab_link" href="#TAB_LINK#"><span></span>#TAB_LABEL#</a>#TAB_INLINE_EDIT#'||chr(10)||
'</li>',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '<div class="current"><div>'||chr(10)||
'#TAB_LABEL##TAB_INLINE_EDIT#'||chr(10)||
'</div></div>'||chr(10)||
''||chr(10)||
'',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '<div class="noncurrent"><div>'||chr(10)||
'<a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#'||chr(10)||
'</div></div>'||chr(10)||
''||chr(10)||
''||chr(10)||
''||chr(10)||
''||chr(10)||
'',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<div class="notification" id="notification-message">'||chr(10)||
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''notification-message'')"  style="float:right;" class="remove-message" alt="" />#MESSAGE#'||chr(10)||
'</div>',
  p_navigation_bar=> '#BAR_BODY#',
  p_navbar_entry=> '<div class="navbar-entry"><a href="#LINK#" class="t1NavigationBar">#TEXT#</a></div>',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> ' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"',
  p_sidebar_def_reg_pos => 'REGION_POSITION_02',
  p_breadcrumb_def_reg_pos => 'REGION_POSITION_01',
  p_theme_id  => 21,
  p_theme_class_id => 18,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/two_level_tabs_right_sidebar_fixed_width_div_based
prompt  ......Page template 4887122932313787
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">'||chr(10)||
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">'||chr(10)||
'<head>'||chr(10)||
'  <title>#TITLE#</title>'||chr(10)||
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||chr(10)||
'  <link rel="shortcut icon" href="#IMAG';

c1:=c1||'E_PREFIX#favicon.ico" type="image/x-icon">'||chr(10)||
' #HEAD#'||chr(10)||
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0.css" type="text/css" />'||chr(10)||
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie.css" type="text/css" /><![endif]-->'||chr(10)||
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie6.css" type="text/css" /><![endif';

c1:=c1||']-->'||chr(10)||
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>'||chr(10)||
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->'||chr(10)||
'#FORM_OPEN#'||chr(10)||
'';

c2:=c2||'<div id="footer"><div class="content">'||chr(10)||
'<div id="customize">#CUSTOMIZE#</div>'||chr(10)||
'<div class="app-version">#APP_VERSION#</div>'||chr(10)||
'<div class="clear"></div>'||chr(10)||
'  #REGION_POSITION_05#'||chr(10)||
'</div></div>'||chr(10)||
'#FORM_CLOSE#'||chr(10)||
'</body>'||chr(10)||
'</html>';

c3:=c3||'<div id="header">'||chr(10)||
'  <div id="logo"><a href="#HOME_LINK#">#LOGO##REGION_POSITION_06#</a></div>'||chr(10)||
'  #REGION_POSITION_07#'||chr(10)||
'  <div id="navbar">'||chr(10)||
'    <div class="app-user">#WELCOME_USER#</div>'||chr(10)||
'    #NAVIGATION_BAR#'||chr(10)||
'    #REGION_POSITION_08#'||chr(10)||
'  </div>'||chr(10)||
'  <div id="parent-tabs">'||chr(10)||
'    <div class="tab-holder">#PARENT_TAB_CELLS#</div>'||chr(10)||
'  </div>'||chr(10)||
'</div>'||chr(10)||
'<ul id="tabs">'||chr(10)||
'#TAB_CELLS#'||chr(10)||
'<li class="last"><span></span></li>'||chr(10)||
'</ul';

c3:=c3||'>'||chr(10)||
'<div id="topbar">#REGION_POSITION_01##REGION_POSITION_04#</div>'||chr(10)||
'<div id="messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>'||chr(10)||
'<div id="body">'||chr(10)||
'  <div id="two-col">'||chr(10)||
'    <div id="sidebar">#REGION_POSITION_03#</div>     '||chr(10)||
'    <div id="main">#REGION_POSITION_02##BOX_BODY#</div>'||chr(10)||
'  </div>'||chr(10)||
'</div>'||chr(10)||
'';

wwv_flow_api.create_template(
  p_id=> 4887122932313787 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'Two Level Tabs - Right Sidebar (fixed-width / DIV based)',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<div class="success" id="success-message">'||chr(10)||
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''success-message'')" style="float:right;" class="remove-message" alt="" />'||chr(10)||
'  #SUCCESS_MESSAGE#'||chr(10)||
'</div>',
  p_current_tab=> '<li class="#TAB_STATUS#">'||chr(10)||
'<a class="tab_link" href="#TAB_LINK#"><span></span>#TAB_LABEL#</a>#TAB_INLINE_EDIT#'||chr(10)||
'</li>',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '<li class="#TAB_STATUS#">'||chr(10)||
'<a class="tab_link" href="#TAB_LINK#"><span></span>#TAB_LABEL#</a>#TAB_INLINE_EDIT#'||chr(10)||
'</li>',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '<div class="current"><div>'||chr(10)||
'#TAB_LABEL##TAB_INLINE_EDIT#'||chr(10)||
'</div></div>'||chr(10)||
''||chr(10)||
'',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '<div class="noncurrent"><div>'||chr(10)||
'<a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#'||chr(10)||
'</div></div>'||chr(10)||
''||chr(10)||
''||chr(10)||
''||chr(10)||
''||chr(10)||
'',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<div class="notification" id="notification-message">'||chr(10)||
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''notification-message'')"  style="float:right;" class="remove-message" alt="" />#MESSAGE#'||chr(10)||
'</div>',
  p_navigation_bar=> '#BAR_BODY#',
  p_navbar_entry=> '<div class="navbar-entry"><a href="#LINK#" class="t1NavigationBar">#TEXT#</a></div>',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> ' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"',
  p_breadcrumb_def_reg_pos => 'REGION_POSITION_01',
  p_theme_id  => 21,
  p_theme_class_id => 2,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/two_level_tabs_right_sidebar_optional_table_based
prompt  ......Page template 4887226352313787
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">'||chr(10)||
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">'||chr(10)||
'<head>'||chr(10)||
'  <title>#TITLE#</title>'||chr(10)||
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||chr(10)||
'  <link rel="shortcut icon" href="#IMAG';

c1:=c1||'E_PREFIX#favicon.ico" type="image/x-icon">'||chr(10)||
' #HEAD#'||chr(10)||
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0.css" type="text/css" />'||chr(10)||
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie.css" type="text/css" /><![endif]-->'||chr(10)||
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie6.css" type="text/css" /><![endif';

c1:=c1||']-->'||chr(10)||
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>'||chr(10)||
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->'||chr(10)||
'#FORM_OPEN#'||chr(10)||
'';

c2:=c2||'<div id="footer"><div class="content">'||chr(10)||
'<div id="customize">#CUSTOMIZE#</div>'||chr(10)||
'<div class="app-version">#APP_VERSION#</div>'||chr(10)||
'<div class="clear"></div>'||chr(10)||
'  #REGION_POSITION_05#'||chr(10)||
'</div></div>'||chr(10)||
'#FORM_CLOSE#'||chr(10)||
'</body>'||chr(10)||
'</html>';

c3:=c3||'<div id="header">'||chr(10)||
'  <div id="logo"><a href="#HOME_LINK#">#LOGO##REGION_POSITION_06#</a></div>'||chr(10)||
'  #REGION_POSITION_07#'||chr(10)||
'  <div id="navbar">'||chr(10)||
'    <div class="app-user">#WELCOME_USER#</div>'||chr(10)||
'    #NAVIGATION_BAR#'||chr(10)||
'    #REGION_POSITION_08#'||chr(10)||
'  </div>'||chr(10)||
'  <div id="parent-tabs">'||chr(10)||
'    <div class="tab-holder">#PARENT_TAB_CELLS#</div>'||chr(10)||
'  </div>'||chr(10)||
'</div>'||chr(10)||
'<ul id="tabs">'||chr(10)||
'#TAB_CELLS#'||chr(10)||
'<li class="last"><span></span></li>'||chr(10)||
'</ul';

c3:=c3||'>'||chr(10)||
'<div id="topbar">#REGION_POSITION_01##REGION_POSITION_04#</div>'||chr(10)||
'<div id="messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>'||chr(10)||
'<div id="body">'||chr(10)||
'  <table class="tbl-body" cellspacing="0" cellpadding="0" border="0" summary="">'||chr(10)||
'    <tbody>'||chr(10)||
'      <tr>'||chr(10)||
'        <td class="tbl-main" width="100%">#REGION_POSITION_02##BOX_BODY#</td>'||chr(10)||
'        <td class="tbl-sidebar">#REGION_POSITION_0';

c3:=c3||'3#</td>     '||chr(10)||
'      </tr>'||chr(10)||
'    </tbody>'||chr(10)||
'  </table>'||chr(10)||
'</div>';

wwv_flow_api.create_template(
  p_id=> 4887226352313787 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'Two Level Tabs - Right Sidebar (optional / table-based)',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<div class="success" id="success-message">'||chr(10)||
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''success-message'')" style="float:right;" class="remove-message" alt="" />'||chr(10)||
'  #SUCCESS_MESSAGE#'||chr(10)||
'</div>',
  p_current_tab=> '<li class="#TAB_STATUS#">'||chr(10)||
'<a class="tab_link" href="#TAB_LINK#"><span></span>#TAB_LABEL#</a>#TAB_INLINE_EDIT#'||chr(10)||
'</li>',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '<li class="#TAB_STATUS#">'||chr(10)||
'<a class="tab_link" href="#TAB_LINK#"><span></span>#TAB_LABEL#</a>#TAB_INLINE_EDIT#'||chr(10)||
'</li>',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '<div class="current"><div>'||chr(10)||
'#TAB_LABEL##TAB_INLINE_EDIT#'||chr(10)||
'</div></div>'||chr(10)||
''||chr(10)||
'',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '<div class="noncurrent"><div>'||chr(10)||
'<a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#'||chr(10)||
'</div></div>'||chr(10)||
''||chr(10)||
''||chr(10)||
''||chr(10)||
''||chr(10)||
'',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<div class="notification" id="notification-message">'||chr(10)||
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''notification-message'')"  style="float:right;" class="remove-message" alt="" />#MESSAGE#'||chr(10)||
'</div>',
  p_navigation_bar=> '#BAR_BODY#',
  p_navbar_entry=> '<div class="navbar-entry"><a href="#LINK#" class="t1NavigationBar">#TEXT#</a></div>',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> ' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"',
  p_breadcrumb_def_reg_pos => 'REGION_POSITION_01',
  p_theme_id  => 21,
  p_theme_class_id => 2,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

prompt  ...button templates
--
--application/shared_components/user_interface/templates/button/button
prompt  ......Button Template 4887330298313787
declare
  t varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
t:=t||'<button value="#LABEL#" onclick="#LINK#" class="button-default" type="button">'||chr(10)||
'  <span>#LABEL#</span>'||chr(10)||
'</button>';

wwv_flow_api.create_button_templates (
  p_id=>4887330298313787 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_template=>t,
  p_template_name=> 'Button',
  p_translate_this_template => 'N',
  p_theme_id  => 21,
  p_theme_class_id => 1,
  p_template_comment       => '');
end;
/
--application/shared_components/user_interface/templates/button/hot_button_black
prompt  ......Button Template 4887428029313787
declare
  t varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
t:=t||'<button value="#LABEL#" onclick="#LINK#" class="button-alt5" type="button">'||chr(10)||
'  <span>#LABEL#</span>'||chr(10)||
'</button>';

wwv_flow_api.create_button_templates (
  p_id=>4887428029313787 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_template=>t,
  p_template_name=> 'Hot Button (Black)',
  p_translate_this_template => 'N',
  p_theme_id  => 21,
  p_theme_class_id => 4,
  p_template_comment       => '');
end;
/
--application/shared_components/user_interface/templates/button/hot_button_red_outline
prompt  ......Button Template 4887529137313787
declare
  t varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
t:=t||'<button value="#LABEL#" onclick="#LINK#" class="button-alt4" type="button">'||chr(10)||
'  <span>#LABEL#</span>'||chr(10)||
'</button>';

wwv_flow_api.create_button_templates (
  p_id=>4887529137313787 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_template=>t,
  p_template_name=> 'Hot Button (Red Outline)',
  p_translate_this_template => 'N',
  p_theme_id  => 21,
  p_theme_class_id => 4,
  p_template_comment       => '');
end;
/
--application/shared_components/user_interface/templates/button/hot_button_red
prompt  ......Button Template 4887617671313787
declare
  t varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
t:=t||'<button value="#LABEL#" onclick="#LINK#" class="button-alt1" type="button">'||chr(10)||
'  <span>#LABEL#</span>'||chr(10)||
'</button>';

wwv_flow_api.create_button_templates (
  p_id=>4887617671313787 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_template=>t,
  p_template_name=> 'Hot Button (Red)',
  p_translate_this_template => 'N',
  p_theme_id  => 21,
  p_theme_class_id => 4,
  p_template_comment       => '');
end;
/
--application/shared_components/user_interface/templates/button/small_button
prompt  ......Button Template 4887722389313787
declare
  t varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
t:=t||'<button value="#LABEL#" onclick="#LINK#" class="button-alt2" type="button">'||chr(10)||
'  <span>#LABEL#</span>'||chr(10)||
'</button>';

wwv_flow_api.create_button_templates (
  p_id=>4887722389313787 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_template=>t,
  p_template_name=> 'Small Button',
  p_translate_this_template => 'N',
  p_theme_id  => 21,
  p_theme_class_id => 5,
  p_template_comment       => 'XP Square FFFFFF');
end;
/
--application/shared_components/user_interface/templates/button/small_hot_button_red_outline
prompt  ......Button Template 4887815131313787
declare
  t varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
t:=t||'<button value="#LABEL#" onclick="#LINK#" class="button-alt6" type="button">'||chr(10)||
'  <span>#LABEL#</span>'||chr(10)||
'</button>';

wwv_flow_api.create_button_templates (
  p_id=>4887815131313787 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_template=>t,
  p_template_name=> 'Small Hot Button (Red Outline)',
  p_translate_this_template => 'N',
  p_theme_id  => 21,
  p_theme_class_id => 2,
  p_template_comment       => 'Standard Button');
end;
/
--application/shared_components/user_interface/templates/button/small_hot_button_red
prompt  ......Button Template 4887902096313787
declare
  t varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
t:=t||'<button value="#LABEL#" onclick="#LINK#" class="button-alt3" type="button">'||chr(10)||
'  <span>#LABEL#</span>'||chr(10)||
'</button>';

wwv_flow_api.create_button_templates (
  p_id=>4887902096313787 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_template=>t,
  p_template_name=> 'Small Hot Button (Red)',
  p_translate_this_template => 'N',
  p_theme_id  => 21,
  p_theme_class_id => 2,
  p_template_comment       => 'Standard Button');
end;
/
---------------------------------------
prompt  ...region templates
--
--application/shared_components/user_interface/templates/region/blank_region
prompt  ......region template 4888017089313787
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 4888017089313787 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<div class="blank-region">'||chr(10)||
'#BODY#'||chr(10)||
'<div class="clear"></div>'||chr(10)||
'</div>'
 ,p_page_plug_template_name => 'Blank Region'
 ,p_theme_id => 21
 ,p_theme_class_id => 7
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 4888017089313787 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/borderless_region
prompt  ......region template 4888127075313788
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 4888127075313788 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<div class="borderless-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||chr(10)||
'  <div class="bl-top">'||chr(10)||
'    <div class="bl-title">#TITLE#</div>'||chr(10)||
'    <div class="bl-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>'||chr(10)||
'  </div>'||chr(10)||
'  <div class="bl-body">#BODY#</div>'||chr(10)||
'</div>'||chr(10)||
'<div class="clear"></div>'
 ,p_page_plug_template_name => 'Borderless Region'
 ,p_theme_id => 21
 ,p_theme_class_id => 7
 ,p_translate_this_template => 'N'
 ,p_template_comment => 'Use this region template when you want to contain content without a border.'||chr(10)||
''||chr(10)||
'TITLE=YES'||chr(10)||
'BUTTONS=YES'||chr(10)||
'100% WIDTH=NO'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 4888127075313788 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/borderless_region_no_title
prompt  ......region template 4888215601313788
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 4888215601313788 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<div class="borderless-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||chr(10)||
'  <div class="bl-top">'||chr(10)||
'    '||chr(10)||
'    <div class="bl-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>'||chr(10)||
'  </div>'||chr(10)||
'  <div class="bl-body">#BODY#</div>'||chr(10)||
'</div>'||chr(10)||
'<div class="clear"></div>'
 ,p_page_plug_template_name => 'Borderless Region - No Title'
 ,p_theme_id => 21
 ,p_theme_class_id => 7
 ,p_translate_this_template => 'N'
 ,p_template_comment => 'Use this region template when you want to contain content without a border.'||chr(10)||
''||chr(10)||
'TITLE=YES'||chr(10)||
'BUTTONS=YES'||chr(10)||
'100% WIDTH=NO'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 4888215601313788 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/bracketed_region
prompt  ......region template 4888306262313788
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 4888306262313788 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<div class="bracketed-region brackets" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||chr(10)||
'  <div class="bk-top">'||chr(10)||
'    <div class="bk-top-r">'||chr(10)||
'      <div class="bk-title">#TITLE#</div>'||chr(10)||
'      <div class="bk-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>'||chr(10)||
'    </div>'||chr(10)||
'  </div>'||chr(10)||
'  <div class="bk-body">#BODY#</div>'||chr(10)||
'  <div class="bk-bottom">'||chr(10)||
'    <div class="bk-bott'||
'om-r">&nbsp;</div>'||chr(10)||
'  </div>'||chr(10)||
'</div>'
 ,p_page_plug_template_name => 'Bracketed Region'
 ,p_theme_id => 21
 ,p_theme_class_id => 18
 ,p_translate_this_template => 'N'
 ,p_template_comment => 'Use this region template when you want to contain content with a bracket UI.'||chr(10)||
''||chr(10)||
'TITLE=YES'||chr(10)||
'BUTTONS=YES'||chr(10)||
'100% WIDTH=NO'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 4888306262313788 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/breadcrumb_region
prompt  ......region template 4888416219313788
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 4888416219313788 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<div class="breadcrumb-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>#BODY#</div>'
 ,p_page_plug_template_name => 'Breadcrumb Region'
 ,p_theme_id => 21
 ,p_theme_class_id => 6
 ,p_translate_this_template => 'N'
 ,p_template_comment => 'Use this region template to contain breadcrumb menus.  Breadcrumb menus are implemented using breadcrumbs.  Breadcrumb menus are designed to displayed in #REGION_POSITION_01#'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 4888416219313788 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/button_region_with_title
prompt  ......region template 4888531719313788
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 4888531719313788 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<div class="rounded-corner-region-blank" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||chr(10)||
'  <div class="rc-gray-top">'||chr(10)||
'    <div class="rc-gray-top-r"></div>'||chr(10)||
'  </div>'||chr(10)||
'  <div class="rc-body">'||chr(10)||
'    <div class="rc-body-r">'||chr(10)||
'      <div class="rc-content-main">'||chr(10)||
'        <div class="rc-left">'||chr(10)||
'          <h3>#TITLE#</h3>'||chr(10)||
'        </div>'||chr(10)||
'        <div class="rc-right">'||chr(10)||
'#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CR'||
'EATE##CREATE2##EXPAND##COPY##HELP#'||chr(10)||
'        </div>'||chr(10)||
'        <div class="clear"></div>'||chr(10)||
'      </div>'||chr(10)||
'    </div>'||chr(10)||
'  </div>'||chr(10)||
'  <div class="rc-bottom">'||chr(10)||
'    <div class="rc-bottom-r"></div>'||chr(10)||
'  </div>'||chr(10)||
'</div>'
 ,p_page_plug_template_name => 'Button Region with Title'
 ,p_theme_id => 21
 ,p_theme_class_id => 4
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 4888531719313788 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/button_region_without_title
prompt  ......region template 4888613868313788
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 4888613868313788 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<div class="rounded-corner-region-blank" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||chr(10)||
'  <div class="rc-gray-top">'||chr(10)||
'    <div class="rc-gray-top-r"></div>'||chr(10)||
'  </div>'||chr(10)||
'  <div class="rc-body">'||chr(10)||
'    <div class="rc-body-r">'||chr(10)||
'      <div class="rc-content-main">'||chr(10)||
'        <div class="rc-left">'||chr(10)||
'          #BODY#'||chr(10)||
'        </div>'||chr(10)||
'        <div class="rc-right">'||chr(10)||
'#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREA'||
'TE2##EXPAND##COPY##HELP#'||chr(10)||
'        </div>'||chr(10)||
'        <div class="clear"></div>'||chr(10)||
'      </div>'||chr(10)||
'    </div>'||chr(10)||
'  </div>'||chr(10)||
'  <div class="rc-bottom">'||chr(10)||
'    <div class="rc-bottom-r"></div>'||chr(10)||
'  </div>'||chr(10)||
'</div>'
 ,p_page_plug_template_name => 'Button Region without Title'
 ,p_theme_id => 21
 ,p_theme_class_id => 17
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 4888613868313788 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/centered_tab_set_region
prompt  ......region template 4888700268313788
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 4888700268313788 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<div class="tSC">'||chr(10)||
'  #BODY#'||chr(10)||
'</div>'||chr(10)||
'<div class="tSF">'||chr(10)||
'  <div class="tSFO">'||chr(10)||
'    <div class="tSFI">'||chr(10)||
'    </div>'||chr(10)||
'  </div>'||chr(10)||
'</div>'||chr(10)||
''
 ,p_page_plug_template_name => 'Centered Tab Set Region'
 ,p_theme_id => 21
 ,p_theme_class_id => 21
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 4888700268313788 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/chart_list
prompt  ......region template 4888824520313788
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 4888824520313788 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<div class="rounded-corner-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||chr(10)||
'  <div class="rc-gray-top"><div class="rc-gray-top-r">'||chr(10)||
'    <div class="rc-title">#TITLE#</div>'||chr(10)||
'    <div class="rc-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>'||chr(10)||
'  </div></div>'||chr(10)||
'  <div class="rc-body"><div class="rc-body-r"><div class="rc-content-main">'||chr(10)||
'     <div class="'||
'rc-image"><img src="#IMAGE_PREFIX#themes/theme_21/images/report_icon.png" alt="" /></div>'||chr(10)||
'      <div class="rc-content">#BODY#</div>'||chr(10)||
'<div class="clear"></div>'||chr(10)||
'</div>'||chr(10)||
'</div></div>'||chr(10)||
'  <div class="rc-bottom"><div class="rc-bottom-r"></div></div>'||chr(10)||
'</div>'
 ,p_page_plug_template_name => 'Chart List'
 ,p_plug_table_bgcolor => '#ffffff'
 ,p_theme_id => 21
 ,p_theme_class_id => 29
 ,p_plug_heading_bgcolor => '#ffffff'
 ,p_plug_font_size => '-1'
 ,p_translate_this_template => 'N'
 ,p_template_comment => 'Red Theme'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 4888824520313788 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/chart_region
prompt  ......region template 4888921186313788
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 4888921186313788 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<div class="rounded-corner-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||chr(10)||
'  <div class="rc-gray-top"><div class="rc-gray-top-r">'||chr(10)||
'    <div class="rc-title">#TITLE#</div>'||chr(10)||
'  </div></div>'||chr(10)||
'  <div class="rc-body"><div class="rc-body-r">'||chr(10)||
'<div class="rc-content-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>'||chr(10)||
'<div class="rc-content-main">#BODY#<div cl'||
'ass="clear"></div></div></div></div>'||chr(10)||
'  <div class="rc-bottom"><div class="rc-bottom-r"></div></div>'||chr(10)||
'</div>'
 ,p_page_plug_template_name => 'Chart Region'
 ,p_plug_table_bgcolor => '#ffffff'
 ,p_theme_id => 21
 ,p_theme_class_id => 30
 ,p_plug_heading_bgcolor => '#ffffff'
 ,p_plug_font_size => '-1'
 ,p_translate_this_template => 'N'
 ,p_template_comment => 'Red Theme'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 4888921186313788 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/form_region
prompt  ......region template 4889029118313788
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 4889029118313788 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<div class="rounded-corner-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||chr(10)||
'  <div class="rc-gray-top"><div class="rc-gray-top-r">'||chr(10)||
'    <div class="rc-title">#TITLE#</div>'||chr(10)||
'  </div></div>'||chr(10)||
'  <div class="rc-body"><div class="rc-body-r">'||chr(10)||
'<div class="rc-content-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>'||chr(10)||
'<div class="rc-content-main">'||chr(10)||
'#BODY#<div c'||
'lass="clear"></div></div></div></div>'||chr(10)||
'  <div class="rc-bottom"><div class="rc-bottom-r"></div></div>'||chr(10)||
'</div>'
 ,p_page_plug_template_name => 'Form Region'
 ,p_plug_table_bgcolor => '#f7f7e7'
 ,p_theme_id => 21
 ,p_theme_class_id => 8
 ,p_plug_heading_bgcolor => '#f7f7e7'
 ,p_plug_font_size => '-1'
 ,p_translate_this_template => 'N'
 ,p_template_comment => 'Red Theme'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 4889029118313788 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/hide_and_show_region
prompt  ......region template 4889101919313788
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 4889101919313788 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<div class="hide-show-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||chr(10)||
'  <div class="hide-show-top">'||chr(10)||
'    <div class="hide-show-title"><a href="javascript:hideShow(''region#REGION_SEQUENCE_ID#'',''shIMG#REGION_SEQUENCE_ID#'',''#IMAGE_PREFIX#themes/theme_21/images/right_arrow.png'',''#IMAGE_PREFIX#themes/theme_21/images/down_arrow.png'');" class="t1HideandShowRegionLink"><img src="#IMAGE_PREFIX#themes/t'||
'heme_21/images/right_arrow.png" '||chr(10)||
'  id="shIMG#REGION_SEQUENCE_ID#" alt="" /></a> #TITLE#</div>'||chr(10)||
'    <div class="hide-show-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>'||chr(10)||
'  </div>'||chr(10)||
'<div class="hide" id="region#REGION_SEQUENCE_ID#" style="float:left;">#BODY#</div>'||chr(10)||
'</div>'
 ,p_page_plug_template_name => 'Hide and Show Region'
 ,p_theme_id => 21
 ,p_theme_class_id => 1
 ,p_translate_this_template => 'N'
 ,p_template_comment => 'Gray Head, white body'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 4889101919313788 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/navigation_region
prompt  ......region template 4889217500313788
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 4889217500313788 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<div class="navigation-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||chr(10)||
'    <h3>#TITLE#</h3>'||chr(10)||
'  <div>'||chr(10)||
'    #BODY#'||chr(10)||
'  </div>'||chr(10)||
'</div>'
 ,p_page_plug_template_name => 'Navigation Region'
 ,p_theme_id => 21
 ,p_theme_class_id => 5
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 4889217500313788 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/navigation_region_alternative_1
prompt  ......region template 4889311784313788
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 4889311784313788 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<div class="navigation-region-alt" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>#BODY#</div>'
 ,p_page_plug_template_name => 'Navigation Region, Alternative 1'
 ,p_theme_id => 21
 ,p_theme_class_id => 16
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 4889311784313788 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/nested_region
prompt  ......region template 4889416042313789
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 4889416042313789 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<div class="rounded-corner-region-nested" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||chr(10)||
'	<div class="nr-top">'||chr(10)||
'		<div class="nr-top-r">'||chr(10)||
'    <div class="nr-title">#TITLE#</div>'||chr(10)||
'    <div class="nr-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>'||chr(10)||
'		</div>'||chr(10)||
'	</div>'||chr(10)||
'	<div class="nr-body">'||chr(10)||
'		<div class="nr-content-main">'||chr(10)||
'			#BODY#'||chr(10)||
'			<div class="clear"></div'||
'>'||chr(10)||
'		</div>'||chr(10)||
'	</div>'||chr(10)||
'</div>'
 ,p_page_plug_template_name => 'Nested Region'
 ,p_theme_id => 21
 ,p_theme_class_id => 7
 ,p_translate_this_template => 'N'
 ,p_template_comment => 'Use this region template when you want to contain content without a border.'||chr(10)||
''||chr(10)||
'TITLE=YES'||chr(10)||
'BUTTONS=YES'||chr(10)||
'100% WIDTH=NO'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 4889416042313789 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/region_without_buttons_and_titles
prompt  ......region template 4889515414313789
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 4889515414313789 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<div class="borderless-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||chr(10)||
'  <div class="bl-body">#BODY#</div>'||chr(10)||
'</div>'
 ,p_page_plug_template_name => 'Region without Buttons and Titles'
 ,p_theme_id => 21
 ,p_theme_class_id => 19
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 4889515414313789 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/region_without_title
prompt  ......region template 4889630395313789
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 4889630395313789 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<div class="borderless-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||chr(10)||
'  <div class="bl-top">'||chr(10)||
'    <div class="bl-title">&nbsp;</div>'||chr(10)||
'    <div class="bl-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>'||chr(10)||
'  </div>'||chr(10)||
'  <div class="bl-body">#BODY#</div>'||chr(10)||
'</div>'
 ,p_page_plug_template_name => 'Region without Title'
 ,p_theme_id => 21
 ,p_theme_class_id => 11
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 4889630395313789 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/report_filter_single_row
prompt  ......region template 4889729220313789
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 4889729220313789 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<table class="apex_finderbar" cellpadding="0" cellspacing="0" border="0" summary="" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||chr(10)||
'<tbody>'||chr(10)||
'<tr>'||chr(10)||
'<td class="apex_finderbar_left_top" valign="top"><img src="#IMAGE_PREFIX#1px_trans.gif" width="10" height="8" alt=""  class="spacer" alt="" /></td>'||chr(10)||
'<td class="apex_finderbar_middle" rowspan="3" valign="middle"><img src="#IMAGE_PREFIX#htmldb/builder/builder_f'||
'ind.png" /></td>'||chr(10)||
'<td class="apex_finderbar_middle" rowspan="3" valign="middle" style="">#BODY#</td>'||chr(10)||
'<td class="apex_finderbar_left" rowspan="3" width="10"><br /></td>'||chr(10)||
'<td class="apex_finderbar_buttons" rowspan="3" valign="middle" nowrap="nowrap"><span class="apex_close">#CLOSE#</span><span>#EDIT##CHANGE##DELETE##CREATE##CREATE2##COPY##PREVIOUS##NEXT##EXPAND##HELP#</span></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr><td class="'||
'apex_finderbar_left_middle"><br /></td></tr>'||chr(10)||
'<tr>'||chr(10)||
'<td class="apex_finderbar_left_bottom" valign="bottom"><img src="#IMAGE_PREFIX#1px_trans.gif" width="10" height="8"  class="spacer" alt="" /></td>'||chr(10)||
'</tr>'||chr(10)||
'</tbody>'||chr(10)||
'</table>'
 ,p_page_plug_template_name => 'Report Filter - Single Row'
 ,p_theme_id => 21
 ,p_theme_class_id => 31
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 4889729220313789 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/report_list
prompt  ......region template 4889808847313789
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 4889808847313789 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<div class="rounded-corner-region-alt" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||chr(10)||
'  <div class="rc-gray-top"><div class="rc-gray-top-r">'||chr(10)||
'    <div class="rc-title">#TITLE#</div>'||chr(10)||
'  </div></div>'||chr(10)||
'  <div class="rc-body"><div class="rc-body-r">'||chr(10)||
'<div class="rc-content-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>'||chr(10)||
'    <div class="rc-content-main">'||chr(10)||
'    '||
'#BODY#'||chr(10)||
'    </div>'||chr(10)||
'  </div></div>'||chr(10)||
'  <div class="rc-bottom"><div class="rc-bottom-r"></div></div>'||chr(10)||
'</div>'
 ,p_page_plug_template_name => 'Report List'
 ,p_plug_table_bgcolor => '#ffffff'
 ,p_theme_id => 21
 ,p_theme_class_id => 29
 ,p_plug_heading_bgcolor => '#ffffff'
 ,p_plug_font_size => '-1'
 ,p_translate_this_template => 'N'
 ,p_template_comment => 'Red Theme'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 4889808847313789 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/reports_region
prompt  ......region template 4889906514313789
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 4889906514313789 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<div class="rounded-corner-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||chr(10)||
'  <div class="rc-gray-top"><div class="rc-gray-top-r">'||chr(10)||
'    <div class="rc-title">#TITLE#</div>'||chr(10)||
'  </div></div>'||chr(10)||
'  <div class="rc-body"><div class="rc-body-r">'||chr(10)||
'<div class="rc-content-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>'||chr(10)||
'<div class="rc-content-main">#BODY#<div cl'||
'ass="clear"></div></div></div></div>'||chr(10)||
'  <div class="rc-bottom"><div class="rc-bottom-r"></div></div>'||chr(10)||
'</div> '
 ,p_page_plug_template_name => 'Reports Region'
 ,p_plug_table_bgcolor => '#ffffff'
 ,p_theme_id => 21
 ,p_theme_class_id => 9
 ,p_plug_heading_bgcolor => '#ffffff'
 ,p_plug_font_size => '-1'
 ,p_translate_this_template => 'N'
 ,p_template_comment => 'Red Theme'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 4889906514313789 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/reports_region_100_width
prompt  ......region template 4890007169313789
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 4890007169313789 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<div class="rounded-corner-region float-left-100pct" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||chr(10)||
'  <div class="rc-gray-top"><div class="rc-gray-top-r">'||chr(10)||
'    <div class="rc-title">#TITLE#</div>'||chr(10)||
'  </div></div>'||chr(10)||
'  <div class="rc-body"><div class="rc-body-r">'||chr(10)||
'<div class="rc-content-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>'||chr(10)||
'<div class="rc-content-m'||
'ain">#BODY#<div class="clear"></div></div></div></div>'||chr(10)||
'  <div class="rc-bottom"><div class="rc-bottom-r"></div></div>'||chr(10)||
'</div>'||chr(10)||
''
 ,p_page_plug_template_name => 'Reports Region 100% Width'
 ,p_plug_table_bgcolor => '#ffffff'
 ,p_theme_id => 21
 ,p_theme_class_id => 13
 ,p_plug_heading_bgcolor => '#ffffff'
 ,p_plug_font_size => '-1'
 ,p_translate_this_template => 'N'
 ,p_template_comment => 'Red Theme'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 4890007169313789 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/reports_region_no_title
prompt  ......region template 4890129519313789
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 4890129519313789 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<div class="rounded-corner-region-blank-white" id="#REGION_STATIC_ID#"  #REGION_ATTRIBUTES#>'||chr(10)||
'	<div class="rc-gray-top">'||chr(10)||
'		<div class="rc-gray-top-r"></div>'||chr(10)||
'	</div>'||chr(10)||
'	<div class="rc-body">'||chr(10)||
'		<div class="rc-body-r">'||chr(10)||
'			<div class="rc-content-main">'||chr(10)||
'				#BODY#'||chr(10)||
'				<div class="clear"></div>'||chr(10)||
'			</div>'||chr(10)||
'			<div class="rc-content-buttons">'||chr(10)||
'				#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##'||
'EXPAND##COPY##HELP#'||chr(10)||
'			</div>'||chr(10)||
'			<div class="clear"></div>'||chr(10)||
'		</div>'||chr(10)||
'	</div>'||chr(10)||
'	<div class="rc-bottom">'||chr(10)||
'		<div class="rc-bottom-r"></div>'||chr(10)||
'	</div>'||chr(10)||
'</div>'
 ,p_page_plug_template_name => 'Reports Region No Title'
 ,p_theme_id => 21
 ,p_theme_class_id => 9
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 4890129519313789 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/reports_region_no_title_alternative_1
prompt  ......region template 4890228275313789
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 4890228275313789 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<div class="rounded-corner-region-blank-alt" id="#REGION_STATIC_ID#"  #REGION_ATTRIBUTES#>'||chr(10)||
'	<div class="rc-gray-top">'||chr(10)||
'		<div class="rc-gray-top-r"></div>'||chr(10)||
'	</div>'||chr(10)||
'	<div class="rc-body">'||chr(10)||
'		<div class="rc-body-r">'||chr(10)||
'			<div class="rc-content-main">'||chr(10)||
'				#BODY#'||chr(10)||
'				<div class="clear"></div>'||chr(10)||
'			</div>'||chr(10)||
'			<div class="rc-content-buttons">'||chr(10)||
'				#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EX'||
'PAND##COPY##HELP#'||chr(10)||
'			</div>'||chr(10)||
'			<div class="clear"></div>'||chr(10)||
'		</div>'||chr(10)||
'	</div>'||chr(10)||
'	<div class="rc-bottom">'||chr(10)||
'		<div class="rc-bottom-r"></div>'||chr(10)||
'	</div>'||chr(10)||
'</div>'
 ,p_page_plug_template_name => 'Reports Region No Title, Alternative 1'
 ,p_theme_id => 21
 ,p_theme_class_id => 10
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 4890228275313789 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/reports_region_alternative_1
prompt  ......region template 4890331115313789
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 4890331115313789 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<div class="rounded-corner-region-alt" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||chr(10)||
'  <div class="rc-gray-top"><div class="rc-gray-top-r">'||chr(10)||
'    <div class="rc-title">#TITLE#</div>'||chr(10)||
'  </div></div>'||chr(10)||
'  <div class="rc-body"><div class="rc-body-r">'||chr(10)||
'<div class="rc-content-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>'||chr(10)||
'<div class="rc-content-main">#BODY#<di'||
'v class="clear"></div>'||chr(10)||
'<div class="clear"></div>'||chr(10)||
'</div>'||chr(10)||
'</div></div>'||chr(10)||
'  <div class="rc-bottom"><div class="rc-bottom-r"></div></div>'||chr(10)||
'</div>'
 ,p_page_plug_template_name => 'Reports Region, Alternative 1'
 ,p_plug_table_bgcolor => '#ffffff'
 ,p_theme_id => 21
 ,p_theme_class_id => 10
 ,p_plug_heading_bgcolor => '#ffffff'
 ,p_plug_font_size => '-1'
 ,p_translate_this_template => 'N'
 ,p_template_comment => 'Red Theme'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 4890331115313789 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/sidebar_region
prompt  ......region template 4890414131313789
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 4890414131313789 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<div class="sidebar-region">'||chr(10)||
'<div class="rounded-corner-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||chr(10)||
'  <div class="rc-gray-top"><div class="rc-gray-top-r">'||chr(10)||
'    <div class="rc-title">#TITLE#</div>'||chr(10)||
'  </div></div>'||chr(10)||
'  <div class="rc-body"><div class="rc-body-r">'||chr(10)||
'<div class="rc-content-main">#BODY#<div class="clear"></div></div></div></div>'||chr(10)||
'  <div class="rc-bottom"><div class="rc-bottom-r"></div'||
'></div>'||chr(10)||
'</div> '||chr(10)||
'</div>'
 ,p_page_plug_template_name => 'Sidebar Region'
 ,p_plug_table_bgcolor => '#f7f7e7'
 ,p_theme_id => 21
 ,p_theme_class_id => 2
 ,p_plug_heading_bgcolor => '#f7f7e7'
 ,p_plug_font_size => '-1'
 ,p_translate_this_template => 'N'
 ,p_template_comment => '<table border="0" cellpadding="0" cellspacing="0">'||chr(10)||
'        <tr>'||chr(10)||
'          <td rowspan="2" valign="top" width="4" bgcolor="#FF0000"><img src="#IMAGE_PREFIX#tl_img.gif" border="0" width="4" height="18" alt="" /></td>'||chr(10)||
'          <td bgcolor="#000000" height="1"><img src="#IMAGE_PREFIX#stretch.gif" width="142" height="1" border="0" alt="" /></td>'||chr(10)||
'          <td rowspan="2" valign="top" width="4" bgcolor="#FF0000"><img src="#IMAGE_PREFIX#tr_img.gif" border="0" width="4" height="18" alt="" /></td>'||chr(10)||
'        </tr>'||chr(10)||
'        <tr>'||chr(10)||
'          <td bgcolor="#FF0000" height="16">'||chr(10)||
'            <table border="0" cellpadding="0" cellspacing="0" width="100%">'||chr(10)||
'              <tr>'||chr(10)||
'                <td align=middle valign="top">'||chr(10)||
'                  <div align="center">'||chr(10)||
'                     <font color="#ffffff" face="Arial, Helvetica, sans-serif" size="1">'||chr(10)||
'                      <b>#TITLE# </b></font></div>'||chr(10)||
'                </td>'||chr(10)||
'              </tr>'||chr(10)||
'            </table>'||chr(10)||
'          </td>'||chr(10)||
'        </tr>'||chr(10)||
'</table>'||chr(10)||
'<table border="0" cellpadding="0" cellspacing="0">'||chr(10)||
'   <tr>'||chr(10)||
'   <td bgcolor="#000000" width="1" height="96"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>'||chr(10)||
'   <td valign="top" height="96"><img src="#IMAGE_PREFIX#stretch.gif" width="146" height="1" border="0" alt="" /><br />'||chr(10)||
'            <table border="0" cellpadding="1" cellspacing="0" width="146" summary="">'||chr(10)||
'              <tr>'||chr(10)||
'                <td colspan="2">'||chr(10)||
'                  <table border="0" cellpadding="2" cellspacing="0" width="124" summary="">'||chr(10)||
'                    <tr>'||chr(10)||
'                      <td>&nbsp;</td>'||chr(10)||
'                      <td valign="top" width="106">'||chr(10)||
'                        <P><FONT face="arial, helvetica" size="1">'||chr(10)||
'                            #BODY#'||chr(10)||
'                           </font>'||chr(10)||
'                        </P>'||chr(10)||
'                      </td>'||chr(10)||
'                    </tr>'||chr(10)||
'                  </table>'||chr(10)||
'            </table>'||chr(10)||
'          </td>'||chr(10)||
'          <td bgcolor="#000000" width="1" height="96"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>'||chr(10)||
'          <td bgcolor="#9a9c9a" width="1" height="96"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>'||chr(10)||
'          <td bgcolor="#b3b4b3" width="1" height="96"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>'||chr(10)||
'        </tr>'||chr(10)||
'      </table>'||chr(10)||
'      <table border="0" cellpadding="0" cellspacing="0">'||chr(10)||
'        <tr>'||chr(10)||
'          <td rowspan="4" valign="top" width="4"><img src="#IMAGE_PREFIX#bl_img.gif" border="0" width="4" height="6" alt="" /></td>'||chr(10)||
'          <td bgcolor="#ffffff" height="2"><img src="#IMAGE_PREFIX#stretch.gif" width="142" height="1" border="0" alt="" /></td>'||chr(10)||
'          <td rowspan="4" valign="top" width="4"><img src="#IMAGE_PREFIX#br_img.gif" border="0" width="4" height="6" alt="" /></td>'||chr(10)||
'        </tr>'||chr(10)||
'        <tr>'||chr(10)||
'          <td bgcolor="#000000" width="1"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>'||chr(10)||
'        </tr>'||chr(10)||
'        <tr>'||chr(10)||
'          <td bgcolor="#9a9c9a" width="1"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>'||chr(10)||
'        </tr>'||chr(10)||
'        <tr>'||chr(10)||
'          <td bgcolor="#b3b4b3" width="1" height="2"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>'||chr(10)||
'        </tr>'||chr(10)||
'</table>'||chr(10)||
''
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 4890414131313789 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/sidebar_region_alternative_1
prompt  ......region template 4890507660313789
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 4890507660313789 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<div class="sidebar-region">'||chr(10)||
'<div class="rounded-corner-region-alt" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||chr(10)||
'  <div class="rc-gray-top"><div class="rc-gray-top-r">'||chr(10)||
'    <div class="rc-title">#TITLE#</div>'||chr(10)||
'  </div></div>'||chr(10)||
'  <div class="rc-body"><div class="rc-body-r">'||chr(10)||
'<div class="rc-content-main">#BODY#<div class="clear"></div></div></div></div>'||chr(10)||
'  <div class="rc-bottom"><div class="rc-bottom-r"><'||
'/div></div>'||chr(10)||
'</div> '||chr(10)||
'</div>'
 ,p_page_plug_template_name => 'Sidebar Region, Alternative 1'
 ,p_plug_table_bgcolor => '#f7f7e7'
 ,p_theme_id => 21
 ,p_theme_class_id => 3
 ,p_plug_heading_bgcolor => '#f7f7e7'
 ,p_plug_font_size => '-1'
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 4890507660313789 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/sidebar_region_bordered
prompt  ......region template 4890608658313789
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 4890608658313789 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<div class="rounded-corner-region-blank-white sidebar-alt2" id="#REGION_STATIC_ID#"  #REGION_ATTRIBUTES#>'||chr(10)||
'	<div class="rc-gray-top">'||chr(10)||
'		<div class="rc-gray-top-r"></div>'||chr(10)||
'	</div>'||chr(10)||
'	<div class="rc-body">'||chr(10)||
'		<div class="rc-body-r">'||chr(10)||
'			<div class="rc-content-main">'||chr(10)||
'				#BODY#'||chr(10)||
'				<div class="clear"></div>'||chr(10)||
'			</div>'||chr(10)||
'			<div class="rc-content-buttons">'||chr(10)||
'				#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREA'||
'TE##CREATE2##EXPAND##COPY##HELP#'||chr(10)||
'			</div>'||chr(10)||
'			<div class="clear"></div>'||chr(10)||
'		</div>'||chr(10)||
'	</div>'||chr(10)||
'	<div class="rc-bottom">'||chr(10)||
'		<div class="rc-bottom-r"></div>'||chr(10)||
'	</div>'||chr(10)||
'</div>'
 ,p_page_plug_template_name => 'Sidebar Region, Bordered'
 ,p_theme_id => 21
 ,p_theme_class_id => 3
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 4890608658313789 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/sidebar_region_bordered_alternative
prompt  ......region template 4890716489313789
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 4890716489313789 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<div class="rounded-corner-region-blank-alt sidebar-alt2" id="#REGION_STATIC_ID#"  #REGION_ATTRIBUTES#>'||chr(10)||
'	<div class="rc-gray-top">'||chr(10)||
'		<div class="rc-gray-top-r"></div>'||chr(10)||
'	</div>'||chr(10)||
'	<div class="rc-body">'||chr(10)||
'		<div class="rc-body-r">'||chr(10)||
'			<div class="rc-content-main">'||chr(10)||
'				#BODY#'||chr(10)||
'				<div class="clear"></div>'||chr(10)||
'			</div>'||chr(10)||
'			<div class="rc-content-buttons">'||chr(10)||
'				#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE'||
'##CREATE2##EXPAND##COPY##HELP#'||chr(10)||
'			</div>'||chr(10)||
'			<div class="clear"></div>'||chr(10)||
'		</div>'||chr(10)||
'	</div>'||chr(10)||
'	<div class="rc-bottom">'||chr(10)||
'		<div class="rc-bottom-r"></div>'||chr(10)||
'	</div>'||chr(10)||
'</div>'
 ,p_page_plug_template_name => 'Sidebar Region, Bordered Alternative'
 ,p_theme_id => 21
 ,p_theme_class_id => 3
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 4890716489313789 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/wizard_region
prompt  ......region template 4890802022313789
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 4890802022313789 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<div class="rounded-corner-region-wizard" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||chr(10)||
'  <div class="rc-gray-top"><div class="rc-gray-top-r">'||chr(10)||
'    <div class="rc-title">#TITLE#</div>'||chr(10)||
'<div class="rc-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>'||chr(10)||
'  </div></div>'||chr(10)||
'  <div class="rc-body"><div class="rc-body-r">'||chr(10)||
'<div class="rc-content-main">#BODY#<div cla'||
'ss="clear"></div></div></div></div>'||chr(10)||
'  <div class="rc-bottom"><div class="rc-bottom-r"></div></div>'||chr(10)||
'</div>'
 ,p_page_plug_template_name => 'Wizard Region'
 ,p_theme_id => 21
 ,p_theme_class_id => 12
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 4890802022313789 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/wizard_region_with_icon
prompt  ......region template 4890930758313789
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 4890930758313789 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<div class="rounded-corner-region-wizard" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||chr(10)||
'  <div class="rc-gray-top"><div class="rc-gray-top-r">'||chr(10)||
'    <div class="rc-title">#TITLE#</div>'||chr(10)||
'<div class="rc-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>'||chr(10)||
'  </div></div>'||chr(10)||
'  <div class="rc-body"><div class="rc-body-r">'||chr(10)||
'<div class="rc-content-main">#BODY#<div cla'||
'ss="clear"></div></div></div></div>'||chr(10)||
'  <div class="rc-bottom"><div class="rc-bottom-r"></div></div>'||chr(10)||
'</div>'
 ,p_page_plug_template_name => 'Wizard Region with Icon'
 ,p_theme_id => 21
 ,p_theme_class_id => 20
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 4890930758313789 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

prompt  ...List Templates
--
--application/shared_components/user_interface/templates/list/button_list
prompt  ......list template 4891018408313790
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<button value="#TEXT#" onclick="javascript:location.href=''#LINK#''" class="button-alt1" type="button">'||chr(10)||
'  <span>#TEXT#</span>'||chr(10)||
'</button>';

t2:=t2||'<button value="#TEXT#" onclick="javascript:location.href=''#LINK#''" class="button-default" type="button">'||chr(10)||
'  <span>#TEXT#</span>'||chr(10)||
'</button>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>4891018408313790 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Button List',
  p_theme_id  => 21,
  p_theme_class_id => 6,
  p_list_template_before_rows=>'<div class="button-list">',
  p_list_template_after_rows=>'</div>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/centered_tab_set
prompt  ......list template 4891121569313790
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'          <li class="#LIST_STATUS#">'||chr(10)||
'            <a href="#LINK#"><span>#TEXT#</span></a>'||chr(10)||
'          </li>';

t2:=t2||'          <li class="#LIST_STATUS#">'||chr(10)||
'            <a href="#LINK#"><span>#TEXT#</span></a>'||chr(10)||
'          </li>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>4891121569313790 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Centered Tab Set',
  p_theme_id  => 21,
  p_theme_class_id => 7,
  p_list_template_before_rows=>'<div class="tS">'||chr(10)||
'  <div class="tSO">'||chr(10)||
'    <div class="tSI">'||chr(10)||
'      <div class="tSU">'||chr(10)||
'        <ul>',
  p_list_template_after_rows=>'         </ul>'||chr(10)||
'      </div>'||chr(10)||
'    </div>'||chr(10)||
'  </div>'||chr(10)||
'</div>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/dhtml_tree
prompt  ......list template 4891220782313790
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li><a href="#LINK#">#TEXT#</a></li>';

t2:=t2||'<li><a href="#LINK#">#TEXT#</a></li>';

t3:=t3||'<li><a href="#LINK#">#TEXT#</a></li>';

t4:=t4||'<li><a href="#LINK#">#TEXT#</a></li>';

t5:=t5||'<li><a href="#LINK#">#TEXT#</a></li>';

t6:=t6||'<li><a href="#LINK#">#TEXT#</a></li>';

t7:=t7||'<li><a href="#LINK#">#TEXT#</a></li>';

t8:=t8||'<li><a href="#LINK#">#TEXT#</a></li>';

wwv_flow_api.create_list_template (
  p_id=>4891220782313790 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'DHTML Tree',
  p_theme_id  => 21,
  p_theme_class_id => 23,
  p_list_template_before_rows=>'<ul class="dhtmlTree">',
  p_list_template_after_rows=>'</ul><br style="clear:both;"/><br style="clear:both;"/>',
  p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#">',
  p_after_sub_list=>'</ul>',
  p_sub_list_item_current=> t3,
  p_sub_list_item_noncurrent=> t4,
  p_item_templ_curr_w_child=> t5,
  p_item_templ_noncurr_w_child=> t6,
  p_sub_templ_curr_w_child=> t7,
  p_sub_templ_noncurr_w_child=> t8,
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/hierarchical_expanding
prompt  ......list template 4891314540313790
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif" align="middle" alt="" /><a href="#LINK#">#TEXT#</a></li>';

t2:=t2||'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif" align="middle"  alt="" /><a href="#LINK#">#TEXT#</a></li>';

t3:=t3||'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif" align="middle"  alt="" /><a href="#LINK#">#TEXT#</a></li>';

t4:=t4||'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif"  align="middle" alt="" /><a href="#LINK#">#TEXT#</a></li>';

t5:=t5||'<li><img src="#IMAGE_PREFIX#themes/theme_13/plus.gif" align="middle"  onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" class="pseudoButtonInactive" alt="" /><a href="#LINK#">#TEXT#</a></li>';

t6:=t6||'<li><img src="#IMAGE_PREFIX#themes/theme_13/plus.gif" align="middle"  onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" class="pseudoButtonInactive" alt="" /><a href="#LINK#">#TEXT#</a></li>';

t7:=t7||'<li><img src="#IMAGE_PREFIX#themes/theme_13/plus.gif" onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" align="middle" class="pseudoButtonInactive" alt="" /><a href="#LINK#">#TEXT#</a></li>';

t8:=t8||'<li><img src="#IMAGE_PREFIX#themes/theme_13/plus.gif" onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" align="middle" class="pseudoButtonInactive" alt="" /><a href="#LINK#">#TEXT#</a></li>';

wwv_flow_api.create_list_template (
  p_id=>4891314540313790 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Hierarchical Expanding',
  p_theme_id  => 21,
  p_theme_class_id => 22,
  p_list_template_before_rows=>'<ul class="dhtmlTree">',
  p_list_template_after_rows=>'</ul><br style="clear:both;"/><br style="clear:both;"/>',
  p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#" style="display:none;" class="dhtmlTree">',
  p_after_sub_list=>'</ul>',
  p_sub_list_item_current=> t3,
  p_sub_list_item_noncurrent=> t4,
  p_item_templ_curr_w_child=> t5,
  p_item_templ_noncurr_w_child=> t6,
  p_sub_templ_curr_w_child=> t7,
  p_sub_templ_noncurr_w_child=> t8,
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/horizontal_images_with_label_list
prompt  ......list template 4891415162313790
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<div class="list-item-current">'||chr(10)||
'  <div class="list-item-image"><a href="#LINK#" class="current"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# alt="" / ></a></div>'||chr(10)||
'  <div class="list-item-label"><a href="#LINK#" class="current">#TEXT#</a></div>'||chr(10)||
'</div>';

t2:=t2||'<div class="list-item">'||chr(10)||
'  <div class="list-item-image"><a href="#LINK#" class="current"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# alt="" / ></a></div>'||chr(10)||
'  <div class="list-item-label"><a href="#LINK#" class="current">#TEXT#</a></div>'||chr(10)||
'</div>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>4891415162313790 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Horizontal Images with Label List',
  p_theme_id  => 21,
  p_theme_class_id => 4,
  p_list_template_before_rows=>'<div class="horizontal-images-list">',
  p_list_template_after_rows=>'</div>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/horizontal_links_list
prompt  ......list template 4891516785313790
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<a href="#LINK#" class="current">#TEXT#</a>';

t2:=t2||'<a href="#LINK#">#TEXT#</a>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>4891516785313790 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Horizontal Links List',
  p_theme_id  => 21,
  p_theme_class_id => 3,
  p_list_template_before_rows=>'<div class="horizontal-links-list">',
  p_list_template_after_rows=>'</div>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/horizontal_tabs_rounded_list
prompt  ......list template 4891605322313790
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li class="#LIST_STATUS#"><a href="#LINK#"><span>#TEXT#</span></a></li>';

t2:=t2||'<li class="#LIST_STATUS#"><a href="#LINK#"><span>#TEXT#</span></a></li>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>4891605322313790 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Horizontal Tabs Rounded List',
  p_theme_id  => 21,
  p_theme_class_id => 7,
  p_list_template_before_rows=>'<div class="sHTabs">'||chr(10)||
'	<div class="sHTabsInner">'||chr(10)||
'		<ul>',
  p_list_template_after_rows=>'		</ul>'||chr(10)||
'	</div>'||chr(10)||
'</div>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/horizontal_tabs_rounded_list_full_width
prompt  ......list template 4891728524313790
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li class="#LIST_STATUS#"><a href="#LINK#"><span>#TEXT#</span></a></li>';

t2:=t2||'<li class="#LIST_STATUS#"><a href="#LINK#"><span>#TEXT#</span></a></li>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>4891728524313790 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Horizontal Tabs Rounded List (Full Width)',
  p_theme_id  => 21,
  p_theme_class_id => 7,
  p_list_template_before_rows=>'<div class="sHFWTabs">'||chr(10)||
'<div class="sHTabs">'||chr(10)||
'	<div class="sHTabsInner">'||chr(10)||
'		<ul>',
  p_list_template_after_rows=>'			<li class="last"></li>'||chr(10)||
'		</ul>'||chr(10)||
'	</div>'||chr(10)||
'</div>'||chr(10)||
'</div>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/page_level_tabs_list
prompt  ......list template 4891831595313791
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li class="#LIST_STATUS#"><a href="#LINK#"><span></span>#TEXT#</a></li>';

t2:=t2||'<li class="#LIST_STATUS#"><a href="#LINK#"><span></span>#TEXT#</a></li>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>4891831595313791 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Page Level Tabs List',
  p_theme_id  => 21,
  p_theme_class_id => 7,
  p_list_template_before_rows=>'<div class="sBTabs">'||chr(10)||
'	<div class="sBTabsInner">'||chr(10)||
'		<ul>',
  p_list_template_after_rows=>'			<li class="last"></li>'||chr(10)||
'		</ul>'||chr(10)||
'	</div>'||chr(10)||
'</div>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/pull_down_menu
prompt  ......list template 4891909823313791
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li class="dhtmlMenuItem"><a href="#LINK#">#TEXT#</a></li>';

t2:=t2||'<li class="dhtmlMenuItem"><a href="#LINK#">#TEXT#</a></li>';

t3:=t3||'<li class="dhtmlMenuSep2"><img src="#IMAGE_PREFIX#themes/theme_13/1px_trans.gif"  width="1" height="1" alt="" class="dhtmlMenuSep2" /></li>';

t4:=t4||'<li><a href="#LINK#" class="dhtmlSubMenuN" onmouseover="dhtml_CloseAllSubMenusL(this)">#TEXT#</a></li>';

t5:=t5||'<li class="dhtmlMenuItem1"><a href="#LINK#">#TEXT#</a><img src="#IMAGE_PREFIX#themes/theme_21/images/menu-small.gif" alt="Expand" onclick="app_AppMenuMultiOpenBottom2(this,''#LIST_ITEM_ID#'',false)" />'||chr(10)||
'</li>';

t6:=t6||'<li class="dhtmlMenuItem1"><a href="#LINK#">#TEXT#</a><img src="#IMAGE_PREFIX#themes/theme_21/images/menu-small.gif" alt="Expand" onclick="app_AppMenuMultiOpenBottom2(this,''#LIST_ITEM_ID#'',false)" /></li>';

t7:=t7||'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" alt="" /></a></li>';

t8:=t8||'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" alt="" / ></a></li>';

wwv_flow_api.create_list_template (
  p_id=>4891909823313791 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Pull Down Menu',
  p_theme_id  => 21,
  p_theme_class_id => 20,
  p_list_template_before_rows=>'<ul class="dhtmlMenuLG2">',
  p_list_template_after_rows=>'</ul><br style="clear:both;"/><br style="clear:both;"/>',
  p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#" class="dhtmlSubMenu2" style="display:none;">',
  p_after_sub_list=>'</ul>',
  p_sub_list_item_current=> t3,
  p_sub_list_item_noncurrent=> t4,
  p_item_templ_curr_w_child=> t5,
  p_item_templ_noncurr_w_child=> t6,
  p_sub_templ_curr_w_child=> t7,
  p_sub_templ_noncurr_w_child=> t8,
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/pull_down_menu_with_image
prompt  ......list template 4892003725313791
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<div class="dhtmlMenuItem"><a href="#LINK#" id="#LIST_ITEM_ID#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR#  /></a><img src="#IMAGE_PREFIX#menu/drop_down_nochild.png" width="20" height="128" alt="" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>';

t2:=t2||'<div class="dhtmlMenuItem"><a href="#LINK#" id="#LIST_ITEM_ID#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR#  "/></a><img src="#IMAGE_PREFIX#menu/drop_down_nochild.png" width="20" height="128" alt="" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>';

t3:=t3||'<li class="dhtmlMenuSep"><img src="#IMAGE_PREFIX#themes/theme_13/1px_trans.gif"  width="1" height="1" alt=""  class="dhtmlMenuSep" /></li>';

t4:=t4||'<li><a href="#LINK#" class="dhtmlSubMenuN" onmouseover="dhtml_CloseAllSubMenusL(this)">#TEXT#</a></li>';

t5:=t5||'<div class="dhtmlMenuItem"><a href="#LINK#" id="#LIST_ITEM_ID#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR#  /></a><img src="#IMAGE_PREFIX#menu/drop_down.png" width="20" height="128" alt="" class="dhtmlMenu" onclick="app_AppMenuMultiOpenBottom3(this,''S#LIST_ITEM_ID#'',''#LIST_ITEM_ID#'',false)" />'||chr(10)||
'<a href="#LINK#" class="dhtmlBottom">#TEXT#</a>'||chr(10)||
'</div>';

t6:=t6||'<div class="dhtmlMenuItem"><a href="#LINK#" id="#LIST_ITEM_ID#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR#  /></a><img src="#IMAGE_PREFIX#menu/drop_down.png" width="20" height="128" alt=""  class="dhtmlMenu" onclick="app_AppMenuMultiOpenBottom3(this,''S#LIST_ITEM_ID#'',''#LIST_ITEM_ID#'',false)" />'||chr(10)||
'<a href="#LINK#" class="dhtmlBottom">#TEXT#</a>'||chr(10)||
'</div>';

t7:=t7||'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''S#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" /></a></li>';

t8:=t8||'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''S#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" /></a></li>';

wwv_flow_api.create_list_template (
  p_id=>4892003725313791 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Pull Down Menu with Image',
  p_theme_id  => 21,
  p_theme_class_id => 21,
  p_list_template_before_rows=>'<div class="dhtmlMenuLG">',
  p_list_template_after_rows=>'</div><br style="clear:both;"/><br style="clear:both;"/>',
  p_before_sub_list=>'<ul id="S#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#" class="dhtmlSubMenu2" style="display:none;"><li class="dhtmlSubMenuP" onmouseover="dhtml_CloseAllSubMenusL(this)">#PARENT_TEXT#</li>',
  p_after_sub_list=>'</ul>',
  p_sub_list_item_current=> t3,
  p_sub_list_item_noncurrent=> t4,
  p_item_templ_curr_w_child=> t5,
  p_item_templ_noncurr_w_child=> t6,
  p_sub_templ_curr_w_child=> t7,
  p_sub_templ_noncurr_w_child=> t8,
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/tabbed_navigation_list
prompt  ......list template 4892131151313791
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li class="active"><a href="#LINK#"><span>#TEXT#</span></a></li>';

t2:=t2||'<li><a href="#LINK#"><span>#TEXT#</span></a></li>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>4892131151313791 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Tabbed Navigation List',
  p_theme_id  => 21,
  p_theme_class_id => 7,
  p_list_template_before_rows=>'<div class="sHorizontalTabs">'||chr(10)||
'	<div class="sHorizontalTabsInner">'||chr(10)||
'		<ul>',
  p_list_template_after_rows=>'		</ul>'||chr(10)||
'	</div>'||chr(10)||
'</div>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/vertical_images_list
prompt  ......list template 4892200317313791
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<div class="list-item-current">'||chr(10)||
'  <div class="list-item-image"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# alt="" / ></div>'||chr(10)||
'  <div class="list-item-label"><a href="#LINK#" class="current">#TEXT#</a></div>'||chr(10)||
'</div>';

t2:=t2||'<div class="list-item">'||chr(10)||
'  <div class="list-item-image"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# alt="" / ></div>'||chr(10)||
'  <div class="list-item-label"><a href="#LINK#" class="current">#TEXT#</a></div>'||chr(10)||
'</div>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>4892200317313791 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Vertical Images List',
  p_theme_id  => 21,
  p_theme_class_id => 5,
  p_list_template_before_rows=>'<div class="vertical-images-list">',
  p_list_template_after_rows=>'</div>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/vertical_ordered_list
prompt  ......list template 4892316557313791
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li class="current">#TEXT#</li>';

t2:=t2||'<li><a href="#LINK#">#TEXT#</a></li>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>4892316557313791 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Vertical Ordered List',
  p_theme_id  => 21,
  p_theme_class_id => 2,
  p_list_template_before_rows=>'<ol class="vertical-ordered-List">',
  p_list_template_after_rows=>'</ol>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/vertical_sidebar_list
prompt  ......list template 4892431759313791
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li class="active"><a href="#LINK#">#TEXT#</a></li>';

t2:=t2||'<li><a href="#LINK#">#TEXT#</a></li>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>4892431759313791 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Vertical Sidebar List',
  p_theme_id  => 21,
  p_theme_class_id => 19,
  p_list_template_before_rows=>'<div class="vertical-sidebar-list">'||chr(10)||
'<ul>',
  p_list_template_after_rows=>'</ul>'||chr(10)||
'</div>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/vertical_unordered_list_with_bullets
prompt  ......list template 4892516885313791
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li class="current"><a href="#LINK#">#TEXT#</a></li>';

t2:=t2||'<li><a href="#LINK#">#TEXT#</a></li>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>4892516885313791 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Vertical Unordered List with Bullets',
  p_theme_id  => 21,
  p_theme_class_id => 1,
  p_list_template_before_rows=>'<ul class="vertical-unordered-list-with-bullets-alt">',
  p_list_template_after_rows=>'</ul>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/vertical_unordered_list_with_bullets_alternative
prompt  ......list template 4892615590313791
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li><a href="#LINK#">#TEXT#</a></li>';

t2:=t2||'<li><a href="#LINK#">#TEXT#</a></li>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>4892615590313791 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Vertical Unordered List with Bullets, Alternative',
  p_theme_id  => 21,
  p_theme_class_id => 1,
  p_list_template_before_rows=>'<ul class="vertical-unordered-list-with-bullets">',
  p_list_template_after_rows=>'</ul>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/vertical_unordered_list_without_bullets
prompt  ......list template 4892715424313792
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li class="current">#TEXT#</li>';

t2:=t2||'<li><a href="#LINK#">#TEXT#</a></li>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>4892715424313792 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Vertical Unordered List without Bullets',
  p_theme_id  => 21,
  p_theme_class_id => 18,
  p_list_template_before_rows=>'<ul class="vertical-unordered-list-without-bullets">',
  p_list_template_after_rows=>'</ul>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/wizard_progress_list
prompt  ......list template 4892831893313792
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li class="current">#TEXT#</li>';

t2:=t2||'<li class="non-current">#TEXT#</li>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>4892831893313792 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Wizard Progress List',
  p_theme_id  => 21,
  p_theme_class_id => 17,
  p_list_template_before_rows=>'<div class="wizard-progress-list" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#><ul>',
  p_list_template_after_rows=>'</ul></div>',
  p_between_items=>'<li class="progress-indicator">&nbsp;</li>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/wizard_progress_list_horizontal_train
prompt  ......list template 4892900817313792
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'    <li class="#LIST_STATUS#">'||chr(10)||
'      <span>#TEXT#</span>'||chr(10)||
'    </li>';

t2:=t2||'    <li class="#LIST_STATUS#">'||chr(10)||
'      <span>#TEXT#</span>'||chr(10)||
'    </li>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>4892900817313792 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Wizard Progress List, Horizontal Train',
  p_theme_id  => 21,
  p_theme_class_id => 17,
  p_list_template_before_rows=>'<div class="sHorizontalProgressList">'||chr(10)||
'  <ul>',
  p_list_template_after_rows=>'  </ul>'||chr(10)||
'</div>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

prompt  ...report templates
--
--application/shared_components/user_interface/templates/report/borderless_report
prompt  ......report template 4893010902313792
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<td#ALIGNMENT# headers="#COLUMN_HEADER_NAME#" class="data">#COLUMN_VALUE#</td>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 4893010902313792 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Borderless Report',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<table cellpadding="0" border="0" cellspacing="0" summary="" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">#TOP_PAGINATION#<tr>'||chr(10)||
'<td><table class="report-borderless" cellpadding="0" border="0" cellspacing="0" summary="">',
  p_row_template_after_rows =>'</table><div class="CSV">#EXTERNAL_LINK##CSV_LINK#</div></td>'||chr(10)||
'</tr>'||chr(10)||
'#PAGINATION#'||chr(10)||
'</table>',
  p_row_template_table_attr =>'',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template=>'<th class="header"#ALIGNMENT# id="#COLUMN_HEADER_NAME#">#COLUMN_HEADER#</th>',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_next_page_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT#</a>',
  p_previous_page_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS#</a>',
  p_next_set_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT_SET#</a>',
  p_previous_set_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS_SET#</a>',
  p_theme_id  => 21,
  p_theme_class_id => 1,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 4893010902313792 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'<tr #HIGHLIGHT_ROW#>',
  p_row_template_after_last =>'</tr>');
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/fixed_headers
prompt  ......report template 4893107059313792
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<td#ALIGNMENT# headers="#COLUMN_HEADER_NAME#" class="data" #COLUMN_WIDTH#><p #COLUMN_WIDTH#>#COLUMN_VALUE#</p></td>';

c2:=c2||'<td#ALIGNMENT# headers="#COLUMN_HEADER_NAME#" class="data-alt" #COLUMN_WIDTH#><p #COLUMN_WIDTH#>#COLUMN_VALUE#</p></td>';

c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 4893107059313792 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Fixed Headers',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<table border="0" cellpadding="0" cellspacing="0" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" class="report-holder">#TOP_PAGINATION#'||chr(10)||
'<tr>'||chr(10)||
'<td><div class="fixed-header-report"><table cellpadding="0" border="0" cellspacing="0" summary="">',
  p_row_template_after_rows =>'</tbody></table></div><div class="CSV">#EXTERNAL_LINK##CSV_LINK#</div></td>'||chr(10)||
'</tr>'||chr(10)||
'#PAGINATION#'||chr(10)||
'</table>',
  p_row_template_table_attr =>'OMIT',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_before_column_heading=>'<thead>'||chr(10)||
'',
  p_column_heading_template=>'<th#ALIGNMENT# id="#COLUMN_HEADER_NAME#" class="header" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>',
  p_after_column_heading=>'</thead>'||chr(10)||
'<tbody>'||chr(10)||
'',
  p_row_template_display_cond1=>'ODD_ROW_NUMBERS',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'ODD_ROW_NUMBERS',
  p_next_page_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT#</a>'||chr(10)||
'',
  p_previous_page_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS#</a>',
  p_next_set_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT_SET#</a>',
  p_previous_set_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS_SET#</a>',
  p_row_style_mouse_over=>'#D6D6D6',
  p_row_style_checked=>'#D6D6D6',
  p_theme_id  => 21,
  p_theme_class_id => 7,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 4893107059313792 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'<tr #HIGHLIGHT_ROW#>',
  p_row_template_after_last =>'</tr>'||chr(10)||
'');
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/horizontal_border
prompt  ......report template 4893205438313792
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<td#ALIGNMENT# headers="#COLUMN_HEADER_NAME#" class="data">#COLUMN_VALUE#</td>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 4893205438313792 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Horizontal Border',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<table cellpadding="0" border="0" cellspacing="0" summary="" class="horizontal-border" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">#TOP_PAGINATION#'||chr(10)||
'<tr>'||chr(10)||
'<td><table cellpadding="0" cellspacing="0" border="0" class="report-standard" summary="">',
  p_row_template_after_rows =>'</table><div class="CSV">#EXTERNAL_LINK##CSV_LINK#</div></td>'||chr(10)||
'</tr>'||chr(10)||
'#PAGINATION#'||chr(10)||
'</table>',
  p_row_template_table_attr =>'',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template=>'<th#ALIGNMENT# id="#COLUMN_HEADER_NAME#" class="header">#COLUMN_HEADER#</th>',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_next_page_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT#</a>',
  p_previous_page_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS#</a>',
  p_next_set_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT_SET#</a>',
  p_previous_set_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS_SET#</a>',
  p_row_style_checked=>'#ccc',
  p_theme_id  => 21,
  p_theme_class_id => 2,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 4893205438313792 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'<tr #HIGHLIGHT_ROW#>',
  p_row_template_after_last =>'</tr>');
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/one_column_unordered_list
prompt  ......report template 4893303590313792
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<li>#COLUMN_VALUE#</li>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 4893303590313792 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'One Column Unordered List',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<table cellpadding="0" cellspacing="0" summary="" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">'||chr(10)||
'#TOP_PAGINATION#'||chr(10)||
'<tr><td><ul class="t1OneColumnUnorderedList">',
  p_row_template_after_rows =>'</ul><div class="t1CVS">#EXTERNAL_LINK##CSV_LINK#</div></td></tr>'||chr(10)||
'#PAGINATION#'||chr(10)||
'</table>',
  p_row_template_table_attr =>'OMIT',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template=>'',
  p_row_template_display_cond1=>'NOT_CONDITIONAL',
  p_row_template_display_cond2=>'NOT_CONDITIONAL',
  p_row_template_display_cond3=>'NOT_CONDITIONAL',
  p_row_template_display_cond4=>'NOT_CONDITIONAL',
  p_next_page_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT#</a>',
  p_previous_page_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS#</a>',
  p_next_set_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT_SET#</a>',
  p_previous_set_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS_SET#</a>',
  p_theme_id  => 21,
  p_theme_class_id => 3,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 4893303590313792 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'OMIT',
  p_row_template_after_last =>'OMIT');
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/search_results_report_select_link_text_link_target_detail1_detail2_last_modified
prompt  ......report template 4893410565313792
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<li>'||chr(10)||
'<span class="title"><a href="#2#">#1#</a></span>'||chr(10)||
'<span class="description"><span class="last_modified">#5#</span>#3#</span>'||chr(10)||
'<span class="type">#4#</span>'||chr(10)||
'</li>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 4893410565313792 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Search Results Report (SELECT link_text, link_target, detail1, detail2, last_modified)',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<ul class="sSearchResultsReport">',
  p_row_template_after_rows =>'</ul> '||chr(10)||
'#PAGINATION#',
  p_row_template_table_attr =>'',
  p_row_template_type =>'NAMED_COLUMNS',
  p_column_heading_template=>'',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_next_page_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT#</a>',
  p_previous_page_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS#</a>',
  p_next_set_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT_SET#</a>',
  p_previous_set_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS_SET#</a>',
  p_theme_id  => 21,
  p_theme_class_id => 1,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/standard
prompt  ......report template 4893522550313792
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<td#ALIGNMENT# headers="#COLUMN_HEADER_NAME#" class="data">#COLUMN_VALUE#</td>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 4893522550313792 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Standard',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<table cellpadding="0" border="0" cellspacing="0" summary="" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">#TOP_PAGINATION#'||chr(10)||
'<tr>'||chr(10)||
'<td><table cellpadding="0" border="0" cellspacing="0" summary="" class="report-standard">',
  p_row_template_after_rows =>'</table><div class="CSV">#EXTERNAL_LINK##CSV_LINK#</div></td>'||chr(10)||
'</tr>'||chr(10)||
'#PAGINATION#'||chr(10)||
'</table>',
  p_row_template_table_attr =>'',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template=>'<th#ALIGNMENT# id="#COLUMN_HEADER_NAME#" class="header">#COLUMN_HEADER#</th>',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_next_page_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT#</a>',
  p_previous_page_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS#</a>',
  p_next_set_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT_SET#</a>',
  p_previous_set_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS_SET#</a>',
  p_row_style_mouse_over=>'#F0F0F0',
  p_row_style_checked=>'#E8E8E8',
  p_theme_id  => 21,
  p_theme_class_id => 4,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 4893522550313792 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'<tr #HIGHLIGHT_ROW#>',
  p_row_template_after_last =>'</tr>');
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/standard_alternating_row_colors
prompt  ......report template 4893609584313792
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<td class="data"#ALIGNMENT#>#COLUMN_VALUE#</td>';

c2:=c2||'<td class="dataalt"#ALIGNMENT#>#COLUMN_VALUE#</td>';

c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 4893609584313792 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Standard, Alternating Row Colors',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<table border="0" cellpadding="0" cellspacing="0" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" class="report-holder">#TOP_PAGINATION#<tr><td>'||chr(10)||
'<table border="0" cellpadding="0" cellspacing="0" class="report-standard-alternatingrowcolors" summary="" >',
  p_row_template_after_rows =>'</table><div class="CSV">#EXTERNAL_LINK##CSV_LINK#</div></td>'||chr(10)||
'</tr>'||chr(10)||
'#PAGINATION#'||chr(10)||
'</table>',
  p_row_template_table_attr =>'OMIT',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template=>'<th class="header"#ALIGNMENT# id="#COLUMN_HEADER_NAME#">#COLUMN_HEADER#</th>',
  p_row_template_display_cond1=>'ODD_ROW_NUMBERS',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'ODD_ROW_NUMBERS',
  p_next_page_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT#</a>',
  p_previous_page_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS#</a>',
  p_next_set_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT_SET#</a>',
  p_previous_set_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS_SET#</a>',
  p_theme_id  => 21,
  p_theme_class_id => 5,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 4893609584313792 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'<tr #HIGHLIGHT_ROW#>',
  p_row_template_after_last =>'</tr>'||chr(10)||
'');
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/two_column_portlet
prompt  ......report template 4893719235313793
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<div class="report-row">'||chr(10)||
'  <div class="report-col-hdr">#1#</div>'||chr(10)||
'  <div class="report-col-val">#2#</div>'||chr(10)||
'</div>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 4893719235313793 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Two Column Portlet',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<div class="two-col-report-portlet" #REPORT_ATTRIBUTES# id="#REGION_ID#">',
  p_row_template_after_rows =>'</div>',
  p_row_template_table_attr =>'',
  p_row_template_type =>'NAMED_COLUMNS',
  p_column_heading_template=>'',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_theme_id  => 21,
  p_theme_class_id => 7,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/value_attribute_pairs_div
prompt  ......report template 4893832705313793
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<div class="report-row">'||chr(10)||
'  <div class="report-col-hdr">#COLUMN_HEADER#</div>'||chr(10)||
'  <div class="report-col-val">#COLUMN_VALUE#</div>'||chr(10)||
'</div>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 4893832705313793 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Value Attribute Pairs - Div',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<div class="two-col-report-portlet">',
  p_row_template_after_rows =>'</div>',
  p_row_template_table_attr =>'',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template=>'',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_theme_id  => 21,
  p_theme_class_id => 6,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/value_attribute_pairs_table
prompt  ......report template 4893905548313793
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<tr><th class="header">#COLUMN_HEADER#</th><td class="data">#COLUMN_VALUE#</td></tr>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 4893905548313793 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Value Attribute Pairs - Table',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<table cellpadding="0" border="0" cellspacing="0" summary="" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" class="ValueAttributePairsParent">#TOP_PAGINATION#<tr><td><table cellpadding="0" cellspacing="0" border="0" summary="" class="ValueAttributePairs">',
  p_row_template_after_rows =>'</table><div class="CSV">#EXTERNAL_LINK##CSV_LINK#</div></td></tr>#PAGINATION#</table>',
  p_row_template_table_attr =>'',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template=>'',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_next_page_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT#</a>',
  p_previous_page_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS#</a>',
  p_next_set_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT_SET#</a>',
  p_previous_set_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS_SET#</a>',
  p_theme_id  => 21,
  p_theme_class_id => 6,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

prompt  ...label templates
--
--application/shared_components/user_interface/templates/label/no_label
prompt  ......label template 4894022403313793
 
begin
 
begin
wwv_flow_api.create_field_template (
  p_id=> 4894022403313793 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_template_name=>'No Label',
  p_template_body1=>'<span class="hidden-label">',
  p_template_body2=>'</span>',
  p_on_error_before_label=>'<div class="t1InlineError">',
  p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>',
  p_theme_id  => 21,
  p_theme_class_id => 13,
  p_translate_this_template=> 'N',
  p_template_comment=> '');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/label/optional
prompt  ......label template 4894130427313793
 
begin
 
begin
wwv_flow_api.create_field_template (
  p_id=> 4894130427313793 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_template_name=>'Optional',
  p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" tabindex="999"><span class="optional">',
  p_template_body2=>'</span></label>',
  p_on_error_before_label=>'<div class="t1InlineError">',
  p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>',
  p_theme_id  => 21,
  p_theme_class_id => 3,
  p_translate_this_template=> 'N',
  p_template_comment=> '');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/label/optional_with_help
prompt  ......label template 4894215352313793
 
begin
 
begin
wwv_flow_api.create_field_template (
  p_id=> 4894215352313793 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_template_name=>'Optional with help',
  p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" tabindex="999"><a class="optional-w-help" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')" tabindex="999">',
  p_template_body2=>'</a></label>',
  p_on_error_before_label=>'<div class="t1InlineError">',
  p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>',
  p_theme_id  => 21,
  p_theme_class_id => 1,
  p_translate_this_template=> 'N',
  p_template_comment=> '');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/label/required
prompt  ......label template 4894301379313793
 
begin
 
begin
wwv_flow_api.create_field_template (
  p_id=> 4894301379313793 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_template_name=>'Required',
  p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" tabindex="999"><img src="#IMAGE_PREFIX#themes/theme_21/images/required.png" alt="#VALUE_REQUIRED#" tabindex="999" /> <span class="required">',
  p_template_body2=>'</span></label>',
  p_on_error_before_label=>'<div class="t1InlineError">',
  p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>',
  p_theme_id  => 21,
  p_theme_class_id => 4,
  p_translate_this_template=> 'N',
  p_template_comment=> '');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/label/required_with_help
prompt  ......label template 4894422955313793
 
begin
 
begin
wwv_flow_api.create_field_template (
  p_id=> 4894422955313793 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_template_name=>'Required with help',
  p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" tabindex="999"><a class="required-w-help" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')" tabindex="999"><img src="#IMAGE_PREFIX#themes/theme_21/images/required.png" alt="#VALUE_REQUIRED#" tabindex="999" /> ',
  p_template_body2=>'</a></label>',
  p_on_error_before_label=>'<div class="t1InlineError">',
  p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>',
  p_theme_id  => 21,
  p_theme_class_id => 2,
  p_translate_this_template=> 'N',
  p_template_comment=> '');
end;
null;
 
end;
/

prompt  ...breadcrumb templates
--
--application/shared_components/user_interface/templates/breadcrumb/breadcrumb_menu
prompt  ......template 4894521001313793
 
begin
 
begin
wwv_flow_api.create_menu_template (
  p_id=> 4894521001313793 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=>'Breadcrumb Menu',
  p_before_first=>'<div id="breadcrumb_container">'||chr(10)||
'	<ul>'||chr(10)||
'		<li class="open"><span></span></li>',
  p_current_page_option=>'		<li class="active"><a href="#LINK#">#NAME#</a></li>',
  p_non_current_page_option=>'		<li><a href="#LINK#">#NAME#</a></li>',
  p_menu_link_attributes=>'',
  p_between_levels=>'		<li class="sep"><span></span></li>',
  p_after_last=>'		<li class="close"><span></span></li>'||chr(10)||
'	</ul>'||chr(10)||
'</div>',
  p_max_levels=>12,
  p_start_with_node=>'PARENT_TO_LEAF',
  p_theme_id  => 21,
  p_theme_class_id => 1,
  p_translate_this_template => 'N',
  p_template_comments=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/breadcrumb/hierarchical_menu
prompt  ......template 4894622660313793
 
begin
 
begin
wwv_flow_api.create_menu_template (
  p_id=> 4894622660313793 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=>'Hierarchical Menu',
  p_before_first=>'<ul class="t1HierarchicalMenu">',
  p_current_page_option=>'<li class="t1current">#NAME#</li>',
  p_non_current_page_option=>'<li><a href="#LINK#">#NAME#</a></li>',
  p_menu_link_attributes=>'',
  p_between_levels=>'',
  p_after_last=>'</ul>',
  p_max_levels=>11,
  p_start_with_node=>'CHILD_MENU',
  p_theme_id  => 21,
  p_theme_class_id => 2,
  p_translate_this_template => 'N',
  p_template_comments=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/popuplov
prompt  ...popup list of values templates
--
prompt  ......template 4895310909313793
 
begin
 
begin
wwv_flow_api.create_popup_lov_template (
  p_id=> 4895310909313793 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_popup_icon=>'#IMAGE_PREFIX#themes/theme_21/images/sPopupLOVIcon.png',
  p_popup_icon_attr=>'alt="Popup Lov"',
  p_popup_icon2=>'',
  p_popup_icon_attr2=>'',
  p_page_name=>'winlov',
  p_page_title=>'Search Dialog',
  p_page_html_head=>'<link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0.css" type="text/css" media="all"/>',
  p_page_body_attr=>'onload="first_field()" class="pop-up-lov"',
  p_before_field_text=>'<div class="t1PopupHead">',
  p_page_heading_text=>'',
  p_page_footer_text =>'',
  p_filter_width     =>'20',
  p_filter_max_width =>'100',
  p_filter_text_attr =>'',
  p_find_button_text =>'Search',
  p_find_button_image=>'',
  p_find_button_attr =>'',
  p_close_button_text=>'Close',
  p_close_button_image=>'',
  p_close_button_attr=>'',
  p_next_button_text =>'Next >',
  p_next_button_image=>'',
  p_next_button_attr =>'',
  p_prev_button_text =>'< Previous',
  p_prev_button_image=>'',
  p_prev_button_attr =>'',
  p_after_field_text=>'</div>',
  p_scrollbars=>'1',
  p_resizable=>'1',
  p_width =>'400',
  p_height=>'450',
  p_result_row_x_of_y=>'<div style="padding:5px 10px; font-size:10px;">Row(s) #FIRST_ROW# - #LAST_ROW#</div>',
  p_result_rows_per_pg=>500,
  p_before_result_set=>'<div class="t1PopupBody">',
  p_theme_id  => 21,
  p_theme_class_id => 1,
  p_translate_this_template => 'N',
  p_after_result_set   =>'</div>');
end;
null;
 
end;
/

prompt  ...calendar templates
--
--application/shared_components/user_interface/templates/calendar/calendar
prompt  ......template 4894721366313793
 
begin
 
begin
wwv_flow_api.create_calendar_template(
  p_id=> 4894721366313793 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_cal_template_name=>'Calendar',
  p_translate_this_template=> 'N',
  p_day_of_week_format=> '<th class="DayOfWeek">#IDAY#</th>',
  p_month_title_format=> '<table cellspacing="0" cellpadding="0" border="0" summary="" class="CalendarHolder"> '||chr(10)||
' <tr>'||chr(10)||
'   <td class="MonthTitle">#IMONTH# #YYYY#</td>'||chr(10)||
' </tr>'||chr(10)||
' <tr>'||chr(10)||
' <td>',
  p_month_open_format=> '<table border="0" cellpadding="0" cellspacing="0" summary="0" class="Calendar">',
  p_month_close_format=> '</table></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'',
  p_day_title_format=> '<div class="DayTitle">#DD#</div>',
  p_day_open_format=> '<td class="Day" valign="top">',
  p_day_close_format=> '</td>',
  p_today_open_format=> '<td valign="top" class="Today">',
  p_weekend_title_format=> '<div class="WeekendDayTitle">#DD#</div>',
  p_weekend_open_format => '<td valign="top" class="WeekendDay">',
  p_weekend_close_format => '</td>',
  p_nonday_title_format => '<div class="NonDayTitle">#DD#</div>',
  p_nonday_open_format => '<td class="NonDay" valign="top">',
  p_nonday_close_format => '</td>',
  p_week_title_format => '',
  p_week_open_format => '<tr>',
  p_week_close_format => '</tr> ',
  p_daily_title_format => '<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>',
  p_daily_open_format => '<tr>',
  p_daily_close_format => '</tr>',
  p_weekly_title_format => '<table cellspacing="0" cellpadding="0" border="0" summary="" class="WeekCalendarHolder">'||chr(10)||
'<tr>'||chr(10)||
'<td class="MonthTitle" id="test">#WTITLE#</td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td>',
  p_weekly_day_of_week_format => '<th class="DayOfWeek">#IDAY#<br>#MM#/#DD#</th>',
  p_weekly_month_open_format => '<table border="0" cellpadding="0" cellspacing="0" summary="0" class="WeekCalendar">',
  p_weekly_month_close_format => '</table></td></tr></table>',
  p_weekly_day_title_format => '',
  p_weekly_day_open_format => '<td class="Day" valign="top">',
  p_weekly_day_close_format => '<br /></td>',
  p_weekly_today_open_format => '<td class="Today" valign="top">',
  p_weekly_weekend_title_format => '',
  p_weekly_weekend_open_format => '<td valign="top" class="NonDay">',
  p_weekly_weekend_close_format => '<br /></td>',
  p_weekly_time_open_format => '<th class="Hour">',
  p_weekly_time_close_format => '<br /></th>',
  p_weekly_time_title_format => '#TIME#',
  p_weekly_hour_open_format => '<tr>',
  p_weekly_hour_close_format => '</tr>',
  p_daily_day_of_week_format => '<th class="DayOfWeek">#IDAY# #DD#/#MM#</th>',
  p_daily_month_title_format => '<table cellspacing="0" cellpadding="0" border="0" summary="" class="DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>'||chr(10)||
'',
  p_daily_month_open_format => '<table border="0" cellpadding="2" cellspacing="0" summary="0" class="DayCalendar">',
  p_daily_month_close_format => '</table></td> </tr> </table>',
  p_daily_day_title_format => '',
  p_daily_day_open_format => '<td valign="top" class="Day">',
  p_daily_day_close_format => '<br /></td>',
  p_daily_today_open_format => '<td valign="top" class="Today">',
  p_daily_time_open_format => '<th class="Hour">',
  p_daily_time_close_format => '<br /></th>',
  p_daily_time_title_format => '#TIME#',
  p_daily_hour_open_format => '<tr>',
  p_daily_hour_close_format => '</tr>',
  p_cust_month_title_format => '<table cellspacing="0" cellpadding="0" border="0" summary="" class="CalendarHolder"> '||chr(10)||
' <tr>'||chr(10)||
'   <td class="MonthTitle">#WTITLE#</td>'||chr(10)||
' </tr>'||chr(10)||
' <tr>'||chr(10)||
' <td>',
  p_cust_day_of_week_format => '<th class="DayOfWeek">#IDAY#</th>',
  p_cust_month_open_format => '<table border="0" cellpadding="0" cellspacing="0" summary="0" class="Calendar">',
  p_cust_month_close_format => '</table></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'',
  p_cust_week_title_format => '',
  p_cust_week_open_format => '<tr>',
  p_cust_week_close_format => '</tr> ',
  p_cust_day_title_format => '<div class="DayTitle">#DD#</div>',
  p_cust_day_open_format => '<td style="#COL_HEIGHT_PIX# #COL_HEIGHT_PER#" class="Day" valign="top">',
  p_cust_day_close_format => '</td>',
  p_cust_today_open_format => '<td style="#COL_HEIGHT_PIX# #COL_HEIGHT_PER#" valign="top" class="Today">',
  p_cust_daily_title_format => '',
  p_cust_daily_open_format => '',
  p_cust_daily_close_format => '',
  p_cust_nonday_title_format => '<div class="NonDayTitle">#DD#</div>',
  p_cust_nonday_open_format => '<td style="#COL_HEIGHT_PIX# #COL_HEIGHT_PER#" class="NonDay" valign="top">',
  p_cust_nonday_close_format => '</td>',
  p_cust_weekend_title_format => '<div class="WeekendDayTitle">#DD#</div>',
  p_cust_weekend_open_format => '<td style="#COL_HEIGHT_PIX# #COL_HEIGHT_PER#" valign="top" class="WeekendDay">',
  p_cust_weekend_close_format => '</td>',
  p_cust_hour_open_format => '<tr>',
  p_cust_hour_close_format => '</tr>',
  p_cust_time_title_format => '#TIME#',
  p_cust_time_open_format => '<th class="Hour">',
  p_cust_time_close_format => '<br /></th>',
  p_cust_wk_month_title_format => '<table cellspacing="0" cellpadding="0" border="0" summary="" class="WeekCalendarHolder">'||chr(10)||
'<tr>'||chr(10)||
'<td class="MonthTitle" id="test">#WTITLE#</td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td>',
  p_cust_wk_day_of_week_format => '<th class="DayOfWeek">#IDAY#<br>#MM#/#DD#</th>',
  p_cust_wk_month_open_format => '<table border="0" cellpadding="0" cellspacing="0" summary="0" class="WeekCalendar">',
  p_cust_wk_month_close_format => '</table></td></tr></table>',
  p_cust_wk_week_title_format => '',
  p_cust_wk_week_open_format => '',
  p_cust_wk_week_close_format => '',
  p_cust_wk_day_title_format => '',
  p_cust_wk_day_open_format => '<td style="#COL_WIDTH_PIX# #COL_WIDTH_PER#" class="Day" valign="top">',
  p_cust_wk_day_close_format => '<br /></td>',
  p_cust_wk_today_open_format => '<td style="#COL_WIDTH_PIX# #COL_WIDTH_PER#" class="Today" valign="top">',
  p_cust_wk_weekend_title_format => '',
  p_cust_wk_weekend_open_format => '<td style="#COL_WIDTH_PIX# #COL_WIDTH_PER#" valign="top" class="NonDay">',
  p_cust_wk_weekend_close_format => '<br /></td>',
  p_cust_month_day_height_pix => '75',
  p_cust_month_day_height_per => '',
  p_cust_week_day_width_pix => '',
  p_cust_week_day_width_per => '14',
  p_theme_id  => 21,
  p_theme_class_id => 1,
  p_reference_id=> null);
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/calendar/calendar_alternative_1
prompt  ......template 4894917444313793
 
begin
 
begin
wwv_flow_api.create_calendar_template(
  p_id=> 4894917444313793 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_cal_template_name=>'Calendar, Alternative 1',
  p_translate_this_template=> 'N',
  p_day_of_week_format=> '<th valign="bottom" class="DayOfWeek">#IDAY#</th>',
  p_month_title_format=> '<table cellspacing="0" cellpadding="0" border="0" summary="" class="CalendarAlternative1Holder"> '||chr(10)||
' <tr>'||chr(10)||
'   <td class="MonthTitle">#IMONTH# #YYYY#</td>'||chr(10)||
' </tr>'||chr(10)||
' <tr>'||chr(10)||
' <td>',
  p_month_open_format=> '<table border="0" cellpadding="0" cellspacing="0" summary="0" class="CalendarAlternative1">',
  p_month_close_format=> '</table></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'',
  p_day_title_format=> '<div class="DayTitle">#DD#</div>',
  p_day_open_format=> '<td class="Day" valign="top" height="100" height="100">',
  p_day_close_format=> '</td>',
  p_today_open_format=> '<td valign="top" class="Today">',
  p_weekend_title_format=> '<div class="WeekendDayTitle">#DD#</div>',
  p_weekend_open_format => '<td valign="top" class="WeekendDay">',
  p_weekend_close_format => '</td>',
  p_nonday_title_format => '<div class="NonDayTitle">#DD#</div>',
  p_nonday_open_format => '<td class="NonDay" valign="top">',
  p_nonday_close_format => '</td>',
  p_week_title_format => '',
  p_week_open_format => '<tr>',
  p_week_close_format => '</tr> ',
  p_daily_title_format => '<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>',
  p_daily_open_format => '<tr>',
  p_daily_close_format => '</tr>',
  p_weekly_title_format => '<table cellspacing="0" cellpadding="0" border="0" summary="" class="WeekCalendarAlternative1Holder">'||chr(10)||
'<tr>'||chr(10)||
'<td class="MonthTitle">#WTITLE#</td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td>',
  p_weekly_day_of_week_format => '<th class="DayOfWeek">#IDAY#<br>#MM#/#DD#</th>',
  p_weekly_month_open_format => '<table border="0" cellpadding="0" cellspacing="0" summary="0" class="WeekCalendarAlternative1">',
  p_weekly_month_close_format => '</table></td></tr></table>',
  p_weekly_day_title_format => '',
  p_weekly_day_open_format => '<td class="Day" valign="top">',
  p_weekly_day_close_format => '<br /></td>',
  p_weekly_today_open_format => '<td class="Today" valign="top">',
  p_weekly_weekend_title_format => '',
  p_weekly_weekend_open_format => '<td valign="top" class="NonDay">',
  p_weekly_weekend_close_format => '<br /></td>',
  p_weekly_time_open_format => '<th class="Hour">',
  p_weekly_time_close_format => '<br /></th>',
  p_weekly_time_title_format => '#TIME#',
  p_weekly_hour_open_format => '<tr>',
  p_weekly_hour_close_format => '</tr>',
  p_daily_day_of_week_format => '<th class="DayOfWeek">#IDAY# #DD#/#MM#</th>',
  p_daily_month_title_format => '<table cellspacing="0" cellpadding="0" border="0" summary="" class="DayCalendarAlternative1Holder"> <tr><td class="MonthTitle">#IMONTH# #DD#, #YYYY#</td></tr><tr><td>'||chr(10)||
'',
  p_daily_month_open_format => '<table border="0" cellpadding="0" cellspacing="0" summary="0" class="DayCalendarAlternative1">',
  p_daily_month_close_format => '</table></td> </tr> </table>',
  p_daily_day_title_format => '',
  p_daily_day_open_format => '<td valign="top" class="Day">',
  p_daily_day_close_format => '<br /></td>',
  p_daily_today_open_format => '<td valign="top" class="Today">',
  p_daily_time_open_format => '<th class="Hour">',
  p_daily_time_close_format => '<br /></th>',
  p_daily_time_title_format => '#TIME#',
  p_daily_hour_open_format => '<tr>',
  p_daily_hour_close_format => '</tr>',
  p_cust_month_title_format => '<table cellspacing="0" cellpadding="0" border="0" summary="" class="CalendarAlternative1Holder"> '||chr(10)||
' <tr>'||chr(10)||
'   <td class="MonthTitle">#WTITLE#</td>'||chr(10)||
' </tr>'||chr(10)||
' <tr>'||chr(10)||
' <td>',
  p_cust_day_of_week_format => '<th valign="bottom" class="DayOfWeek">#IDAY#</th>',
  p_cust_month_open_format => '<table border="0" cellpadding="0" cellspacing="4" summary="0" class="CalendarAlternative1">'||chr(10)||
'',
  p_cust_month_close_format => '</table></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>',
  p_cust_week_title_format => '',
  p_cust_week_open_format => '<tr>',
  p_cust_week_close_format => '</tr>',
  p_cust_day_title_format => '<div class="DayTitle">#DD#</div>',
  p_cust_day_open_format => '<td style="#COL_HEIGHT_PIX# #COL_HEIGHT_PER#" class="Day" valign="top" height="100" height="100">',
  p_cust_day_close_format => '</td>',
  p_cust_today_open_format => '<td style="#COL_HEIGHT_PIX# #COL_HEIGHT_PER#" valign="top" class="Today">',
  p_cust_daily_title_format => '',
  p_cust_daily_open_format => '',
  p_cust_daily_close_format => '',
  p_cust_nonday_title_format => '<div class="NonDayTitle">#DD#</div>',
  p_cust_nonday_open_format => '<td style="#COL_HEIGHT_PIX# #COL_HEIGHT_PER#" class="NonDay" valign="top">',
  p_cust_nonday_close_format => '</td>',
  p_cust_weekend_title_format => '<div class="WeekendDayTitle">#DD#</div>',
  p_cust_weekend_open_format => '<td style="#COL_HEIGHT_PIX# #COL_HEIGHT_PER#" valign="top" class="WeekendDay">',
  p_cust_weekend_close_format => '</td>',
  p_cust_hour_open_format => '<tr>',
  p_cust_hour_close_format => '</tr>',
  p_cust_time_title_format => '#TIME#',
  p_cust_time_open_format => '<th class="Hour">',
  p_cust_time_close_format => '<br /></th>',
  p_cust_wk_month_title_format => '<table cellspacing="4" cellpadding="0" border="0" summary="" class="WeekCalendarAlternative1Holder">'||chr(10)||
'<tr>'||chr(10)||
'<td class="MonthTitle" id="test">#WTITLE#</td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td>',
  p_cust_wk_day_of_week_format => '<th class="DayOfWeek">#IDAY#<br>#MM#/#DD#</th>',
  p_cust_wk_month_open_format => '<table border="0" cellpadding="0" cellspacing="4" summary="0" class="WeekCalendarAlternative1">'||chr(10)||
'',
  p_cust_wk_month_close_format => '</table></td></tr></table>',
  p_cust_wk_week_title_format => '',
  p_cust_wk_week_open_format => '',
  p_cust_wk_week_close_format => '',
  p_cust_wk_day_title_format => '',
  p_cust_wk_day_open_format => '<td style="#COL_WIDTH_PIX# #COL_WIDTH_PER#" class="Day" valign="top">',
  p_cust_wk_day_close_format => '<br /></td>',
  p_cust_wk_today_open_format => '<td style="#COL_WIDTH_PIX# #COL_WIDTH_PER#" class="Today" valign="top">',
  p_cust_wk_weekend_title_format => '',
  p_cust_wk_weekend_open_format => '<td style="#COL_WIDTH_PIX# #COL_WIDTH_PER#" valign="top" class="NonDay">',
  p_cust_wk_weekend_close_format => '<br /></td>',
  p_cust_month_day_height_pix => '100',
  p_cust_month_day_height_per => '',
  p_cust_week_day_width_pix => '100',
  p_cust_week_day_width_per => '',
  p_theme_id  => 21,
  p_theme_class_id => 2,
  p_reference_id=> null);
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/calendar/small_calendar
prompt  ......template 4895115488313793
 
begin
 
begin
wwv_flow_api.create_calendar_template(
  p_id=> 4895115488313793 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_cal_template_name=>'Small Calendar',
  p_translate_this_template=> 'N',
  p_day_of_week_format=> '<th class="day-of-week">#DY#</th>',
  p_month_title_format=> '<table cellspacing="0" cellpadding="0" border="0" summary="" class="small-calendar-holder"> '||chr(10)||
' <tr>'||chr(10)||
'   <td class="month-title">#IMONTH# #YYYY#</td>'||chr(10)||
' </tr>'||chr(10)||
' <tr>'||chr(10)||
' <td>',
  p_month_open_format=> '<table border="0" cellpadding="0" cellspacing="0" summary="" class="small-calendar">',
  p_month_close_format=> '</table></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>',
  p_day_title_format=> '<div class="day-title">#DD#</div>',
  p_day_open_format=> '<td class="day" valign="top">',
  p_day_close_format=> '</td>',
  p_today_open_format=> '<td valign="top" class="today">',
  p_weekend_title_format=> '<div class="weekend-day-title">#DD#</div>',
  p_weekend_open_format => '<td valign="top" class="weekend-day">',
  p_weekend_close_format => '</td>',
  p_nonday_title_format => '<div class="non-day-title">#DD#</div>',
  p_nonday_open_format => '<td class="non-day" valign="top">',
  p_nonday_close_format => '</td>',
  p_week_title_format => '',
  p_week_open_format => '<tr>',
  p_week_close_format => '</tr> ',
  p_daily_title_format => '<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>',
  p_daily_open_format => '<tr>',
  p_daily_close_format => '</tr>',
  p_weekly_title_format => '<table cellspacing="0" cellpadding="0" border="0" summary="" class="SmallWeekCalendarHolder">'||chr(10)||
'<tr>'||chr(10)||
'<td class="MonthTitle" id="test">#WTITLE#</td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td>',
  p_weekly_day_of_week_format => '<th class="DayOfWeek">#DY#<br />#MM#/#DD#</th>',
  p_weekly_month_open_format => '<table border="0" cellpadding="0" cellspacing="0" summary="0" class="SmallWeekCalendar">',
  p_weekly_month_close_format => '</table></td></tr></table>',
  p_weekly_day_title_format => '',
  p_weekly_day_open_format => '<td class="Day" valign="top"><div class="inner">',
  p_weekly_day_close_format => '</div></td>',
  p_weekly_today_open_format => '<td class="t1Today" valign="top"><div class="inner">',
  p_weekly_weekend_title_format => '',
  p_weekly_weekend_open_format => '<td valign="top" class="NonDay"><div class="inner">',
  p_weekly_weekend_close_format => '</div></td>',
  p_weekly_time_open_format => '<th class="Hour">',
  p_weekly_time_close_format => '<br /></th>',
  p_weekly_time_title_format => '#TIME#',
  p_weekly_hour_open_format => '<tr>',
  p_weekly_hour_close_format => '</tr>',
  p_daily_day_of_week_format => '<th class="DayOfWeek">#DY# #DD#/#MM#</th>',
  p_daily_month_title_format => '<table cellspacing="0" cellpadding="0" border="0" summary="" class="SmallDayCalendarHolder"> <tr> <td class="MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr><tr><td>'||chr(10)||
'',
  p_daily_month_open_format => '<table border="0" cellpadding="0" cellspacing="0" summary="0" class="SmallDayCalendar">',
  p_daily_month_close_format => '</table></td></tr></table>',
  p_daily_day_title_format => '',
  p_daily_day_open_format => '<td valign="top" class="Day">',
  p_daily_day_close_format => '<br /></td>',
  p_daily_today_open_format => '<td valign="top" class="Today">',
  p_daily_time_open_format => '<th class="Hour">',
  p_daily_time_close_format => '<br /></th>',
  p_daily_time_title_format => '#TIME#',
  p_daily_hour_open_format => '<tr>',
  p_daily_hour_close_format => '</tr>',
  p_cust_month_title_format => '<table cellspacing="2" cellpadding="0" border="0" summary="" class="small-calendar-holder"> '||chr(10)||
' <tr>'||chr(10)||
'   <td class="month-title">#WTITLE#</td>'||chr(10)||
' </tr>'||chr(10)||
' <tr>'||chr(10)||
' <td>',
  p_cust_day_of_week_format => '<th class="day-of-week">#DY#</th>',
  p_cust_month_open_format => '<table border="0" cellpadding="0" cellspacing="2" summary="" class="small-calendar">',
  p_cust_month_close_format => '</table></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>',
  p_cust_week_title_format => '',
  p_cust_week_open_format => '<tr>',
  p_cust_week_close_format => '</tr>',
  p_cust_day_title_format => '<div class="day-title">#DD#</div>',
  p_cust_day_open_format => '<td style="#COL_HEIGHT_PIX# #COL_HEIGHT_PER#" class="day" valign="top">',
  p_cust_day_close_format => '</td>',
  p_cust_today_open_format => '<td style="#COL_HEIGHT_PIX# #COL_HEIGHT_PER#" valign="top" class="today">',
  p_cust_daily_title_format => '',
  p_cust_daily_open_format => '',
  p_cust_daily_close_format => '',
  p_cust_nonday_title_format => '<div class="non-day-title">#DD#</div>',
  p_cust_nonday_open_format => '<td style="#COL_HEIGHT_PIX# #COL_HEIGHT_PER#" class="non-day" valign="top">',
  p_cust_nonday_close_format => '</td>',
  p_cust_weekend_title_format => '<div class="weekend-day-title">#DD#</div>',
  p_cust_weekend_open_format => '<td style="#COL_HEIGHT_PIX# #COL_HEIGHT_PER#" valign="top" class="weekend-day">',
  p_cust_weekend_close_format => '</td>',
  p_cust_hour_open_format => '<tr>',
  p_cust_hour_close_format => '</tr>',
  p_cust_time_title_format => '#TIME#',
  p_cust_time_open_format => '<th class="Hour">',
  p_cust_time_close_format => '<br /></th>',
  p_cust_wk_month_title_format => '<table cellspacing="2" cellpadding="0" border="0" summary="" class="SmallWeekCalendarHolder">'||chr(10)||
'<tr>'||chr(10)||
'<td class="MonthTitle" id="test">#WTITLE#</td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td>',
  p_cust_wk_day_of_week_format => '<th class="DayOfWeek">#DY#<br />#MM#/#DD#</th>',
  p_cust_wk_month_open_format => '<table border="0" cellpadding="0" cellspacing="2" summary="0" class="SmallWeekCalendar">',
  p_cust_wk_month_close_format => '</table></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>',
  p_cust_wk_week_title_format => '',
  p_cust_wk_week_open_format => '',
  p_cust_wk_week_close_format => '',
  p_cust_wk_day_title_format => '',
  p_cust_wk_day_open_format => '<td style="#COL_WIDTH_PIX# #COL_WIDTH_PER#" class="Day" valign="top">',
  p_cust_wk_day_close_format => '<br /></td>',
  p_cust_wk_today_open_format => '<td style="#COL_WIDTH_PIX# #COL_WIDTH_PER#" class="t1Today" valign="top">',
  p_cust_wk_weekend_title_format => '',
  p_cust_wk_weekend_open_format => '<td style="#COL_WIDTH_PIX# #COL_WIDTH_PER#" valign="top" class="NonDay">',
  p_cust_wk_weekend_close_format => '<br /></td>',
  p_cust_month_day_height_pix => '14',
  p_cust_month_day_height_per => '14',
  p_cust_week_day_width_pix => '40',
  p_cust_week_day_width_per => '14',
  p_theme_id  => 21,
  p_theme_class_id => 3,
  p_reference_id=> null);
end;
null;
 
end;
/

prompt  ...application themes
--
--application/shared_components/user_interface/themes/scarlet
prompt  ......theme 4895410594313794
begin
wwv_flow_api.create_theme (
  p_id =>4895410594313794 + wwv_flow_api.g_id_offset,
  p_flow_id =>wwv_flow.g_flow_id,
  p_theme_id  => 21,
  p_theme_name=>'Scarlet',
  p_default_page_template=>4886631484313786 + wwv_flow_api.g_id_offset,
  p_error_template=>4886224423313785 + wwv_flow_api.g_id_offset,
  p_printer_friendly_template=>4886817804313786 + wwv_flow_api.g_id_offset,
  p_breadcrumb_display_point=>'REGION_POSITION_01',
  p_sidebar_display_point=>'REGION_POSITION_02',
  p_login_template=>4885819916313784 + wwv_flow_api.g_id_offset,
  p_default_button_template=>4887330298313787 + wwv_flow_api.g_id_offset,
  p_default_region_template=>4889906514313789 + wwv_flow_api.g_id_offset,
  p_default_chart_template =>4888921186313788 + wwv_flow_api.g_id_offset,
  p_default_form_template  =>4889029118313788 + wwv_flow_api.g_id_offset,
  p_default_reportr_template   =>4889906514313789 + wwv_flow_api.g_id_offset,
  p_default_tabform_template=>4889906514313789 + wwv_flow_api.g_id_offset,
  p_default_wizard_template=>4890802022313789 + wwv_flow_api.g_id_offset,
  p_default_menur_template=>4888416219313788 + wwv_flow_api.g_id_offset,
  p_default_listr_template=>4888824520313788 + wwv_flow_api.g_id_offset,
  p_default_irr_template=>4889515414313789 + wwv_flow_api.g_id_offset,
  p_default_report_template   =>4893522550313792 + wwv_flow_api.g_id_offset,
  p_default_label_template=>4894215352313793 + wwv_flow_api.g_id_offset,
  p_default_menu_template=>4894521001313793 + wwv_flow_api.g_id_offset,
  p_default_calendar_template=>4894721366313793 + wwv_flow_api.g_id_offset,
  p_default_list_template=>4892516885313791 + wwv_flow_api.g_id_offset,
  p_default_option_label=>4894215352313793 + wwv_flow_api.g_id_offset,
  p_default_required_label=>4894422955313793 + wwv_flow_api.g_id_offset);
end;
/
 
prompt  ...build options used by application 101
--
 
begin
 
null;
 
end;
/

--application/shared_components/globalization/messages
prompt  ...messages used by application: 101
--
--application/shared_components/globalization/dyntranslations
prompt  ...dynamic translations used by application: 101
--
--application/shared_components/globalization/language
prompt  ...Language Maps for Application 101
--
 
begin
 
null;
 
end;
/

prompt  ...Shortcuts
--
--application/shared_components/user_interface/shortcuts/delete_confirm_msg
 
begin
 
declare
  c1 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'Would you like to perform this delete action?';

wwv_flow_api.create_shortcut (
 p_id=> 4899424663328109 + wwv_flow_api.g_id_offset,
 p_flow_id=> wwv_flow.g_flow_id,
 p_shortcut_name=> 'DELETE_CONFIRM_MSG',
 p_shortcut_type=> 'TEXT_ESCAPE_JS',
 p_shortcut=> c1);
end;
null;
 
end;
/

prompt  ...web services (9iR2 or better)
--
prompt  ...shared queries
--
prompt  ...report layouts
--
prompt  ...authentication schemes
--
--application/shared_components/security/authentication/application_express
prompt  ......scheme 4895509731313794
 
begin
 
declare
  s1 varchar2(32767) := null;
  s2 varchar2(32767) := null;
  s3 varchar2(32767) := null;
  s4 varchar2(32767) := null;
  s5 varchar2(32767) := null;
begin
s1 := null;
s2 := null;
s3 := null;
s4:=s4||'-BUILTIN-';

s5 := null;
wwv_flow_api.create_auth_setup (
  p_id=> 4895509731313794 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'Application Express',
  p_description=>'Use internal Application Express account credentials and login page in this application.',
  p_page_sentry_function=> s1,
  p_sess_verify_function=> s2,
  p_pre_auth_process=> s3,
  p_auth_function=> s4,
  p_post_auth_process=> s5,
  p_invalid_session_page=>'101',
  p_invalid_session_url=>'',
  p_cookie_name=>'',
  p_cookie_path=>'',
  p_cookie_domain=>'',
  p_use_secure_cookie_yn=>'',
  p_ldap_host=>'',
  p_ldap_port=>'',
  p_ldap_string=>'',
  p_attribute_01=>'',
  p_attribute_02=>'wwv_flow_custom_auth_std.logout?p_this_flow=&APP_ID.&amp;p_next_flow_page_sess=&APP_ID.:1',
  p_attribute_03=>'',
  p_attribute_04=>'',
  p_attribute_05=>'',
  p_attribute_06=>'',
  p_attribute_07=>'',
  p_attribute_08=>'',
  p_required_patch => null + wwv_flow_api.g_id_offset);
end;
null;
 
end;
/

--application/shared_components/security/authentication/database
prompt  ......scheme 4895619243313794
 
begin
 
declare
  s1 varchar2(32767) := null;
  s2 varchar2(32767) := null;
  s3 varchar2(32767) := null;
  s4 varchar2(32767) := null;
  s5 varchar2(32767) := null;
begin
s1:=s1||'-DATABASE-';

s2 := null;
s3 := null;
s4 := null;
s5 := null;
wwv_flow_api.create_auth_setup (
  p_id=> 4895619243313794 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'DATABASE',
  p_description=>'Use database authentication (user identified by DAD).',
  p_page_sentry_function=> s1,
  p_sess_verify_function=> s2,
  p_pre_auth_process=> s3,
  p_auth_function=> s4,
  p_post_auth_process=> s5,
  p_invalid_session_page=>'',
  p_invalid_session_url=>'',
  p_cookie_name=>'',
  p_cookie_path=>'',
  p_cookie_domain=>'',
  p_use_secure_cookie_yn=>'',
  p_ldap_host=>'',
  p_ldap_port=>'',
  p_ldap_string=>'',
  p_attribute_01=>'',
  p_attribute_02=>'',
  p_attribute_03=>'',
  p_attribute_04=>'',
  p_attribute_05=>'',
  p_attribute_06=>'',
  p_attribute_07=>'',
  p_attribute_08=>'',
  p_required_patch => null + wwv_flow_api.g_id_offset);
end;
null;
 
end;
/

--application/shared_components/security/authentication/database_account
prompt  ......scheme 4895720865313794
 
begin
 
declare
  s1 varchar2(32767) := null;
  s2 varchar2(32767) := null;
  s3 varchar2(32767) := null;
  s4 varchar2(32767) := null;
  s5 varchar2(32767) := null;
begin
s1 := null;
s2 := null;
s3 := null;
s4:=s4||'return false; end;--';

s5 := null;
wwv_flow_api.create_auth_setup (
  p_id=> 4895720865313794 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'DATABASE ACCOUNT',
  p_description=>'Use database account credentials.',
  p_page_sentry_function=> s1,
  p_sess_verify_function=> s2,
  p_pre_auth_process=> s3,
  p_auth_function=> s4,
  p_post_auth_process=> s5,
  p_invalid_session_page=>'101',
  p_invalid_session_url=>'',
  p_cookie_name=>'',
  p_cookie_path=>'',
  p_cookie_domain=>'',
  p_use_secure_cookie_yn=>'',
  p_ldap_host=>'',
  p_ldap_port=>'',
  p_ldap_string=>'',
  p_attribute_01=>'',
  p_attribute_02=>'wwv_flow_custom_auth_std.logout?p_this_flow=&APP_ID.&amp;p_next_flow_page_sess=&APP_ID.:1',
  p_attribute_03=>'',
  p_attribute_04=>'',
  p_attribute_05=>'',
  p_attribute_06=>'',
  p_attribute_07=>'',
  p_attribute_08=>'',
  p_required_patch => null + wwv_flow_api.g_id_offset);
end;
null;
 
end;
/

prompt  ...plugins
--
--application/end_environment
commit;
commit;
begin 
execute immediate 'begin dbms_session.set_nls( param => ''NLS_NUMERIC_CHARACTERS'', value => '''''''' || replace(wwv_flow_api.g_nls_numeric_chars,'''''''','''''''''''') || ''''''''); end;';
end;
/
set verify on
set feedback on
prompt  ...done
