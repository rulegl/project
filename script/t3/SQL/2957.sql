--alter session schema to EQI
alter session set current_schema=eqi

select * from EQI.EQI_M_INDEX emi
where EMI.INDEX_ID in (
    select ERI.INDEX_ID 
    from EQI.EQI_R_INDEX_IDFICATION eri
    where ERI.INDEX_IDFICATION_VALUE in ('SPGCLXQP','SPPAULMXK')
        and ERI.IDENTIFIER_ID=57
);

