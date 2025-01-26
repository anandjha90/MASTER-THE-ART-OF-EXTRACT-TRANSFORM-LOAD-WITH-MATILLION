Select * from PC_MATILLION_DEV_DB.SRC.MS_CUSTOMERADDRESS;
Select * from PC_MATILLION_DEV_DB.DWH.DIM_CUSTOMERADDRESS;

create or replace sequence PC_MATILLION_DEV_DB.DWH.ADDR_KEY
     start = 1
     increment = 1
     comment = 'Surrogate key for address';

create or replace TABLE PC_MATILLION_DEV_DB.DWH.DIM_CUSTOMERADDRESS (
	ADD_KEY NUMBER(11,0) default PC_MATILLION_DEV_DB.DWH.ADDR_KEY.nextval,
    CUSTOMERID NUMBER(11,0),
	ADDRESSID NUMBER(11,0),
	ADDRESSTYPE VARCHAR(100),
	ACTIVE_FLAG VARCHAR(10) default 'Y',
    EFF_START_DT DATE Default CURRENT_DATE,
    EFF_END_DT DATE
);

grant ownership on table  PC_MATILLION_DEV_DB.DWH.DIM_CUSTOMERADDRESS  to role PC_MATILLIONLOADER_ROLE;

Select * from PC_MATILLION_DEV_DB.DWH.DIM_CUSTOMERADDRESS;

--insert scenario
select * from PC_MATILLION_DEV_DB.SRC.MS_CUSTOMERADDRESS;
insert into PC_MATILLION_DEV_DB.SRC.MS_CUSTOMERADDRESS (customerid,addressid,addresstype) values (77,78,'Main Office');
select * From pc_matillion_dev_db.dwh.dim_customeraddress where customerid='77' and addressid='78';

--delete scenario
delete from PC_MATILLION_DEV_DB.SRC.MS_CUSTOMERADDRESS where customerid='29532' and addressid='881';
select * From pc_matillion_dev_db.dwh.dim_customeraddress where customerid='29532' and addressid='881';

--update scenario
update PC_MATILLION_DEV_DB.SRC.MS_CUSTOMERADDRESS set addresstype='Shipping' where customerid='29523' and addressid='593';
select * From pc_matillion_dev_db.dwh.dim_customeraddress where customerid='29523' and addressid='593';

truncate table pc_matillion_dev_db.dwh.dim_customeraddress;
