create or replace TABLE PC_MATILLION_DEV_DB.SRC.MS_CUSTOMERADDRESS (
	CUSTOMERID NUMBER(10,0),
	ADDRESSID NUMBER(10,0),
	ADDRESSTYPE VARCHAR(50),
	ROWGUID VARCHAR(36),
	MODIFIEDDATE TIMESTAMP_NTZ(9),
	MATILLION_BATCH_ID NUMBER(38,0),
	MATILLION_UPDATED_TIMESTAMP TIMESTAMP_LTZ(9)
);
