--------------------------------------------------------
--  File created - Sunday-August-16-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ORDERS
--------------------------------------------------------

  CREATE TABLE "CDI"."ORDERS" 
   (	"ORDERID" NUMBER, 
	"QUANTITY" NUMBER, 
	"CUSTOMERID" NUMBER, 
	"SHIPMENTTRACKINGNO" VARCHAR2(20 BYTE), 
	"ORDERSTATUS" VARCHAR2(20 BYTE), 
	"PRODUCTDESCRIPTION" VARCHAR2(60 BYTE), 
	"OUTLETID" VARCHAR2(20 BYTE), 
	"PRODUCTID" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into CDI.ORDERS
SET DEFINE OFF;
Insert into CDI.ORDERS (ORDERID,QUANTITY,CUSTOMERID,SHIPMENTTRACKINGNO,ORDERSTATUS,PRODUCTDESCRIPTION,OUTLETID,PRODUCTID) values (1,10,185032,'1Z1Y2A990254347812','Shipped','Apple MacBook Pro','5','109');
Insert into CDI.ORDERS (ORDERID,QUANTITY,CUSTOMERID,SHIPMENTTRACKINGNO,ORDERSTATUS,PRODUCTDESCRIPTION,OUTLETID,PRODUCTID) values (2,2,2,'1K2R2A986722347812','Delivered','Samsonite Winfield Luggage','9','140');
Insert into CDI.ORDERS (ORDERID,QUANTITY,CUSTOMERID,SHIPMENTTRACKINGNO,ORDERSTATUS,PRODUCTDESCRIPTION,OUTLETID,PRODUCTID) values (3,1,969964,'9KJH7899867234HJ8Y','In Progress','Xbox 360 Slim','5','136');
Insert into CDI.ORDERS (ORDERID,QUANTITY,CUSTOMERID,SHIPMENTTRACKINGNO,ORDERSTATUS,PRODUCTDESCRIPTION,OUTLETID,PRODUCTID) values (4,5,158666,'K98NJ899867234PO09','In Progress','Wilson Evolution Game Basketball','7','127');
Insert into CDI.ORDERS (ORDERID,QUANTITY,CUSTOMERID,SHIPMENTTRACKINGNO,ORDERSTATUS,PRODUCTDESCRIPTION,OUTLETID,PRODUCTID) values (5,20,489424,'876POIU672234712H5','Delivered','JBL Link 500','5','122');
Insert into CDI.ORDERS (ORDERID,QUANTITY,CUSTOMERID,SHIPMENTTRACKINGNO,ORDERSTATUS,PRODUCTDESCRIPTION,OUTLETID,PRODUCTID) values (6,12,639892,'1K2347812GY78J90IO','Shipped','Redemption','1','130');
--------------------------------------------------------
--  DDL for Index ORDERS_PK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "CDI"."ORDERS_PK1" ON "CDI"."ORDERS" ("ORDERID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table ORDERS
--------------------------------------------------------

  ALTER TABLE "CDI"."ORDERS" MODIFY ("ORDERID" NOT NULL ENABLE);
  ALTER TABLE "CDI"."ORDERS" ADD CONSTRAINT "ORDERS_PK1" PRIMARY KEY ("ORDERID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;










--------------------------------------------------------
--  File created - Monday-August-17-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table CUSTOMER
--------------------------------------------------------

  CREATE TABLE "CDI"."CUSTOMER" 
   (	"CUST_ID" VARCHAR2(6 BYTE), 
	"NAME" VARCHAR2(30 BYTE), 
	"ADDRESS" VARCHAR2(60 BYTE), 
	"CITY" VARCHAR2(30 BYTE), 
	"STATE" VARCHAR2(2 BYTE), 
	"POSTALCODE" VARCHAR2(5 BYTE), 
	"COUNTRY" VARCHAR2(15 BYTE), 
	"PHONE" VARCHAR2(20 BYTE), 
	"LAST_ORDER_DATE" DATE, 
	"STATUS" VARCHAR2(10 BYTE), 
	"TIER" VARCHAR2(5 BYTE), 
	"MODIFIED_DATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into CDI.CUSTOMER
SET DEFINE OFF;
Insert into CDI.CUSTOMER (CUST_ID,NAME,ADDRESS,CITY,STATE,POSTALCODE,COUNTRY,PHONE,LAST_ORDER_DATE,STATUS,TIER,MODIFIED_DATE) values ('1096','Paul Somogye','3130 Broadway Street','Kansas City','MO','64111','US','(816) 756-1060',to_date('08-JUN-09','DD-MON-RR'),'LIVE','3',to_date('24-JUN-19','DD-MON-RR'));
Insert into CDI.CUSTOMER (CUST_ID,NAME,ADDRESS,CITY,STATE,POSTALCODE,COUNTRY,PHONE,LAST_ORDER_DATE,STATUS,TIER,MODIFIED_DATE) values ('1099','Peter Doyle','1200 New Hampshire Avenue North West','Washington','DC','20036','US','(202) 857-2634',to_date('03-FEB-09','DD-MON-RR'),'LIVE',null,to_date('25-JUN-19','DD-MON-RR'));
Insert into CDI.CUSTOMER (CUST_ID,NAME,ADDRESS,CITY,STATE,POSTALCODE,COUNTRY,PHONE,LAST_ORDER_DATE,STATUS,TIER,MODIFIED_DATE) values ('1100','Peter Howley','25 Cornwall Street','Mill Valley','CA','94941',null,'(415) 394-5800',to_date('04-SEP-08','DD-MON-RR'),'LIVE',null,to_date('28-JUN-19','DD-MON-RR'));
Insert into CDI.CUSTOMER (CUST_ID,NAME,ADDRESS,CITY,STATE,POSTALCODE,COUNTRY,PHONE,LAST_ORDER_DATE,STATUS,TIER,MODIFIED_DATE) values ('1101','Rick Sundheim','90 Inverness Cir E','Englewood','CO','80112','US','3037990222',to_date('04-AUG-08','DD-MON-RR'),'LIVE',null,to_date('29-JUN-19','DD-MON-RR'));
Insert into CDI.CUSTOMER (CUST_ID,NAME,ADDRESS,CITY,STATE,POSTALCODE,COUNTRY,PHONE,LAST_ORDER_DATE,STATUS,TIER,MODIFIED_DATE) values ('1102','Phyllis Jackson','3495 Piedmont Road North East','Atlanta','GA','30305','US',null,to_date('04-MAR-09','DD-MON-RR'),'LIVE',null,to_date('25-JUN-19','DD-MON-RR'));
Insert into CDI.CUSTOMER (CUST_ID,NAME,ADDRESS,CITY,STATE,POSTALCODE,COUNTRY,PHONE,LAST_ORDER_DATE,STATUS,TIER,MODIFIED_DATE) values ('1103','Ronald Orbach','1 Mobay Road','Pittsburgh','PA','15205',null,'4127772439',to_date('04-JAN-08','DD-MON-RR'),'LIVE','2',to_date('30-JUN-19','DD-MON-RR'));
Insert into CDI.CUSTOMER (CUST_ID,NAME,ADDRESS,CITY,STATE,POSTALCODE,COUNTRY,PHONE,LAST_ORDER_DATE,STATUS,TIER,MODIFIED_DATE) values ('1104','Ray Ruybalid','6625 The Corners Parkway','Norcross','GA','30092','US','(770) 448-5210',to_date('02-MAR-08','DD-MON-RR'),'LIVE','3',to_date('22-JUN-19','DD-MON-RR'));
Insert into CDI.CUSTOMER (CUST_ID,NAME,ADDRESS,CITY,STATE,POSTALCODE,COUNTRY,PHONE,LAST_ORDER_DATE,STATUS,TIER,MODIFIED_DATE) values ('1105','Richard Coleman','2505 Piedra Drive','Plano','TX','75023','US','(972) 758-9343',to_date('02-JAN-08','DD-MON-RR'),'LIVE','1',to_date('24-JUN-19','DD-MON-RR'));
Insert into CDI.CUSTOMER (CUST_ID,NAME,ADDRESS,CITY,STATE,POSTALCODE,COUNTRY,PHONE,LAST_ORDER_DATE,STATUS,TIER,MODIFIED_DATE) values ('1106','Rick Brattin','7140 South Lewis Avenue','Tulsa','OK','74136','USA','(918) 488-4007',to_date('01-JUL-09','DD-MON-RR'),'LIVE',null,to_date('30-JUN-19','DD-MON-RR'));
Insert into CDI.CUSTOMER (CUST_ID,NAME,ADDRESS,CITY,STATE,POSTALCODE,COUNTRY,PHONE,LAST_ORDER_DATE,STATUS,TIER,MODIFIED_DATE) values ('1107','Robert Cori','6625 The Corners Parkway','Norcross','GA','30092','US','(770) 448-5210',to_date('01-MAR-08','DD-MON-RR'),'Incactive','3',to_date('29-JUN-19','DD-MON-RR'));










--------------------------------------------------------
--  File created - Sunday-August-16-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table TOTALAMOUNT
--------------------------------------------------------

  CREATE TABLE "CDI"."TOTALAMOUNT" 
   (	"FULLNAME" VARCHAR2(20 BYTE), 
	"ACCOUNTVALUE" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into CDI.TOTALAMOUNT
SET DEFINE OFF;
