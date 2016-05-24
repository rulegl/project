alter session set current_schema=eqi


select index_id, divisor_upload_ind from eqi_m_index 
where index_id in (
select index_id from eqi_r_index_idfication where index_idfication_value in (
'SPGDIV',
'SPGUIV'
) and identifier_id = 57)


select * from EQI.eqi_m_index 
where index_id in (
select index_id from eqi_r_index_idfication where index_idfication_value in (
'SPGDIV',
'SPGUIV'
) and identifier_id = 57)


-- check current divosors
select * from EQI.EQI_T_INDEX_DIVISORS 
where index_id in (
select index_id from eqi_r_index_idfication where index_idfication_value in (
'SPGDIV',
'SPGUIV'
) and identifier_id = 57)
order by divisor_start_date desc


-- backup
--update EQI_M_INDEX
update eqi_m_index 
set divisor_upload_ind=1
where index_id in (
    select index_id from eqi_r_index_idfication where index_idfication_value in (
    'SPGDIV',
    'SPGUIV'
    ) and identifier_id = 57
)

select * from EQI.EQI_T_INDEX_DIVISORS
where index_id in (
    select index_id from eqi_r_index_idfication where index_idfication_value in (
    'SPGDIV',
    'SPGUIV'
    ) and identifier_id = 57
)

--remove entries in divisor table

delete from EQI.EQI_T_INDEX_DIVISORS
where index_id in (
    select index_id from eqi_r_index_idfication where index_idfication_value in (
    'SPGDIV',
    'SPGUIV'
    ) and identifier_id = 57
)