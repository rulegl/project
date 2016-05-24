--verify indices in correct Dev state 503
select index_id, family_id, classification_ind, headline_index_id from eqi_m_index 
where index_id in (
select index_id from eqi_r_index_idfication where index_idfication_value in (
'SPAXHCUP',
'SPAXHCUN',
'SPAXHCUT'
) and identifier_id = 57)

--Verify Indices calculated up-to-date
select * from eqi_t_dy_index_values where index_id in (
select index_id from eqi_r_index_idfication where index_idfication_value in (
'SPAXHCUP',
'SPAXHCUN',
'SPAXHCUT'
) and identifier_id = 57) and index_value_date >= sysdate -2

--Move indices to PROD
update eqi_m_index set  classification_ind = 501
where index_id in (
select index_id from eqi_r_index_idfication where index_idfication_value in (
'SPAXHCUP',
'SPAXHCUN',
'SPAXHCUT'
) and identifier_id = 57)