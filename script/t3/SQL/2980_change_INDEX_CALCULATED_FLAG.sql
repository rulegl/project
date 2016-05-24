alter session set current_schema=eqi
/*
DJIATTMNTR
DJIAJTN
DJIAJTHN
*/

select * from EQI.EQI_M_INDEX 
where index_id in (
    select index_id from eqi_r_index_idfication where index_idfication_value in (
        'DJIATTMNTR',
        'DJIAJTN',
        'DJIAJTHN'
    ) and identifier_id = 57
)

--backup

-- change INDEX CALCULATED FLAG which means CALCULATION_IND

update EQI.EQI_M_INDEX emi
set EMI.CALCULATION_IND=0
where index_id in (
        select index_id from eqi_r_index_idfication where index_idfication_value in (
        'DJIATTMNTR',
        'DJIAJTN',
        'DJIAJTHN'
    ) and identifier_id = 57
)

--
/*
1009039548
1009039553
1009039558
*/

select * from EQI.EQI_R_INDEX_IDFICATION where index_id in (
1009039548,
1009039553,
1009039558
)
order by effective_from_date desc


select * from EQI.EQI_R_INDEX_WKY_CLSE_DY where index_id in (
1009039548,
1009039553,
1009039558
)

--back up
select * from EQI.EQI_M_INDEX 
where index_id in (
    select index_id from eqi_r_index_idfication where index_idfication_value in (
        'DJIATTMNTR',
        'DJIAJTN',
        'DJIAJTHN'
    ) and identifier_id = 57
)

-- change

update EQI.EQI_M_INDEX emi
set EMI.BASE_DATE='1-Dec-2003', EMI.BASE_VALUE=14379.52
where index_id in (
        select index_id from eqi_r_index_idfication where index_idfication_value in (
        'DJIATTMNTR'
    ) and identifier_id = 57
)


update EQI.EQI_M_INDEX emi
set EMI.BASE_DATE='1-Dec-2003', EMI.BASE_VALUE=1581747.20
where index_id in (
        select index_id from eqi_r_index_idfication where index_idfication_value in (
        'DJIAJTN'
    ) and identifier_id = 57
)


update EQI.EQI_M_INDEX emi
set EMI.BASE_DATE='1-Dec-2003', EMI.BASE_VALUE=1581747.20
where index_id in (
        select index_id from eqi_r_index_idfication where index_idfication_value in (
        'DJIAJTHN'
    ) and identifier_id = 57
)
