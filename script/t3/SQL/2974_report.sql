

select * from EQI.EQI_M_INDEX
where index_id in (
    select index_id from eqi_r_index_idfication where index_idfication_value in (
    'IND1CMBA',
    'IND1ZH06',
    'IND1CMBB',
    'IND1ZH07',
    'IND1CMBC',
    'IND1ZH08'
    ) and identifier_id = 57
)



select * from EQI.EQI_T_CR_DOCUMENT_FILE_NAME cdf where CDF.FIELD_DATA like '_socgen%'

document_id 179315


select * from EQI.EQI_M_INDEX

select * from EQI.EQI_T_CR_REPORT where document_file_id=179315

select * from EQI.EQI_M_CR_REPORT_TEMPLATE

select * from EQI.EQI_M_CR_GEN_GRP

select * from EQI_T_CR_REPORT_CRITERIA where report_id=65811
order by effective_from_date desc


select * from EQI_T_CR_REPORT_CRITERIA where report_id=65811
order by effective_from_date desc

where index_id in (
1009037718,
1009037723,
1009038503,
1009038508,
1009038603,
1009038608
)