create table PC_MATILLION_DEV_DB.SRC.ADDRESS_CSV (ADDR_VAL VARChAR(4000));
truncate table PC_MATILLION_DEV_DB.SRC.ADDRESS_CSV;
select * from PC_MATILLION_DEV_DB.SRC.ADDRESS_CSV;

-- format for insert
-- AddressID,AddressLine1,AddressLine2,City,StateProvince,CountryRegion,Postalcode

insert into PC_MATILLION_DEV_DB.SRC.ADDRESS_CSV VALUES ('9,8713 Yosemite Ct.,NULL,Bothell,Washington,United States,98011');
insert into PC_MATILLION_DEV_DB.SRC.ADDRESS_CSV VALUES ('11,1318 Lasalle Street,NULL,Bothell,Washington,United States,98011');
insert into PC_MATILLION_DEV_DB.SRC.ADDRESS_CSV VALUES ('25,9178 Jumping St.,NULL,Dallas,Texas,United States,75201');

select * from PC_MATILLION_DEV_DB.SRC.ADDRESS_CSV;

select * from PC_MATILLION_DEV_DB.SRC.DIM_ADDRESS;
/*Output column Names

1	AddressID
2	AddressLine1
3	AddressLine2
4	City
5	StateProvince
6	CountryRegion
7	Postalcode
*/
