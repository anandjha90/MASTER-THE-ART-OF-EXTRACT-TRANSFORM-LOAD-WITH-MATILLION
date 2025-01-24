-- Connection Opition: Value ==> generateschemaoptions=XPathOutputPrefix;ignorecontenttype=True;q=${v_City};aqi=no;
-- Add your key from weather API into below value options
-- Connection Options
-- Paramter : Other
-- Value : generateschemaoptions=XPathOutputPrefix;ignorecontenttype=True;key=e0701317f86944a49a6215639252401;q=${v_City};aqi=no;

select * from replication_db."WEATHER_api_extract";

select * from replication_db."WeatherAPI"

SELECT distinct 
"Data Value":"location":name::VARCHAR AS Location,
"Data Value":"current":temp_c::VARCHAR AS Temperature,
"Data Value":"location":localtime::VARCHAR AS Record_Date
FROM replication_db."WEATHER_api_extract" as s 
,LATERAL FLATTEN(input => "Data Value");
