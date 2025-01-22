
CREATE TABLE [SalesLT].[HistoricalData](
Year_Val VARCHAR(100),
Data_Val VARCHAR(100)
	);


select * from [SalesLT].[HistoricalData];
insert into [SalesLT].[HistoricalData] values(2020,'Test1');
insert into [SalesLT].[HistoricalData] values(2021,'Test2');
insert into [SalesLT].[HistoricalData] values(2022,'Test3');
insert into [SalesLT].[HistoricalData] values(2023,'Test4');
commit;

select * from [SalesLT].[HistoricalData];