SELECT  table_name, COLUMN_NAME
FROM    all_tab_columns
WHERE   owner           = 'EQI'
AND     column_name     like '%CALCULATED%';