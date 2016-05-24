alter session set current_schema=eqi

--follow_exch_cal_ind 0 means manually, 1 means follow exchange, 2 means ref to others
-- check specific columns
select emi.index_id, EMI.CLASSIFICATION_IND, EMI.HEADLINE_INDEX_ID, EMI.FAMILY_ID, EMI.follow_exch_cal_ind  from EQI.eqi_m_index emi
where index_id in (
    select index_id from eqi_r_index_idfication where index_idfication_value in (
    'SPGCXQUP'
    ) and identifier_id = 57
)

-- check if there are any entries in prfl table
select * from EQI.EQI_H_INDEX_PRFL ehp
where index_id in (
    select index_id from eqi_r_index_idfication where index_idfication_value in (
    'SPGCXQUP'
    ) and identifier_id = 57
)



--backup
select * from EQI.EQI_M_INDEX
where index_id in (
     select index_id from eqi_r_index_idfication where index_idfication_value in (
    'SPGCXQUP'
    ) and identifier_id = 57   
)

update EQI.EQI_M_INDEX emi
set EMI.FOLLOW_EXCH_CAL_IND = 2
where index_id in (
    select index_id from eqi_r_index_idfication where index_idfication_value in (
    'SPGCXQUP'
    ) and identifier_id = 57
)