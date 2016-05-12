--alter session schema to EQI
alter session set current_schema=eqi

--search index ID by index idfication value
select * from EQI.EQI_M_INDEX emi
where EMI.INDEX_ID = (
    select ERI.INDEX_ID 
    from EQI.EQI_R_INDEX_IDFICATION eri
    where ERI.INDEX_IDFICATION_VALUE = 'SPAXRC15'
        --and ERI.IDENTIFIER_ID=52
);

--find generate grp id by report id
select * from EQI.EQI_M_CR_GEN_GRP cgg
where CGG.GEN_GRP_ID =
(
    select CR.GEN_GRP_ID from EQI.EQI_T_CR_REPORT cr
    where CR.REPORT_ID=6315
    
);