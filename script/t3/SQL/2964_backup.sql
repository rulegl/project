SET DEFINE OFF;
Insert into EQI.EQI_M_INDEX
   (INDEX_ID, INDEX_TYPE_ID, ACTIVE_IND, EFFECTIVE_FROM_DATE, PARENT_INDEX_ID, 
    BASE_CCY_ID, BASE_VALUE, BASE_DATE, CALCULATION_IND, FOREX_SET_ID, 
    CALC_STRATEGY, PRICE_TYPE, STATE, PRIORITY, TIME_ZONE_ID, 
    STOP_TIME_DELAY, FAMILY_ID, HEADLINE_INDEX_ID, REINVESTMENT_FREQUENCY_ID, METHODOLOGY_ID, 
    COMP_TYPE, START_TIME, STOP_TIME, FRM_DATE_CUSTOM_IND, CALC_DEPENDENCY_LEVEL, 
    DIVIDEND_PTS_INDEX_ID, IWF_TYPE_ID, DIV_DILUTED_IND, SHOW_DCR_MKT_CAP, IWF_USAGE_IND, 
    REAL_TIME_CAPTURE_IND, WEIGHTS_CALC_IND, CLASSIFICATION_IND, DIVIDEND_REINVEST_IND, NEXT_DY_FOREX_IND, 
    ASSET_TYPE_ID, DIVISOR_UPLOAD_IND, RECALC_UPLOAD_IND, FOLLOW_EXCH_CAL_IND, IS_REAL_TIME_INDEX, 
    ASSET_SUB_TYPE_ID, REL_ROLL_WTS_CALC_IND, TR_NTR_DIV_NDO_CALC_IND)
 Values
   (1009035613, 4, 1, TO_DATE('03/31/2000 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 1009035718, 
    36, 1000, TO_DATE('03/31/2000 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 1, 20244, 
    'SYSTEM', 'CLOSE', 'DEV', 10, 261, 
    0, 2000, 1009035718, 31884, 3, 
    1, TO_DATE('01/01/1970 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), TO_DATE('01/01/1970 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 0, 99, 
    0, 4001, 1, 0, 1, 
    0, 1, 503, 0, 0, 
    1, 0, 0, 1, 0, 
    9, 0, 0);
Insert into EQI.EQI_M_INDEX
   (INDEX_ID, INDEX_TYPE_ID, ACTIVE_IND, EFFECTIVE_FROM_DATE, PARENT_INDEX_ID, 
    BASE_CCY_ID, BASE_VALUE, BASE_DATE, CALCULATION_IND, FOREX_SET_ID, 
    CALC_STRATEGY, PRICE_TYPE, STATE, PRIORITY, TIME_ZONE_ID, 
    STOP_TIME_DELAY, FAMILY_ID, HEADLINE_INDEX_ID, REINVESTMENT_FREQUENCY_ID, METHODOLOGY_ID, 
    TAX_RATE_SET_ID, COMP_TYPE, START_TIME, STOP_TIME, FRM_DATE_CUSTOM_IND, 
    CALC_DEPENDENCY_LEVEL, DIVIDEND_PTS_INDEX_ID, IWF_TYPE_ID, DIV_DILUTED_IND, SHOW_DCR_MKT_CAP, 
    IWF_USAGE_IND, REAL_TIME_CAPTURE_IND, WEIGHTS_CALC_IND, CLASSIFICATION_IND, DIVIDEND_REINVEST_IND, 
    NEXT_DY_FOREX_IND, ASSET_TYPE_ID, DIVISOR_UPLOAD_IND, RECALC_UPLOAD_IND, FOLLOW_EXCH_CAL_IND, 
    IS_REAL_TIME_INDEX, ASSET_SUB_TYPE_ID, REL_ROLL_WTS_CALC_IND, TR_NTR_DIV_NDO_CALC_IND)
 Values
   (1009035618, 5, 1, TO_DATE('03/31/2000 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 1009035718, 
    36, 1000, TO_DATE('03/31/2000 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 1, 20244, 
    'SYSTEM', 'CLOSE', 'DEV', 10, 261, 
    0, 2000, 1009035718, 31889, 4, 
    71, 1, TO_DATE('01/01/1970 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), TO_DATE('01/01/1970 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 0, 
    99, 0, 4001, 1, 0, 
    1, 0, 1, 503, 0, 
    0, 1, 0, 0, 1, 
    0, 9, 0, 0);
Insert into EQI.EQI_M_INDEX
   (INDEX_ID, INDEX_TYPE_ID, ACTIVE_IND, EFFECTIVE_FROM_DATE, BASE_CCY_ID, 
    BASE_VALUE, BASE_DATE, CALCULATION_IND, FOREX_SET_ID, CALC_STRATEGY, 
    PRICE_TYPE, STATE, PRIORITY, TIME_ZONE_ID, STOP_TIME_DELAY, 
    FAMILY_ID, METHODOLOGY_ID, COMP_TYPE, START_TIME, STOP_TIME, 
    FRM_DATE_CUSTOM_IND, CALC_DEPENDENCY_LEVEL, DIVIDEND_PTS_INDEX_ID, IWF_TYPE_ID, DIV_DILUTED_IND, 
    SHOW_DCR_MKT_CAP, IWF_USAGE_IND, REAL_TIME_CAPTURE_IND, WEIGHTS_CALC_IND, CLASSIFICATION_IND, 
    DIVIDEND_REINVEST_IND, NEXT_DY_FOREX_IND, ASSET_TYPE_ID, DIVISOR_UPLOAD_IND, RECALC_UPLOAD_IND, 
    FOLLOW_EXCH_CAL_IND, IS_REAL_TIME_INDEX, ASSET_SUB_TYPE_ID, REL_ROLL_WTS_CALC_IND, TR_NTR_DIV_NDO_CALC_IND)
 Values
   (1009035718, 1, 1, TO_DATE('03/31/2000 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 36, 
    1000, TO_DATE('03/31/2000 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 1, 20244, 'SYSTEM', 
    'CLOSE', 'DEV', 10, 261, 0, 
    2000, 1, 1, TO_DATE('01/01/1970 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), TO_DATE('01/01/1970 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 
    0, 100, 0, 4001, 1, 
    0, 1, 0, 1, 503, 
    0, 0, 1, 0, 0, 
    1, 0, 9, 0, 0);
COMMIT;