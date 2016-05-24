--2962 move to prod

--alter session schema to EQI
alter session set current_schema=eqi


--verify indices in correct Dev state 503
select index_id, family_id, classification_ind, headline_index_id from eqi_m_index 
where index_id in (
select index_id from eqi_r_index_idfication where index_idfication_value in (
'STMOMNTR2',
'STMOMNTRUSD2',
'STMOMPR2',
'STMOMPRUSD2',
'STMOMTR2',
'STMOMTRUSD2',
'STXSBDVN2',
'STXSBDVNUSD2',
'STXSBDVP2',
'STXSBDVPUSD2',
'STXSBDVT2',
'STXSBDVTUSD2'
) and identifier_id = 57)


--Verify Indices calculated up-to-date
select * from eqi_t_dy_index_values where index_id in (
select index_id from eqi_r_index_idfication where index_idfication_value in (
'STMOMNTR2',
'STMOMNTRUSD2',
'STMOMPR2',
'STMOMPRUSD2',
'STMOMTR2',
'STMOMTRUSD2',
'STXSBDVN2',
'STXSBDVNUSD2',
'STXSBDVP2',
'STXSBDVPUSD2',
'STXSBDVT2',
'STXSBDVTUSD2'
) and identifier_id = 57) and index_value_date >= sysdate -4

--9056
select * from EQI.EQI_M_INDEX_FAMILY mif
where upper(MIF.FAMILY_NAME) = 'CUSTOM EUROPE'

--Move indices to PROD
update eqi_m_index set  classification_ind = 502,--previous 503
family_id = 9056 --previous 2000
where index_id in (
select index_id from eqi_r_index_idfication where index_idfication_value in (
'STMOMNTR2',
'STMOMNTRUSD2',
'STMOMPR2',
'STMOMPRUSD2',
'STMOMTR2',
'STMOMTRUSD2',
'STXSBDVN2',
'STXSBDVNUSD2',
'STXSBDVP2',
'STXSBDVPUSD2',
'STXSBDVT2',
'STXSBDVTUSD2'
) and identifier_id = 57)