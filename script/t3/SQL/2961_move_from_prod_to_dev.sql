--2961 move from prod to dev status

--alter session schema to EQI
alter session set current_schema=eqi


--verify indices in correct Dev state 503
select index_id, family_id, classification_ind, headline_index_id from eqi_m_index 
where index_id in (
select index_id from eqi_r_index_idfication where index_idfication_value in (
'recalc_STMOMNTR',
'recalc_STMOMNTRUSD',
'recalc_STMOMPR',
'recalc_STMOMPRUSD',
'recalc_STMOMTR',
'recalc_STMOMTRUSD',
'recalc_STXSBDVN',
'recalc_STXSBDVNUSD',
'recalc_STXSBDVP',
'recalc_STXSBDVPUSD',
'recalc_STXSBDVT',
'recalc_STXSBDVTUSD'
) and identifier_id = 57)


--Verify Indices calculated up-to-date
select * from eqi_t_dy_index_values where index_id in (
select index_id from eqi_r_index_idfication where index_idfication_value in (
'recalc_STMOMNTR',
'recalc_STMOMNTRUSD',
'recalc_STMOMPR',
'recalc_STMOMPRUSD',
'recalc_STMOMTR',
'recalc_STMOMTRUSD',
'recalc_STXSBDVN',
'recalc_STXSBDVNUSD',
'recalc_STXSBDVP',
'recalc_STXSBDVPUSD',
'recalc_STXSBDVT',
'recalc_STXSBDVTUSD'
) and identifier_id = 57) and index_value_date >= sysdate -2

--backup

--verify indices in correct Dev state 503
select * from eqi_m_index 
where index_id in (
select index_id from eqi_r_index_idfication where index_idfication_value in (
'recalc_STMOMNTR',
'recalc_STMOMNTRUSD',
'recalc_STMOMPR',
'recalc_STMOMPRUSD',
'recalc_STMOMTR',
'recalc_STMOMTRUSD',
'recalc_STXSBDVN',
'recalc_STXSBDVNUSD',
'recalc_STXSBDVP',
'recalc_STXSBDVPUSD',
'recalc_STXSBDVT',
'recalc_STXSBDVTUSD'
) and identifier_id = 57)

select * from EQI.EQI_M_INDEX_FAMILY
where family_id=2000

--Move indices to dev state
update eqi_m_index set  classification_ind = 503,--previous 502
family_id = 2000 --previous 9056
where index_id in (
select index_id from eqi_r_index_idfication where index_idfication_value in (
'recalc_STMOMNTR',
'recalc_STMOMNTRUSD',
'recalc_STMOMPR',
'recalc_STMOMPRUSD',
'recalc_STMOMTR',
'recalc_STMOMTRUSD',
'recalc_STXSBDVN',
'recalc_STXSBDVNUSD',
'recalc_STXSBDVP',
'recalc_STXSBDVPUSD',
'recalc_STXSBDVT',
'recalc_STXSBDVTUSD'
) and identifier_id = 57)