select * from EQI.EQI_T_DY_FEE_VALUES
where index_id in (
    select index_id from eqi_r_index_idfication where index_idfication_value in (
        'SPTD55G',
        'SPTDR55G'
    ) and identifier_id = 57
)


select * from EQI.EQI_M_INDEX
where index_id in (
    select index_id from eqi_r_index_idfication where index_idfication_value in (
        'SPTD55G',
        'SPTDR55G'
    ) and identifier_id = 57
)



select ERI.INDEX_IDFICATION_VALUE, ETD.EFFECTIVE_DATE, ETD.FEE_REDUCTION_VALUE 
from EQI.EQI_T_DY_FEE_VALUES etd inner join EQI.EQI_R_INDEX_IDFICATION eri
on  ETD.INDEX_ID in (21083888, 21083889) and 
    ERI.INDEX_IDFICATION_VALUE in ('SPTD55G','SPTDR55G') and 
    ETD.EFFECTIVE_DATE >= '31-May-2012'

--S:\IndexServices\T3\Support\UserRequests\AdhocReports\yongxun\