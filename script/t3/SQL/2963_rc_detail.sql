--alter session schema to EQI
alter session set current_schema=eqi

select * from EQI.EQI_M_INDEX emi
where EMI.INDEX_ID IN (
    select ERI.INDEX_ID 
    from EQI.EQI_R_INDEX_IDFICATION eri
    where ERI.INDEX_IDFICATION_VALUE IN('SPXT12UT','SPAXRC15')
        and ERI.IDENTIFIER_ID=57
);


SELECT pkg_util.get_index_idfication_value (index_id, 57) as index_code, a.*
    FROM EQI_T_DY_INDEX_RISK_DTL a
   WHERE a.index_id in( 20065963,1009035018)
ORDER BY index_value_date