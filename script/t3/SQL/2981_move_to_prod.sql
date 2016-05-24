/*
Hello team,

Please move below indices to "Strategy ¨C US" calc group, and change index classification to "standard". Thank you!
  
INDEX CODE    INDEX NAME
DJTCNOUP    Dow Jones/Tencent China Offshore 100 Index (USD)
DJTCNOUT    Dow Jones/Tencent China Offshore 100 Index TR (USD)
DJTCNOUN    Dow Jones/Tencent China Offshore 100 Index NTR (USD)
DJTCNOCP    Dow Jones/Tencent China Offshore 100 Index (CNY)
DJTCNOCT    Dow Jones/Tencent China Offshore 100 Index TR (CNY)
DJTCNOCN    Dow Jones/Tencent China Offshore 100 Index NTR (CNY)
 
 
INDEX CODE    INDEX NAME
DJTCOIUP    Dow Jones/Tencent China Offshore Internet Index (USD)
DJTCOIUT    Dow Jones/Tencent China Offshore Internet Index TR (USD)
DJTCOIUN    Dow Jones/Tencent China Offshore Internet Index NTR (USD)
DJTCOICP    Dow Jones/Tencent China Offshore Internet Index (CNY)
DJTCOICT    Dow Jones/Tencent China Offshore Internet Index TR (CNY)
DJTCOICN    Dow Jones/Tencent China Offshore Internet Index NTR (CNY)
*/
/* 12 in total
'DJTCNOUP',
'DJTCNOUT',
'DJTCNOUN',
'DJTCNOCP',
'DJTCNOCT',
'DJTCNOCN',
'DJTCOIUP',
'DJTCOIUT',
'DJTCOIUN',
'DJTCOICP',
'DJTCOICT',
'DJTCOICN
*/

select * from EQI.EQI_M_INDEX
where index_id in (
    select index_id from eqi_r_index_idfication where index_idfication_value in (
        'DJTCNOUP',
        'DJTCNOUT',
        'DJTCNOUN',
        'DJTCNOCP',
        'DJTCNOCT',
        'DJTCNOCN',
        'DJTCOIUP',
        'DJTCOIUT',
        'DJTCOIUN',
        'DJTCOICP',
        'DJTCOICT',
        'DJTCOICN'
    ) and identifier_id = 57
)


--11002
select * from EQI.EQI_M_INDEX_FAMILY mif
where lower(MIF.FAMILY_NAME) = 'strategy - us'

--Move indices to PROD
update eqi_m_index set  classification_ind = 501,--previous 503
family_id = 11002 --previous 2000
where index_id in (
select index_id from eqi_r_index_idfication where index_idfication_value in (
        'DJTCNOUP',
        'DJTCNOUT',
        'DJTCNOUN',
        'DJTCNOCP',
        'DJTCNOCT',
        'DJTCNOCN',
        'DJTCOIUP',
        'DJTCOIUT',
        'DJTCOIUN',
        'DJTCOICP',
        'DJTCOICT',
        'DJTCOICN'
) and identifier_id = 57)