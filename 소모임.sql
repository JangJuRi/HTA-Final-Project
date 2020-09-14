DROP SEQUENCE "ALRAM_SEQ";
DROP SEQUENCE "BOARD_SEQ";
DROP SEQUENCE "COMMENT_SEQ";
DROP SEQUENCE "MANAGER_BOARD_SEQ";
DROP SEQUENCE "MESSAGE_SEQ";
DROP SEQUENCE "MOIM_SEQ";
DROP SEQUENCE "PHOTO_SEQ";
DROP SEQUENCE "SUB_CATE_SEQ";
DROP SEQUENCE "SUB_MOIM_SEQ";
DROP SEQUENCE "WARNING_SEQ";
DROP TABLE "MOIM_ALRAM" cascade constraints;
DROP TABLE "MOIM_BANNER" cascade constraints;
DROP TABLE "MOIM_BOARD" cascade constraints;
DROP TABLE "MOIM_BOARD_CATE" cascade constraints;
DROP TABLE "MOIM_COMMENT" cascade constraints;
DROP TABLE "MOIM_FAVOLITE_MOIM" cascade constraints;
DROP TABLE "MOIM_FOLLOW" cascade constraints;
DROP TABLE "MOIM_JOIN_USER" cascade constraints;
DROP TABLE "MOIM_LOCATION" cascade constraints;
DROP TABLE "MOIM_MAIN" cascade constraints;
DROP TABLE "MOIM_MAIN_CATEGORY" cascade constraints;
DROP TABLE "MOIM_MANAGER_BOARD" cascade constraints;
DROP TABLE "MOIM_MESSAGE" cascade constraints;
DROP TABLE "MOIM_PHOTO" cascade constraints;
DROP TABLE "MOIM_PHOTO_USER_LIKE" cascade constraints;
DROP TABLE "MOIM_SUB_CATE" cascade constraints;
DROP TABLE "MOIM_SUB_JOIN_USER" cascade constraints;
DROP TABLE "MOIM_SUB_MOIM" cascade constraints;
DROP TABLE "MOIM_USER" cascade constraints;
DROP TABLE "MOIM_USER_CATE" cascade constraints;
DROP TABLE "MOIM_WARNING" cascade constraints;


--------------------------------------------------------
--  ������ ������ - ������-9��-14-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence ALARM_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."ALARM_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 100000 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence ALRAM_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."ALRAM_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 88 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence BOARD_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."BOARD_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 200037 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence COMMENT_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."COMMENT_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 400029 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence DEPARTMENTS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."DEPARTMENTS_SEQ"  MINVALUE 1 MAXVALUE 9990 INCREMENT BY 10 START WITH 280 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence EMPLOYEES_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."EMPLOYEES_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 207 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence LOCATIONS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."LOCATIONS_SEQ"  MINVALUE 1 MAXVALUE 9900 INCREMENT BY 100 START WITH 3300 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence MANAGER_BOARD_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."MANAGER_BOARD_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence MESSAGE_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."MESSAGE_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 241 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence MOIM_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."MOIM_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 500070 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence PHOTO_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."PHOTO_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 600026 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SUB_CATE_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."SUB_CATE_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 700026 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SUB_MOIM_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."SUB_MOIM_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 800020 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence WARNING_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."WARNING_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table MOIM_ALRAM
--------------------------------------------------------

  CREATE TABLE "HR"."MOIM_ALRAM" 
   (	"ALRAM_NO" NUMBER(10,0), 
	"MESSAGE" VARCHAR2(500 BYTE), 
	"TYPE" VARCHAR2(200 BYTE), 
	"READ_YN" CHAR(1 BYTE) DEFAULT 'N', 
	"USER_ID" VARCHAR2(200 BYTE), 
	"LOGIN_USER_ID" VARCHAR2(200 BYTE), 
	"CREATED_DATE" DATE DEFAULT sysdate
   ) ;
