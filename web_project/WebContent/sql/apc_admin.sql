--------------------------------------------------------
--  파일이 생성됨 - 월요일-5월-16-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table APC_ADMIN
--------------------------------------------------------

  CREATE TABLE "SEMI"."APC_ADMIN" 
   (	"ADMIN_ID" VARCHAR2(30 BYTE), 
	"ADMIN_PWD" VARCHAR2(30 BYTE), 
	"ADMIN_NAME" VARCHAR2(50 BYTE), 
	"ADMIN_EMAIL" VARCHAR2(200 BYTE), 
	"ADMIN_DATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into SEMI.APC_ADMIN
SET DEFINE OFF;
Insert into SEMI.APC_ADMIN (ADMIN_ID,ADMIN_PWD,ADMIN_NAME,ADMIN_EMAIL,ADMIN_DATE) values ('admin','admin1234','관리자','admin@naver.com',to_date('22/04/26','RR/MM/DD'));
--------------------------------------------------------
--  DDL for Index SYS_C009440
--------------------------------------------------------

  CREATE UNIQUE INDEX "SEMI"."SYS_C009440" ON "SEMI"."APC_ADMIN" ("ADMIN_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table APC_ADMIN
--------------------------------------------------------

  ALTER TABLE "SEMI"."APC_ADMIN" MODIFY ("ADMIN_PWD" NOT NULL ENABLE);
  ALTER TABLE "SEMI"."APC_ADMIN" MODIFY ("ADMIN_NAME" NOT NULL ENABLE);
  ALTER TABLE "SEMI"."APC_ADMIN" ADD PRIMARY KEY ("ADMIN_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
