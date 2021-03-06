SET DEFINE OFF;
Insert into EQI.EQI_M_INDEX
   (INDEX_ID, INDEX_TYPE_ID, ACTIVE_IND, EFFECTIVE_FROM_DATE, PARENT_INDEX_ID, 
    BASE_CCY_ID, BASE_VALUE, BASE_DATE, CALCULATION_IND, FOREX_SET_ID, 
    CALC_STRATEGY, PRICE_TYPE, STATE, PRIORITY, TIME_ZONE_ID, 
    STOP_TIME_DELAY, FAMILY_ID, HEADLINE_INDEX_ID, METHODOLOGY_ID, TAX_RATE_SET_ID, 
    HEDGED_PARENT_INDEX_ID, HEDGE_SET_ID, COMP_TYPE, START_TIME, STOP_TIME, 
    FRM_DATE_CUSTOM_IND, CALC_DEPENDENCY_LEVEL, DIVIDEND_PTS_INDEX_ID, IWF_TYPE_ID, DIV_DILUTED_IND, 
    SHOW_DCR_MKT_CAP, IWF_USAGE_IND, REAL_TIME_CAPTURE_IND, WEIGHTS_CALC_IND, CLASSIFICATION_IND, 
    DIVIDEND_REINVEST_IND, NEXT_DY_FOREX_IND, ASSET_TYPE_ID, DIVISOR_UPLOAD_IND, RECALC_UPLOAD_IND, 
    FOLLOW_EXCH_CAL_IND, IS_REAL_TIME_INDEX, ASSET_SUB_TYPE_ID, REL_ROLL_WTS_CALC_IND, TR_NTR_DIV_NDO_CALC_IND, 
    LAG_DAYS_EFFECTIVE_LTM, LTM_INDEX_RETURN_CALC_IND)
 Values
   (1007680518, 7, 1, TO_DATE('06/29/2012 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 1009037808, 
    38, 200, TO_DATE('06/29/2012 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 1, 2223, 
    'SYSTEM', 'CLOSE', 'PROD', 10, 261, 
    0, 8200, 21171110, 6, 71, 
    21171110, 2225, 10, TO_DATE('01/01/1970 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), TO_DATE('01/01/1970 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 
    0, 97, 0, 4001, 1, 
    0, 1, 0, 1, 503, 
    0, 0, 1, 0, 0, 
    0, 0, 9, 0, 0, 
    0, 0);
COMMIT;
