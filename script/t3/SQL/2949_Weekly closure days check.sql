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



select * from EQI.EQI_R_INDEX_HOL_CLDR holi
where HOLI.INDEX_ID=1001568
order by calendar_date desc



select * from EQI.EQI_R_INDEX_HOL_EXCEPTION holi
where HOLI.INDEX_ID=1001568
order by calendar_date desc

select * from EQI.EQI_M_INDEX where follow_exch_cal_ind=0