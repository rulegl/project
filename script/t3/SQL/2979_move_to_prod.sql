/*
Hello  team,

Please move below index into production under ¡°EUROPE CALCULATION GROUP¡±, and change index classification to "standard". Thank you,
  
INDEX CODE    INDEX NAME
SPEU50ES    S&P Euro 50 Equal Weight Synthetic 5% PR Index EUR
*/

--verify indices in correct Dev state 503
select index_id, family_id, classification_ind, headline_index_id from eqi_m_index 
where index_id in (
    select index_id from eqi_r_index_idfication where index_idfication_value in (
    'SPEU50ES'
    ) and identifier_id = 57
)


--Verify Indices calculated up-to-date
select * from eqi_t_dy_index_values where index_id in (
select index_id from eqi_r_index_idfication where index_idfication_value in (
'SPEU50ES'
) and identifier_id = 57) and index_value_date >= sysdate -4

select * from EQI.EQI_M_INDEX_FAMILY mif
where upper(MIF.FAMILY_NAME) = 'EUROPE CALCULATION GROUP'

-- family id is 3010
select * from eqi_m_index 
where index_id in (
    select index_id from eqi_r_index_idfication where index_idfication_value in (
    'SPEU50ES'
    ) and identifier_id = 57
)

--Move indices to PROD
update eqi_m_index set  classification_ind = 501,--previous 503, and 501 means standard
family_id = 3010 --previous 2000
where index_id in (
    select index_id from eqi_r_index_idfication where index_idfication_value in (
    'SPEU50ES'
    ) and identifier_id = 57
)