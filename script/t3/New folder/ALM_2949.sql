--alter session schema to EQI
alter session set current_schema=eqi

select * from EQI.EQI_M_INDEX emi
where EMI.INDEX_ID = (
    select ERI.INDEX_ID 
    from EQI.EQI_R_INDEX_IDFICATION eri
    where ERI.INDEX_IDFICATION_VALUE = 'SPGGCD'
        and ERI.IDENTIFIER_ID=57
);

select * from EQI.EQI_R_INDEX_WKY_CLSE_DY 
where index_id = 1001568
