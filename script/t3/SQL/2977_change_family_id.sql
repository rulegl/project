--alter session schema to EQI
alter session set current_schema=eqi

--verify indices in correct Dev state 503
select index_id, family_id, classification_ind, headline_index_id from eqi_m_index 
where index_id in (
    select index_id from eqi_r_index_idfication where index_idfication_value in (
    'WTEPSCT'
    ) and identifier_id = 57
)


select * from EQI.EQI_M_INDEX_FAMILY mif
where upper(MIF.FAMILY_NAME) = 'CUSTOM NY'

-- family ID is 8201

-- back up
select * from eqi_m_index 
where index_id in (
select index_id from eqi_r_index_idfication where index_idfication_value in (
'WTEPSCT'
) and identifier_id = 57)

update EQI.EQI_M_INDEX emi
set EMI.FAMILY_ID=8201
where EMI.INDEX_ID in (
    select index_id from eqi_r_index_idfication where index_idfication_value in (
        'WTEPSCT'
    ) and identifier_id = 57
)