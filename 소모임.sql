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
--  파일이 생성됨 - 월요일-9월-14-2020   
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
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (8,'테스트3님이 팔로우하셨습니다.','팔로우','N','jang','test3',to_date('20/08/20','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (4,'test1님이 팔로우하셨습니다.','팔로우','N','jang','test1',to_date('20/08/19','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (6,'리주장님이 팔로우하셨습니다.','팔로우','N','test4','jang',to_date('20/08/20','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (5,'리주장님이 팔로우하셨습니다.','팔로우','N','test1','jang',to_date('20/08/19','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (7,'경고메시지 뭐라쓰지','경고','N','jang',null,to_date('20/08/20','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (9,'테스트4님이 팔로우하셨습니다.','팔로우','Y','jang','test4',to_date('20/08/20','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (10,'닉네임5님이 팔로우하셨습니다.','팔로우','Y','jang','test5',to_date('20/08/20','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (11,'닉네임6님이 팔로우하셨습니다.','팔로우','Y','jang','test6',to_date('20/08/20','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (12,'권영준님이 메세지를보냈습니다.','메세지','Y','jang','test1',to_date('20/08/20','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (13,'권영준님이 메세지를보냈습니다.','메세지','N','test1','jang',to_date('20/08/20','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (14,'경고를 받으셨습니다.','경고','N','test2',null,to_date('20/08/24','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (15,'경고를 받으셨습니다.','경고','N','test1',null,to_date('20/08/24','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (16,'경고를 받으셨습니다.','경고','N','test2',null,to_date('20/08/24','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (17,'경고를 받으셨습니다.','경고','N','test2',null,to_date('20/08/24','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (18,'경고를 받으셨습니다.','경고','Y','jang',null,to_date('20/08/24','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (19,'경고를 받으셨습니다.','경고','N','jang',null,to_date('20/08/24','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (20,'경고를 받으셨습니다.','경고','N','test2',null,to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (21,'경고를 받으셨습니다.','경고','Y','jung',null,to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (22,'경고를 받으셨습니다.','경고','Y','jung',null,to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (23,'경고를 받으셨습니다.','경고','Y','jung',null,to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (64,'경고를 받으셨습니다.','경고','N','kwon',null,to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (65,'경고를 받으셨습니다.','경고','N','kwon',null,to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (26,'경고를 받으셨습니다.','경고','N','jang',null,to_date('20/08/27','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (81,'jang님이 팔로우 했습니다.','팔로우','N','test1','jang',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (46,'moon님이 팔로우 했습니다.','팔로우','Y','kwon','moon',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (29,'경고를 받으셨습니다.','경고','Y','kwon',null,to_date('20/08/27','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (30,'경고를 받으셨습니다.','경고','Y','kwon',null,to_date('20/08/27','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (31,'경고를 받으셨습니다.','경고','Y','kwon',null,to_date('20/08/27','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (32,'moon님이 메세지를 보냈습니다.','메세지','Y','kwon','moon',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (33,'moon님이 메세지를 보냈습니다.','메세지','Y','kwon','moon',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (34,'moon님이 메세지를 보냈습니다.','메세지','N','jang','moon',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (35,'moon님이 메세지를 보냈습니다.','메세지','N','jang','moon',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (36,'moon님이 메세지를 보냈습니다.','메세지','N','ko','moon',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (63,'jang님이 메세지를 보냈습니다.','메세지','N','jung','jang',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (38,'moon님이 팔로우 했습니다.','팔로우','Y','kwon','moon',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (39,'moon님이 팔로우 했습니다.','팔로우','N','ko','moon',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (40,'moon님이 팔로우 했습니다.','팔로우','N','test4','moon',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (41,'moon님이 팔로우 했습니다.','팔로우','N','test4','moon',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (42,'moon님이 팔로우 했습니다.','팔로우','N','test4','moon',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (80,'jang님이 팔로우 했습니다.','팔로우','N','test1','jang',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (82,'jang님이 팔로우 했습니다.','팔로우','N','moon','jang',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (83,'kwon님이 팔로우 했습니다.','팔로우','N','moon','kwon',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (84,'kwon님이 팔로우 했습니다.','팔로우','N','jang','kwon',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (85,'kwon님이 팔로우 했습니다.','팔로우','N','test3','kwon',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (50,'moon님이 팔로우 했습니다.','팔로우','Y','kwon','moon',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (53,'moon님이 팔로우 했습니다.','팔로우','N','kwon','moon',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (86,'kwon님이 팔로우 했습니다.','팔로우','N','test2','kwon',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (54,'경고를 받으셨습니다.','경고','N','kwon',null,to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (87,'kwon님이 팔로우 했습니다.','팔로우','N','test1','kwon',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (66,'경고를 받으셨습니다.','경고','N','kwon',null,to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (67,'경고를 받으셨습니다.','경고','N','kwon',null,to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (68,'경고를 받으셨습니다.','경고','N','kwon',null,to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (69,'jung님이 메세지를 보냈습니다.','메세지','N','ko','jung',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (70,'moon님이 팔로우 했습니다.','팔로우','N','ko','moon',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (71,'경고를 받으셨습니다.','경고','N','jung',null,to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (72,'경고를 받으셨습니다.','경고','N','kwon',null,to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (73,'경고를 받으셨습니다.','경고','N','kwon',null,to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (74,'경고를 받으셨습니다.','경고','N','kwon',null,to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (75,'moon님이 팔로우 했습니다.','팔로우','N','kim','moon',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (76,'moon님이 팔로우 했습니다.','팔로우','N','ko','moon',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (77,'jang님이 팔로우 했습니다.','팔로우','N','jung','jang',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (78,'jang님이 팔로우 했습니다.','팔로우','N','jung','jang',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (79,'moon님이 팔로우 했습니다.','팔로우','N','ko','moon',to_date('20/08/28','RR/MM/DD'));
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
Insert into HR.MOIM_BOARD (BOARD_NO,TITLE,VIEWS,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID,BOARD_CATE_NO) values (200002,'첫번째 게시글',11,'N',to_date('20/08/19','RR/MM/DD'),500000,'ko',2);
Insert into HR.MOIM_BOARD (BOARD_NO,TITLE,VIEWS,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID,BOARD_CATE_NO) values (200003,'후우기',12,'Y',to_date('20/08/19','RR/MM/DD'),500000,'ko',2);
Insert into HR.MOIM_BOARD (BOARD_NO,TITLE,VIEWS,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID,BOARD_CATE_NO) values (200004,'이얍야압얍',16,'N',to_date('20/08/19','RR/MM/DD'),500000,'ko',2);
Insert into HR.MOIM_BOARD (BOARD_NO,TITLE,VIEWS,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID,BOARD_CATE_NO) values (200005,'얍얍얍',4,'N',to_date('20/08/19','RR/MM/DD'),500000,'ko',2);
Insert into HR.MOIM_BOARD (BOARD_NO,TITLE,VIEWS,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID,BOARD_CATE_NO) values (200006,'이이잉',42,'N',to_date('20/08/19','RR/MM/DD'),500000,'ko',2);
Insert into HR.MOIM_BOARD (BOARD_NO,TITLE,VIEWS,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID,BOARD_CATE_NO) values (200007,'공지보여주려고',8,'N',to_date('20/08/19','RR/MM/DD'),500000,'ko',1);
Insert into HR.MOIM_BOARD (BOARD_NO,TITLE,VIEWS,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID,BOARD_CATE_NO) values (200008,'이것은',1,'N',to_date('20/08/19','RR/MM/DD'),500000,'ko',1);
Insert into HR.MOIM_BOARD (BOARD_NO,TITLE,VIEWS,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID,BOARD_CATE_NO) values (200009,'띠리따',1,'N',to_date('20/08/19','RR/MM/DD'),500000,'ko',1);
Insert into HR.MOIM_BOARD (BOARD_NO,TITLE,VIEWS,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID,BOARD_CATE_NO) values (200010,'어그로',1,'N',to_date('20/08/19','RR/MM/DD'),500000,'ko',1);
Insert into HR.MOIM_BOARD (BOARD_NO,TITLE,VIEWS,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID,BOARD_CATE_NO) values (200011,'이거보여주려고',119,'N',to_date('20/08/19','RR/MM/DD'),500000,'ko',1);
Insert into HR.MOIM_BOARD (BOARD_NO,TITLE,VIEWS,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID,BOARD_CATE_NO) values (200018,'제목222',25,'N',to_date('20/08/20','RR/MM/DD'),500014,'jang',2);
Insert into HR.MOIM_BOARD (BOARD_NO,TITLE,VIEWS,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID,BOARD_CATE_NO) values (200019,'일반',0,'N',to_date('20/08/21','RR/MM/DD'),500000,'ko',3);
Insert into HR.MOIM_BOARD (BOARD_NO,TITLE,VIEWS,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID,BOARD_CATE_NO) values (200020,'글글글',0,'N',to_date('20/08/21','RR/MM/DD'),500000,'ko',3);
Insert into HR.MOIM_BOARD (BOARD_NO,TITLE,VIEWS,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID,BOARD_CATE_NO) values (200021,'이이',0,'N',to_date('20/08/21','RR/MM/DD'),500000,'ko',3);
Insert into HR.MOIM_BOARD (BOARD_NO,TITLE,VIEWS,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID,BOARD_CATE_NO) values (200022,'dldldl',2,'N',to_date('20/08/21','RR/MM/DD'),500000,'ko',3);
Insert into HR.MOIM_BOARD (BOARD_NO,TITLE,VIEWS,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID,BOARD_CATE_NO) values (200023,'으엑',2,'N',to_date('20/08/21','RR/MM/DD'),500000,'ko',2);
Insert into HR.MOIM_BOARD (BOARD_NO,TITLE,VIEWS,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID,BOARD_CATE_NO) values (200024,'이잉?',2,'N',to_date('20/08/21','RR/MM/DD'),500000,'ko',2);
Insert into HR.MOIM_BOARD (BOARD_NO,TITLE,VIEWS,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID,BOARD_CATE_NO) values (200025,'후',4,'N',to_date('20/08/21','RR/MM/DD'),500000,'ko',2);
Insert into HR.MOIM_BOARD (BOARD_NO,TITLE,VIEWS,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID,BOARD_CATE_NO) values (200026,'공지',2,'N',to_date('20/08/21','RR/MM/DD'),500001,'kwon',1);
Insert into HR.MOIM_BOARD (BOARD_NO,TITLE,VIEWS,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID,BOARD_CATE_NO) values (200027,'ㅁㄴㅇㅁㄴㅇ',3,'N',to_date('20/08/21','RR/MM/DD'),500001,'kwon',2);
Insert into HR.MOIM_BOARD (BOARD_NO,TITLE,VIEWS,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID,BOARD_CATE_NO) values (200028,'ㅁㄴㅇㄴㅁㅇㅁㅇ',44,'Y',to_date('20/08/21','RR/MM/DD'),500001,'kwon',2);
Insert into HR.MOIM_BOARD (BOARD_NO,TITLE,VIEWS,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID,BOARD_CATE_NO) values (200029,'123',11,'Y',to_date('20/08/21','RR/MM/DD'),500001,'jung',2);
Insert into HR.MOIM_BOARD (BOARD_NO,TITLE,VIEWS,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID,BOARD_CATE_NO) values (200030,'안녕하세요',6,'N',to_date('20/08/25','RR/MM/DD'),500008,'moon',2);
Insert into HR.MOIM_BOARD (BOARD_NO,TITLE,VIEWS,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID,BOARD_CATE_NO) values (200031,'ㅁㅁㅁㅁㅁㅁㅁㅁㅁ',3,'N',to_date('20/08/25','RR/MM/DD'),500024,'jang',3);
Insert into HR.MOIM_BOARD (BOARD_NO,TITLE,VIEWS,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID,BOARD_CATE_NO) values (200032,'아이유',3,'N',to_date('20/08/26','RR/MM/DD'),500002,'moon',1);
Insert into HR.MOIM_BOARD (BOARD_NO,TITLE,VIEWS,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID,BOARD_CATE_NO) values (200033,'아아아아아아아아아',3,'N',to_date('20/08/28','RR/MM/DD'),500000,'kwon',2);
Insert into HR.MOIM_BOARD (BOARD_NO,TITLE,VIEWS,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID,BOARD_CATE_NO) values (200034,'굿굿~~',11,'N',to_date('20/08/28','RR/MM/DD'),500058,'jung',2);
REM INSERTING into HR.MOIM_BOARD_CATE
SET DEFINE OFF;
Insert into HR.MOIM_BOARD_CATE (BOARD_CATE_NO,NAME) values (1,'공지');
Insert into HR.MOIM_BOARD_CATE (BOARD_CATE_NO,NAME) values (2,'후기');
Insert into HR.MOIM_BOARD_CATE (BOARD_CATE_NO,NAME) values (3,'일반');
REM INSERTING into HR.MOIM_COMMENT
SET DEFINE OFF;
Insert into HR.MOIM_COMMENT (COMMENT_NO,TITLE,DELETE_YN,CREATED_DATE,USER_ID,BOARD_NO,MAIN_COMMENT_NO) values (400004,'첫번째 댓글','N',to_date('20/08/20','RR/MM/DD'),'test4',200005,0);
Insert into HR.MOIM_COMMENT (COMMENT_NO,TITLE,DELETE_YN,CREATED_DATE,USER_ID,BOARD_NO,MAIN_COMMENT_NO) values (400006,'따리띠리따','N',to_date('20/08/20','RR/MM/DD'),'test4',200011,0);
Insert into HR.MOIM_COMMENT (COMMENT_NO,TITLE,DELETE_YN,CREATED_DATE,USER_ID,BOARD_NO,MAIN_COMMENT_NO) values (400007,'ㅇㄱㅇ','N',to_date('20/08/20','RR/MM/DD'),'test4',200011,0);
Insert into HR.MOIM_COMMENT (COMMENT_NO,TITLE,DELETE_YN,CREATED_DATE,USER_ID,BOARD_NO,MAIN_COMMENT_NO) values (400008,'띠리 따','N',to_date('20/08/20','RR/MM/DD'),'ko',200011,0);
Insert into HR.MOIM_COMMENT (COMMENT_NO,TITLE,DELETE_YN,CREATED_DATE,USER_ID,BOARD_NO,MAIN_COMMENT_NO) values (400009,'이이잉','N',to_date('20/08/20','RR/MM/DD'),'ko',200006,0);
Insert into HR.MOIM_COMMENT (COMMENT_NO,TITLE,DELETE_YN,CREATED_DATE,USER_ID,BOARD_NO,MAIN_COMMENT_NO) values (400011,'댓글','N',to_date('20/08/20','RR/MM/DD'),'jang',200018,0);
Insert into HR.MOIM_COMMENT (COMMENT_NO,TITLE,DELETE_YN,CREATED_DATE,USER_ID,BOARD_NO,MAIN_COMMENT_NO) values (400012,'굿','N',to_date('20/08/21','RR/MM/DD'),'ko',200025,0);
Insert into HR.MOIM_COMMENT (COMMENT_NO,TITLE,DELETE_YN,CREATED_DATE,USER_ID,BOARD_NO,MAIN_COMMENT_NO) values (400013,'댓글','N',to_date('20/08/21','RR/MM/DD'),'ko',200002,0);
Insert into HR.MOIM_COMMENT (COMMENT_NO,TITLE,DELETE_YN,CREATED_DATE,USER_ID,BOARD_NO,MAIN_COMMENT_NO) values (400014,'ㅁㄴㅇ','N',to_date('20/08/21','RR/MM/DD'),'kwon',200028,0);
Insert into HR.MOIM_COMMENT (COMMENT_NO,TITLE,DELETE_YN,CREATED_DATE,USER_ID,BOARD_NO,MAIN_COMMENT_NO) values (400015,'댓글 ㄷ대대대대댓긇','N',to_date('20/08/21','RR/MM/DD'),'kwon',200028,0);
Insert into HR.MOIM_COMMENT (COMMENT_NO,TITLE,DELETE_YN,CREATED_DATE,USER_ID,BOARD_NO,MAIN_COMMENT_NO) values (400016,'와우','N',to_date('20/08/26','RR/MM/DD'),'jung',200029,0);
Insert into HR.MOIM_COMMENT (COMMENT_NO,TITLE,DELETE_YN,CREATED_DATE,USER_ID,BOARD_NO,MAIN_COMMENT_NO) values (400017,'아나다','N',to_date('20/08/26','RR/MM/DD'),'test1',200023,0);
Insert into HR.MOIM_COMMENT (COMMENT_NO,TITLE,DELETE_YN,CREATED_DATE,USER_ID,BOARD_NO,MAIN_COMMENT_NO) values (400023,'미 라이키 라이키 라이키','N',to_date('20/08/26','RR/MM/DD'),'ko',200011,400008);
Insert into HR.MOIM_COMMENT (COMMENT_NO,TITLE,DELETE_YN,CREATED_DATE,USER_ID,BOARD_NO,MAIN_COMMENT_NO) values (400027,'ㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎ','N',to_date('20/08/28','RR/MM/DD'),'jung',200034,0);
Insert into HR.MOIM_COMMENT (COMMENT_NO,TITLE,DELETE_YN,CREATED_DATE,USER_ID,BOARD_NO,MAIN_COMMENT_NO) values (400025,'요로로로','N',to_date('20/08/26','RR/MM/DD'),'test1',200011,400008);
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
Insert into HR.MOIM_LOCATION (LOCATION_NO,NAME) values (1,'강서구');
Insert into HR.MOIM_LOCATION (LOCATION_NO,NAME) values (2,'양천구');
Insert into HR.MOIM_LOCATION (LOCATION_NO,NAME) values (3,'구로구');
Insert into HR.MOIM_LOCATION (LOCATION_NO,NAME) values (4,'금천구');
Insert into HR.MOIM_LOCATION (LOCATION_NO,NAME) values (5,'영등포구');
Insert into HR.MOIM_LOCATION (LOCATION_NO,NAME) values (6,'동작구');
Insert into HR.MOIM_LOCATION (LOCATION_NO,NAME) values (7,'관악구');
Insert into HR.MOIM_LOCATION (LOCATION_NO,NAME) values (8,'서초구');
Insert into HR.MOIM_LOCATION (LOCATION_NO,NAME) values (9,'강남구');
Insert into HR.MOIM_LOCATION (LOCATION_NO,NAME) values (10,'송파구');
Insert into HR.MOIM_LOCATION (LOCATION_NO,NAME) values (11,'강동구');
Insert into HR.MOIM_LOCATION (LOCATION_NO,NAME) values (12,'마포구');
Insert into HR.MOIM_LOCATION (LOCATION_NO,NAME) values (13,'용산구');
Insert into HR.MOIM_LOCATION (LOCATION_NO,NAME) values (14,'서대문구');
Insert into HR.MOIM_LOCATION (LOCATION_NO,NAME) values (15,'은평구');
Insert into HR.MOIM_LOCATION (LOCATION_NO,NAME) values (16,'중구');
Insert into HR.MOIM_LOCATION (LOCATION_NO,NAME) values (17,'종로구');
Insert into HR.MOIM_LOCATION (LOCATION_NO,NAME) values (18,'성동구');
Insert into HR.MOIM_LOCATION (LOCATION_NO,NAME) values (19,'광진구');
Insert into HR.MOIM_LOCATION (LOCATION_NO,NAME) values (20,'동대문구');
Insert into HR.MOIM_LOCATION (LOCATION_NO,NAME) values (21,'성북구');
Insert into HR.MOIM_LOCATION (LOCATION_NO,NAME) values (22,'강북구');
Insert into HR.MOIM_LOCATION (LOCATION_NO,NAME) values (23,'도봉구');
Insert into HR.MOIM_LOCATION (LOCATION_NO,NAME) values (24,'노원구');
Insert into HR.MOIM_LOCATION (LOCATION_NO,NAME) values (25,'중랑구');
Insert into HR.MOIM_LOCATION (LOCATION_NO,NAME) values (0,'없음');
REM INSERTING into HR.MOIM_MAIN
SET DEFINE OFF;
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500001,'운동모임',3,8,'운동1.jpg',3000,3,'Y','N',to_date('20/09/15','RR/MM/DD'),to_date('20/08/11','RR/MM/DD'),700018,3,'서울 구로구 경서로 37');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500002,'공연 티켓있어요',2,5,'음악.png',20000,0,'Y','N',to_date('20/10/14','RR/MM/DD'),to_date('20/08/11','RR/MM/DD'),700023,10,'서울 송파구 가락로 6');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500003,'영화모임',1,3,'스포츠.png',20000,0,'Y','N',to_date('20/10/15','RR/MM/DD'),to_date('20/08/11','RR/MM/DD'),700024,12,'서울 마포구 가양대로 1');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500004,'강아지 자랑해요!',2,6,'반려동물.png',15000,1,'Y','N',to_date('20/11/11','RR/MM/DD'),to_date('20/08/11','RR/MM/DD'),700020,8,'서울 서초구 강남대로 27');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500005,'메이플 파퀘구함 6자리',4,6,'게임2.jpg',5000,3,'N','N',to_date('20/11/08','RR/MM/DD'),to_date('20/08/11','RR/MM/DD'),700012,2,'서울 양천구 가로공원로 66');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500006,'배그하실분',3,6,'배그1.jpg',5500,0,'Y','N',to_date('20/11/12','RR/MM/DD'),to_date('20/08/11','RR/MM/DD'),700013,16,'서울 중구 남대문로 2');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500007,'같이 취업스터디해요!',4,10,'스터디1.PNG',10000,7,'Y','N',to_date('20/11/24','RR/MM/DD'),to_date('20/08/11','RR/MM/DD'),700015,10,'서울 송파구 도곡로 434');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500008,'봉사활동 점수 채워요ㅋㅋㅋ',1,5,'봉사1.jpg',5000,0,'Y','N',to_date('20/11/27','RR/MM/DD'),to_date('20/08/11','RR/MM/DD'),700015,1,'서울 강서구 강서로 17');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500009,'인라인 알려주세요ㅠㅠ',2,10,'인라인1.jpg',5000,0,'Y','N',to_date('20/11/09','RR/MM/DD'),to_date('20/08/11','RR/MM/DD'),700019,5,'서울 영등포구 경인로 701');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500010,'같이 살빼실분?',1,5,'운동3.jpg',5000,0,'Y','N',to_date('20/11/13','RR/MM/DD'),to_date('20/08/11','RR/MM/DD'),700018,3,'서울 구로구 개봉로 4');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500011,'한강 자전거타러가요',3,10,'운동2.jpg',10000,3,'Y','N',to_date('20/11/03','RR/MM/DD'),to_date('20/08/11','RR/MM/DD'),700019,3,'서울 구로구 개봉로 15');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500012,'강아지 친구 구해요ㅜㅜ',1,10,'강아지2.jpg',20000,0,'Y','N',to_date('20/11/12','RR/MM/DD'),to_date('20/08/11','RR/MM/DD'),700020,3,'서울 구로구 고척로 1');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500013,'반려동물2',2,5,'사교인맥.png',15000,0,'Y','N',to_date('20/12/12','RR/MM/DD'),to_date('20/08/11','RR/MM/DD'),700021,11,'서울 강동구 고덕로 19');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500014,'같이 가실분 구해요!',1,3,'강아지1.jpg',10000,8,'Y','N',to_date('20/12/16','RR/MM/DD'),to_date('20/08/11','RR/MM/DD'),700022,11,'서울 강동구 동남로 733');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500015,'콘서트 같이가실분 있나요???',0,1,'콘서트1.jpg',5000,0,'Y','N',to_date('20/12/14','RR/MM/DD'),to_date('20/08/11','RR/MM/DD'),700023,11,'서울 강동구 가래여울길 3');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500016,'연극보러가요!',5,15,'연극1.jpg',25000,1,'Y','N',to_date('20/12/12','RR/MM/DD'),to_date('20/08/11','RR/MM/DD'),700023,4,'서울 금천구 가마산로 70');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500017,'축제 같이가요ㅋㅋㅋ',1,5,'문화공연.jpg',15000,0,'Y','N',to_date('20/12/14','RR/MM/DD'),to_date('20/08/11','RR/MM/DD'),700025,8,'서울 서초구 논현로13길 20');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500018,'관악구 농구모임!!',4,30,'농구3.png',15000,1,'N','N',to_date('20/10/27','RR/MM/DD'),to_date('20/08/11','RR/MM/DD'),700018,7,'서울 관악구 관악로 1');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500019,'다악구 보실뿌운~?',3,4,'영화2.jpg',7000,0,'N','N',to_date('20/10/01','RR/MM/DD'),to_date('20/08/11','RR/MM/DD'),700024,6,'서울 동작구 노들로 618');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500022,'주말에 만날사람?',4,5,'기타1.jpg',7500,0,'N','N',to_date('20/10/04','RR/MM/DD'),to_date('20/08/13','RR/MM/DD'),700014,2,'서울 양천구 공항대로 530');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500023,'워터파크 5명구함요',5,5,'파티1.jpg',7500,0,'N','N',to_date('20/10/16','RR/MM/DD'),to_date('20/08/13','RR/MM/DD'),700025,4,'서울 금천구 금하로 594');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500024,'금천구 술모임',3,5,'술1.PNG',15000,6,'N','N',to_date('20/10/18','RR/MM/DD'),to_date('20/08/13','RR/MM/DD'),700015,4,'서울 금천구 금하로1다길 3');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500025,'농구대회 선수 구해요',3,5,'농구1.png',15000,6,'N','N',to_date('20/10/25','RR/MM/DD'),to_date('20/08/13','RR/MM/DD'),700018,4,'서울 금천구 가산로 3');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500026,'같이 축구할분들 구함',5,5,'축구1.jpg',15000,0,'N','N',to_date('20/10/22','RR/MM/DD'),to_date('20/08/13','RR/MM/DD'),700017,2,'서울 양천구 가로공원로 71');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500027,'주말에 커피 드실분~?',2,10,'카페2.jpg',15000,1,'N','N',to_date('20/10/11','RR/MM/DD'),to_date('20/08/13','RR/MM/DD'),700015,7,'서울 관악구 관악산나들길 2');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500028,'롤 뜨자',5,5,'롤1.jpg',3000,5,'N','N',to_date('20/10/03','RR/MM/DD'),to_date('20/08/13','RR/MM/DD'),700011,9,'서울 강남구 개포로 204');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500029,'배린이 사절!',4,4,'배그3.jpg',5000,1,'Y','N',to_date('20/12/29','RR/MM/DD'),to_date('20/08/13','RR/MM/DD'),700012,17,'서울 종로구 경희궁3가길 2');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500030,'도마뱀 정보 공유해요~',3,4,'이구아나1.jpg',10000,1,'N','N',to_date('20/10/15','RR/MM/DD'),to_date('20/08/13','RR/MM/DD'),700022,9,'서울 강남구 강남대로 478');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500031,'인라인 가르쳐드립니다',6,10,'인라인2.jpg',10000,0,'N','N',to_date('20/12/15','RR/MM/DD'),to_date('20/08/13','RR/MM/DD'),700019,22,'서울 강북구 도봉로 8길 8');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500032,'이구아나 잘 아시는 분..?',2,3,'이구아나2.jpg',20000,2,'N','N',to_date('20/12/16','RR/MM/DD'),to_date('20/08/13','RR/MM/DD'),700022,21,'서울 성북구 고려대로6길 4');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500033,'고양이카페 가실분!!',2,3,'고양이2.jpg',30000,0,'Y','N',to_date('20/12/15','RR/MM/DD'),to_date('20/08/13','RR/MM/DD'),700021,20,'서울 동대문구 망우로6길 3');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500034,'강아지카페!!!!!',2,3,'강아지3.jpg',20000,0,'N','N',to_date('20/12/14','RR/MM/DD'),to_date('20/08/13','RR/MM/DD'),700020,19,'서울 광진구 광장로1길 6');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500035,'EDM페스티발 가실분!?',5,15,'파티2.jpg',20000,1,'N','N',to_date('20/10/15','RR/MM/DD'),to_date('20/08/13','RR/MM/DD'),700025,7,'서울 관악구 구암길 10');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500036,'영화 반도 보러 가실분~?',2,4,'영화3.png',10000,0,'N','N',to_date('20/09/07','RR/MM/DD'),to_date('20/08/13','RR/MM/DD'),700024,15,'서울 은평구 가좌로 162');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500037,'연애 하고 싶어요~ㅠㅠ',5,20,'연애1.jpg',30000,0,'N','N',to_date('20/09/05','RR/MM/DD'),to_date('20/08/13','RR/MM/DD'),700014,14,'서울 서대문구 간호대로 4');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500038,'피파 개고수만!ㅋ_ㅋ',6,20,'피파1.jpg',10000,1,'N','N',to_date('20/09/28','RR/MM/DD'),to_date('20/08/13','RR/MM/DD'),700013,1,'서울 강서구 개화길 48');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500039,'도마뱀 정보 공유해요~',2,3,'반려동물.png',10000,0,'N','N',to_date('20/12/16','RR/MM/DD'),to_date('20/08/13','RR/MM/DD'),700022,24,'서울 노원구 누원로 19');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500040,'오늘 신촌역에서 맛집탐방 합니다~',7,10,'맛집2.jpg',20000,1,'N','N',to_date('20/09/21','RR/MM/DD'),to_date('20/08/13','RR/MM/DD'),700016,1,'서울 강서구 곰달래로 51');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500041,'닭갈비 먹으러갑시다',5,5,'맛집1.jpg',20000,1,'N','N',to_date('20/09/17','RR/MM/DD'),to_date('20/08/13','RR/MM/DD'),700016,3,'서울 구로구 고척로 4');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500042,'같이 카페다녀요!',4,6,'카페1.jpg',5000,1,'N','N',to_date('20/09/14','RR/MM/DD'),to_date('20/08/13','RR/MM/DD'),700015,3,'서울 구로구 경서로 5');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500049,'강북구 맛집투어!',1,10,'맛집3.jpg',100000,1,'N','N',to_date('20/12/22','RR/MM/DD'),to_date('20/08/18','RR/MM/DD'),700016,22,'서울 강북구 방학로 384');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500050,'배그 팀구함',3,5,'배그2.jpg',10000,0,'N','N',to_date('20/12/27','RR/MM/DD'),to_date('20/08/18','RR/MM/DD'),700012,23,'서울 도봉구 도당로19가길 4');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500051,'피파하실분????',1,8,'피파2.jpg',50000,0,'N','N',to_date('20/12/27','RR/MM/DD'),to_date('20/08/18','RR/MM/DD'),700013,10,'서울 송파구 거마로 10길 6');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500053,'피방 파티구함',3,10,'게임3.jpg',5000,0,'N','N',to_date('20/09/20','RR/MM/DD'),to_date('20/08/18','RR/MM/DD'),700011,2,'서울 양천구 공항대로 532');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500000,'송파구 농구하실분 있나요',6,10,'농구4.png',100000,1,'Y','N',to_date('20/12/01','RR/MM/DD'),to_date('20/08/11','RR/MM/DD'),700018,18,'서울 성동구 금호로 15');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500054,'유기묘 봉사활동',3,10,'고양이1.jpg',0,0,'N','N',to_date('20/09/20','RR/MM/DD'),to_date('20/08/20','RR/MM/DD'),700015,3,'서울 구로구 공원로 21');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500055,'마포구에서 농구 합니다!! 모두 컴온컴온 4 on 4',1,8,'농구2.png',5000,2,'N','N',to_date('20/09/25','RR/MM/DD'),to_date('20/08/20','RR/MM/DD'),700018,12,'서울 마포구 마포대로 108');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500056,'1달마다 영화봐요',2,20,'영화1.jpg',4000,1,'N','N',to_date('20/09/29','RR/MM/DD'),to_date('20/08/24','RR/MM/DD'),700024,3,'서울 구로구 경서로 15');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500057,'주말마다 축구할사람',1,10,'축구2.png',50000,0,'N','N',to_date('20/09/26','RR/MM/DD'),to_date('20/08/27','RR/MM/DD'),700013,6,'서울 동작구 국사봉길 2');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500058,'연극 같이보러가실분 구해요!',2,3,'연극2.jpg',100000,0,'N','N',to_date('20/12/08','RR/MM/DD'),to_date('20/08/28','RR/MM/DD'),700025,25,'서울 중랑구 동일로95길 7');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500062,'같이 피방가서 롤하실분?',2,4,'롤2.jpg',500000,0,'N','N',to_date('20/12/13','RR/MM/DD'),to_date('20/08/28','RR/MM/DD'),700011,18,'서울 성동구 금호로13길 21');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500061,'닌텐도 모임!!',1,10,'nintendo.jpg',5000,1,'Y','N',to_date('20/09/30','RR/MM/DD'),to_date('20/08/28','RR/MM/DD'),700016,13,'서울 용산구 두텁바위로 7');
REM INSERTING into HR.MOIM_MAIN_CATEGORY
SET DEFINE OFF;
Insert into HR.MOIM_MAIN_CATEGORY (MAIN_CATE_NO,NAME) values (1,'게임/오락');
Insert into HR.MOIM_MAIN_CATEGORY (MAIN_CATE_NO,NAME) values (2,'사교/인맥');
Insert into HR.MOIM_MAIN_CATEGORY (MAIN_CATE_NO,NAME) values (3,'운동/스포츠');
Insert into HR.MOIM_MAIN_CATEGORY (MAIN_CATE_NO,NAME) values (4,'반려동물');
Insert into HR.MOIM_MAIN_CATEGORY (MAIN_CATE_NO,NAME) values (5,'문화/공연/축제');
REM INSERTING into HR.MOIM_MANAGER_BOARD
SET DEFINE OFF;
Insert into HR.MOIM_MANAGER_BOARD (MANAGER_BOARD_NO,MANAGER_BOARD_TITLE,VIEWS,DELETE_YN,CREATED_DATE) values (1,'처음 공지입니다.',0,'Y',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_MANAGER_BOARD (MANAGER_BOARD_NO,MANAGER_BOARD_TITLE,VIEWS,DELETE_YN,CREATED_DATE) values (2,'두번째 공지입니다.',1,'N',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_MANAGER_BOARD (MANAGER_BOARD_NO,MANAGER_BOARD_TITLE,VIEWS,DELETE_YN,CREATED_DATE) values (3,'제목3333333',0,'Y',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_MANAGER_BOARD (MANAGER_BOARD_NO,MANAGER_BOARD_TITLE,VIEWS,DELETE_YN,CREATED_DATE) values (4,'공지입니다.',0,'N',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_MANAGER_BOARD (MANAGER_BOARD_NO,MANAGER_BOARD_TITLE,VIEWS,DELETE_YN,CREATED_DATE) values (5,'공지공지',0,'N',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_MANAGER_BOARD (MANAGER_BOARD_NO,MANAGER_BOARD_TITLE,VIEWS,DELETE_YN,CREATED_DATE) values (6,'제목은 다양하게',0,'Y',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_MANAGER_BOARD (MANAGER_BOARD_NO,MANAGER_BOARD_TITLE,VIEWS,DELETE_YN,CREATED_DATE) values (7,'제목이 다똑같아',0,'Y',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_MANAGER_BOARD (MANAGER_BOARD_NO,MANAGER_BOARD_TITLE,VIEWS,DELETE_YN,CREATED_DATE) values (8,'제목을 바꾸자',1,'N',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_MANAGER_BOARD (MANAGER_BOARD_NO,MANAGER_BOARD_TITLE,VIEWS,DELETE_YN,CREATED_DATE) values (9,'많이 바꿧다',0,'N',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_MANAGER_BOARD (MANAGER_BOARD_NO,MANAGER_BOARD_TITLE,VIEWS,DELETE_YN,CREATED_DATE) values (10,'처음 공지입니다222',1,'N',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_MANAGER_BOARD (MANAGER_BOARD_NO,MANAGER_BOARD_TITLE,VIEWS,DELETE_YN,CREATED_DATE) values (11,'두번째 공지입니다222',1,'N',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_MANAGER_BOARD (MANAGER_BOARD_NO,MANAGER_BOARD_TITLE,VIEWS,DELETE_YN,CREATED_DATE) values (12,'긴급 공지입니다',3,'N',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_MANAGER_BOARD (MANAGER_BOARD_NO,MANAGER_BOARD_TITLE,VIEWS,DELETE_YN,CREATED_DATE) values (13,'공지입니다222',1,'N',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_MANAGER_BOARD (MANAGER_BOARD_NO,MANAGER_BOARD_TITLE,VIEWS,DELETE_YN,CREATED_DATE) values (14,'공지공지222',0,'N',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_MANAGER_BOARD (MANAGER_BOARD_NO,MANAGER_BOARD_TITLE,VIEWS,DELETE_YN,CREATED_DATE) values (15,'제목은 다양하게222',1,'Y',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_MANAGER_BOARD (MANAGER_BOARD_NO,MANAGER_BOARD_TITLE,VIEWS,DELETE_YN,CREATED_DATE) values (16,'공지입니다!',4,'N',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_MANAGER_BOARD (MANAGER_BOARD_NO,MANAGER_BOARD_TITLE,VIEWS,DELETE_YN,CREATED_DATE) values (17,'222222222',0,'Y',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_MANAGER_BOARD (MANAGER_BOARD_NO,MANAGER_BOARD_TITLE,VIEWS,DELETE_YN,CREATED_DATE) values (18,'공지 확인해주세요',7,'N',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_MANAGER_BOARD (MANAGER_BOARD_NO,MANAGER_BOARD_TITLE,VIEWS,DELETE_YN,CREATED_DATE) values (19,'공지입니다!',12,'N',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_MANAGER_BOARD (MANAGER_BOARD_NO,MANAGER_BOARD_TITLE,VIEWS,DELETE_YN,CREATED_DATE) values (20,'공지 등록 해보겠습니다 오류가 뜰거같아요',3,'Y',to_date('20/08/28','RR/MM/DD'));
REM INSERTING into HR.MOIM_MESSAGE
SET DEFINE OFF;
Insert into HR.MOIM_MESSAGE (MESSAGE_NO,TITLE,CONTENT,SEND_USER,RECEIVE_USER,READ_YN,CREATED_DATE,USER_ID) values (135,'제목','내용','jang','test1','N',to_date('20/08/21','RR/MM/DD'),'test1');
Insert into HR.MOIM_MESSAGE (MESSAGE_NO,TITLE,CONTENT,SEND_USER,RECEIVE_USER,READ_YN,CREATED_DATE,USER_ID) values (136,'제목','내용','jang','test1','N',to_date('20/08/21','RR/MM/DD'),'test1');
Insert into HR.MOIM_MESSAGE (MESSAGE_NO,TITLE,CONTENT,SEND_USER,RECEIVE_USER,READ_YN,CREATED_DATE,USER_ID) values (137,'제목','내용','jang','test1','N',to_date('20/08/21','RR/MM/DD'),'test1');
Insert into HR.MOIM_MESSAGE (MESSAGE_NO,TITLE,CONTENT,SEND_USER,RECEIVE_USER,READ_YN,CREATED_DATE,USER_ID) values (221,'열심히하세요','제발~~~~~','moon','kwon','N',to_date('20/08/28','RR/MM/DD'),'kwon');
Insert into HR.MOIM_MESSAGE (MESSAGE_NO,TITLE,CONTENT,SEND_USER,RECEIVE_USER,READ_YN,CREATED_DATE,USER_ID) values (198,'제목','내용','test1','jang','N',to_date('20/08/21','RR/MM/DD'),'jang');
Insert into HR.MOIM_MESSAGE (MESSAGE_NO,TITLE,CONTENT,SEND_USER,RECEIVE_USER,READ_YN,CREATED_DATE,USER_ID) values (199,'제목','내용','test1','jang','Y',to_date('20/08/21','RR/MM/DD'),'jang');
Insert into HR.MOIM_MESSAGE (MESSAGE_NO,TITLE,CONTENT,SEND_USER,RECEIVE_USER,READ_YN,CREATED_DATE,USER_ID) values (200,'제목','내용','test1','jang','Y',to_date('20/08/21','RR/MM/DD'),'jang');
Insert into HR.MOIM_MESSAGE (MESSAGE_NO,TITLE,CONTENT,SEND_USER,RECEIVE_USER,READ_YN,CREATED_DATE,USER_ID) values (222,'열심히하세요','제발~~~~~','moon','kwon','N',to_date('20/08/28','RR/MM/DD'),'kwon');
Insert into HR.MOIM_MESSAGE (MESSAGE_NO,TITLE,CONTENT,SEND_USER,RECEIVE_USER,READ_YN,CREATED_DATE,USER_ID) values (132,'제목','내용','jang','test1','N',to_date('20/08/21','RR/MM/DD'),'test1');
Insert into HR.MOIM_MESSAGE (MESSAGE_NO,TITLE,CONTENT,SEND_USER,RECEIVE_USER,READ_YN,CREATED_DATE,USER_ID) values (133,'제목','내용','jang','test1','N',to_date('20/08/21','RR/MM/DD'),'test1');
Insert into HR.MOIM_MESSAGE (MESSAGE_NO,TITLE,CONTENT,SEND_USER,RECEIVE_USER,READ_YN,CREATED_DATE,USER_ID) values (134,'제목','내용','jang','test1','N',to_date('20/08/21','RR/MM/DD'),'test1');
Insert into HR.MOIM_MESSAGE (MESSAGE_NO,TITLE,CONTENT,SEND_USER,RECEIVE_USER,READ_YN,CREATED_DATE,USER_ID) values (202,'제목','내용','test1','jang','N',to_date('20/08/21','RR/MM/DD'),'jang');
Insert into HR.MOIM_MESSAGE (MESSAGE_NO,TITLE,CONTENT,SEND_USER,RECEIVE_USER,READ_YN,CREATED_DATE,USER_ID) values (203,'제목','내용','jang','test1','Y',to_date('20/08/21','RR/MM/DD'),'jang');
Insert into HR.MOIM_MESSAGE (MESSAGE_NO,TITLE,CONTENT,SEND_USER,RECEIVE_USER,READ_YN,CREATED_DATE,USER_ID) values (204,'제목','내용','jang','test1','Y',to_date('20/08/21','RR/MM/DD'),'jang');
Insert into HR.MOIM_MESSAGE (MESSAGE_NO,TITLE,CONTENT,SEND_USER,RECEIVE_USER,READ_YN,CREATED_DATE,USER_ID) values (223,'열심히하세요','제발~~~','moon','kwon','N',to_date('20/08/28','RR/MM/DD'),'kwon');
Insert into HR.MOIM_MESSAGE (MESSAGE_NO,TITLE,CONTENT,SEND_USER,RECEIVE_USER,READ_YN,CREATED_DATE,USER_ID) values (224,'열심히하세요','제발~~~','moon','kwon','N',to_date('20/08/28','RR/MM/DD'),'kwon');
Insert into HR.MOIM_MESSAGE (MESSAGE_NO,TITLE,CONTENT,SEND_USER,RECEIVE_USER,READ_YN,CREATED_DATE,USER_ID) values (226,'잘하고 있어요??','ㅋㅋㅋㅋㅋㅋㅋㅋㅋ','moon','jang','N',to_date('20/08/28','RR/MM/DD'),'moon');
Insert into HR.MOIM_MESSAGE (MESSAGE_NO,TITLE,CONTENT,SEND_USER,RECEIVE_USER,READ_YN,CREATED_DATE,USER_ID) values (227,'잘하고 있어요??','ㅋㅋㅋㅋㅋㅋㅋㅋㅋ','moon','jang','Y',to_date('20/08/28','RR/MM/DD'),'jang');
Insert into HR.MOIM_MESSAGE (MESSAGE_NO,TITLE,CONTENT,SEND_USER,RECEIVE_USER,READ_YN,CREATED_DATE,USER_ID) values (228,'잘하고 있어요??','ㅋㅋㅋㅋㅋㅋㅋㅋㅋ','moon','jang','N',to_date('20/08/28','RR/MM/DD'),'moon');
Insert into HR.MOIM_MESSAGE (MESSAGE_NO,TITLE,CONTENT,SEND_USER,RECEIVE_USER,READ_YN,CREATED_DATE,USER_ID) values (229,'영준씨가 자기꺼 도와달래요','ㅋㅋㅋㅋㅋㅋㅋ','moon','ko','N',to_date('20/08/28','RR/MM/DD'),'ko');
Insert into HR.MOIM_MESSAGE (MESSAGE_NO,TITLE,CONTENT,SEND_USER,RECEIVE_USER,READ_YN,CREATED_DATE,USER_ID) values (230,'영준씨가 자기꺼 도와달래요','ㅋㅋㅋㅋㅋㅋㅋ','moon','ko','N',to_date('20/08/28','RR/MM/DD'),'moon');
Insert into HR.MOIM_MESSAGE (MESSAGE_NO,TITLE,CONTENT,SEND_USER,RECEIVE_USER,READ_YN,CREATED_DATE,USER_ID) values (232,'월요일 지각','청포도에이드22222','jang','jung','Y',to_date('20/08/28','RR/MM/DD'),'jang');
Insert into HR.MOIM_MESSAGE (MESSAGE_NO,TITLE,CONTENT,SEND_USER,RECEIVE_USER,READ_YN,CREATED_DATE,USER_ID) values (233,'안녕하세요~','굿굿굿~','jung','ko','N',to_date('20/08/28','RR/MM/DD'),'ko');
Insert into HR.MOIM_MESSAGE (MESSAGE_NO,TITLE,CONTENT,SEND_USER,RECEIVE_USER,READ_YN,CREATED_DATE,USER_ID) values (234,'안녕하세요~','굿굿굿~','jung','ko','N',to_date('20/08/28','RR/MM/DD'),'jung');
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
Insert into HR.MOIM_SUB_CATE (SUB_CATE_NO,NAME,MAIN_CATE_NO) values (700011,'리그오브레전드',1);
Insert into HR.MOIM_SUB_CATE (SUB_CATE_NO,NAME,MAIN_CATE_NO) values (700012,'배틀그라운드',1);
Insert into HR.MOIM_SUB_CATE (SUB_CATE_NO,NAME,MAIN_CATE_NO) values (700013,'피파온라인4',1);
Insert into HR.MOIM_SUB_CATE (SUB_CATE_NO,NAME,MAIN_CATE_NO) values (700014,'싱글/연애',2);
Insert into HR.MOIM_SUB_CATE (SUB_CATE_NO,NAME,MAIN_CATE_NO) values (700015,'술/커피/차',2);
Insert into HR.MOIM_SUB_CATE (SUB_CATE_NO,NAME,MAIN_CATE_NO) values (700016,'맛집/미식회',2);
Insert into HR.MOIM_SUB_CATE (SUB_CATE_NO,NAME,MAIN_CATE_NO) values (700017,'축구/풋살',3);
Insert into HR.MOIM_SUB_CATE (SUB_CATE_NO,NAME,MAIN_CATE_NO) values (700018,'농구',3);
Insert into HR.MOIM_SUB_CATE (SUB_CATE_NO,NAME,MAIN_CATE_NO) values (700019,'스케이트/인라인',3);
Insert into HR.MOIM_SUB_CATE (SUB_CATE_NO,NAME,MAIN_CATE_NO) values (700020,'강아지',4);
Insert into HR.MOIM_SUB_CATE (SUB_CATE_NO,NAME,MAIN_CATE_NO) values (700021,'고양이',4);
Insert into HR.MOIM_SUB_CATE (SUB_CATE_NO,NAME,MAIN_CATE_NO) values (700022,'파충류',4);
Insert into HR.MOIM_SUB_CATE (SUB_CATE_NO,NAME,MAIN_CATE_NO) values (700023,'공연/연극',5);
Insert into HR.MOIM_SUB_CATE (SUB_CATE_NO,NAME,MAIN_CATE_NO) values (700024,'영화',5);
Insert into HR.MOIM_SUB_CATE (SUB_CATE_NO,NAME,MAIN_CATE_NO) values (700025,'파티/페스티벌',5);
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
Insert into HR.MOIM_SUB_MOIM (SUB_MOIM_NO,TITLE,LOCATION,HEAD_COUNT,FEE,DELETE_YN,JOIN_DATE,JOIN_COUNT,CREATED_DATE,USER_ID,MOIM_NO) values (800000,'게임모임모임','구로구',5,5000,'N',to_date('20/08/14','RR/MM/DD'),2,to_date('20/08/11','RR/MM/DD'),'ko',500000);
Insert into HR.MOIM_SUB_MOIM (SUB_MOIM_NO,TITLE,LOCATION,HEAD_COUNT,FEE,DELETE_YN,JOIN_DATE,JOIN_COUNT,CREATED_DATE,USER_ID,MOIM_NO) values (800001,'애견모임모임','구로구',4,10000,'N',to_date('20/09/10','RR/MM/DD'),0,to_date('20/08/11','RR/MM/DD'),'ko',500004);
Insert into HR.MOIM_SUB_MOIM (SUB_MOIM_NO,TITLE,LOCATION,HEAD_COUNT,FEE,DELETE_YN,JOIN_DATE,JOIN_COUNT,CREATED_DATE,USER_ID,MOIM_NO) values (800013,'ㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ','구로구',3,10000,'N',to_date('20/09/02','RR/MM/DD'),1,to_date('20/08/14','RR/MM/DD'),'jang',500042);
Insert into HR.MOIM_SUB_MOIM (SUB_MOIM_NO,TITLE,LOCATION,HEAD_COUNT,FEE,DELETE_YN,JOIN_DATE,JOIN_COUNT,CREATED_DATE,USER_ID,MOIM_NO) values (800014,'ㄹㅇㄴㄹㅇㄴ','구로구',3,10000,'N',null,1,to_date('20/08/14','RR/MM/DD'),'jang',500042);
Insert into HR.MOIM_SUB_MOIM (SUB_MOIM_NO,TITLE,LOCATION,HEAD_COUNT,FEE,DELETE_YN,JOIN_DATE,JOIN_COUNT,CREATED_DATE,USER_ID,MOIM_NO) values (800005,'디제이풋잇백온','우리집으로가자',2,13000,'N',to_date('20/08/29','RR/MM/DD'),2,to_date('20/08/14','RR/MM/DD'),'ko',500000);
Insert into HR.MOIM_SUB_MOIM (SUB_MOIM_NO,TITLE,LOCATION,HEAD_COUNT,FEE,DELETE_YN,JOIN_DATE,JOIN_COUNT,CREATED_DATE,USER_ID,MOIM_NO) values (800017,'모임 만들기','너네집',3,50000,'N',to_date('20/08/19','RR/MM/DD'),2,to_date('20/08/14','RR/MM/DD'),'test4',500000);
Insert into HR.MOIM_SUB_MOIM (SUB_MOIM_NO,TITLE,LOCATION,HEAD_COUNT,FEE,DELETE_YN,JOIN_DATE,JOIN_COUNT,CREATED_DATE,USER_ID,MOIM_NO) values (800019,'모이자~~','영등포 타임스퀘어',10,10000,'N',to_date('20/08/28','RR/MM/DD'),1,to_date('20/08/28','RR/MM/DD'),'jung',500058);
REM INSERTING into HR.MOIM_USER
SET DEFINE OFF;
Insert into HR.MOIM_USER (USER_ID,USER_NAME,TEL,USER_PASSWORD,NICKNAME,EMAIL,BIRTH,GENDER,DELETE_YN,CREATED_DATE,LOCATION_NO,PROFILE_IMAGE,SUSPENDED_ACCOUNT_YN) values ('moon','문주영','010-1111-2222','zxcv1234','영주문','moon@gmail.com','1991.01.01','남','N',to_date('20/08/11','RR/MM/DD'),0,'11.jpg','N');
Insert into HR.MOIM_USER (USER_ID,USER_NAME,TEL,USER_PASSWORD,NICKNAME,EMAIL,BIRTH,GENDER,DELETE_YN,CREATED_DATE,LOCATION_NO,PROFILE_IMAGE,SUSPENDED_ACCOUNT_YN) values ('jung','정현조','010-1111-3333','1','조현정','jung@gmail.com','1992.06.25','남','N',to_date('20/08/11','RR/MM/DD'),0,'profile.png','N');
Insert into HR.MOIM_USER (USER_ID,USER_NAME,TEL,USER_PASSWORD,NICKNAME,EMAIL,BIRTH,GENDER,DELETE_YN,CREATED_DATE,LOCATION_NO,PROFILE_IMAGE,SUSPENDED_ACCOUNT_YN) values ('kim','김민수','010-1111-4444','zxcv1234','수민김','kim@gmail.com','1996.01.09','남','N',to_date('20/08/11','RR/MM/DD'),5,'profile.png','N');
Insert into HR.MOIM_USER (USER_ID,USER_NAME,TEL,USER_PASSWORD,NICKNAME,EMAIL,BIRTH,GENDER,DELETE_YN,CREATED_DATE,LOCATION_NO,PROFILE_IMAGE,SUSPENDED_ACCOUNT_YN) values ('ko','고정원','010-1111-5555','1','원정고','ko@gmail.com','1994.09.25','남','N',to_date('20/08/11','RR/MM/DD'),18,'FB_IMG_1477479606226.jpg','N');
Insert into HR.MOIM_USER (USER_ID,USER_NAME,TEL,USER_PASSWORD,NICKNAME,EMAIL,BIRTH,GENDER,DELETE_YN,CREATED_DATE,LOCATION_NO,PROFILE_IMAGE,SUSPENDED_ACCOUNT_YN) values ('kwon','권영준','010-1111-6666','zxcv1234','준영권','kwon@gmail.com','1994.07.03','남','N',to_date('20/08/11','RR/MM/DD'),0,'profile.png','N');
Insert into HR.MOIM_USER (USER_ID,USER_NAME,TEL,USER_PASSWORD,NICKNAME,EMAIL,BIRTH,GENDER,DELETE_YN,CREATED_DATE,LOCATION_NO,PROFILE_IMAGE,SUSPENDED_ACCOUNT_YN) values ('jang','장주리','010-1111-7777','1','리주장','jang@gmail.com','2000.01.19','여','N',to_date('20/08/11','RR/MM/DD'),3,'포메.jpg','N');
Insert into HR.MOIM_USER (USER_ID,USER_NAME,TEL,USER_PASSWORD,NICKNAME,EMAIL,BIRTH,GENDER,DELETE_YN,CREATED_DATE,LOCATION_NO,PROFILE_IMAGE,SUSPENDED_ACCOUNT_YN) values ('admin','관리자','010-9999-9999','zxcv1234','관리자','admin@gmail.com','1995.01.05','여','N',to_date('20/08/11','RR/MM/DD'),5,'profile.png','N');
Insert into HR.MOIM_USER (USER_ID,USER_NAME,TEL,USER_PASSWORD,NICKNAME,EMAIL,BIRTH,GENDER,DELETE_YN,CREATED_DATE,LOCATION_NO,PROFILE_IMAGE,SUSPENDED_ACCOUNT_YN) values ('test1','테스트1','010-8888-8888','1234','테스트1','test1@gmail.com','1993.01.01','남','N',to_date('20/08/11','RR/MM/DD'),11,'profile.png','N');
Insert into HR.MOIM_USER (USER_ID,USER_NAME,TEL,USER_PASSWORD,NICKNAME,EMAIL,BIRTH,GENDER,DELETE_YN,CREATED_DATE,LOCATION_NO,PROFILE_IMAGE,SUSPENDED_ACCOUNT_YN) values ('test2','테스트2','010-8888-7777','1234','테스트2','test2@gmail.com','1993.01.01','남','N',to_date('20/08/11','RR/MM/DD'),15,'profile.png','Y');
Insert into HR.MOIM_USER (USER_ID,USER_NAME,TEL,USER_PASSWORD,NICKNAME,EMAIL,BIRTH,GENDER,DELETE_YN,CREATED_DATE,LOCATION_NO,PROFILE_IMAGE,SUSPENDED_ACCOUNT_YN) values ('test3','테스트3','010-8888-6666','1234','테스트3','test3@gmail.com','1993.01.01','여','N',to_date('20/08/11','RR/MM/DD'),16,'profile.png','N');
Insert into HR.MOIM_USER (USER_ID,USER_NAME,TEL,USER_PASSWORD,NICKNAME,EMAIL,BIRTH,GENDER,DELETE_YN,CREATED_DATE,LOCATION_NO,PROFILE_IMAGE,SUSPENDED_ACCOUNT_YN) values ('test4','테스트4','010-8888-5555','1234','테스트4','test4@gmail.com','1993.01.01','남','N',to_date('20/08/11','RR/MM/DD'),20,'profile.png','N');
Insert into HR.MOIM_USER (USER_ID,USER_NAME,TEL,USER_PASSWORD,NICKNAME,EMAIL,BIRTH,GENDER,DELETE_YN,CREATED_DATE,LOCATION_NO,PROFILE_IMAGE,SUSPENDED_ACCOUNT_YN) values ('test5','테스트5','010-1212-1212','1234','닉네임5','test5@naver.com','2000.02.02','남','N',to_date('20/08/11','RR/MM/DD'),1,'profile.png','N');
Insert into HR.MOIM_USER (USER_ID,USER_NAME,TEL,USER_PASSWORD,NICKNAME,EMAIL,BIRTH,GENDER,DELETE_YN,CREATED_DATE,LOCATION_NO,PROFILE_IMAGE,SUSPENDED_ACCOUNT_YN) values ('test6','테스트6','010-1313-1313','1234','닉네임6','test6@naver.com','2000.07.07','여','N',to_date('20/08/11','RR/MM/DD'),2,'profile.png','N');
Insert into HR.MOIM_USER (USER_ID,USER_NAME,TEL,USER_PASSWORD,NICKNAME,EMAIL,BIRTH,GENDER,DELETE_YN,CREATED_DATE,LOCATION_NO,PROFILE_IMAGE,SUSPENDED_ACCOUNT_YN) values ('test7','테스트7','010-2222-2222','1234','닉네임7','test7@naver.com','1999.05.05','남','N',to_date('20/08/11','RR/MM/DD'),3,'profile.png','N');
Insert into HR.MOIM_USER (USER_ID,USER_NAME,TEL,USER_PASSWORD,NICKNAME,EMAIL,BIRTH,GENDER,DELETE_YN,CREATED_DATE,LOCATION_NO,PROFILE_IMAGE,SUSPENDED_ACCOUNT_YN) values ('test8','테스트8','010-3434-3434','1234','닉네임8','test8@naver.com','1998.03.03','여','N',to_date('20/08/11','RR/MM/DD'),4,'profile.png','N');
Insert into HR.MOIM_USER (USER_ID,USER_NAME,TEL,USER_PASSWORD,NICKNAME,EMAIL,BIRTH,GENDER,DELETE_YN,CREATED_DATE,LOCATION_NO,PROFILE_IMAGE,SUSPENDED_ACCOUNT_YN) values ('test9','테스트9','010-7777-7777','1234','닉네임9','test9@naver.com','2001.11.11','남','Y',to_date('20/08/11','RR/MM/DD'),5,'profile.png','N');
Insert into HR.MOIM_USER (USER_ID,USER_NAME,TEL,USER_PASSWORD,NICKNAME,EMAIL,BIRTH,GENDER,DELETE_YN,CREATED_DATE,LOCATION_NO,PROFILE_IMAGE,SUSPENDED_ACCOUNT_YN) values ('test10','테스트10','010-0505-0505','1234','닉네임10','test10@naver.com','1995.03.14','여','N',to_date('20/08/11','RR/MM/DD'),6,'profile.png','N');
Insert into HR.MOIM_USER (USER_ID,USER_NAME,TEL,USER_PASSWORD,NICKNAME,EMAIL,BIRTH,GENDER,DELETE_YN,CREATED_DATE,LOCATION_NO,PROFILE_IMAGE,SUSPENDED_ACCOUNT_YN) values ('test11','테스트11','010-7878-7878','1234','닉네임11','test11@naver.com','1997.04.06','남','N',to_date('20/08/11','RR/MM/DD'),7,'profile.png','N');
Insert into HR.MOIM_USER (USER_ID,USER_NAME,TEL,USER_PASSWORD,NICKNAME,EMAIL,BIRTH,GENDER,DELETE_YN,CREATED_DATE,LOCATION_NO,PROFILE_IMAGE,SUSPENDED_ACCOUNT_YN) values ('test12','테스트12','010-4646-4646','1234','닉네임12','test12@naver.com','1993.02.14','여','N',to_date('20/08/11','RR/MM/DD'),8,'profile.png','N');
Insert into HR.MOIM_USER (USER_ID,USER_NAME,TEL,USER_PASSWORD,NICKNAME,EMAIL,BIRTH,GENDER,DELETE_YN,CREATED_DATE,LOCATION_NO,PROFILE_IMAGE,SUSPENDED_ACCOUNT_YN) values ('test13','테스트13','010-9999-9999','1234','닉네임13','test13@naver.com','1992.05.25','남','N',to_date('20/08/11','RR/MM/DD'),0,null,'N');
Insert into HR.MOIM_USER (USER_ID,USER_NAME,TEL,USER_PASSWORD,NICKNAME,EMAIL,BIRTH,GENDER,DELETE_YN,CREATED_DATE,LOCATION_NO,PROFILE_IMAGE,SUSPENDED_ACCOUNT_YN) values ('yjs10000','유재석','01011112222','zxcv1234','재석유','js@js.com','199999','남','N',to_date('20/08/19','RR/MM/DD'),2,null,'N');
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
Insert into HR.MOIM_WARNING (WARNING_NO,USER_ID,LOGIN_USER_ID,CONTENT,TYPE,CREATED_DATE,DELETE_YN) values (1,'jang','test1','신고합니다111','모임',to_date('20/08/24','RR/MM/DD'),'N');
Insert into HR.MOIM_WARNING (WARNING_NO,USER_ID,LOGIN_USER_ID,CONTENT,TYPE,CREATED_DATE,DELETE_YN) values (2,'jang','test2','신고합니다222','유저',to_date('20/08/24','RR/MM/DD'),'N');
Insert into HR.MOIM_WARNING (WARNING_NO,USER_ID,LOGIN_USER_ID,CONTENT,TYPE,CREATED_DATE,DELETE_YN) values (3,'test1','test3','신고합니다333','모임',to_date('20/08/24','RR/MM/DD'),'N');
Insert into HR.MOIM_WARNING (WARNING_NO,USER_ID,LOGIN_USER_ID,CONTENT,TYPE,CREATED_DATE,DELETE_YN) values (4,'test2','test3','신고합니다444','모임',to_date('20/08/24','RR/MM/DD'),'N');
Insert into HR.MOIM_WARNING (WARNING_NO,USER_ID,LOGIN_USER_ID,CONTENT,TYPE,CREATED_DATE,DELETE_YN) values (5,'test2','test4','신고합니다555','유저',to_date('20/08/24','RR/MM/DD'),'N');
Insert into HR.MOIM_WARNING (WARNING_NO,USER_ID,LOGIN_USER_ID,CONTENT,TYPE,CREATED_DATE,DELETE_YN) values (6,'test2','test5','신고합니다666','모임',to_date('20/08/24','RR/MM/DD'),'N');
Insert into HR.MOIM_WARNING (WARNING_NO,USER_ID,LOGIN_USER_ID,CONTENT,TYPE,CREATED_DATE,DELETE_YN) values (7,'test2','test6','신고합니다777','모임',to_date('20/08/24','RR/MM/DD'),'N');
Insert into HR.MOIM_WARNING (WARNING_NO,USER_ID,LOGIN_USER_ID,CONTENT,TYPE,CREATED_DATE,DELETE_YN) values (8,'kim','jung','신고합니다888','유저',to_date('20/08/25','RR/MM/DD'),'N');
Insert into HR.MOIM_WARNING (WARNING_NO,USER_ID,LOGIN_USER_ID,CONTENT,TYPE,CREATED_DATE,DELETE_YN) values (9,'kim','moon','신고합니다999','유저',to_date('20/08/25','RR/MM/DD'),'N');
Insert into HR.MOIM_WARNING (WARNING_NO,USER_ID,LOGIN_USER_ID,CONTENT,TYPE,CREATED_DATE,DELETE_YN) values (10,'jung','jang','신고합니다10','유저',to_date('20/08/25','RR/MM/DD'),'N');
Insert into HR.MOIM_WARNING (WARNING_NO,USER_ID,LOGIN_USER_ID,CONTENT,TYPE,CREATED_DATE,DELETE_YN) values (11,'jung','ko','신고합니다11','모임',to_date('20/08/25','RR/MM/DD'),'N');
Insert into HR.MOIM_WARNING (WARNING_NO,USER_ID,LOGIN_USER_ID,CONTENT,TYPE,CREATED_DATE,DELETE_YN) values (12,'jung','kwon','신고합니다12','유저',to_date('20/08/25','RR/MM/DD'),'N');
Insert into HR.MOIM_WARNING (WARNING_NO,USER_ID,LOGIN_USER_ID,CONTENT,TYPE,CREATED_DATE,DELETE_YN) values (13,'ko','kim','신고합니다13','모임',to_date('20/08/25','RR/MM/DD'),'N');
Insert into HR.MOIM_WARNING (WARNING_NO,USER_ID,LOGIN_USER_ID,CONTENT,TYPE,CREATED_DATE,DELETE_YN) values (14,'moon','kim','신고합니다14','모임',to_date('20/08/25','RR/MM/DD'),'N');
Insert into HR.MOIM_WARNING (WARNING_NO,USER_ID,LOGIN_USER_ID,CONTENT,TYPE,CREATED_DATE,DELETE_YN) values (15,'kwon','moon','신고합니다16','모임',to_date('20/08/25','RR/MM/DD'),'N');
Insert into HR.MOIM_WARNING (WARNING_NO,USER_ID,LOGIN_USER_ID,CONTENT,TYPE,CREATED_DATE,DELETE_YN) values (16,'test2','test5','신고합니다17','모임',to_date('20/08/25','RR/MM/DD'),'N');
Insert into HR.MOIM_WARNING (WARNING_NO,USER_ID,LOGIN_USER_ID,CONTENT,TYPE,CREATED_DATE,DELETE_YN) values (17,'test3','test2','신고합니다18','모임',to_date('20/08/25','RR/MM/DD'),'N');
Insert into HR.MOIM_WARNING (WARNING_NO,USER_ID,LOGIN_USER_ID,CONTENT,TYPE,CREATED_DATE,DELETE_YN) values (18,'test3','test6','신고합니다19','유저',to_date('20/08/25','RR/MM/DD'),'N');
Insert into HR.MOIM_WARNING (WARNING_NO,USER_ID,LOGIN_USER_ID,CONTENT,TYPE,CREATED_DATE,DELETE_YN) values (21,'kwon','moon','저리가거라','유저',to_date('20/08/27','RR/MM/DD'),'N');
Insert into HR.MOIM_WARNING (WARNING_NO,USER_ID,LOGIN_USER_ID,CONTENT,TYPE,CREATED_DATE,DELETE_YN) values (22,'kwon','moon','조심하라고','유저',to_date('20/08/28','RR/MM/DD'),'N');
Insert into HR.MOIM_WARNING (WARNING_NO,USER_ID,LOGIN_USER_ID,CONTENT,TYPE,CREATED_DATE,DELETE_YN) values (23,'jung','jang','그냥','유저',to_date('20/08/28','RR/MM/DD'),'N');
Insert into HR.MOIM_WARNING (WARNING_NO,USER_ID,LOGIN_USER_ID,CONTENT,TYPE,CREATED_DATE,DELETE_YN) values (24,'jung','jang','청포도 에이드','유저',to_date('20/08/28','RR/MM/DD'),'Y');
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