--------------------------------------------------------
--  DDL for Table MOIM_BANNER
--------------------------------------------------------

  CREATE TABLE "HR"."MOIM_BANNER" 
   (	"MOIM_NO" NUMBER(10,0), 
	"BANNER" VARCHAR2(500 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table MOIM_BOARD
--------------------------------------------------------

  CREATE TABLE "HR"."MOIM_BOARD" 
   (	"BOARD_NO" NUMBER(10,0), 
	"TITLE" VARCHAR2(200 BYTE), 
	"CONTENT" CLOB, 
	"VIEWS" NUMBER(10,0) DEFAULT 0, 
	"DELETE_YN" CHAR(1 BYTE) DEFAULT 'N', 
	"CREATED_DATE" DATE DEFAULT sysdate, 
	"MOIM_NO" NUMBER(10,0), 
	"USER_ID" VARCHAR2(200 BYTE), 
	"BOARD_CATE_NO" NUMBER(10,0)
   ) ;
--------------------------------------------------------
--  DDL for Table MOIM_BOARD_CATE
--------------------------------------------------------

  CREATE TABLE "HR"."MOIM_BOARD_CATE" 
   (	"BOARD_CATE_NO" NUMBER(10,0), 
	"NAME" VARCHAR2(200 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table MOIM_COMMENT
--------------------------------------------------------

  CREATE TABLE "HR"."MOIM_COMMENT" 
   (	"COMMENT_NO" NUMBER(10,0), 
	"TITLE" VARCHAR2(200 BYTE), 
	"DELETE_YN" CHAR(1 BYTE) DEFAULT 'N', 
	"CREATED_DATE" DATE DEFAULT sysdate, 
	"USER_ID" VARCHAR2(200 BYTE), 
	"BOARD_NO" NUMBER(10,0), 
	"MAIN_COMMENT_NO" NUMBER(10,0) DEFAULT 0
   ) ;
--------------------------------------------------------
--  DDL for Table MOIM_FAVOLITE_MOIM
--------------------------------------------------------

  CREATE TABLE "HR"."MOIM_FAVOLITE_MOIM" 
   (	"MOIM_NO" NUMBER(10,0), 
	"USER_ID" VARCHAR2(200 BYTE), 
	"LIKED_DATE" DATE DEFAULT sysdate
   ) ;
--------------------------------------------------------
--  DDL for Table MOIM_FOLLOW
--------------------------------------------------------

  CREATE TABLE "HR"."MOIM_FOLLOW" 
   (	"USER_ID" VARCHAR2(200 BYTE), 
	"FOL_USER_ID" VARCHAR2(200 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table MOIM_JOIN_USER
--------------------------------------------------------

  CREATE TABLE "HR"."MOIM_JOIN_USER" 
   (	"MOIM_NO" NUMBER(10,0), 
	"USER_ID" VARCHAR2(200 BYTE), 
	"USER_ROLE" VARCHAR2(20 BYTE), 
	"CREATED_DATE" DATE DEFAULT sysdate
   ) ;
--------------------------------------------------------
--  DDL for Table MOIM_LOCATION
--------------------------------------------------------

  CREATE TABLE "HR"."MOIM_LOCATION" 
   (	"LOCATION_NO" NUMBER(10,0), 
	"NAME" VARCHAR2(200 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table MOIM_MAIN
--------------------------------------------------------

  CREATE TABLE "HR"."MOIM_MAIN" 
   (	"MOIM_NO" NUMBER(10,0), 
	"TITLE" VARCHAR2(200 BYTE), 
	"JOIN_COUNT" NUMBER(10,0) DEFAULT 1, 
	"HEAD_COUNT" NUMBER(10,0), 
	"CONTENT" CLOB, 
	"IMAGE" VARCHAR2(500 BYTE), 
	"FEE" NUMBER(10,0) DEFAULT 0, 
	"LIKES" NUMBER(10,0) DEFAULT 0, 
	"PREMIUM_YN" CHAR(1 BYTE) DEFAULT 'N', 
	"DELETE_YN" CHAR(1 BYTE) DEFAULT 'N', 
	"JOIN_DATE" DATE, 
	"CREATED_DATE" DATE DEFAULT sysdate, 
	"SUB_CATE_NO" NUMBER(10,0), 
	"LOCATION_NO" NUMBER(10,0), 
	"LOCATION_DETAIL" VARCHAR2(500 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table MOIM_MAIN_CATEGORY
--------------------------------------------------------

  CREATE TABLE "HR"."MOIM_MAIN_CATEGORY" 
   (	"MAIN_CATE_NO" NUMBER(10,0), 
	"NAME" VARCHAR2(200 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table MOIM_MANAGER_BOARD
--------------------------------------------------------

  CREATE TABLE "HR"."MOIM_MANAGER_BOARD" 
   (	"MANAGER_BOARD_NO" NUMBER(10,0), 
	"MANAGER_BOARD_TITLE" VARCHAR2(200 BYTE), 
	"MANAGER_BOARD_CONTENT" CLOB, 
	"VIEWS" NUMBER(10,0) DEFAULT 0, 
	"DELETE_YN" CHAR(1 BYTE) DEFAULT 'N', 
	"CREATED_DATE" DATE DEFAULT SYSDATE
   ) ;
--------------------------------------------------------
--  DDL for Table MOIM_MESSAGE
--------------------------------------------------------

  CREATE TABLE "HR"."MOIM_MESSAGE" 
   (	"MESSAGE_NO" NUMBER(10,0), 
	"TITLE" VARCHAR2(400 BYTE), 
	"CONTENT" VARCHAR2(2000 BYTE), 
	"SEND_USER" VARCHAR2(200 BYTE), 
	"RECEIVE_USER" VARCHAR2(200 BYTE), 
	"READ_YN" CHAR(1 BYTE) DEFAULT 'N', 
	"CREATED_DATE" DATE DEFAULT sysdate, 
	"USER_ID" VARCHAR2(200 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table MOIM_PHOTO
--------------------------------------------------------

  CREATE TABLE "HR"."MOIM_PHOTO" 
   (	"PHOTO_NO" NUMBER(10,0), 
	"PHOTO" VARCHAR2(500 BYTE), 
	"LIKES" NUMBER(10,0) DEFAULT 0, 
	"DELETE_YN" CHAR(1 BYTE) DEFAULT 'N', 
	"CREATED_DATE" DATE DEFAULT sysdate, 
	"MOIM_NO" NUMBER(10,0), 
	"USER_ID" VARCHAR2(200 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table MOIM_PHOTO_USER_LIKE
--------------------------------------------------------

  CREATE TABLE "HR"."MOIM_PHOTO_USER_LIKE" 
   (	"PHOTO_NO" NUMBER(10,0), 
	"USER_ID" VARCHAR2(200 BYTE), 
	"MOIM_NO" NUMBER(10,0)
   ) ;
--------------------------------------------------------
--  DDL for Table MOIM_SUB_CATE
--------------------------------------------------------

  CREATE TABLE "HR"."MOIM_SUB_CATE" 
   (	"SUB_CATE_NO" NUMBER(10,0), 
	"NAME" VARCHAR2(200 BYTE), 
	"MAIN_CATE_NO" NUMBER(10,0)
   ) ;
--------------------------------------------------------
--  DDL for Table MOIM_SUB_JOIN_USER
--------------------------------------------------------

  CREATE TABLE "HR"."MOIM_SUB_JOIN_USER" 
   (	"SUB_MOIM_NO" NUMBER(10,0), 
	"MOIM_NO" NUMBER(10,0), 
	"USER_ID" VARCHAR2(200 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table MOIM_SUB_MOIM
--------------------------------------------------------

  CREATE TABLE "HR"."MOIM_SUB_MOIM" 
   (	"SUB_MOIM_NO" NUMBER(10,0), 
	"TITLE" VARCHAR2(200 BYTE), 
	"LOCATION" VARCHAR2(200 BYTE), 
	"HEAD_COUNT" NUMBER(4,0) DEFAULT 0, 
	"FEE" NUMBER(10,0) DEFAULT 0, 
	"DELETE_YN" CHAR(1 BYTE) DEFAULT 'N', 
	"JOIN_DATE" DATE, 
	"JOIN_COUNT" NUMBER(4,0) DEFAULT 1, 
	"CREATED_DATE" DATE DEFAULT sysdate, 
	"USER_ID" VARCHAR2(200 BYTE), 
	"MOIM_NO" NUMBER(10,0)
   ) ;
--------------------------------------------------------
--  DDL for Table MOIM_USER
--------------------------------------------------------

  CREATE TABLE "HR"."MOIM_USER" 
   (	"USER_ID" VARCHAR2(200 BYTE), 
	"USER_NAME" VARCHAR2(200 BYTE), 
	"TEL" VARCHAR2(200 BYTE), 
	"USER_PASSWORD" VARCHAR2(200 BYTE), 
	"NICKNAME" VARCHAR2(200 BYTE), 
	"EMAIL" VARCHAR2(200 BYTE), 
	"BIRTH" VARCHAR2(200 BYTE), 
	"GENDER" VARCHAR2(20 BYTE), 
	"USER_CONTENT" CLOB, 
	"DELETE_YN" CHAR(1 BYTE) DEFAULT 'N', 
	"CREATED_DATE" DATE DEFAULT sysdate, 
	"LOCATION_NO" NUMBER(10,0), 
	"PROFILE_IMAGE" VARCHAR2(1000 BYTE) DEFAULT 'profile.png', 
	"SUSPENDED_ACCOUNT_YN" CHAR(1 BYTE) DEFAULT 'N'
   ) ;
--------------------------------------------------------
--  DDL for Table MOIM_USER_CATE
--------------------------------------------------------

  CREATE TABLE "HR"."MOIM_USER_CATE" 
   (	"USER_ID" VARCHAR2(200 BYTE), 
	"MAIN_CATE_NO" NUMBER(10,0)
   ) ;
--------------------------------------------------------
--  DDL for Table MOIM_WARNING
--------------------------------------------------------

  CREATE TABLE "HR"."MOIM_WARNING" 
   (	"WARNING_NO" NUMBER(10,0), 
	"USER_ID" VARCHAR2(200 BYTE), 
	"LOGIN_USER_ID" VARCHAR2(200 BYTE), 
	"CONTENT" VARCHAR2(2000 BYTE), 
	"TYPE" VARCHAR2(200 BYTE), 
	"CREATED_DATE" DATE DEFAULT sysdate, 
	"DELETE_YN" CHAR(1 BYTE) DEFAULT 'N'
   ) ;
--------------------------------------------------------
--  DDL for View EMP_DETAILS_VIEW
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "HR"."EMP_DETAILS_VIEW" ("EMPLOYEE_ID", "JOB_ID", "MANAGER_ID", "DEPARTMENT_ID", "LOCATION_ID", "COUNTRY_ID", "FIRST_NAME", "LAST_NAME", "SALARY", "COMMISSION_PCT", "DEPARTMENT_NAME", "JOB_TITLE", "CITY", "STATE_PROVINCE", "COUNTRY_NAME", "REGION_NAME") AS 
  SELECT
  e.employee_id,
  e.job_id,
  e.manager_id,
  e.department_id,
  d.location_id,
  l.country_id,
  e.first_name,
  e.last_name,
  e.salary,
  e.commission_pct,
  d.department_name,
  j.job_title,
  l.city,
  l.state_province,
  c.country_name,
  r.region_name
FROM
  employees e,
  departments d,
  jobs j,
  locations l,
  countries c,
  regions r
WHERE e.department_id = d.department_id
  AND d.location_id = l.location_id
  AND l.country_id = c.country_id
  AND c.region_id = r.region_id
  AND j.job_id = e.job_id
WITH READ ONLY
;
REM INSERTING into HR.MOIM_ALRAM
SET DEFINE OFF;
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (8,'�׽�Ʈ3���� �ȷο��ϼ̽��ϴ�.','�ȷο�','N','jang','test3',to_date('20/08/20','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (4,'test1���� �ȷο��ϼ̽��ϴ�.','�ȷο�','N','jang','test1',to_date('20/08/19','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (6,'��������� �ȷο��ϼ̽��ϴ�.','�ȷο�','N','test4','jang',to_date('20/08/20','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (5,'��������� �ȷο��ϼ̽��ϴ�.','�ȷο�','N','test1','jang',to_date('20/08/19','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (7,'���޽��� ������','���','N','jang',null,to_date('20/08/20','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (9,'�׽�Ʈ4���� �ȷο��ϼ̽��ϴ�.','�ȷο�','Y','jang','test4',to_date('20/08/20','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (10,'�г���5���� �ȷο��ϼ̽��ϴ�.','�ȷο�','Y','jang','test5',to_date('20/08/20','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (11,'�г���6���� �ȷο��ϼ̽��ϴ�.','�ȷο�','Y','jang','test6',to_date('20/08/20','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (12,'�ǿ��ش��� �޼��������½��ϴ�.','�޼���','Y','jang','test1',to_date('20/08/20','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (13,'�ǿ��ش��� �޼��������½��ϴ�.','�޼���','N','test1','jang',to_date('20/08/20','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (14,'��� �����̽��ϴ�.','���','N','test2',null,to_date('20/08/24','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (15,'��� �����̽��ϴ�.','���','N','test1',null,to_date('20/08/24','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (16,'��� �����̽��ϴ�.','���','N','test2',null,to_date('20/08/24','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (17,'��� �����̽��ϴ�.','���','N','test2',null,to_date('20/08/24','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (18,'��� �����̽��ϴ�.','���','Y','jang',null,to_date('20/08/24','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (19,'��� �����̽��ϴ�.','���','N','jang',null,to_date('20/08/24','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (20,'��� �����̽��ϴ�.','���','N','test2',null,to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (21,'��� �����̽��ϴ�.','���','Y','jung',null,to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (22,'��� �����̽��ϴ�.','���','Y','jung',null,to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (23,'��� �����̽��ϴ�.','���','Y','jung',null,to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (64,'��� �����̽��ϴ�.','���','N','kwon',null,to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (65,'��� �����̽��ϴ�.','���','N','kwon',null,to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (26,'��� �����̽��ϴ�.','���','N','jang',null,to_date('20/08/27','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (81,'jang���� �ȷο� �߽��ϴ�.','�ȷο�','N','test1','jang',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (46,'moon���� �ȷο� �߽��ϴ�.','�ȷο�','Y','kwon','moon',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (29,'��� �����̽��ϴ�.','���','Y','kwon',null,to_date('20/08/27','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (30,'��� �����̽��ϴ�.','���','Y','kwon',null,to_date('20/08/27','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (31,'��� �����̽��ϴ�.','���','Y','kwon',null,to_date('20/08/27','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (32,'moon���� �޼����� ���½��ϴ�.','�޼���','Y','kwon','moon',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (33,'moon���� �޼����� ���½��ϴ�.','�޼���','Y','kwon','moon',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (34,'moon���� �޼����� ���½��ϴ�.','�޼���','N','jang','moon',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (35,'moon���� �޼����� ���½��ϴ�.','�޼���','N','jang','moon',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (36,'moon���� �޼����� ���½��ϴ�.','�޼���','N','ko','moon',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (63,'jang���� �޼����� ���½��ϴ�.','�޼���','N','jung','jang',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (38,'moon���� �ȷο� �߽��ϴ�.','�ȷο�','Y','kwon','moon',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (39,'moon���� �ȷο� �߽��ϴ�.','�ȷο�','N','ko','moon',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (40,'moon���� �ȷο� �߽��ϴ�.','�ȷο�','N','test4','moon',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (41,'moon���� �ȷο� �߽��ϴ�.','�ȷο�','N','test4','moon',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (42,'moon���� �ȷο� �߽��ϴ�.','�ȷο�','N','test4','moon',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (80,'jang���� �ȷο� �߽��ϴ�.','�ȷο�','N','test1','jang',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (82,'jang���� �ȷο� �߽��ϴ�.','�ȷο�','N','moon','jang',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (83,'kwon���� �ȷο� �߽��ϴ�.','�ȷο�','N','moon','kwon',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (84,'kwon���� �ȷο� �߽��ϴ�.','�ȷο�','N','jang','kwon',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (85,'kwon���� �ȷο� �߽��ϴ�.','�ȷο�','N','test3','kwon',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (50,'moon���� �ȷο� �߽��ϴ�.','�ȷο�','Y','kwon','moon',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (53,'moon���� �ȷο� �߽��ϴ�.','�ȷο�','N','kwon','moon',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (86,'kwon���� �ȷο� �߽��ϴ�.','�ȷο�','N','test2','kwon',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (54,'��� �����̽��ϴ�.','���','N','kwon',null,to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (87,'kwon���� �ȷο� �߽��ϴ�.','�ȷο�','N','test1','kwon',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (66,'��� �����̽��ϴ�.','���','N','kwon',null,to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (67,'��� �����̽��ϴ�.','���','N','kwon',null,to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (68,'��� �����̽��ϴ�.','���','N','kwon',null,to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (69,'jung���� �޼����� ���½��ϴ�.','�޼���','N','ko','jung',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (70,'moon���� �ȷο� �߽��ϴ�.','�ȷο�','N','ko','moon',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (71,'��� �����̽��ϴ�.','���','N','jung',null,to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (72,'��� �����̽��ϴ�.','���','N','kwon',null,to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (73,'��� �����̽��ϴ�.','���','N','kwon',null,to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (74,'��� �����̽��ϴ�.','���','N','kwon',null,to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (75,'moon���� �ȷο� �߽��ϴ�.','�ȷο�','N','kim','moon',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (76,'moon���� �ȷο� �߽��ϴ�.','�ȷο�','N','ko','moon',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (77,'jang���� �ȷο� �߽��ϴ�.','�ȷο�','N','jung','jang',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (78,'jang���� �ȷο� �߽��ϴ�.','�ȷο�','N','jung','jang',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (79,'moon���� �ȷο� �߽��ϴ�.','�ȷο�','N','ko','moon',to_date('20/08/28','RR/MM/DD'));
REM INSERTING into HR.MOIM_BANNER
SET DEFINE OFF;
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500069,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500000,'longboard.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500001,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500002,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500003,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500004,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500005,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500006,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500007,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500008,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500009,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500010,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500010,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500011,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500012,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500013,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500014,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500015,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500016,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500017,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500018,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500019,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500022,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500023,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500024,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500025,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500026,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500027,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500028,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500029,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500030,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500031,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500032,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500033,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500034,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500035,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500036,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500037,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500038,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500039,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500041,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500042,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500049,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500040,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500051,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500053,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500054,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500055,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500056,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500057,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500050,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500059,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500060,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500061,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500062,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500063,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500068,'banner.jpg');
REM INSERTING into HR.MOIM_BOARD
SET DEFINE OFF;
Insert into HR.MOIM_BOARD (BOARD_NO,TITLE,VIEWS,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID,BOARD_CATE_NO) values (200002,'ù��° �Խñ�',11,'N',to_date('20/08/19','RR/MM/DD'),500000,'ko',2);
Insert into HR.MOIM_BOARD (BOARD_NO,TITLE,VIEWS,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID,BOARD_CATE_NO) values (200003,'�Ŀ��',12,'Y',to_date('20/08/19','RR/MM/DD'),500000,'ko',2);
Insert into HR.MOIM_BOARD (BOARD_NO,TITLE,VIEWS,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID,BOARD_CATE_NO) values (200004,'�̾�߾о�',16,'N',to_date('20/08/19','RR/MM/DD'),500000,'ko',2);
Insert into HR.MOIM_BOARD (BOARD_NO,TITLE,VIEWS,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID,BOARD_CATE_NO) values (200005,'����',4,'N',to_date('20/08/19','RR/MM/DD'),500000,'ko',2);
Insert into HR.MOIM_BOARD (BOARD_NO,TITLE,VIEWS,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID,BOARD_CATE_NO) values (200006,'������',42,'N',to_date('20/08/19','RR/MM/DD'),500000,'ko',2);
Insert into HR.MOIM_BOARD (BOARD_NO,TITLE,VIEWS,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID,BOARD_CATE_NO) values (200007,'���������ַ���',8,'N',to_date('20/08/19','RR/MM/DD'),500000,'ko',1);
Insert into HR.MOIM_BOARD (BOARD_NO,TITLE,VIEWS,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID,BOARD_CATE_NO) values (200008,'�̰���',1,'N',to_date('20/08/19','RR/MM/DD'),500000,'ko',1);
Insert into HR.MOIM_BOARD (BOARD_NO,TITLE,VIEWS,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID,BOARD_CATE_NO) values (200009,'�츮��',1,'N',to_date('20/08/19','RR/MM/DD'),500000,'ko',1);
Insert into HR.MOIM_BOARD (BOARD_NO,TITLE,VIEWS,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID,BOARD_CATE_NO) values (200010,'��׷�',1,'N',to_date('20/08/19','RR/MM/DD'),500000,'ko',1);
Insert into HR.MOIM_BOARD (BOARD_NO,TITLE,VIEWS,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID,BOARD_CATE_NO) values (200011,'�̰ź����ַ���',119,'N',to_date('20/08/19','RR/MM/DD'),500000,'ko',1);
Insert into HR.MOIM_BOARD (BOARD_NO,TITLE,VIEWS,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID,BOARD_CATE_NO) values (200018,'����222',25,'N',to_date('20/08/20','RR/MM/DD'),500014,'jang',2);
Insert into HR.MOIM_BOARD (BOARD_NO,TITLE,VIEWS,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID,BOARD_CATE_NO) values (200019,'�Ϲ�',0,'N',to_date('20/08/21','RR/MM/DD'),500000,'ko',3);
Insert into HR.MOIM_BOARD (BOARD_NO,TITLE,VIEWS,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID,BOARD_CATE_NO) values (200020,'�۱۱�',0,'N',to_date('20/08/21','RR/MM/DD'),500000,'ko',3);
Insert into HR.MOIM_BOARD (BOARD_NO,TITLE,VIEWS,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID,BOARD_CATE_NO) values (200021,'����',0,'N',to_date('20/08/21','RR/MM/DD'),500000,'ko',3);
Insert into HR.MOIM_BOARD (BOARD_NO,TITLE,VIEWS,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID,BOARD_CATE_NO) values (200022,'dldldl',2,'N',to_date('20/08/21','RR/MM/DD'),500000,'ko',3);
Insert into HR.MOIM_BOARD (BOARD_NO,TITLE,VIEWS,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID,BOARD_CATE_NO) values (200023,'����',2,'N',to_date('20/08/21','RR/MM/DD'),500000,'ko',2);
Insert into HR.MOIM_BOARD (BOARD_NO,TITLE,VIEWS,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID,BOARD_CATE_NO) values (200024,'����?',2,'N',to_date('20/08/21','RR/MM/DD'),500000,'ko',2);
Insert into HR.MOIM_BOARD (BOARD_NO,TITLE,VIEWS,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID,BOARD_CATE_NO) values (200025,'��',4,'N',to_date('20/08/21','RR/MM/DD'),500000,'ko',2);
Insert into HR.MOIM_BOARD (BOARD_NO,TITLE,VIEWS,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID,BOARD_CATE_NO) values (200026,'����',2,'N',to_date('20/08/21','RR/MM/DD'),500001,'kwon',1);
Insert into HR.MOIM_BOARD (BOARD_NO,TITLE,VIEWS,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID,BOARD_CATE_NO) values (200027,'������������',3,'N',to_date('20/08/21','RR/MM/DD'),500001,'kwon',2);
Insert into HR.MOIM_BOARD (BOARD_NO,TITLE,VIEWS,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID,BOARD_CATE_NO) values (200028,'����������������',44,'Y',to_date('20/08/21','RR/MM/DD'),500001,'kwon',2);
Insert into HR.MOIM_BOARD (BOARD_NO,TITLE,VIEWS,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID,BOARD_CATE_NO) values (200029,'123',11,'Y',to_date('20/08/21','RR/MM/DD'),500001,'jung',2);
Insert into HR.MOIM_BOARD (BOARD_NO,TITLE,VIEWS,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID,BOARD_CATE_NO) values (200030,'�ȳ��ϼ���',6,'N',to_date('20/08/25','RR/MM/DD'),500008,'moon',2);
Insert into HR.MOIM_BOARD (BOARD_NO,TITLE,VIEWS,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID,BOARD_CATE_NO) values (200031,'������������������',3,'N',to_date('20/08/25','RR/MM/DD'),500024,'jang',3);
Insert into HR.MOIM_BOARD (BOARD_NO,TITLE,VIEWS,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID,BOARD_CATE_NO) values (200032,'������',3,'N',to_date('20/08/26','RR/MM/DD'),500002,'moon',1);
Insert into HR.MOIM_BOARD (BOARD_NO,TITLE,VIEWS,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID,BOARD_CATE_NO) values (200033,'�ƾƾƾƾƾƾƾƾ�',3,'N',to_date('20/08/28','RR/MM/DD'),500000,'kwon',2);
Insert into HR.MOIM_BOARD (BOARD_NO,TITLE,VIEWS,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID,BOARD_CATE_NO) values (200034,'�±�~~',11,'N',to_date('20/08/28','RR/MM/DD'),500058,'jung',2);
REM INSERTING into HR.MOIM_BOARD_CATE
SET DEFINE OFF;
Insert into HR.MOIM_BOARD_CATE (BOARD_CATE_NO,NAME) values (1,'����');
Insert into HR.MOIM_BOARD_CATE (BOARD_CATE_NO,NAME) values (2,'�ı�');
Insert into HR.MOIM_BOARD_CATE (BOARD_CATE_NO,NAME) values (3,'�Ϲ�');
REM INSERTING into HR.MOIM_COMMENT
SET DEFINE OFF;
Insert into HR.MOIM_COMMENT (COMMENT_NO,TITLE,DELETE_YN,CREATED_DATE,USER_ID,BOARD_NO,MAIN_COMMENT_NO) values (400004,'ù��° ���','N',to_date('20/08/20','RR/MM/DD'),'test4',200005,0);
Insert into HR.MOIM_COMMENT (COMMENT_NO,TITLE,DELETE_YN,CREATED_DATE,USER_ID,BOARD_NO,MAIN_COMMENT_NO) values (400006,'�����츮��','N',to_date('20/08/20','RR/MM/DD'),'test4',200011,0);
Insert into HR.MOIM_COMMENT (COMMENT_NO,TITLE,DELETE_YN,CREATED_DATE,USER_ID,BOARD_NO,MAIN_COMMENT_NO) values (400007,'������','N',to_date('20/08/20','RR/MM/DD'),'test4',200011,0);
Insert into HR.MOIM_COMMENT (COMMENT_NO,TITLE,DELETE_YN,CREATED_DATE,USER_ID,BOARD_NO,MAIN_COMMENT_NO) values (400008,'�츮 ��','N',to_date('20/08/20','RR/MM/DD'),'ko',200011,0);
Insert into HR.MOIM_COMMENT (COMMENT_NO,TITLE,DELETE_YN,CREATED_DATE,USER_ID,BOARD_NO,MAIN_COMMENT_NO) values (400009,'������','N',to_date('20/08/20','RR/MM/DD'),'ko',200006,0);
Insert into HR.MOIM_COMMENT (COMMENT_NO,TITLE,DELETE_YN,CREATED_DATE,USER_ID,BOARD_NO,MAIN_COMMENT_NO) values (400011,'���','N',to_date('20/08/20','RR/MM/DD'),'jang',200018,0);
Insert into HR.MOIM_COMMENT (COMMENT_NO,TITLE,DELETE_YN,CREATED_DATE,USER_ID,BOARD_NO,MAIN_COMMENT_NO) values (400012,'��','N',to_date('20/08/21','RR/MM/DD'),'ko',200025,0);
Insert into HR.MOIM_COMMENT (COMMENT_NO,TITLE,DELETE_YN,CREATED_DATE,USER_ID,BOARD_NO,MAIN_COMMENT_NO) values (400013,'���','N',to_date('20/08/21','RR/MM/DD'),'ko',200002,0);
Insert into HR.MOIM_COMMENT (COMMENT_NO,TITLE,DELETE_YN,CREATED_DATE,USER_ID,BOARD_NO,MAIN_COMMENT_NO) values (400014,'������','N',to_date('20/08/21','RR/MM/DD'),'kwon',200028,0);
Insert into HR.MOIM_COMMENT (COMMENT_NO,TITLE,DELETE_YN,CREATED_DATE,USER_ID,BOARD_NO,MAIN_COMMENT_NO) values (400015,'��� ��������J','N',to_date('20/08/21','RR/MM/DD'),'kwon',200028,0);
Insert into HR.MOIM_COMMENT (COMMENT_NO,TITLE,DELETE_YN,CREATED_DATE,USER_ID,BOARD_NO,MAIN_COMMENT_NO) values (400016,'�Ϳ�','N',to_date('20/08/26','RR/MM/DD'),'jung',200029,0);
Insert into HR.MOIM_COMMENT (COMMENT_NO,TITLE,DELETE_YN,CREATED_DATE,USER_ID,BOARD_NO,MAIN_COMMENT_NO) values (400017,'�Ƴ���','N',to_date('20/08/26','RR/MM/DD'),'test1',200023,0);
Insert into HR.MOIM_COMMENT (COMMENT_NO,TITLE,DELETE_YN,CREATED_DATE,USER_ID,BOARD_NO,MAIN_COMMENT_NO) values (400023,'�� ����Ű ����Ű ����Ű','N',to_date('20/08/26','RR/MM/DD'),'ko',200011,400008);
Insert into HR.MOIM_COMMENT (COMMENT_NO,TITLE,DELETE_YN,CREATED_DATE,USER_ID,BOARD_NO,MAIN_COMMENT_NO) values (400027,'��������������������������������������������������������������������','N',to_date('20/08/28','RR/MM/DD'),'jung',200034,0);
Insert into HR.MOIM_COMMENT (COMMENT_NO,TITLE,DELETE_YN,CREATED_DATE,USER_ID,BOARD_NO,MAIN_COMMENT_NO) values (400025,'��ηη�','N',to_date('20/08/26','RR/MM/DD'),'test1',200011,400008);
REM INSERTING into HR.MOIM_FAVOLITE_MOIM
SET DEFINE OFF;
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500032,'kwon',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500011,'kwon',to_date('20/08/26','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500027,'kwon',to_date('20/08/27','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500028,'kwon',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500040,'kwon',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500049,'kwon',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500004,'kwon',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500007,'moon',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500014,'kwon',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500042,'jung',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500007,'test4',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500001,'kwon',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500025,'kwon',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500024,'kwon',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500007,'kwon',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500055,'kwon',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500041,'kwon',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500028,'test4',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500001,'test4',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500025,'test4',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500024,'test4',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500011,'test4',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500007,'test3',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500025,'test3',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500024,'test3',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500011,'test3',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500005,'test3',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500007,'test2',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500025,'test2',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500024,'test2',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500005,'test2',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500028,'test2',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500007,'test1',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500001,'test1',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500014,'test1',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500024,'test1',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500025,'test1',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500007,'test5',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500024,'test5',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500025,'test5',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500028,'test5',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500014,'test5',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500030,'kwon',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500035,'kwon',to_date('20/08/26','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500005,'kwon',to_date('20/08/27','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500032,'jang',to_date('20/09/09','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500056,'kwon',to_date('20/08/27','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500016,'kwon',to_date('20/08/26','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500000,'kwon',to_date('20/08/27','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500055,'jang',to_date('20/09/09','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500018,'kwon',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500061,'test7',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500028,'moon',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500029,'moon',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500038,'moon',to_date('20/08/28','RR/MM/DD'));
REM INSERTING into HR.MOIM_FOLLOW
SET DEFINE OFF;
Insert into HR.MOIM_FOLLOW (USER_ID,FOL_USER_ID) values ('jang','jung');
Insert into HR.MOIM_FOLLOW (USER_ID,FOL_USER_ID) values ('jang','kim');
Insert into HR.MOIM_FOLLOW (USER_ID,FOL_USER_ID) values ('jang','ko');
Insert into HR.MOIM_FOLLOW (USER_ID,FOL_USER_ID) values ('jang','kwon');
Insert into HR.MOIM_FOLLOW (USER_ID,FOL_USER_ID) values ('jang','moon');
Insert into HR.MOIM_FOLLOW (USER_ID,FOL_USER_ID) values ('jang','test1');
Insert into HR.MOIM_FOLLOW (USER_ID,FOL_USER_ID) values ('jung','kim');
Insert into HR.MOIM_FOLLOW (USER_ID,FOL_USER_ID) values ('jung','ko');
Insert into HR.MOIM_FOLLOW (USER_ID,FOL_USER_ID) values ('jung','test2');
Insert into HR.MOIM_FOLLOW (USER_ID,FOL_USER_ID) values ('kim','kwon');
Insert into HR.MOIM_FOLLOW (USER_ID,FOL_USER_ID) values ('kim','moon');
Insert into HR.MOIM_FOLLOW (USER_ID,FOL_USER_ID) values ('kim','test6');
Insert into HR.MOIM_FOLLOW (USER_ID,FOL_USER_ID) values ('ko','kim');
Insert into HR.MOIM_FOLLOW (USER_ID,FOL_USER_ID) values ('ko','moon');
Insert into HR.MOIM_FOLLOW (USER_ID,FOL_USER_ID) values ('ko','test1');
Insert into HR.MOIM_FOLLOW (USER_ID,FOL_USER_ID) values ('kwon','jang');
Insert into HR.MOIM_FOLLOW (USER_ID,FOL_USER_ID) values ('kwon','ko');
Insert into HR.MOIM_FOLLOW (USER_ID,FOL_USER_ID) values ('kwon','moon');
Insert into HR.MOIM_FOLLOW (USER_ID,FOL_USER_ID) values ('kwon','test1');
Insert into HR.MOIM_FOLLOW (USER_ID,FOL_USER_ID) values ('kwon','test2');
Insert into HR.MOIM_FOLLOW (USER_ID,FOL_USER_ID) values ('kwon','test3');
Insert into HR.MOIM_FOLLOW (USER_ID,FOL_USER_ID) values ('kwon','test4');
Insert into HR.MOIM_FOLLOW (USER_ID,FOL_USER_ID) values ('moon','kim');
Insert into HR.MOIM_FOLLOW (USER_ID,FOL_USER_ID) values ('moon','ko');
Insert into HR.MOIM_FOLLOW (USER_ID,FOL_USER_ID) values ('moon','kwon');
Insert into HR.MOIM_FOLLOW (USER_ID,FOL_USER_ID) values ('moon','test4');
Insert into HR.MOIM_FOLLOW (USER_ID,FOL_USER_ID) values ('moon','test5');
Insert into HR.MOIM_FOLLOW (USER_ID,FOL_USER_ID) values ('moon','test7');
Insert into HR.MOIM_FOLLOW (USER_ID,FOL_USER_ID) values ('test1','jang');
Insert into HR.MOIM_FOLLOW (USER_ID,FOL_USER_ID) values ('test1','test3');
Insert into HR.MOIM_FOLLOW (USER_ID,FOL_USER_ID) values ('test1','test4');
Insert into HR.MOIM_FOLLOW (USER_ID,FOL_USER_ID) values ('test1','test5');
Insert into HR.MOIM_FOLLOW (USER_ID,FOL_USER_ID) values ('test2','test3');
Insert into HR.MOIM_FOLLOW (USER_ID,FOL_USER_ID) values ('test2','test4');
Insert into HR.MOIM_FOLLOW (USER_ID,FOL_USER_ID) values ('test3','test4');
Insert into HR.MOIM_FOLLOW (USER_ID,FOL_USER_ID) values ('test4','test5');
Insert into HR.MOIM_FOLLOW (USER_ID,FOL_USER_ID) values ('test5','test6');
REM INSERTING into HR.MOIM_JOIN_USER
SET DEFINE OFF;
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500001,'jung',null,to_date('20/08/11','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500000,'ko','ADMIN',to_date('20/08/11','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500001,'jang',null,to_date('20/08/11','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500001,'kwon','ADMIN',to_date('20/08/11','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500002,'moon',null,to_date('20/08/11','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500002,'kim','ADMIN',to_date('20/08/11','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500003,'test1','ADMIN',to_date('20/08/11','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500004,'test2','ADMIN',to_date('20/08/11','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500004,'test3',null,to_date('20/08/11','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500005,'moon',null,to_date('20/08/11','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500005,'jung',null,to_date('20/08/11','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500005,'kim','ADMIN',to_date('20/08/11','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500006,'test4','ADMIN',to_date('20/08/11','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500006,'test5',null,to_date('20/08/11','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500006,'test6',null,to_date('20/08/11','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500007,'kim','ADMIN',to_date('20/08/11','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500007,'jung',null,to_date('20/08/11','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500008,'moon','ADMIN',to_date('20/08/11','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500009,'ko',null,to_date('20/08/11','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500009,'test7','ADMIN',to_date('20/08/11','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500010,'test8','ADMIN',to_date('20/08/11','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500011,'test9',null,to_date('20/08/11','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500011,'test10',null,to_date('20/08/11','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500011,'test11','ADMIN',to_date('20/08/11','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500012,'ko','ADMIN',to_date('20/08/11','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500013,'test12','ADMIN',to_date('20/08/11','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500013,'test13',null,to_date('20/08/11','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500014,'jang','ADMIN',to_date('20/08/11','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500015,'kwon','ADMIN',to_date('20/08/11','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500025,'ko',null,to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500028,'test4',null,to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500058,'jung','ADMIN',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500000,'jang',null,to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500017,'test7','ADMIN',to_date('20/08/11','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500018,'test10',null,to_date('20/08/11','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500018,'test9','ADMIN',to_date('20/08/11','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500018,'test8',null,to_date('20/08/11','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500019,'test11','ADMIN',to_date('20/08/11','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500019,'test12',null,to_date('20/08/11','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500000,'test12',null,to_date('20/08/11','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500000,'test4',null,to_date('20/08/11','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500022,'jung','ADMIN',to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500022,'test1',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500022,'test2',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500022,'test3',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500022,'kwon',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500054,'jung','ADMIN',to_date('20/08/20','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500055,'jung','ADMIN',to_date('20/08/20','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500000,'kwon',null,to_date('20/08/21','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500029,'test2',null,to_date('20/08/21','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500024,'moon','ADMIN',to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500024,'test10',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500024,'ko',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500024,'jang',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500024,'jung',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500025,'jung','ADMIN',to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500025,'kwon',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500025,'test5',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500025,'test7',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500025,'test8',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500026,'kim','ADMIN',to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500026,'test1',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500026,'test2',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500026,'test3',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500026,'test4',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500027,'jang','ADMIN',to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500028,'kwon','ADMIN',to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500028,'test13',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500028,'test11',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500028,'test7',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500029,'jung','ADMIN',to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500029,'kim',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500030,'ko','ADMIN',to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500030,'jung',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500031,'jung','ADMIN',to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500031,'ko',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500031,'kim',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500031,'moon',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500031,'jang',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500031,'kwon',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500032,'test13','ADMIN',to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500032,'test12',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500033,'jung','ADMIN',to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500033,'kwon',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500033,'jang',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500034,'jung','ADMIN',to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500034,'ko',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500035,'jung','ADMIN',to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500035,'test1',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500035,'test2',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500035,'test3',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500035,'test4',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500036,'kim','ADMIN',to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500036,'kwon',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500037,'test1','ADMIN',to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500037,'test2',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500037,'test3',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500037,'test4',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500037,'test5',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500038,'kim','ADMIN',to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500038,'ko',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500038,'jung',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500038,'moon',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500038,'jang',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500039,'test10','ADMIN',to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500039,'test9',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500040,'jung','ADMIN',to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500040,'test10',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500040,'test9',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500040,'test8',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500040,'test7',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500041,'test5','ADMIN',to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500041,'test6',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500041,'test7',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500042,'jung','ADMIN',to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500042,'kwon',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500042,'test7',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500042,'jang',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500053,'ko','ADMIN',to_date('20/08/18','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500029,'ko',null,to_date('20/08/21','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500049,'test2','ADMIN',to_date('20/08/18','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500050,'jang','ADMIN',to_date('20/08/18','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500041,'ko',null,to_date('20/08/21','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500041,'test4',null,to_date('20/08/21','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500040,'test4',null,to_date('20/08/21','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500018,'kwon',null,to_date('20/08/21','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500005,'kwon',null,to_date('20/08/21','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500027,'kwon',null,to_date('20/08/21','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500030,'jang',null,to_date('20/08/24','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500019,'jang',null,to_date('20/08/24','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500050,'jung',null,to_date('20/08/24','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500050,'kwon',null,to_date('20/08/24','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500056,'jung','ADMIN',to_date('20/08/24','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500007,'jang',null,to_date('20/08/26','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500056,'kwon',null,to_date('20/08/26','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500038,'kwon',null,to_date('20/08/26','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500040,'kwon',null,to_date('20/08/26','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500007,'kwon',null,to_date('20/08/26','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500057,'ko','ADMIN',to_date('20/08/27','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500061,'test7','ADMIN',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500053,'jang',null,to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500053,'jung',null,to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500000,'jung',null,to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500062,'ko','ADMIN',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500062,'test1',null,to_date('20/08/28','RR/MM/DD'));
REM INSERTING into HR.MOIM_LOCATION
SET DEFINE OFF;
Insert into HR.MOIM_LOCATION (LOCATION_NO,NAME) values (1,'������');
Insert into HR.MOIM_LOCATION (LOCATION_NO,NAME) values (2,'��õ��');
Insert into HR.MOIM_LOCATION (LOCATION_NO,NAME) values (3,'���α�');
Insert into HR.MOIM_LOCATION (LOCATION_NO,NAME) values (4,'��õ��');
Insert into HR.MOIM_LOCATION (LOCATION_NO,NAME) values (5,'��������');
Insert into HR.MOIM_LOCATION (LOCATION_NO,NAME) values (6,'���۱�');
Insert into HR.MOIM_LOCATION (LOCATION_NO,NAME) values (7,'���Ǳ�');
Insert into HR.MOIM_LOCATION (LOCATION_NO,NAME) values (8,'���ʱ�');
Insert into HR.MOIM_LOCATION (LOCATION_NO,NAME) values (9,'������');
Insert into HR.MOIM_LOCATION (LOCATION_NO,NAME) values (10,'���ı�');
Insert into HR.MOIM_LOCATION (LOCATION_NO,NAME) values (11,'������');
Insert into HR.MOIM_LOCATION (LOCATION_NO,NAME) values (12,'������');
Insert into HR.MOIM_LOCATION (LOCATION_NO,NAME) values (13,'��걸');
Insert into HR.MOIM_LOCATION (LOCATION_NO,NAME) values (14,'���빮��');
Insert into HR.MOIM_LOCATION (LOCATION_NO,NAME) values (15,'����');
Insert into HR.MOIM_LOCATION (LOCATION_NO,NAME) values (16,'�߱�');
Insert into HR.MOIM_LOCATION (LOCATION_NO,NAME) values (17,'���α�');
Insert into HR.MOIM_LOCATION (LOCATION_NO,NAME) values (18,'������');
Insert into HR.MOIM_LOCATION (LOCATION_NO,NAME) values (19,'������');
Insert into HR.MOIM_LOCATION (LOCATION_NO,NAME) values (20,'���빮��');
Insert into HR.MOIM_LOCATION (LOCATION_NO,NAME) values (21,'���ϱ�');
Insert into HR.MOIM_LOCATION (LOCATION_NO,NAME) values (22,'���ϱ�');
Insert into HR.MOIM_LOCATION (LOCATION_NO,NAME) values (23,'������');
Insert into HR.MOIM_LOCATION (LOCATION_NO,NAME) values (24,'�����');
Insert into HR.MOIM_LOCATION (LOCATION_NO,NAME) values (25,'�߶���');
Insert into HR.MOIM_LOCATION (LOCATION_NO,NAME) values (0,'����');
REM INSERTING into HR.MOIM_MAIN
SET DEFINE OFF;
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500001,'�����',3,8,'�1.jpg',3000,3,'Y','N',to_date('20/09/15','RR/MM/DD'),to_date('20/08/11','RR/MM/DD'),700018,3,'���� ���α� �漭�� 37');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500002,'���� Ƽ���־��',2,5,'����.png',20000,0,'Y','N',to_date('20/10/14','RR/MM/DD'),to_date('20/08/11','RR/MM/DD'),700023,10,'���� ���ı� ������ 6');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500003,'��ȭ����',1,3,'������.png',20000,0,'Y','N',to_date('20/10/15','RR/MM/DD'),to_date('20/08/11','RR/MM/DD'),700024,12,'���� ������ ������ 1');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500004,'������ �ڶ��ؿ�!',2,6,'�ݷ�����.png',15000,1,'Y','N',to_date('20/11/11','RR/MM/DD'),to_date('20/08/11','RR/MM/DD'),700020,8,'���� ���ʱ� ������� 27');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500005,'������ �������� 6�ڸ�',4,6,'����2.jpg',5000,3,'N','N',to_date('20/11/08','RR/MM/DD'),to_date('20/08/11','RR/MM/DD'),700012,2,'���� ��õ�� ���ΰ����� 66');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500006,'����ϽǺ�',3,6,'���1.jpg',5500,0,'Y','N',to_date('20/11/12','RR/MM/DD'),to_date('20/08/11','RR/MM/DD'),700013,16,'���� �߱� ���빮�� 2');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500007,'���� ������͵��ؿ�!',4,10,'���͵�1.PNG',10000,7,'Y','N',to_date('20/11/24','RR/MM/DD'),to_date('20/08/11','RR/MM/DD'),700015,10,'���� ���ı� ����� 434');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500008,'����Ȱ�� ���� ä���䤻����',1,5,'����1.jpg',5000,0,'Y','N',to_date('20/11/27','RR/MM/DD'),to_date('20/08/11','RR/MM/DD'),700015,1,'���� ������ ������ 17');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500009,'�ζ��� �˷��ּ���Ф�',2,10,'�ζ���1.jpg',5000,0,'Y','N',to_date('20/11/09','RR/MM/DD'),to_date('20/08/11','RR/MM/DD'),700019,5,'���� �������� ���η� 701');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500010,'���� �컩�Ǻ�?',1,5,'�3.jpg',5000,0,'Y','N',to_date('20/11/13','RR/MM/DD'),to_date('20/08/11','RR/MM/DD'),700018,3,'���� ���α� ������ 4');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500011,'�Ѱ� ������Ÿ������',3,10,'�2.jpg',10000,3,'Y','N',to_date('20/11/03','RR/MM/DD'),to_date('20/08/11','RR/MM/DD'),700019,3,'���� ���α� ������ 15');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500012,'������ ģ�� ���ؿ�̤�',1,10,'������2.jpg',20000,0,'Y','N',to_date('20/11/12','RR/MM/DD'),to_date('20/08/11','RR/MM/DD'),700020,3,'���� ���α� ��ô�� 1');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500013,'�ݷ�����2',2,5,'�米�θ�.png',15000,0,'Y','N',to_date('20/12/12','RR/MM/DD'),to_date('20/08/11','RR/MM/DD'),700021,11,'���� ������ ����� 19');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500014,'���� ���Ǻ� ���ؿ�!',1,3,'������1.jpg',10000,8,'Y','N',to_date('20/12/16','RR/MM/DD'),to_date('20/08/11','RR/MM/DD'),700022,11,'���� ������ ������ 733');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500015,'�ܼ�Ʈ ���̰��Ǻ� �ֳ���???',0,1,'�ܼ�Ʈ1.jpg',5000,0,'Y','N',to_date('20/12/14','RR/MM/DD'),to_date('20/08/11','RR/MM/DD'),700023,11,'���� ������ ��������� 3');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500016,'���غ�������!',5,15,'����1.jpg',25000,1,'Y','N',to_date('20/12/12','RR/MM/DD'),to_date('20/08/11','RR/MM/DD'),700023,4,'���� ��õ�� ������� 70');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500017,'���� ���̰��䤻����',1,5,'��ȭ����.jpg',15000,0,'Y','N',to_date('20/12/14','RR/MM/DD'),to_date('20/08/11','RR/MM/DD'),700025,8,'���� ���ʱ� ������13�� 20');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500018,'���Ǳ� �󱸸���!!',4,30,'��3.png',15000,1,'N','N',to_date('20/10/27','RR/MM/DD'),to_date('20/08/11','RR/MM/DD'),700018,7,'���� ���Ǳ� ���Ƿ� 1');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500019,'�پǱ� ���ǻѿ�~?',3,4,'��ȭ2.jpg',7000,0,'N','N',to_date('20/10/01','RR/MM/DD'),to_date('20/08/11','RR/MM/DD'),700024,6,'���� ���۱� ���� 618');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500022,'�ָ��� �������?',4,5,'��Ÿ1.jpg',7500,0,'N','N',to_date('20/10/04','RR/MM/DD'),to_date('20/08/13','RR/MM/DD'),700014,2,'���� ��õ�� ���״�� 530');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500023,'������ũ 5���Կ�',5,5,'��Ƽ1.jpg',7500,0,'N','N',to_date('20/10/16','RR/MM/DD'),to_date('20/08/13','RR/MM/DD'),700025,4,'���� ��õ�� ���Ϸ� 594');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500024,'��õ�� ������',3,5,'��1.PNG',15000,6,'N','N',to_date('20/10/18','RR/MM/DD'),to_date('20/08/13','RR/MM/DD'),700015,4,'���� ��õ�� ���Ϸ�1�ٱ� 3');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500025,'�󱸴�ȸ ���� ���ؿ�',3,5,'��1.png',15000,6,'N','N',to_date('20/10/25','RR/MM/DD'),to_date('20/08/13','RR/MM/DD'),700018,4,'���� ��õ�� ����� 3');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500026,'���� �౸�Һе� ����',5,5,'�౸1.jpg',15000,0,'N','N',to_date('20/10/22','RR/MM/DD'),to_date('20/08/13','RR/MM/DD'),700017,2,'���� ��õ�� ���ΰ����� 71');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500027,'�ָ��� Ŀ�� ��Ǻ�~?',2,10,'ī��2.jpg',15000,1,'N','N',to_date('20/10/11','RR/MM/DD'),to_date('20/08/13','RR/MM/DD'),700015,7,'���� ���Ǳ� ���ǻ곪��� 2');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500028,'�� ����',5,5,'��1.jpg',3000,5,'N','N',to_date('20/10/03','RR/MM/DD'),to_date('20/08/13','RR/MM/DD'),700011,9,'���� ������ ������ 204');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500029,'�踰�� ����!',4,4,'���3.jpg',5000,1,'Y','N',to_date('20/12/29','RR/MM/DD'),to_date('20/08/13','RR/MM/DD'),700012,17,'���� ���α� �����3���� 2');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500030,'������ ���� �����ؿ�~',3,4,'�̱��Ƴ�1.jpg',10000,1,'N','N',to_date('20/10/15','RR/MM/DD'),to_date('20/08/13','RR/MM/DD'),700022,9,'���� ������ ������� 478');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500031,'�ζ��� �����ĵ帳�ϴ�',6,10,'�ζ���2.jpg',10000,0,'N','N',to_date('20/12/15','RR/MM/DD'),to_date('20/08/13','RR/MM/DD'),700019,22,'���� ���ϱ� ������ 8�� 8');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500032,'�̱��Ƴ� �� �ƽô� ��..?',2,3,'�̱��Ƴ�2.jpg',20000,2,'N','N',to_date('20/12/16','RR/MM/DD'),to_date('20/08/13','RR/MM/DD'),700022,21,'���� ���ϱ� ������6�� 4');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500033,'�����ī�� ���Ǻ�!!',2,3,'�����2.jpg',30000,0,'Y','N',to_date('20/12/15','RR/MM/DD'),to_date('20/08/13','RR/MM/DD'),700021,20,'���� ���빮�� �����6�� 3');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500034,'������ī��!!!!!',2,3,'������3.jpg',20000,0,'N','N',to_date('20/12/14','RR/MM/DD'),to_date('20/08/13','RR/MM/DD'),700020,19,'���� ������ �����1�� 6');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500035,'EDM�佺Ƽ�� ���Ǻ�!?',5,15,'��Ƽ2.jpg',20000,1,'N','N',to_date('20/10/15','RR/MM/DD'),to_date('20/08/13','RR/MM/DD'),700025,7,'���� ���Ǳ� ���ϱ� 10');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500036,'��ȭ �ݵ� ���� ���Ǻ�~?',2,4,'��ȭ3.png',10000,0,'N','N',to_date('20/09/07','RR/MM/DD'),to_date('20/08/13','RR/MM/DD'),700024,15,'���� ���� ���·� 162');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500037,'���� �ϰ� �;��~�Ф�',5,20,'����1.jpg',30000,0,'N','N',to_date('20/09/05','RR/MM/DD'),to_date('20/08/13','RR/MM/DD'),700014,14,'���� ���빮�� ��ȣ��� 4');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500038,'���� �������!��_��',6,20,'����1.jpg',10000,1,'N','N',to_date('20/09/28','RR/MM/DD'),to_date('20/08/13','RR/MM/DD'),700013,1,'���� ������ ��ȭ�� 48');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500039,'������ ���� �����ؿ�~',2,3,'�ݷ�����.png',10000,0,'N','N',to_date('20/12/16','RR/MM/DD'),to_date('20/08/13','RR/MM/DD'),700022,24,'���� ����� ������ 19');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500040,'���� ���̿����� ����Ž�� �մϴ�~',7,10,'����2.jpg',20000,1,'N','N',to_date('20/09/21','RR/MM/DD'),to_date('20/08/13','RR/MM/DD'),700016,1,'���� ������ ���޷��� 51');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500041,'�߰��� ���������ô�',5,5,'����1.jpg',20000,1,'N','N',to_date('20/09/17','RR/MM/DD'),to_date('20/08/13','RR/MM/DD'),700016,3,'���� ���α� ��ô�� 4');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500042,'���� ī��ٳ��!',4,6,'ī��1.jpg',5000,1,'N','N',to_date('20/09/14','RR/MM/DD'),to_date('20/08/13','RR/MM/DD'),700015,3,'���� ���α� �漭�� 5');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500049,'���ϱ� ��������!',1,10,'����3.jpg',100000,1,'N','N',to_date('20/12/22','RR/MM/DD'),to_date('20/08/18','RR/MM/DD'),700016,22,'���� ���ϱ� ���з� 384');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500050,'��� ������',3,5,'���2.jpg',10000,0,'N','N',to_date('20/12/27','RR/MM/DD'),to_date('20/08/18','RR/MM/DD'),700012,23,'���� ������ �����19���� 4');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500051,'�����ϽǺ�????',1,8,'����2.jpg',50000,0,'N','N',to_date('20/12/27','RR/MM/DD'),to_date('20/08/18','RR/MM/DD'),700013,10,'���� ���ı� �Ÿ��� 10�� 6');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500053,'�ǹ� ��Ƽ����',3,10,'����3.jpg',5000,0,'N','N',to_date('20/09/20','RR/MM/DD'),to_date('20/08/18','RR/MM/DD'),700011,2,'���� ��õ�� ���״�� 532');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500000,'���ı� ���ϽǺ� �ֳ���',6,10,'��4.png',100000,1,'Y','N',to_date('20/12/01','RR/MM/DD'),to_date('20/08/11','RR/MM/DD'),700018,18,'���� ������ ��ȣ�� 15');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500054,'���⹦ ����Ȱ��',3,10,'�����1.jpg',0,0,'N','N',to_date('20/09/20','RR/MM/DD'),to_date('20/08/20','RR/MM/DD'),700015,3,'���� ���α� ������ 21');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500055,'���������� �� �մϴ�!! ��� �Ŀ��Ŀ� 4 on 4',1,8,'��2.png',5000,2,'N','N',to_date('20/09/25','RR/MM/DD'),to_date('20/08/20','RR/MM/DD'),700018,12,'���� ������ ������� 108');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500056,'1�޸��� ��ȭ����',2,20,'��ȭ1.jpg',4000,1,'N','N',to_date('20/09/29','RR/MM/DD'),to_date('20/08/24','RR/MM/DD'),700024,3,'���� ���α� �漭�� 15');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500057,'�ָ����� �౸�һ��',1,10,'�౸2.png',50000,0,'N','N',to_date('20/09/26','RR/MM/DD'),to_date('20/08/27','RR/MM/DD'),700013,6,'���� ���۱� ������� 2');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500058,'���� ���̺������Ǻ� ���ؿ�!',2,3,'����2.jpg',100000,0,'N','N',to_date('20/12/08','RR/MM/DD'),to_date('20/08/28','RR/MM/DD'),700025,25,'���� �߶��� ���Ϸ�95�� 7');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500062,'���� �ǹ氡�� ���ϽǺ�?',2,4,'��2.jpg',500000,0,'N','N',to_date('20/12/13','RR/MM/DD'),to_date('20/08/28','RR/MM/DD'),700011,18,'���� ������ ��ȣ��13�� 21');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500061,'���ٵ� ����!!',1,10,'nintendo.jpg',5000,1,'Y','N',to_date('20/09/30','RR/MM/DD'),to_date('20/08/28','RR/MM/DD'),700016,13,'���� ��걸 ���ӹ����� 7');
REM INSERTING into HR.MOIM_MAIN_CATEGORY
SET DEFINE OFF;
Insert into HR.MOIM_MAIN_CATEGORY (MAIN_CATE_NO,NAME) values (1,'����/����');
Insert into HR.MOIM_MAIN_CATEGORY (MAIN_CATE_NO,NAME) values (2,'�米/�θ�');
Insert into HR.MOIM_MAIN_CATEGORY (MAIN_CATE_NO,NAME) values (3,'�/������');
Insert into HR.MOIM_MAIN_CATEGORY (MAIN_CATE_NO,NAME) values (4,'�ݷ�����');
Insert into HR.MOIM_MAIN_CATEGORY (MAIN_CATE_NO,NAME) values (5,'��ȭ/����/����');
REM INSERTING into HR.MOIM_MANAGER_BOARD
SET DEFINE OFF;
Insert into HR.MOIM_MANAGER_BOARD (MANAGER_BOARD_NO,MANAGER_BOARD_TITLE,VIEWS,DELETE_YN,CREATED_DATE) values (1,'ó�� �����Դϴ�.',0,'Y',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_MANAGER_BOARD (MANAGER_BOARD_NO,MANAGER_BOARD_TITLE,VIEWS,DELETE_YN,CREATED_DATE) values (2,'�ι�° �����Դϴ�.',1,'N',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_MANAGER_BOARD (MANAGER_BOARD_NO,MANAGER_BOARD_TITLE,VIEWS,DELETE_YN,CREATED_DATE) values (3,'����3333333',0,'Y',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_MANAGER_BOARD (MANAGER_BOARD_NO,MANAGER_BOARD_TITLE,VIEWS,DELETE_YN,CREATED_DATE) values (4,'�����Դϴ�.',0,'N',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_MANAGER_BOARD (MANAGER_BOARD_NO,MANAGER_BOARD_TITLE,VIEWS,DELETE_YN,CREATED_DATE) values (5,'��������',0,'N',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_MANAGER_BOARD (MANAGER_BOARD_NO,MANAGER_BOARD_TITLE,VIEWS,DELETE_YN,CREATED_DATE) values (6,'������ �پ��ϰ�',0,'Y',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_MANAGER_BOARD (MANAGER_BOARD_NO,MANAGER_BOARD_TITLE,VIEWS,DELETE_YN,CREATED_DATE) values (7,'������ �ٶȰ���',0,'Y',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_MANAGER_BOARD (MANAGER_BOARD_NO,MANAGER_BOARD_TITLE,VIEWS,DELETE_YN,CREATED_DATE) values (8,'������ �ٲ���',1,'N',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_MANAGER_BOARD (MANAGER_BOARD_NO,MANAGER_BOARD_TITLE,VIEWS,DELETE_YN,CREATED_DATE) values (9,'���� �مf��',0,'N',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_MANAGER_BOARD (MANAGER_BOARD_NO,MANAGER_BOARD_TITLE,VIEWS,DELETE_YN,CREATED_DATE) values (10,'ó�� �����Դϴ�222',1,'N',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_MANAGER_BOARD (MANAGER_BOARD_NO,MANAGER_BOARD_TITLE,VIEWS,DELETE_YN,CREATED_DATE) values (11,'�ι�° �����Դϴ�222',1,'N',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_MANAGER_BOARD (MANAGER_BOARD_NO,MANAGER_BOARD_TITLE,VIEWS,DELETE_YN,CREATED_DATE) values (12,'��� �����Դϴ�',3,'N',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_MANAGER_BOARD (MANAGER_BOARD_NO,MANAGER_BOARD_TITLE,VIEWS,DELETE_YN,CREATED_DATE) values (13,'�����Դϴ�222',1,'N',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_MANAGER_BOARD (MANAGER_BOARD_NO,MANAGER_BOARD_TITLE,VIEWS,DELETE_YN,CREATED_DATE) values (14,'��������222',0,'N',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_MANAGER_BOARD (MANAGER_BOARD_NO,MANAGER_BOARD_TITLE,VIEWS,DELETE_YN,CREATED_DATE) values (15,'������ �پ��ϰ�222',1,'Y',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_MANAGER_BOARD (MANAGER_BOARD_NO,MANAGER_BOARD_TITLE,VIEWS,DELETE_YN,CREATED_DATE) values (16,'�����Դϴ�!',4,'N',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_MANAGER_BOARD (MANAGER_BOARD_NO,MANAGER_BOARD_TITLE,VIEWS,DELETE_YN,CREATED_DATE) values (17,'222222222',0,'Y',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_MANAGER_BOARD (MANAGER_BOARD_NO,MANAGER_BOARD_TITLE,VIEWS,DELETE_YN,CREATED_DATE) values (18,'���� Ȯ�����ּ���',7,'N',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_MANAGER_BOARD (MANAGER_BOARD_NO,MANAGER_BOARD_TITLE,VIEWS,DELETE_YN,CREATED_DATE) values (19,'�����Դϴ�!',12,'N',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_MANAGER_BOARD (MANAGER_BOARD_NO,MANAGER_BOARD_TITLE,VIEWS,DELETE_YN,CREATED_DATE) values (20,'���� ��� �غ��ڽ��ϴ� ������ ��Ű��ƿ�',3,'Y',to_date('20/08/28','RR/MM/DD'));
REM INSERTING into HR.MOIM_MESSAGE
SET DEFINE OFF;
Insert into HR.MOIM_MESSAGE (MESSAGE_NO,TITLE,CONTENT,SEND_USER,RECEIVE_USER,READ_YN,CREATED_DATE,USER_ID) values (135,'����','����','jang','test1','N',to_date('20/08/21','RR/MM/DD'),'test1');
Insert into HR.MOIM_MESSAGE (MESSAGE_NO,TITLE,CONTENT,SEND_USER,RECEIVE_USER,READ_YN,CREATED_DATE,USER_ID) values (136,'����','����','jang','test1','N',to_date('20/08/21','RR/MM/DD'),'test1');
Insert into HR.MOIM_MESSAGE (MESSAGE_NO,TITLE,CONTENT,SEND_USER,RECEIVE_USER,READ_YN,CREATED_DATE,USER_ID) values (137,'����','����','jang','test1','N',to_date('20/08/21','RR/MM/DD'),'test1');
Insert into HR.MOIM_MESSAGE (MESSAGE_NO,TITLE,CONTENT,SEND_USER,RECEIVE_USER,READ_YN,CREATED_DATE,USER_ID) values (221,'�������ϼ���','����~~~~~','moon','kwon','N',to_date('20/08/28','RR/MM/DD'),'kwon');
Insert into HR.MOIM_MESSAGE (MESSAGE_NO,TITLE,CONTENT,SEND_USER,RECEIVE_USER,READ_YN,CREATED_DATE,USER_ID) values (198,'����','����','test1','jang','N',to_date('20/08/21','RR/MM/DD'),'jang');
Insert into HR.MOIM_MESSAGE (MESSAGE_NO,TITLE,CONTENT,SEND_USER,RECEIVE_USER,READ_YN,CREATED_DATE,USER_ID) values (199,'����','����','test1','jang','Y',to_date('20/08/21','RR/MM/DD'),'jang');
Insert into HR.MOIM_MESSAGE (MESSAGE_NO,TITLE,CONTENT,SEND_USER,RECEIVE_USER,READ_YN,CREATED_DATE,USER_ID) values (200,'����','����','test1','jang','Y',to_date('20/08/21','RR/MM/DD'),'jang');
Insert into HR.MOIM_MESSAGE (MESSAGE_NO,TITLE,CONTENT,SEND_USER,RECEIVE_USER,READ_YN,CREATED_DATE,USER_ID) values (222,'�������ϼ���','����~~~~~','moon','kwon','N',to_date('20/08/28','RR/MM/DD'),'kwon');
Insert into HR.MOIM_MESSAGE (MESSAGE_NO,TITLE,CONTENT,SEND_USER,RECEIVE_USER,READ_YN,CREATED_DATE,USER_ID) values (132,'����','����','jang','test1','N',to_date('20/08/21','RR/MM/DD'),'test1');
Insert into HR.MOIM_MESSAGE (MESSAGE_NO,TITLE,CONTENT,SEND_USER,RECEIVE_USER,READ_YN,CREATED_DATE,USER_ID) values (133,'����','����','jang','test1','N',to_date('20/08/21','RR/MM/DD'),'test1');
Insert into HR.MOIM_MESSAGE (MESSAGE_NO,TITLE,CONTENT,SEND_USER,RECEIVE_USER,READ_YN,CREATED_DATE,USER_ID) values (134,'����','����','jang','test1','N',to_date('20/08/21','RR/MM/DD'),'test1');
Insert into HR.MOIM_MESSAGE (MESSAGE_NO,TITLE,CONTENT,SEND_USER,RECEIVE_USER,READ_YN,CREATED_DATE,USER_ID) values (202,'����','����','test1','jang','N',to_date('20/08/21','RR/MM/DD'),'jang');
Insert into HR.MOIM_MESSAGE (MESSAGE_NO,TITLE,CONTENT,SEND_USER,RECEIVE_USER,READ_YN,CREATED_DATE,USER_ID) values (203,'����','����','jang','test1','Y',to_date('20/08/21','RR/MM/DD'),'jang');
Insert into HR.MOIM_MESSAGE (MESSAGE_NO,TITLE,CONTENT,SEND_USER,RECEIVE_USER,READ_YN,CREATED_DATE,USER_ID) values (204,'����','����','jang','test1','Y',to_date('20/08/21','RR/MM/DD'),'jang');
Insert into HR.MOIM_MESSAGE (MESSAGE_NO,TITLE,CONTENT,SEND_USER,RECEIVE_USER,READ_YN,CREATED_DATE,USER_ID) values (223,'�������ϼ���','����~~~','moon','kwon','N',to_date('20/08/28','RR/MM/DD'),'kwon');
Insert into HR.MOIM_MESSAGE (MESSAGE_NO,TITLE,CONTENT,SEND_USER,RECEIVE_USER,READ_YN,CREATED_DATE,USER_ID) values (224,'�������ϼ���','����~~~','moon','kwon','N',to_date('20/08/28','RR/MM/DD'),'kwon');
Insert into HR.MOIM_MESSAGE (MESSAGE_NO,TITLE,CONTENT,SEND_USER,RECEIVE_USER,READ_YN,CREATED_DATE,USER_ID) values (226,'���ϰ� �־��??','������������������','moon','jang','N',to_date('20/08/28','RR/MM/DD'),'moon');
Insert into HR.MOIM_MESSAGE (MESSAGE_NO,TITLE,CONTENT,SEND_USER,RECEIVE_USER,READ_YN,CREATED_DATE,USER_ID) values (227,'���ϰ� �־��??','������������������','moon','jang','Y',to_date('20/08/28','RR/MM/DD'),'jang');
Insert into HR.MOIM_MESSAGE (MESSAGE_NO,TITLE,CONTENT,SEND_USER,RECEIVE_USER,READ_YN,CREATED_DATE,USER_ID) values (228,'���ϰ� �־��??','������������������','moon','jang','N',to_date('20/08/28','RR/MM/DD'),'moon');
Insert into HR.MOIM_MESSAGE (MESSAGE_NO,TITLE,CONTENT,SEND_USER,RECEIVE_USER,READ_YN,CREATED_DATE,USER_ID) values (229,'���ؾ��� �ڱⲨ ���ʹ޷���','��������������','moon','ko','N',to_date('20/08/28','RR/MM/DD'),'ko');
Insert into HR.MOIM_MESSAGE (MESSAGE_NO,TITLE,CONTENT,SEND_USER,RECEIVE_USER,READ_YN,CREATED_DATE,USER_ID) values (230,'���ؾ��� �ڱⲨ ���ʹ޷���','��������������','moon','ko','N',to_date('20/08/28','RR/MM/DD'),'moon');
Insert into HR.MOIM_MESSAGE (MESSAGE_NO,TITLE,CONTENT,SEND_USER,RECEIVE_USER,READ_YN,CREATED_DATE,USER_ID) values (232,'������ ����','û�������̵�22222','jang','jung','Y',to_date('20/08/28','RR/MM/DD'),'jang');
Insert into HR.MOIM_MESSAGE (MESSAGE_NO,TITLE,CONTENT,SEND_USER,RECEIVE_USER,READ_YN,CREATED_DATE,USER_ID) values (233,'�ȳ��ϼ���~','�±±�~','jung','ko','N',to_date('20/08/28','RR/MM/DD'),'ko');
Insert into HR.MOIM_MESSAGE (MESSAGE_NO,TITLE,CONTENT,SEND_USER,RECEIVE_USER,READ_YN,CREATED_DATE,USER_ID) values (234,'�ȳ��ϼ���~','�±±�~','jung','ko','N',to_date('20/08/28','RR/MM/DD'),'jung');
REM INSERTING into HR.MOIM_PHOTO
SET DEFINE OFF;
Insert into HR.MOIM_PHOTO (PHOTO_NO,PHOTO,LIKES,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID) values (600000,'star1.png',2,'N',to_date('20/08/24','RR/MM/DD'),500000,'ko');
Insert into HR.MOIM_PHOTO (PHOTO_NO,PHOTO,LIKES,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID) values (600001,'star1.png',3,'N',to_date('20/08/24','RR/MM/DD'),500000,'ko');
Insert into HR.MOIM_PHOTO (PHOTO_NO,PHOTO,LIKES,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID) values (600002,'KakaoTalk_20200813_180307085.jpg',2,'N',to_date('20/08/24','RR/MM/DD'),500000,'ko');
Insert into HR.MOIM_PHOTO (PHOTO_NO,PHOTO,LIKES,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID) values (600003,'1.jpeg',0,'N',to_date('20/08/26','RR/MM/DD'),500000,'kwon');
Insert into HR.MOIM_PHOTO (PHOTO_NO,PHOTO,LIKES,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID) values (600004,'12.jpg',0,'N',to_date('20/08/26','RR/MM/DD'),500002,'moon');
Insert into HR.MOIM_PHOTO (PHOTO_NO,PHOTO,LIKES,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID) values (600005,'13.jpg',0,'N',to_date('20/08/26','RR/MM/DD'),500002,'moon');
Insert into HR.MOIM_PHOTO (PHOTO_NO,PHOTO,LIKES,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID) values (600006,'14.jpg',0,'N',to_date('20/08/26','RR/MM/DD'),500002,'moon');
Insert into HR.MOIM_PHOTO (PHOTO_NO,PHOTO,LIKES,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID) values (600007,'FB_IMG_1477479606226.jpg',0,'N',to_date('20/08/26','RR/MM/DD'),500000,'test1');
Insert into HR.MOIM_PHOTO (PHOTO_NO,PHOTO,LIKES,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID) values (600008,'FB_IMG_1477479606226.jpg',0,'N',to_date('20/08/27','RR/MM/DD'),500000,'ko');
Insert into HR.MOIM_PHOTO (PHOTO_NO,PHOTO,LIKES,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID) values (600009,'FB_IMG_1503533236916.jpg',0,'N',to_date('20/08/27','RR/MM/DD'),500000,'ko');
Insert into HR.MOIM_PHOTO (PHOTO_NO,PHOTO,LIKES,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID) values (600010,'FB_IMG_1503533236916.jpg',0,'N',to_date('20/08/27','RR/MM/DD'),500000,'ko');
Insert into HR.MOIM_PHOTO (PHOTO_NO,PHOTO,LIKES,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID) values (600011,'Koala.jpg',0,'N',to_date('20/08/27','RR/MM/DD'),500000,'ko');
Insert into HR.MOIM_PHOTO (PHOTO_NO,PHOTO,LIKES,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID) values (600012,'Lighthouse.jpg',0,'N',to_date('20/08/27','RR/MM/DD'),500000,'ko');
Insert into HR.MOIM_PHOTO (PHOTO_NO,PHOTO,LIKES,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID) values (600013,'Penguins.jpg',0,'N',to_date('20/08/27','RR/MM/DD'),500000,'ko');
Insert into HR.MOIM_PHOTO (PHOTO_NO,PHOTO,LIKES,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID) values (600014,'Tulips.jpg',0,'N',to_date('20/08/27','RR/MM/DD'),500000,'ko');
Insert into HR.MOIM_PHOTO (PHOTO_NO,PHOTO,LIKES,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID) values (600015,'Chrysanthemum.jpg',1,'N',to_date('20/08/27','RR/MM/DD'),500000,'ko');
Insert into HR.MOIM_PHOTO (PHOTO_NO,PHOTO,LIKES,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID) values (600016,'Hydrangeas.jpg',1,'N',to_date('20/08/27','RR/MM/DD'),500000,'ko');
Insert into HR.MOIM_PHOTO (PHOTO_NO,PHOTO,LIKES,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID) values (600017,'Desert.jpg',1,'N',to_date('20/08/27','RR/MM/DD'),500000,'ko');
Insert into HR.MOIM_PHOTO (PHOTO_NO,PHOTO,LIKES,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID) values (600018,'Penguins.jpg',1,'N',to_date('20/08/27','RR/MM/DD'),500000,'ko');
Insert into HR.MOIM_PHOTO (PHOTO_NO,PHOTO,LIKES,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID) values (600019,'Jellyfish.jpg',1,'N',to_date('20/08/27','RR/MM/DD'),500000,'ko');
Insert into HR.MOIM_PHOTO (PHOTO_NO,PHOTO,LIKES,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID) values (600020,'Tulips.jpg',1,'N',to_date('20/08/27','RR/MM/DD'),500000,'ko');
Insert into HR.MOIM_PHOTO (PHOTO_NO,PHOTO,LIKES,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID) values (600021,'Penguins.jpg',1,'N',to_date('20/08/27','RR/MM/DD'),500000,'ko');
Insert into HR.MOIM_PHOTO (PHOTO_NO,PHOTO,LIKES,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID) values (600022,'Jellyfish.jpg',1,'N',to_date('20/08/27','RR/MM/DD'),500000,'ko');
Insert into HR.MOIM_PHOTO (PHOTO_NO,PHOTO,LIKES,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID) values (600023,'FB_IMG_1503533236916.jpg',1,'N',to_date('20/08/27','RR/MM/DD'),500000,'ko');
Insert into HR.MOIM_PHOTO (PHOTO_NO,PHOTO,LIKES,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID) values (600025,'1.jpeg',0,'N',to_date('20/08/27','RR/MM/DD'),500024,'kwon');
REM INSERTING into HR.MOIM_PHOTO_USER_LIKE
SET DEFINE OFF;
Insert into HR.MOIM_PHOTO_USER_LIKE (PHOTO_NO,USER_ID,MOIM_NO) values (600000,'kwon',500000);
Insert into HR.MOIM_PHOTO_USER_LIKE (PHOTO_NO,USER_ID,MOIM_NO) values (600001,'ko',500000);
Insert into HR.MOIM_PHOTO_USER_LIKE (PHOTO_NO,USER_ID,MOIM_NO) values (600001,'kwon',500000);
Insert into HR.MOIM_PHOTO_USER_LIKE (PHOTO_NO,USER_ID,MOIM_NO) values (600001,'test1',500000);
Insert into HR.MOIM_PHOTO_USER_LIKE (PHOTO_NO,USER_ID,MOIM_NO) values (600002,'ko',500000);
Insert into HR.MOIM_PHOTO_USER_LIKE (PHOTO_NO,USER_ID,MOIM_NO) values (600002,'kwon',500000);
Insert into HR.MOIM_PHOTO_USER_LIKE (PHOTO_NO,USER_ID,MOIM_NO) values (600015,'ko',500000);
Insert into HR.MOIM_PHOTO_USER_LIKE (PHOTO_NO,USER_ID,MOIM_NO) values (600016,'kwon',500000);
Insert into HR.MOIM_PHOTO_USER_LIKE (PHOTO_NO,USER_ID,MOIM_NO) values (600017,'ko',500000);
Insert into HR.MOIM_PHOTO_USER_LIKE (PHOTO_NO,USER_ID,MOIM_NO) values (600018,'ko',500000);
Insert into HR.MOIM_PHOTO_USER_LIKE (PHOTO_NO,USER_ID,MOIM_NO) values (600019,'ko',500000);
Insert into HR.MOIM_PHOTO_USER_LIKE (PHOTO_NO,USER_ID,MOIM_NO) values (600020,'ko',500000);
Insert into HR.MOIM_PHOTO_USER_LIKE (PHOTO_NO,USER_ID,MOIM_NO) values (600021,'ko',500000);
Insert into HR.MOIM_PHOTO_USER_LIKE (PHOTO_NO,USER_ID,MOIM_NO) values (600022,'ko',500000);
Insert into HR.MOIM_PHOTO_USER_LIKE (PHOTO_NO,USER_ID,MOIM_NO) values (600023,'ko',500000);
REM INSERTING into HR.MOIM_SUB_CATE
SET DEFINE OFF;
Insert into HR.MOIM_SUB_CATE (SUB_CATE_NO,NAME,MAIN_CATE_NO) values (700011,'���׿��극����',1);
Insert into HR.MOIM_SUB_CATE (SUB_CATE_NO,NAME,MAIN_CATE_NO) values (700012,'��Ʋ�׶���',1);
Insert into HR.MOIM_SUB_CATE (SUB_CATE_NO,NAME,MAIN_CATE_NO) values (700013,'���Ŀ¶���4',1);
Insert into HR.MOIM_SUB_CATE (SUB_CATE_NO,NAME,MAIN_CATE_NO) values (700014,'�̱�/����',2);
Insert into HR.MOIM_SUB_CATE (SUB_CATE_NO,NAME,MAIN_CATE_NO) values (700015,'��/Ŀ��/��',2);
Insert into HR.MOIM_SUB_CATE (SUB_CATE_NO,NAME,MAIN_CATE_NO) values (700016,'����/�̽�ȸ',2);
Insert into HR.MOIM_SUB_CATE (SUB_CATE_NO,NAME,MAIN_CATE_NO) values (700017,'�౸/ǲ��',3);
Insert into HR.MOIM_SUB_CATE (SUB_CATE_NO,NAME,MAIN_CATE_NO) values (700018,'��',3);
Insert into HR.MOIM_SUB_CATE (SUB_CATE_NO,NAME,MAIN_CATE_NO) values (700019,'������Ʈ/�ζ���',3);
Insert into HR.MOIM_SUB_CATE (SUB_CATE_NO,NAME,MAIN_CATE_NO) values (700020,'������',4);
Insert into HR.MOIM_SUB_CATE (SUB_CATE_NO,NAME,MAIN_CATE_NO) values (700021,'�����',4);
Insert into HR.MOIM_SUB_CATE (SUB_CATE_NO,NAME,MAIN_CATE_NO) values (700022,'�����',4);
Insert into HR.MOIM_SUB_CATE (SUB_CATE_NO,NAME,MAIN_CATE_NO) values (700023,'����/����',5);
Insert into HR.MOIM_SUB_CATE (SUB_CATE_NO,NAME,MAIN_CATE_NO) values (700024,'��ȭ',5);
Insert into HR.MOIM_SUB_CATE (SUB_CATE_NO,NAME,MAIN_CATE_NO) values (700025,'��Ƽ/�佺Ƽ��',5);
REM INSERTING into HR.MOIM_SUB_JOIN_USER
SET DEFINE OFF;
Insert into HR.MOIM_SUB_JOIN_USER (SUB_MOIM_NO,MOIM_NO,USER_ID) values (800013,500042,'jang');
Insert into HR.MOIM_SUB_JOIN_USER (SUB_MOIM_NO,MOIM_NO,USER_ID) values (800014,500042,'jang');
Insert into HR.MOIM_SUB_JOIN_USER (SUB_MOIM_NO,MOIM_NO,USER_ID) values (800005,500000,'ko');
Insert into HR.MOIM_SUB_JOIN_USER (SUB_MOIM_NO,MOIM_NO,USER_ID) values (800017,500000,'test12');
Insert into HR.MOIM_SUB_JOIN_USER (SUB_MOIM_NO,MOIM_NO,USER_ID) values (800000,500000,'kwon');
Insert into HR.MOIM_SUB_JOIN_USER (SUB_MOIM_NO,MOIM_NO,USER_ID) values (800017,500000,'test4');
Insert into HR.MOIM_SUB_JOIN_USER (SUB_MOIM_NO,MOIM_NO,USER_ID) values (800000,500000,'test4');
Insert into HR.MOIM_SUB_JOIN_USER (SUB_MOIM_NO,MOIM_NO,USER_ID) values (800005,500000,'test4');
Insert into HR.MOIM_SUB_JOIN_USER (SUB_MOIM_NO,MOIM_NO,USER_ID) values (800019,500058,'jung');
REM INSERTING into HR.MOIM_SUB_MOIM
SET DEFINE OFF;
Insert into HR.MOIM_SUB_MOIM (SUB_MOIM_NO,TITLE,LOCATION,HEAD_COUNT,FEE,DELETE_YN,JOIN_DATE,JOIN_COUNT,CREATED_DATE,USER_ID,MOIM_NO) values (800000,'���Ӹ��Ӹ���','���α�',5,5000,'N',to_date('20/08/14','RR/MM/DD'),2,to_date('20/08/11','RR/MM/DD'),'ko',500000);
Insert into HR.MOIM_SUB_MOIM (SUB_MOIM_NO,TITLE,LOCATION,HEAD_COUNT,FEE,DELETE_YN,JOIN_DATE,JOIN_COUNT,CREATED_DATE,USER_ID,MOIM_NO) values (800001,'�ְ߸��Ӹ���','���α�',4,10000,'N',to_date('20/09/10','RR/MM/DD'),0,to_date('20/08/11','RR/MM/DD'),'ko',500004);
Insert into HR.MOIM_SUB_MOIM (SUB_MOIM_NO,TITLE,LOCATION,HEAD_COUNT,FEE,DELETE_YN,JOIN_DATE,JOIN_COUNT,CREATED_DATE,USER_ID,MOIM_NO) values (800013,'����������������������','���α�',3,10000,'N',to_date('20/09/02','RR/MM/DD'),1,to_date('20/08/14','RR/MM/DD'),'jang',500042);
Insert into HR.MOIM_SUB_MOIM (SUB_MOIM_NO,TITLE,LOCATION,HEAD_COUNT,FEE,DELETE_YN,JOIN_DATE,JOIN_COUNT,CREATED_DATE,USER_ID,MOIM_NO) values (800014,'������������','���α�',3,10000,'N',null,1,to_date('20/08/14','RR/MM/DD'),'jang',500042);
Insert into HR.MOIM_SUB_MOIM (SUB_MOIM_NO,TITLE,LOCATION,HEAD_COUNT,FEE,DELETE_YN,JOIN_DATE,JOIN_COUNT,CREATED_DATE,USER_ID,MOIM_NO) values (800005,'������ǲ�չ��','�츮�����ΰ���',2,13000,'N',to_date('20/08/29','RR/MM/DD'),2,to_date('20/08/14','RR/MM/DD'),'ko',500000);
Insert into HR.MOIM_SUB_MOIM (SUB_MOIM_NO,TITLE,LOCATION,HEAD_COUNT,FEE,DELETE_YN,JOIN_DATE,JOIN_COUNT,CREATED_DATE,USER_ID,MOIM_NO) values (800017,'���� �����','�ʳ���',3,50000,'N',to_date('20/08/19','RR/MM/DD'),2,to_date('20/08/14','RR/MM/DD'),'test4',500000);
Insert into HR.MOIM_SUB_MOIM (SUB_MOIM_NO,TITLE,LOCATION,HEAD_COUNT,FEE,DELETE_YN,JOIN_DATE,JOIN_COUNT,CREATED_DATE,USER_ID,MOIM_NO) values (800019,'������~~','������ Ÿ�ӽ�����',10,10000,'N',to_date('20/08/28','RR/MM/DD'),1,to_date('20/08/28','RR/MM/DD'),'jung',500058);
REM INSERTING into HR.MOIM_USER
SET DEFINE OFF;
Insert into HR.MOIM_USER (USER_ID,USER_NAME,TEL,USER_PASSWORD,NICKNAME,EMAIL,BIRTH,GENDER,DELETE_YN,CREATED_DATE,LOCATION_NO,PROFILE_IMAGE,SUSPENDED_ACCOUNT_YN) values ('moon','���ֿ�','010-1111-2222','zxcv1234','���ֹ�','moon@gmail.com','1991.01.01','��','N',to_date('20/08/11','RR/MM/DD'),0,'11.jpg','N');
Insert into HR.MOIM_USER (USER_ID,USER_NAME,TEL,USER_PASSWORD,NICKNAME,EMAIL,BIRTH,GENDER,DELETE_YN,CREATED_DATE,LOCATION_NO,PROFILE_IMAGE,SUSPENDED_ACCOUNT_YN) values ('jung','������','010-1111-3333','1','������','jung@gmail.com','1992.06.25','��','N',to_date('20/08/11','RR/MM/DD'),0,'profile.png','N');
Insert into HR.MOIM_USER (USER_ID,USER_NAME,TEL,USER_PASSWORD,NICKNAME,EMAIL,BIRTH,GENDER,DELETE_YN,CREATED_DATE,LOCATION_NO,PROFILE_IMAGE,SUSPENDED_ACCOUNT_YN) values ('kim','��μ�','010-1111-4444','zxcv1234','���α�','kim@gmail.com','1996.01.09','��','N',to_date('20/08/11','RR/MM/DD'),5,'profile.png','N');
Insert into HR.MOIM_USER (USER_ID,USER_NAME,TEL,USER_PASSWORD,NICKNAME,EMAIL,BIRTH,GENDER,DELETE_YN,CREATED_DATE,LOCATION_NO,PROFILE_IMAGE,SUSPENDED_ACCOUNT_YN) values ('ko','������','010-1111-5555','1','������','ko@gmail.com','1994.09.25','��','N',to_date('20/08/11','RR/MM/DD'),18,'FB_IMG_1477479606226.jpg','N');
Insert into HR.MOIM_USER (USER_ID,USER_NAME,TEL,USER_PASSWORD,NICKNAME,EMAIL,BIRTH,GENDER,DELETE_YN,CREATED_DATE,LOCATION_NO,PROFILE_IMAGE,SUSPENDED_ACCOUNT_YN) values ('kwon','�ǿ���','010-1111-6666','zxcv1234','�ؿ���','kwon@gmail.com','1994.07.03','��','N',to_date('20/08/11','RR/MM/DD'),0,'profile.png','N');
Insert into HR.MOIM_USER (USER_ID,USER_NAME,TEL,USER_PASSWORD,NICKNAME,EMAIL,BIRTH,GENDER,DELETE_YN,CREATED_DATE,LOCATION_NO,PROFILE_IMAGE,SUSPENDED_ACCOUNT_YN) values ('jang','���ָ�','010-1111-7777','1','������','jang@gmail.com','2000.01.19','��','N',to_date('20/08/11','RR/MM/DD'),3,'����.jpg','N');
Insert into HR.MOIM_USER (USER_ID,USER_NAME,TEL,USER_PASSWORD,NICKNAME,EMAIL,BIRTH,GENDER,DELETE_YN,CREATED_DATE,LOCATION_NO,PROFILE_IMAGE,SUSPENDED_ACCOUNT_YN) values ('admin','������','010-9999-9999','zxcv1234','������','admin@gmail.com','1995.01.05','��','N',to_date('20/08/11','RR/MM/DD'),5,'profile.png','N');
Insert into HR.MOIM_USER (USER_ID,USER_NAME,TEL,USER_PASSWORD,NICKNAME,EMAIL,BIRTH,GENDER,DELETE_YN,CREATED_DATE,LOCATION_NO,PROFILE_IMAGE,SUSPENDED_ACCOUNT_YN) values ('test1','�׽�Ʈ1','010-8888-8888','1234','�׽�Ʈ1','test1@gmail.com','1993.01.01','��','N',to_date('20/08/11','RR/MM/DD'),11,'profile.png','N');
Insert into HR.MOIM_USER (USER_ID,USER_NAME,TEL,USER_PASSWORD,NICKNAME,EMAIL,BIRTH,GENDER,DELETE_YN,CREATED_DATE,LOCATION_NO,PROFILE_IMAGE,SUSPENDED_ACCOUNT_YN) values ('test2','�׽�Ʈ2','010-8888-7777','1234','�׽�Ʈ2','test2@gmail.com','1993.01.01','��','N',to_date('20/08/11','RR/MM/DD'),15,'profile.png','Y');
Insert into HR.MOIM_USER (USER_ID,USER_NAME,TEL,USER_PASSWORD,NICKNAME,EMAIL,BIRTH,GENDER,DELETE_YN,CREATED_DATE,LOCATION_NO,PROFILE_IMAGE,SUSPENDED_ACCOUNT_YN) values ('test3','�׽�Ʈ3','010-8888-6666','1234','�׽�Ʈ3','test3@gmail.com','1993.01.01','��','N',to_date('20/08/11','RR/MM/DD'),16,'profile.png','N');
Insert into HR.MOIM_USER (USER_ID,USER_NAME,TEL,USER_PASSWORD,NICKNAME,EMAIL,BIRTH,GENDER,DELETE_YN,CREATED_DATE,LOCATION_NO,PROFILE_IMAGE,SUSPENDED_ACCOUNT_YN) values ('test4','�׽�Ʈ4','010-8888-5555','1234','�׽�Ʈ4','test4@gmail.com','1993.01.01','��','N',to_date('20/08/11','RR/MM/DD'),20,'profile.png','N');
Insert into HR.MOIM_USER (USER_ID,USER_NAME,TEL,USER_PASSWORD,NICKNAME,EMAIL,BIRTH,GENDER,DELETE_YN,CREATED_DATE,LOCATION_NO,PROFILE_IMAGE,SUSPENDED_ACCOUNT_YN) values ('test5','�׽�Ʈ5','010-1212-1212','1234','�г���5','test5@naver.com','2000.02.02','��','N',to_date('20/08/11','RR/MM/DD'),1,'profile.png','N');
Insert into HR.MOIM_USER (USER_ID,USER_NAME,TEL,USER_PASSWORD,NICKNAME,EMAIL,BIRTH,GENDER,DELETE_YN,CREATED_DATE,LOCATION_NO,PROFILE_IMAGE,SUSPENDED_ACCOUNT_YN) values ('test6','�׽�Ʈ6','010-1313-1313','1234','�г���6','test6@naver.com','2000.07.07','��','N',to_date('20/08/11','RR/MM/DD'),2,'profile.png','N');
Insert into HR.MOIM_USER (USER_ID,USER_NAME,TEL,USER_PASSWORD,NICKNAME,EMAIL,BIRTH,GENDER,DELETE_YN,CREATED_DATE,LOCATION_NO,PROFILE_IMAGE,SUSPENDED_ACCOUNT_YN) values ('test7','�׽�Ʈ7','010-2222-2222','1234','�г���7','test7@naver.com','1999.05.05','��','N',to_date('20/08/11','RR/MM/DD'),3,'profile.png','N');
Insert into HR.MOIM_USER (USER_ID,USER_NAME,TEL,USER_PASSWORD,NICKNAME,EMAIL,BIRTH,GENDER,DELETE_YN,CREATED_DATE,LOCATION_NO,PROFILE_IMAGE,SUSPENDED_ACCOUNT_YN) values ('test8','�׽�Ʈ8','010-3434-3434','1234','�г���8','test8@naver.com','1998.03.03','��','N',to_date('20/08/11','RR/MM/DD'),4,'profile.png','N');
Insert into HR.MOIM_USER (USER_ID,USER_NAME,TEL,USER_PASSWORD,NICKNAME,EMAIL,BIRTH,GENDER,DELETE_YN,CREATED_DATE,LOCATION_NO,PROFILE_IMAGE,SUSPENDED_ACCOUNT_YN) values ('test9','�׽�Ʈ9','010-7777-7777','1234','�г���9','test9@naver.com','2001.11.11','��','Y',to_date('20/08/11','RR/MM/DD'),5,'profile.png','N');
Insert into HR.MOIM_USER (USER_ID,USER_NAME,TEL,USER_PASSWORD,NICKNAME,EMAIL,BIRTH,GENDER,DELETE_YN,CREATED_DATE,LOCATION_NO,PROFILE_IMAGE,SUSPENDED_ACCOUNT_YN) values ('test10','�׽�Ʈ10','010-0505-0505','1234','�г���10','test10@naver.com','1995.03.14','��','N',to_date('20/08/11','RR/MM/DD'),6,'profile.png','N');
Insert into HR.MOIM_USER (USER_ID,USER_NAME,TEL,USER_PASSWORD,NICKNAME,EMAIL,BIRTH,GENDER,DELETE_YN,CREATED_DATE,LOCATION_NO,PROFILE_IMAGE,SUSPENDED_ACCOUNT_YN) values ('test11','�׽�Ʈ11','010-7878-7878','1234','�г���11','test11@naver.com','1997.04.06','��','N',to_date('20/08/11','RR/MM/DD'),7,'profile.png','N');
Insert into HR.MOIM_USER (USER_ID,USER_NAME,TEL,USER_PASSWORD,NICKNAME,EMAIL,BIRTH,GENDER,DELETE_YN,CREATED_DATE,LOCATION_NO,PROFILE_IMAGE,SUSPENDED_ACCOUNT_YN) values ('test12','�׽�Ʈ12','010-4646-4646','1234','�г���12','test12@naver.com','1993.02.14','��','N',to_date('20/08/11','RR/MM/DD'),8,'profile.png','N');
Insert into HR.MOIM_USER (USER_ID,USER_NAME,TEL,USER_PASSWORD,NICKNAME,EMAIL,BIRTH,GENDER,DELETE_YN,CREATED_DATE,LOCATION_NO,PROFILE_IMAGE,SUSPENDED_ACCOUNT_YN) values ('test13','�׽�Ʈ13','010-9999-9999','1234','�г���13','test13@naver.com','1992.05.25','��','N',to_date('20/08/11','RR/MM/DD'),0,null,'N');
Insert into HR.MOIM_USER (USER_ID,USER_NAME,TEL,USER_PASSWORD,NICKNAME,EMAIL,BIRTH,GENDER,DELETE_YN,CREATED_DATE,LOCATION_NO,PROFILE_IMAGE,SUSPENDED_ACCOUNT_YN) values ('yjs10000','���缮','01011112222','zxcv1234','�缮��','js@js.com','199999','��','N',to_date('20/08/19','RR/MM/DD'),2,null,'N');
REM INSERTING into HR.MOIM_USER_CATE
SET DEFINE OFF;
Insert into HR.MOIM_USER_CATE (USER_ID,MAIN_CATE_NO) values ('moon',1);
Insert into HR.MOIM_USER_CATE (USER_ID,MAIN_CATE_NO) values ('jung',2);
Insert into HR.MOIM_USER_CATE (USER_ID,MAIN_CATE_NO) values ('kim',3);
Insert into HR.MOIM_USER_CATE (USER_ID,MAIN_CATE_NO) values ('ko',4);
Insert into HR.MOIM_USER_CATE (USER_ID,MAIN_CATE_NO) values ('kwon',5);
Insert into HR.MOIM_USER_CATE (USER_ID,MAIN_CATE_NO) values ('jang',1);
Insert into HR.MOIM_USER_CATE (USER_ID,MAIN_CATE_NO) values ('test1',2);
Insert into HR.MOIM_USER_CATE (USER_ID,MAIN_CATE_NO) values ('test2',3);
Insert into HR.MOIM_USER_CATE (USER_ID,MAIN_CATE_NO) values ('test3',4);
Insert into HR.MOIM_USER_CATE (USER_ID,MAIN_CATE_NO) values ('test4',5);
Insert into HR.MOIM_USER_CATE (USER_ID,MAIN_CATE_NO) values ('test5',1);
Insert into HR.MOIM_USER_CATE (USER_ID,MAIN_CATE_NO) values ('test6',2);
Insert into HR.MOIM_USER_CATE (USER_ID,MAIN_CATE_NO) values ('test7',3);
Insert into HR.MOIM_USER_CATE (USER_ID,MAIN_CATE_NO) values ('test8',4);
Insert into HR.MOIM_USER_CATE (USER_ID,MAIN_CATE_NO) values ('test9',5);
Insert into HR.MOIM_USER_CATE (USER_ID,MAIN_CATE_NO) values ('test10',1);
Insert into HR.MOIM_USER_CATE (USER_ID,MAIN_CATE_NO) values ('test11',2);
Insert into HR.MOIM_USER_CATE (USER_ID,MAIN_CATE_NO) values ('test12',3);
Insert into HR.MOIM_USER_CATE (USER_ID,MAIN_CATE_NO) values ('test13',4);
Insert into HR.MOIM_USER_CATE (USER_ID,MAIN_CATE_NO) values ('yjs10000',4);
REM INSERTING into HR.MOIM_WARNING
SET DEFINE OFF;
Insert into HR.MOIM_WARNING (WARNING_NO,USER_ID,LOGIN_USER_ID,CONTENT,TYPE,CREATED_DATE,DELETE_YN) values (1,'jang','test1','�Ű��մϴ�111','����',to_date('20/08/24','RR/MM/DD'),'N');
Insert into HR.MOIM_WARNING (WARNING_NO,USER_ID,LOGIN_USER_ID,CONTENT,TYPE,CREATED_DATE,DELETE_YN) values (2,'jang','test2','�Ű��մϴ�222','����',to_date('20/08/24','RR/MM/DD'),'N');
Insert into HR.MOIM_WARNING (WARNING_NO,USER_ID,LOGIN_USER_ID,CONTENT,TYPE,CREATED_DATE,DELETE_YN) values (3,'test1','test3','�Ű��մϴ�333','����',to_date('20/08/24','RR/MM/DD'),'N');
Insert into HR.MOIM_WARNING (WARNING_NO,USER_ID,LOGIN_USER_ID,CONTENT,TYPE,CREATED_DATE,DELETE_YN) values (4,'test2','test3','�Ű��մϴ�444','����',to_date('20/08/24','RR/MM/DD'),'N');
Insert into HR.MOIM_WARNING (WARNING_NO,USER_ID,LOGIN_USER_ID,CONTENT,TYPE,CREATED_DATE,DELETE_YN) values (5,'test2','test4','�Ű��մϴ�555','����',to_date('20/08/24','RR/MM/DD'),'N');
Insert into HR.MOIM_WARNING (WARNING_NO,USER_ID,LOGIN_USER_ID,CONTENT,TYPE,CREATED_DATE,DELETE_YN) values (6,'test2','test5','�Ű��մϴ�666','����',to_date('20/08/24','RR/MM/DD'),'N');
Insert into HR.MOIM_WARNING (WARNING_NO,USER_ID,LOGIN_USER_ID,CONTENT,TYPE,CREATED_DATE,DELETE_YN) values (7,'test2','test6','�Ű��մϴ�777','����',to_date('20/08/24','RR/MM/DD'),'N');
Insert into HR.MOIM_WARNING (WARNING_NO,USER_ID,LOGIN_USER_ID,CONTENT,TYPE,CREATED_DATE,DELETE_YN) values (8,'kim','jung','�Ű��մϴ�888','����',to_date('20/08/25','RR/MM/DD'),'N');
Insert into HR.MOIM_WARNING (WARNING_NO,USER_ID,LOGIN_USER_ID,CONTENT,TYPE,CREATED_DATE,DELETE_YN) values (9,'kim','moon','�Ű��մϴ�999','����',to_date('20/08/25','RR/MM/DD'),'N');
Insert into HR.MOIM_WARNING (WARNING_NO,USER_ID,LOGIN_USER_ID,CONTENT,TYPE,CREATED_DATE,DELETE_YN) values (10,'jung','jang','�Ű��մϴ�10','����',to_date('20/08/25','RR/MM/DD'),'N');
Insert into HR.MOIM_WARNING (WARNING_NO,USER_ID,LOGIN_USER_ID,CONTENT,TYPE,CREATED_DATE,DELETE_YN) values (11,'jung','ko','�Ű��մϴ�11','����',to_date('20/08/25','RR/MM/DD'),'N');
Insert into HR.MOIM_WARNING (WARNING_NO,USER_ID,LOGIN_USER_ID,CONTENT,TYPE,CREATED_DATE,DELETE_YN) values (12,'jung','kwon','�Ű��մϴ�12','����',to_date('20/08/25','RR/MM/DD'),'N');
Insert into HR.MOIM_WARNING (WARNING_NO,USER_ID,LOGIN_USER_ID,CONTENT,TYPE,CREATED_DATE,DELETE_YN) values (13,'ko','kim','�Ű��մϴ�13','����',to_date('20/08/25','RR/MM/DD'),'N');
Insert into HR.MOIM_WARNING (WARNING_NO,USER_ID,LOGIN_USER_ID,CONTENT,TYPE,CREATED_DATE,DELETE_YN) values (14,'moon','kim','�Ű��մϴ�14','����',to_date('20/08/25','RR/MM/DD'),'N');
Insert into HR.MOIM_WARNING (WARNING_NO,USER_ID,LOGIN_USER_ID,CONTENT,TYPE,CREATED_DATE,DELETE_YN) values (15,'kwon','moon','�Ű��մϴ�16','����',to_date('20/08/25','RR/MM/DD'),'N');
Insert into HR.MOIM_WARNING (WARNING_NO,USER_ID,LOGIN_USER_ID,CONTENT,TYPE,CREATED_DATE,DELETE_YN) values (16,'test2','test5','�Ű��մϴ�17','����',to_date('20/08/25','RR/MM/DD'),'N');
Insert into HR.MOIM_WARNING (WARNING_NO,USER_ID,LOGIN_USER_ID,CONTENT,TYPE,CREATED_DATE,DELETE_YN) values (17,'test3','test2','�Ű��մϴ�18','����',to_date('20/08/25','RR/MM/DD'),'N');
Insert into HR.MOIM_WARNING (WARNING_NO,USER_ID,LOGIN_USER_ID,CONTENT,TYPE,CREATED_DATE,DELETE_YN) values (18,'test3','test6','�Ű��մϴ�19','����',to_date('20/08/25','RR/MM/DD'),'N');
Insert into HR.MOIM_WARNING (WARNING_NO,USER_ID,LOGIN_USER_ID,CONTENT,TYPE,CREATED_DATE,DELETE_YN) values (21,'kwon','moon','�������Ŷ�','����',to_date('20/08/27','RR/MM/DD'),'N');
Insert into HR.MOIM_WARNING (WARNING_NO,USER_ID,LOGIN_USER_ID,CONTENT,TYPE,CREATED_DATE,DELETE_YN) values (22,'kwon','moon','�����϶��','����',to_date('20/08/28','RR/MM/DD'),'N');
Insert into HR.MOIM_WARNING (WARNING_NO,USER_ID,LOGIN_USER_ID,CONTENT,TYPE,CREATED_DATE,DELETE_YN) values (23,'jung','jang','�׳�','����',to_date('20/08/28','RR/MM/DD'),'N');
Insert into HR.MOIM_WARNING (WARNING_NO,USER_ID,LOGIN_USER_ID,CONTENT,TYPE,CREATED_DATE,DELETE_YN) values (24,'jung','jang','û���� ���̵�','����',to_date('20/08/28','RR/MM/DD'),'Y');
REM INSERTING into HR.EMP_DETAILS_VIEW
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Index JOINED_USER
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."JOINED_USER" ON "HR"."MOIM_JOIN_USER" ("MOIM_NO", "USER_ID") 
  ;
--------------------------------------------------------
--  DDL for Index MOIM_FOLLOW_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."MOIM_FOLLOW_UK1" ON "HR"."MOIM_FOLLOW" ("USER_ID", "FOL_USER_ID") 
  ;
--------------------------------------------------------
--  DDL for Index MOIM_MANAGER_BOARD_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."MOIM_MANAGER_BOARD_PK" ON "HR"."MOIM_MANAGER_BOARD" ("MANAGER_BOARD_NO") 
  ;
--------------------------------------------------------
--  DDL for Index MOIM_PHOTO_USER_LIKE_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."MOIM_PHOTO_USER_LIKE_UK1" ON "HR"."MOIM_PHOTO_USER_LIKE" ("PHOTO_NO", "USER_ID", "MOIM_NO") 
  ;
--------------------------------------------------------
--  DDL for Index MOIM_WARNING_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."MOIM_WARNING_PK" ON "HR"."MOIM_WARNING" ("WARNING_NO") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007476
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."SYS_C007476" ON "HR"."MOIM_ALRAM" ("ALRAM_NO") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007483
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."SYS_C007483" ON "HR"."MOIM_BOARD" ("BOARD_NO") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007486
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."SYS_C007486" ON "HR"."MOIM_BOARD_CATE" ("BOARD_CATE_NO") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007492
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."SYS_C007492" ON "HR"."MOIM_COMMENT" ("COMMENT_NO") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007501
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."SYS_C007501" ON "HR"."MOIM_LOCATION" ("LOCATION_NO") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007509
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."SYS_C007509" ON "HR"."MOIM_MAIN" ("MOIM_NO") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007512
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."SYS_C007512" ON "HR"."MOIM_MAIN_CATEGORY" ("MAIN_CATE_NO") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007516
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."SYS_C007516" ON "HR"."MOIM_PHOTO" ("PHOTO_NO") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007520
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."SYS_C007520" ON "HR"."MOIM_SUB_CATE" ("SUB_CATE_NO") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007530
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."SYS_C007530" ON "HR"."MOIM_SUB_MOIM" ("SUB_MOIM_NO") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007541
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."SYS_C007541" ON "HR"."MOIM_USER" ("USER_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007582
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."SYS_C007582" ON "HR"."MOIM_MESSAGE" ("MESSAGE_NO") 
  ;
--------------------------------------------------------
--  DDL for Procedure ADD_JOB_HISTORY
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "HR"."ADD_JOB_HISTORY" 
  (  p_emp_id          job_history.employee_id%type
   , p_start_date      job_history.start_date%type
   , p_end_date        job_history.end_date%type
   , p_job_id          job_history.job_id%type
   , p_department_id   job_history.department_id%type
   )
IS
BEGIN
  INSERT INTO job_history (employee_id, start_date, end_date,
                           job_id, department_id)
    VALUES(p_emp_id, p_start_date, p_end_date, p_job_id, p_department_id);
END add_job_history;

/
--------------------------------------------------------
--  DDL for Procedure SECURE_DML
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "HR"."SECURE_DML" 
IS
BEGIN
  IF TO_CHAR (SYSDATE, 'HH24:MI') NOT BETWEEN '08:00' AND '18:00'
        OR TO_CHAR (SYSDATE, 'DY') IN ('SAT', 'SUN') THEN
	RAISE_APPLICATION_ERROR (-20205,
		'You may only make changes during normal office hours');
  END IF;
END secure_dml;

/
--------------------------------------------------------
--  Constraints for Table MOIM_ALRAM
--------------------------------------------------------

  ALTER TABLE "HR"."MOIM_ALRAM" MODIFY ("ALRAM_NO" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_ALRAM" MODIFY ("MESSAGE" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_ALRAM" MODIFY ("TYPE" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_ALRAM" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_ALRAM" ADD PRIMARY KEY ("ALRAM_NO") ENABLE;
--------------------------------------------------------
--  Constraints for Table MOIM_BANNER
--------------------------------------------------------

  ALTER TABLE "HR"."MOIM_BANNER" MODIFY ("MOIM_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MOIM_BOARD
--------------------------------------------------------

  ALTER TABLE "HR"."MOIM_BOARD" MODIFY ("BOARD_NO" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_BOARD" MODIFY ("TITLE" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_BOARD" MODIFY ("MOIM_NO" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_BOARD" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_BOARD" MODIFY ("BOARD_CATE_NO" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_BOARD" ADD PRIMARY KEY ("BOARD_NO") ENABLE;
--------------------------------------------------------
--  Constraints for Table MOIM_BOARD_CATE
--------------------------------------------------------

  ALTER TABLE "HR"."MOIM_BOARD_CATE" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_BOARD_CATE" ADD PRIMARY KEY ("BOARD_CATE_NO") ENABLE;
  ALTER TABLE "HR"."MOIM_BOARD_CATE" MODIFY ("BOARD_CATE_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MOIM_COMMENT
--------------------------------------------------------

  ALTER TABLE "HR"."MOIM_COMMENT" MODIFY ("COMMENT_NO" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_COMMENT" MODIFY ("TITLE" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_COMMENT" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_COMMENT" MODIFY ("BOARD_NO" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_COMMENT" ADD PRIMARY KEY ("COMMENT_NO") ENABLE;
--------------------------------------------------------
--  Constraints for Table MOIM_FAVOLITE_MOIM
--------------------------------------------------------

  ALTER TABLE "HR"."MOIM_FAVOLITE_MOIM" MODIFY ("MOIM_NO" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_FAVOLITE_MOIM" MODIFY ("USER_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MOIM_FOLLOW
--------------------------------------------------------

  ALTER TABLE "HR"."MOIM_FOLLOW" MODIFY ("FOL_USER_ID" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_FOLLOW" ADD CONSTRAINT "MOIM_FOLLOW_UK1" UNIQUE ("USER_ID", "FOL_USER_ID") ENABLE;
  ALTER TABLE "HR"."MOIM_FOLLOW" MODIFY ("USER_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MOIM_JOIN_USER
--------------------------------------------------------

  ALTER TABLE "HR"."MOIM_JOIN_USER" MODIFY ("MOIM_NO" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_JOIN_USER" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_JOIN_USER" ADD CONSTRAINT "JOINED_USER" UNIQUE ("MOIM_NO", "USER_ID") ENABLE;
--------------------------------------------------------
--  Constraints for Table MOIM_LOCATION
--------------------------------------------------------

  ALTER TABLE "HR"."MOIM_LOCATION" MODIFY ("LOCATION_NO" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_LOCATION" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_LOCATION" ADD PRIMARY KEY ("LOCATION_NO") ENABLE;
--------------------------------------------------------
--  Constraints for Table MOIM_MAIN
--------------------------------------------------------

  ALTER TABLE "HR"."MOIM_MAIN" MODIFY ("MOIM_NO" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_MAIN" MODIFY ("TITLE" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_MAIN" MODIFY ("HEAD_COUNT" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_MAIN" MODIFY ("SUB_CATE_NO" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_MAIN" MODIFY ("LOCATION_NO" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_MAIN" ADD PRIMARY KEY ("MOIM_NO") ENABLE;
--------------------------------------------------------
--  Constraints for Table MOIM_MAIN_CATEGORY
--------------------------------------------------------

  ALTER TABLE "HR"."MOIM_MAIN_CATEGORY" MODIFY ("MAIN_CATE_NO" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_MAIN_CATEGORY" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_MAIN_CATEGORY" ADD PRIMARY KEY ("MAIN_CATE_NO") ENABLE;
--------------------------------------------------------
--  Constraints for Table MOIM_MANAGER_BOARD
--------------------------------------------------------

  ALTER TABLE "HR"."MOIM_MANAGER_BOARD" MODIFY ("MANAGER_BOARD_NO" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_MANAGER_BOARD" MODIFY ("MANAGER_BOARD_TITLE" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_MANAGER_BOARD" ADD CONSTRAINT "MOIM_MANAGER_BOARD_PK" PRIMARY KEY ("MANAGER_BOARD_NO") ENABLE;
--------------------------------------------------------
--  Constraints for Table MOIM_MESSAGE
--------------------------------------------------------

  ALTER TABLE "HR"."MOIM_MESSAGE" ADD PRIMARY KEY ("MESSAGE_NO") ENABLE;
  ALTER TABLE "HR"."MOIM_MESSAGE" MODIFY ("USER_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MOIM_PHOTO
--------------------------------------------------------

  ALTER TABLE "HR"."MOIM_PHOTO" MODIFY ("PHOTO_NO" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_PHOTO" MODIFY ("MOIM_NO" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_PHOTO" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_PHOTO" ADD PRIMARY KEY ("PHOTO_NO") ENABLE;
--------------------------------------------------------
--  Constraints for Table MOIM_PHOTO_USER_LIKE
--------------------------------------------------------

  ALTER TABLE "HR"."MOIM_PHOTO_USER_LIKE" MODIFY ("PHOTO_NO" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_PHOTO_USER_LIKE" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_PHOTO_USER_LIKE" MODIFY ("MOIM_NO" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_PHOTO_USER_LIKE" ADD CONSTRAINT "MOIM_PHOTO_USER_LIKE_UK1" UNIQUE ("PHOTO_NO", "USER_ID", "MOIM_NO") ENABLE;
--------------------------------------------------------
--  Constraints for Table MOIM_SUB_CATE
--------------------------------------------------------

  ALTER TABLE "HR"."MOIM_SUB_CATE" MODIFY ("SUB_CATE_NO" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_SUB_CATE" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_SUB_CATE" MODIFY ("MAIN_CATE_NO" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_SUB_CATE" ADD PRIMARY KEY ("SUB_CATE_NO") ENABLE;
--------------------------------------------------------
--  Constraints for Table MOIM_SUB_JOIN_USER
--------------------------------------------------------

  ALTER TABLE "HR"."MOIM_SUB_JOIN_USER" MODIFY ("SUB_MOIM_NO" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_SUB_JOIN_USER" MODIFY ("MOIM_NO" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_SUB_JOIN_USER" MODIFY ("USER_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MOIM_SUB_MOIM
--------------------------------------------------------

  ALTER TABLE "HR"."MOIM_SUB_MOIM" MODIFY ("SUB_MOIM_NO" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_SUB_MOIM" MODIFY ("TITLE" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_SUB_MOIM" MODIFY ("LOCATION" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_SUB_MOIM" MODIFY ("HEAD_COUNT" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_SUB_MOIM" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_SUB_MOIM" MODIFY ("MOIM_NO" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_SUB_MOIM" ADD PRIMARY KEY ("SUB_MOIM_NO") ENABLE;
--------------------------------------------------------
--  Constraints for Table MOIM_USER
--------------------------------------------------------

  ALTER TABLE "HR"."MOIM_USER" MODIFY ("SUSPENDED_ACCOUNT_YN" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_USER" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_USER" MODIFY ("USER_NAME" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_USER" MODIFY ("TEL" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_USER" MODIFY ("USER_PASSWORD" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_USER" MODIFY ("NICKNAME" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_USER" MODIFY ("EMAIL" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_USER" MODIFY ("BIRTH" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_USER" MODIFY ("GENDER" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_USER" ADD PRIMARY KEY ("USER_ID") ENABLE;
--------------------------------------------------------
--  Constraints for Table MOIM_USER_CATE
--------------------------------------------------------

  ALTER TABLE "HR"."MOIM_USER_CATE" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_USER_CATE" MODIFY ("MAIN_CATE_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MOIM_WARNING
--------------------------------------------------------

  ALTER TABLE "HR"."MOIM_WARNING" MODIFY ("WARNING_NO" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_WARNING" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_WARNING" MODIFY ("LOGIN_USER_ID" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_WARNING" ADD CONSTRAINT "MOIM_WARNING_PK" PRIMARY KEY ("WARNING_NO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MOIM_ALRAM
--------------------------------------------------------

  ALTER TABLE "HR"."MOIM_ALRAM" ADD FOREIGN KEY ("USER_ID")
	  REFERENCES "HR"."MOIM_USER" ("USER_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MOIM_BOARD
--------------------------------------------------------

  ALTER TABLE "HR"."MOIM_BOARD" ADD FOREIGN KEY ("BOARD_CATE_NO")
	  REFERENCES "HR"."MOIM_BOARD_CATE" ("BOARD_CATE_NO") ENABLE;
  ALTER TABLE "HR"."MOIM_BOARD" ADD FOREIGN KEY ("MOIM_NO")
	  REFERENCES "HR"."MOIM_MAIN" ("MOIM_NO") ENABLE;
  ALTER TABLE "HR"."MOIM_BOARD" ADD FOREIGN KEY ("USER_ID")
	  REFERENCES "HR"."MOIM_USER" ("USER_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MOIM_COMMENT
--------------------------------------------------------

  ALTER TABLE "HR"."MOIM_COMMENT" ADD FOREIGN KEY ("BOARD_NO")
	  REFERENCES "HR"."MOIM_BOARD" ("BOARD_NO") ENABLE;
  ALTER TABLE "HR"."MOIM_COMMENT" ADD FOREIGN KEY ("USER_ID")
	  REFERENCES "HR"."MOIM_USER" ("USER_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MOIM_FAVOLITE_MOIM
--------------------------------------------------------

  ALTER TABLE "HR"."MOIM_FAVOLITE_MOIM" ADD FOREIGN KEY ("MOIM_NO")
	  REFERENCES "HR"."MOIM_MAIN" ("MOIM_NO") ENABLE;
  ALTER TABLE "HR"."MOIM_FAVOLITE_MOIM" ADD FOREIGN KEY ("USER_ID")
	  REFERENCES "HR"."MOIM_USER" ("USER_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MOIM_FOLLOW
--------------------------------------------------------

  ALTER TABLE "HR"."MOIM_FOLLOW" ADD FOREIGN KEY ("USER_ID")
	  REFERENCES "HR"."MOIM_USER" ("USER_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MOIM_JOIN_USER
--------------------------------------------------------

  ALTER TABLE "HR"."MOIM_JOIN_USER" ADD FOREIGN KEY ("MOIM_NO")
	  REFERENCES "HR"."MOIM_MAIN" ("MOIM_NO") ENABLE;
  ALTER TABLE "HR"."MOIM_JOIN_USER" ADD FOREIGN KEY ("USER_ID")
	  REFERENCES "HR"."MOIM_USER" ("USER_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MOIM_MAIN
--------------------------------------------------------

  ALTER TABLE "HR"."MOIM_MAIN" ADD FOREIGN KEY ("LOCATION_NO")
	  REFERENCES "HR"."MOIM_LOCATION" ("LOCATION_NO") ENABLE;
  ALTER TABLE "HR"."MOIM_MAIN" ADD FOREIGN KEY ("SUB_CATE_NO")
	  REFERENCES "HR"."MOIM_SUB_CATE" ("SUB_CATE_NO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MOIM_MESSAGE
--------------------------------------------------------

  ALTER TABLE "HR"."MOIM_MESSAGE" ADD CONSTRAINT "MOIM_MESSAGE_FK1" FOREIGN KEY ("USER_ID")
	  REFERENCES "HR"."MOIM_USER" ("USER_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MOIM_PHOTO
--------------------------------------------------------

  ALTER TABLE "HR"."MOIM_PHOTO" ADD FOREIGN KEY ("MOIM_NO")
	  REFERENCES "HR"."MOIM_MAIN" ("MOIM_NO") ENABLE;
  ALTER TABLE "HR"."MOIM_PHOTO" ADD FOREIGN KEY ("USER_ID")
	  REFERENCES "HR"."MOIM_USER" ("USER_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MOIM_SUB_CATE
--------------------------------------------------------

  ALTER TABLE "HR"."MOIM_SUB_CATE" ADD FOREIGN KEY ("MAIN_CATE_NO")
	  REFERENCES "HR"."MOIM_MAIN_CATEGORY" ("MAIN_CATE_NO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MOIM_SUB_JOIN_USER
--------------------------------------------------------

  ALTER TABLE "HR"."MOIM_SUB_JOIN_USER" ADD FOREIGN KEY ("MOIM_NO", "USER_ID")
	  REFERENCES "HR"."MOIM_JOIN_USER" ("MOIM_NO", "USER_ID") ENABLE;
  ALTER TABLE "HR"."MOIM_SUB_JOIN_USER" ADD FOREIGN KEY ("SUB_MOIM_NO")
	  REFERENCES "HR"."MOIM_SUB_MOIM" ("SUB_MOIM_NO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MOIM_SUB_MOIM
--------------------------------------------------------

  ALTER TABLE "HR"."MOIM_SUB_MOIM" ADD FOREIGN KEY ("MOIM_NO")
	  REFERENCES "HR"."MOIM_MAIN" ("MOIM_NO") ENABLE;
  ALTER TABLE "HR"."MOIM_SUB_MOIM" ADD FOREIGN KEY ("USER_ID")
	  REFERENCES "HR"."MOIM_USER" ("USER_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MOIM_USER
--------------------------------------------------------

  ALTER TABLE "HR"."MOIM_USER" ADD FOREIGN KEY ("LOCATION_NO")
	  REFERENCES "HR"."MOIM_LOCATION" ("LOCATION_NO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MOIM_USER_CATE
--------------------------------------------------------

  ALTER TABLE "HR"."MOIM_USER_CATE" ADD FOREIGN KEY ("MAIN_CATE_NO")
	  REFERENCES "HR"."MOIM_MAIN_CATEGORY" ("MAIN_CATE_NO") ENABLE;
  ALTER TABLE "HR"."MOIM_USER_CATE" ADD FOREIGN KEY ("USER_ID")
	  REFERENCES "HR"."MOIM_USER" ("USER_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MOIM_WARNING
--------------------------------------------------------

  ALTER TABLE "HR"."MOIM_WARNING" ADD CONSTRAINT "MOIM_WARNING_FK1" FOREIGN KEY ("USER_ID")
	  REFERENCES "HR"."MOIM_USER" ("USER_ID") ENABLE;
  ALTER TABLE "HR"."MOIM_WARNING" ADD CONSTRAINT "MOIM_WARNING_FK2" FOREIGN KEY ("LOGIN_USER_ID")
	  REFERENCES "HR"."MOIM_USER" ("USER_ID") ENABLE;
