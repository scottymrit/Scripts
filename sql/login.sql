-- PROMPT Login.SQL
set serveroutput on size 500000
set document off
set termout off
set timing off
set heading on

--alter session set nls_date_format = 'MM/DD/YYYY HH24:MI:SS.SSSSS';

column user_name new_value user
column global_name new_value sid
select SUBSTR(global_name, 1, INSTR(global_name || '.', '.')-1) global_name,
	lower(USER) user_name
    FROM global_name;
set termout on
set sqlprompt "&user:&sid> "
set feedback 6
set pagesize 1000
set timing on
set null <null>
set tab off
set numwidth 15
set arraysize 200
set long 40000
set linesize 150


variable person number
variable org number
variable product number
variable category number
variable account number
variable ids varchar2(4000)
variable offer number
variable db varchar2(255)

column PLAN_TABLE_OUTPUT format a300

DEFINE _EDITOR = "emacsclient.exe"
--set editfile /tmp/tmporacle.sql

BEGIN


  select global_name into :db from global_name;
 
   CASE 
      WHEN instr(user, 'READUSER_PERF') > 0 THEN
       begin
        --dbms_output.put_line('setting schema to ''khub'' for ' || :db);    
        execute immediate 'alter session set current_schema = khub';
       end;
      WHEN instr(:db, 'IVROC') > 0 THEN
       begin    
        --dbms_output.put_line('setting schema to ''khub'' for ' || :db);
        execute immediate 'alter session set current_schema = khub';
       end;
      WHEN instr(:db, 'ort152a.int.westgroup.com') > 0 or instr(:db, 'wca-prod') > 0 THEN
       begin    
        --dbms_output.put_line('setting schema to ''rtcr_ucdb'' for ' || :db);
        execute immediate 'alter session set current_schema = rtcr_ucdb';
       end;
      
      ELSE
       begin
         dbms_output.put_line('unknown schema/user, nothing to do');
      end;
   END CASE;

    
END;
/

--new prompt variables as of 10g
--SET SQLPROMPT "_DATE : _USER'@'_CONNECT_IDENTIFIER _PRIVILEGE> "
--SET SQLPROMPT "_DATE : _USER'@'_CONNECT_IDENTIFIER> "
--SET SQLPROMPT "_DATE : &user'@'_CONNECT_IDENTIFIER> "
---ALTER SESSION SET nls_date_format = 'HH:MI:SS';
--SET SQLPROMPT "&user':'_CONNECT_IDENTIFIER _DATE> " 
set time on 
SET SQLPROMPT "&user':'_CONNECT_IDENTIFIER> " 




--column bitset_type_id format 99
--column bitset_value format 9999999999999999999
--column count(*) format 999999

column source_id format 999
column auth_company_id format 999999999
column company_name format a30
column company_id format 999999999
column match_decision format 999
column match_decision_id format 999
column source_company_id format a40

column index_name format a40
column blevel format 999



alter session set nls_date_format = 'MM/DD/YYYY HH24:MI:SS';


--print a line after each wrapped column(row separator)
--SET RECSEP WRAPPED
--SET RECSEPCHAR "-"


BEGIN
  IF dbms_utility.is_cluster_database THEN
      dbms_output.put_line('Running in SHARED/RAC mode.');
  ELSE
      dbms_output.put_line('Running in EXCLUSIVE mode.');
  END IF;
END;
/

set timing on

