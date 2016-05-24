'DJSKC2',
'DJSKC2D',
'DJSKC2DT',
'DJSKC2T'


alter session set current_schema=eqi


select * from eqi_r_index_idfication 
where index_idfication_value in (
'DJSKC2',
'DJSKC2D',
'DJSKC2DT',
'DJSKC2T'
) and identifier_id = 57


select * from EQI_R_INDEX_WKY_CLSE_DY
where index_id in (
1009035983,
1009035968,
1009035973,
1009035978
)
/*
index id:
1009035983
1009035968
1009035973
1009035978
*/

select index_id, forex_set_id, classification_ind from eqi_m_index 
where index_id in (
1009035983,
1009035968,
1009035973,
1009035978
)

-- get 'ASIA_SPOT_FOREX_SET' id = 20244
select * from EQI.EQI_M_SET mset
where MSET.SET_NAME='ASIA_SPOT_FOREX_SET'




-- backup current eqi_m_index related rows

select * from EQI.EQI_M_INDEX where index_id in (
1009035983,
1009035968,
1009035973,
1009035978
)


--update forex set id to 20244

update EQI.EQI_M_INDEX emi
set EMI.FOREX_SET_ID=20244 --previous 5
where EMI.INDEX_ID in (
1009035983,
1009035968,
1009035973,
1009035978
)

--backup again

select * from EQI.EQI_M_INDEX where index_id in (
1009035983,
1009035968,
1009035973,
1009035978
)


select * from EQI.EQI_R_INDEX_IDFICATION where index_id in (
1009035983,
1009035968,
1009035973,
1009035978
)


select * from EQI.EQI_R_INDEX_WKY_CLSE_DY where index_id in (
1009035983,
1009035968,
1009035973,
1009035978
)


--update EQI_R_INDEX_IDFICATION
update EQI.EQI_M_INDEX EMI
set EMI.EFFECTIVE_FROM_DATE='30-Dec-2005'--previous 12-Apr-2013
where EMI.INDEX_ID in (
1009035983,
1009035968,
1009035973,
1009035978
)

update EQI.EQI_R_INDEX_IDFICATION eri
set ERI.EFFECTIVE_FROM_DATE='30-Dec-2005'--previous 12-Apr-2013
where ERI.INDEX_ID in (
1009035983,
1009035968,
1009035973,
1009035978
)

update EQI.EQI_R_INDEX_WKY_CLSE_DY ewc
set ewc.EFFECTIVE_FROM_DATE='30-Dec-2005'--previous 12-Apr-2013
where ewc.INDEX_ID in (
1009035983,
1009035968,
1009035973,
1009035978
)
