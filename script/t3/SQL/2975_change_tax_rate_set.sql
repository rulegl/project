'WTEHITC'

--alter session schema to EQI
alter session set current_schema=eqi

select EMI.INDEX_ID, EMI.CLASSIFICATION_IND, EMI.HEADLINE_INDEX_ID, EMI.FAMILY_ID, EMI.TAX_RATE_SET_ID from EQI.EQI_M_INDEX EMI
where index_id in (
    select index_id from eqi_r_index_idfication where index_idfication_value in (
    'WTEHITC'
    ) and identifier_id = 57
)


select * from EQI_H_INDEX_PRFL where index_id = 1007680518
--index id 1007680518

select * from EQI.EQI_M_SET mset
where MSET.SET_ID=71

select * from EQI.EQI_M_SET mset
where MSET.SET_NAME='WisdomTree Canadian Tax Rate Set'

-- set ID 98 is WisdomTree Canadian Tax Rate Set
--back up
select * from EQI.EQI_M_INDEX
where index_id=1007680518

update EQI.EQI_M_INDEX emi
set EMI.TAX_RATE_SET_ID=98
where index_id=1007680518