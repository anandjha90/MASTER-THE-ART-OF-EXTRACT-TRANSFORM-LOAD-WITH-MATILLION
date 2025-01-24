-- Set operations
CREATE TABLE TABLE_A (VAL_A VARCHAR(100));
CREATE TABLE TABLE_B (VAL_B VARCHAR(100));

insert into Table_a values(1);
insert into Table_a values(2);
insert into Table_a values(3);
insert into Table_b values (3);
insert into Table_b values (4);
insert into Table_b values (5);

alter table TABLE_A rename column VAL_A to DATA_VALUE;
alter table TABLE_B rename column VAL_B to DATA_VALUE;

-- A intersection B will give 3 as an output
-- A union B will give 1,2,3,4,5 as an output
-- A minus B will give 1,2 as an output

select * from TABLE_A_MINUS_B;
select * from TABLE_A_INT_B;
select * from TABLE_A_UNION_B; 
