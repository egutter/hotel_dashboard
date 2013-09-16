
  CREATE TABLE RESERVATION_NAME 
   (	RESORT VARCHAR(20), 
	RESV_NAME_ID NUMERIC, 
	NAME_ID NUMERIC, 
	NAME_USAGE_TYPE VARCHAR(20) DEFAULT 'DG', 
	CONTACT_NAME_ID NUMERIC, 
	INSERT_DATE DATE, 
	INSERT_USER NUMERIC, 
	UPDATE_USER NUMERIC, 
	UPDATE_DATE DATE, 
	RESV_STATUS VARCHAR(20), 
	COMMISSION_CODE VARCHAR(20), 
	ADDRESS_ID NUMERIC, 
	PHONE_ID NUMERIC, 
	FAX_YN VARCHAR(1), 
	MAIL_YN VARCHAR(1), 
	PRINT_RATE_YN VARCHAR(1), 
	REPORT_ID VARCHAR(20), 
	RESV_NO NUMERIC, 
	CONFIRMATION_NO VARCHAR(50), 
	BEGIN_DATE DATE, 
	END_DATE DATE, 
	FAX_ID NUMERIC, 
	EMAIL_ID NUMERIC, 
	EMAIL_YN VARCHAR(1), 
	CONSUMER_YN VARCHAR(1) DEFAULT 'Y', 
	CREDIT_CARD_ID NUMERIC, 
	FINANCIALLY_RESPONSIBLE_YN VARCHAR(1) DEFAULT 'Y', 
	PAYMENT_METHOD VARCHAR(50), 
	INTERMEDIARY_YN VARCHAR(1) DEFAULT 'Y', 
	POSTING_ALLOWED_YN VARCHAR(1), 
	DISPLAY_COLOR VARCHAR(20), 
	ACTUAL_CHECK_IN_DATE DATE, 
	TRUNC_ACTUAL_CHECK_IN_DATE DATE, 
	ACTUAL_CHECK_OUT_DATE DATE, 
	TRUNC_ACTUAL_CHECK_OUT_DATE DATE, 
	CREDIT_LIMIT NUMERIC, 
	AUTHORIZED_BY NUMERIC, 
	PARENT_RESV_NAME_ID NUMERIC, 
	CANCELLATION_NO VARCHAR(50), 
	CANCELLATION_REASON_CODE VARCHAR(20), 
	CANCELLATION_REASON_DESC VARCHAR(2000), 
	ARRIVAL_TRANSPORT_TYPE VARCHAR(20), 
	ARRIVAL_STATION_CODE VARCHAR(20), 
	ARRIVAL_CARRIER_CODE VARCHAR(20), 
	ARRIVAL_TRANSPORT_CODE VARCHAR(20), 
	ARRIVAL_DATE_TIME DATE, 
	ARRIVAL_ESTIMATE_TIME DATE, 
	ARRIVAL_TRANPORTATION_YN VARCHAR(1) DEFAULT 'N', 
	ARRIVAL_COMMENTS VARCHAR(2000), 
	DEPARTURE_TRANSPORT_TYPE VARCHAR(20), 
	DEPARTURE_STATION_CODE VARCHAR(20), 
	DEPARTURE_CARRIER_CODE VARCHAR(20), 
	DEPARTURE_TRANSPORT_CODE VARCHAR(20), 
	DEPARTURE_DATE_TIME DATE, 
	DEPARTURE_ESTIMATE_TIME DATE, 
	DEPARTURE_TRANSPORTATION_YN VARCHAR(1) DEFAULT 'N', 
	DEPARTURE_COMMENTS VARCHAR(2000), 
	CANCELLATION_DATE DATE, 
	GUARANTEE_CODE VARCHAR(20), 
	WL_REASON_DESCRIPTION VARCHAR(2000), 
	WL_REASON_CODE VARCHAR(20), 
	WL_PRIORITY VARCHAR(20), 
	DO_NOT_MOVE_ROOM VARCHAR(1), 
	EXTERNAL_REFERENCE VARCHAR(50), 
	PARTY_CODE VARCHAR(50), 
	WALKIN_YN VARCHAR(1), 
	ORIGINAL_END_DATE DATE, 
	APPROVAL_AMOUNT_CALC_METHOD NUMERIC, 
	AMOUNT_PERCENT NUMERIC, 
	NAME_TAX_TYPE VARCHAR(20), 
	TAX_EXEMPT_NO VARCHAR(20), 
	ROOM_FEATURES VARCHAR(2000), 
	WL_TELEPHONE_NO VARCHAR(40), 
	VIDEO_CHECKOUT_YN VARCHAR(1), 
	DISCOUNT_AMT NUMERIC, 
	DISCOUNT_PRCNT NUMERIC, 
	DISCOUNT_REASON_CODE VARCHAR(20), 
	COMMISSION_PAID NUMERIC DEFAULT 0, 
	COMMISSION_HOLD_CODE VARCHAR(20), 
	TRUNC_BEGIN_DATE DATE, 
	TRUNC_END_DATE DATE, 
	SGUEST_NAME VARCHAR(80), 
	MEMBERSHIP_ID NUMERIC, 
	UDFC01 VARCHAR(200), 
	UDFC02 VARCHAR(200), 
	UDFC03 VARCHAR(200), 
	UDFC04 VARCHAR(200), 
	UDFC05 VARCHAR(200), 
	UDFC06 VARCHAR(200), 
	UDFC07 VARCHAR(200), 
	UDFC08 VARCHAR(200), 
	UDFC09 VARCHAR(200), 
	UDFC10 VARCHAR(200), 
	UDFC11 VARCHAR(200), 
	UDFC12 VARCHAR(200), 
	UDFC13 VARCHAR(200), 
	UDFC14 VARCHAR(200), 
	UDFC15 VARCHAR(200), 
	UDFC16 VARCHAR(200), 
	UDFC17 VARCHAR(200), 
	UDFC18 VARCHAR(200), 
	UDFC19 VARCHAR(200), 
	UDFC20 VARCHAR(200), 
	UDFC21 VARCHAR(200), 
	UDFC22 VARCHAR(200), 
	UDFC23 VARCHAR(200), 
	UDFC24 VARCHAR(200), 
	UDFC25 VARCHAR(200), 
	UDFC26 VARCHAR(200), 
	UDFC27 VARCHAR(200), 
	UDFC28 VARCHAR(200), 
	UDFC29 VARCHAR(200), 
	UDFC30 VARCHAR(200), 
	UDFC31 VARCHAR(200), 
	UDFC32 VARCHAR(200), 
	UDFC33 VARCHAR(200), 
	UDFC34 VARCHAR(200), 
	UDFC35 VARCHAR(200), 
	UDFC36 VARCHAR(200), 
	UDFC37 VARCHAR(200), 
	UDFC38 VARCHAR(200), 
	UDFC39 VARCHAR(200), 
	UDFC40 VARCHAR(200), 
	UDFN01 NUMERIC, 
	UDFN02 NUMERIC, 
	UDFN03 NUMERIC, 
	UDFN04 NUMERIC, 
	UDFN05 NUMERIC, 
	UDFN06 NUMERIC, 
	UDFN07 NUMERIC, 
	UDFN08 NUMERIC, 
	UDFN09 NUMERIC, 
	UDFN10 NUMERIC, 
	UDFN11 NUMERIC, 
	UDFN12 NUMERIC, 
	UDFN13 NUMERIC, 
	UDFN14 NUMERIC, 
	UDFN15 NUMERIC, 
	UDFN16 NUMERIC, 
	UDFN17 NUMERIC, 
	UDFN18 NUMERIC, 
	UDFN19 NUMERIC, 
	UDFN20 NUMERIC, 
	UDFN21 NUMERIC, 
	UDFN22 NUMERIC, 
	UDFN23 NUMERIC, 
	UDFN24 NUMERIC, 
	UDFN25 NUMERIC, 
	UDFN26 NUMERIC, 
	UDFN27 NUMERIC, 
	UDFN28 NUMERIC, 
	UDFN29 NUMERIC, 
	UDFN30 NUMERIC, 
	UDFN31 NUMERIC, 
	UDFN32 NUMERIC, 
	UDFN33 NUMERIC, 
	UDFN34 NUMERIC, 
	UDFN35 NUMERIC, 
	UDFN36 NUMERIC, 
	UDFN37 NUMERIC, 
	UDFN38 NUMERIC, 
	UDFN39 NUMERIC, 
	UDFN40 NUMERIC, 
	UDFD01 DATE, 
	UDFD02 DATE, 
	UDFD03 DATE, 
	UDFD04 DATE, 
	UDFD05 DATE, 
	UDFD06 DATE, 
	UDFD07 DATE, 
	UDFD08 DATE, 
	UDFD09 DATE, 
	UDFD10 DATE, 
	UDFD11 DATE, 
	UDFD12 DATE, 
	UDFD13 DATE, 
	UDFD14 DATE, 
	UDFD15 DATE, 
	UDFD16 DATE, 
	UDFD17 DATE, 
	UDFD18 DATE, 
	UDFD19 DATE, 
	UDFD20 DATE, 
	INSERT_ACTION_INSTANCE_ID NUMERIC, 
	DML_SEQ_NO NUMERIC, 
	BUSINESS_DATE_CREATED DATE, 
	TURNDOWN_YN VARCHAR(1), 
	ROOM_INSTRUCTIONS VARCHAR(500), 
	ROOM_SERVICE_TIME VARCHAR(20), 
	EVENT_ID NUMERIC, 
	REVENUE_TYPE_CODE VARCHAR(2000), 
	HURDLE NUMERIC, 
	HURDLE_OVERRIDE VARCHAR(1), 
	RATEABLE_VALUE NUMERIC, 
	RESTRICTION_OVERRIDE VARCHAR(1), 
	YIELDABLE_YN VARCHAR(1), 
	SGUEST_FIRSTNAME VARCHAR(80), 
	GUEST_LAST_NAME VARCHAR(80), 
	GUEST_FIRST_NAME VARCHAR(80), 
	GUEST_LAST_NAME_SDX VARCHAR(80), 
	GUEST_FIRST_NAME_SDX VARCHAR(80), 
	CHANNEL VARCHAR(40), 
	SHARE_SEQ_NO NUMERIC, 
	GUEST_SIGNATURE VARCHAR(3000), 
	EXTENSION_ID NUMERIC, 
	RESV_CONTACT_ID NUMERIC, 
	BILLING_CONTACT_ID NUMERIC, 
	RES_INSERT_SOURCE VARCHAR(20), 
	RES_INSERT_SOURCE_TYPE VARCHAR(40), 
	MASTER_SHARE VARCHAR(1), 
	REGISTRATION_CARD_NO VARCHAR(40), 
	TIAD VARCHAR(20), 
	PURPOSE_OF_STAY VARCHAR(20), 
	REINSTATE_DATE DATE, 
	PURGE_DATE DATE, 
	LAST_SETTLE_DATE DATE, 
	LAST_PERIODIC_FOLIO_DATE DATE, 
	PERIODIC_FOLIO_FREQ NUMERIC, 
	CONFIRMATION_LEG_NO NUMERIC, 
	GUEST_STATUS VARCHAR(20), 
	GUEST_TYPE VARCHAR(20), 
	CHECKIN_DURATION NUMERIC, 
	AUTHORIZER_ID NUMERIC, 
	LAST_ONLINE_PRINT_SEQ NUMERIC, 
	ENTRY_POINT VARCHAR(40), 
	ENTRY_DATE DATE, 
	PSEUDO_MEM_TYPE VARCHAR(20), 
	PSEUDO_MEM_TOTAL_POINTS NUMERIC, 
	FOLIO_TEXT1 VARCHAR(50), 
	FOLIO_TEXT2 VARCHAR(50), 
	COMP_TYPE_CODE VARCHAR(20), 
	UNI_CARD_ID VARCHAR(20), 
	EXP_CHECKINRES_ID NUMERIC, 
	ORIGINAL_BEGIN_DATE DATE, 
	OWNER_FF_FLAG VARCHAR(1), 
	COMMISSION_PAYOUT_TO VARCHAR(1), 
	PRE_CHARGING_YN VARCHAR(1), 
	POST_CHARGING_YN VARCHAR(1), 
	POST_CO_FLAG VARCHAR(1), 
	FOLIO_CLOSE_DATE DATE, 
	SCHEDULE_CHECKOUT_YN VARCHAR(1), 
	CUSTOM_REFERENCE VARCHAR(50), 
	GUARANTEE_CODE_PRE_CI VARCHAR(20), 
	AWARD_MEMBERSHIP_ID NUMERIC, 
	ESIGNED_REG_CARD_NAME VARCHAR(200), 
	STATISTICAL_ROOM_TYPE NUMERIC, 
	STATISTICAL_RATE_TIER NUMERIC, 
	YM_CODE VARCHAR(20), 
	KEY_VALID_UNTIL DATE, 
	KEY_PIN_CODE VARCHAR(20), 
	PRE_REGISTERED_YN VARCHAR(1), 
	TAX_REGISTRATION_NO NUMERIC, 
	VISA_NUMBER VARCHAR(40), 
	VISA_ISSUE_DATE DATE, 
	VISA_EXPIRATION_DATE DATE, 
	TAX_NO_OF_STAYS NUMERIC, 
	ASB_PRORATED_YN VARCHAR(1), 
	AUTO_SETTLE_DAYS NUMERIC, 
	AUTO_SETTLE_YN VARCHAR(1), 
	SPLIT_FROM_RESV_NAME_ID NUMERIC, 
	NEXT_DESTINATION VARCHAR(300), 
	DATE_OF_ARRIVAL_IN_COUNTRY DATE, 
	PRE_ARR_REVIEWED_DT DATE, 
	PRE_ARR_REVIEWED_USER NUMERIC, 
	BONUS_CHECK_ID NUMERIC, 
	MOBILE_AUDIO_KEY_YN VARCHAR(1), 
	DIRECT_BILL_VERIFY_RESPONSE VARCHAR(20), 
	ADDRESSEE_NAME_ID NUMERIC, 
	SUPER_SEARCH_INDEX_TEXT VARCHAR(100), 
	AUTO_CHECKIN_YN VARCHAR(1)
   ) ;
 

   COMMENT ON COLUMN RESERVATION_NAME.RESORT IS 'The property that the record belongs to';
 
   COMMENT ON COLUMN RESERVATION_NAME.RESV_NAME_ID IS 'Sequence generated no. & part of concatenated primary key';
 
   COMMENT ON COLUMN RESERVATION_NAME.NAME_ID IS 'Guest Id. Gets its value from name.name_id';
 
   COMMENT ON COLUMN RESERVATION_NAME.NAME_USAGE_TYPE IS 'To store the guest type.';
 
   COMMENT ON COLUMN RESERVATION_NAME.CONTACT_NAME_ID IS 'Not used.';
 
   COMMENT ON COLUMN RESERVATION_NAME.INSERT_DATE IS 'The date the record was created';
 
   COMMENT ON COLUMN RESERVATION_NAME.INSERT_USER IS 'The user that created the record';
 
   COMMENT ON COLUMN RESERVATION_NAME.UPDATE_USER IS 'The user that modified the record';
 
   COMMENT ON COLUMN RESERVATION_NAME.UPDATE_DATE IS 'The date the record was modified';
 
   COMMENT ON COLUMN RESERVATION_NAME.RESV_STATUS IS 'This is a status of the reservation.';
 
   COMMENT ON COLUMN RESERVATION_NAME.COMMISSION_CODE IS 'The commission code for this reservation name. For future use .';
 
   COMMENT ON COLUMN RESERVATION_NAME.ADDRESS_ID IS 'This column stores an address ID for the guest.';
 
   COMMENT ON COLUMN RESERVATION_NAME.PHONE_ID IS 'This column stores the phone number of the guest.';
 
   COMMENT ON COLUMN RESERVATION_NAME.FAX_YN IS 'Should a confirmation be faxed for this reservation name? Y/N';
 
   COMMENT ON COLUMN RESERVATION_NAME.MAIL_YN IS 'Should a confirmation be mailed for this reservation name? Y/N';
 
   COMMENT ON COLUMN RESERVATION_NAME.PRINT_RATE_YN IS 'This control whether rate info will be printed in confirmation_letter';
 
   COMMENT ON COLUMN RESERVATION_NAME.REPORT_ID IS 'Not used.';
 
   COMMENT ON COLUMN RESERVATION_NAME.RESV_NO IS 'Not used in PMS currently.';
 
   COMMENT ON COLUMN RESERVATION_NAME.CONFIRMATION_NO IS 'Confirmation number of the reservation & is allocated whenever is made & inventory is taken .';
 
   COMMENT ON COLUMN RESERVATION_NAME.BEGIN_DATE IS 'Start date of reservation with time component.';
 
   COMMENT ON COLUMN RESERVATION_NAME.END_DATE IS 'End date of Reservation with time component.';
 
   COMMENT ON COLUMN RESERVATION_NAME.FAX_ID IS 'This column stores the fax number of the guest. Not used';
 
   COMMENT ON COLUMN RESERVATION_NAME.EMAIL_ID IS 'This columns stores EMAIL ADDRESS of the guest. Not used';
 
   COMMENT ON COLUMN RESERVATION_NAME.EMAIL_YN IS 'Should you send an e-mail confirmation to the guest? Y/N Not used';
 
   COMMENT ON COLUMN RESERVATION_NAME.CONSUMER_YN IS 'Is a consumer of the product in reservation_detail.';
 
   COMMENT ON COLUMN RESERVATION_NAME.CREDIT_CARD_ID IS 'This column connects NAME_CREDIT_CARD table to get credit card nunber, type etc .';
 
   COMMENT ON COLUMN RESERVATION_NAME.FINANCIALLY_RESPONSIBLE_YN IS 'The actual guest from whom payment has to be recovered (direct guest).';
 
   COMMENT ON COLUMN RESERVATION_NAME.PAYMENT_METHOD IS 'Indicates the payment method to be used to pay for the reservation.';
 
   COMMENT ON COLUMN RESERVATION_NAME.INTERMEDIARY_YN IS 'Not used';
 
   COMMENT ON COLUMN RESERVATION_NAME.POSTING_ALLOWED_YN IS 'Flag used by interface program during checking';
 
   COMMENT ON COLUMN RESERVATION_NAME.DISPLAY_COLOR IS 'The color to display this reservation on room grid displays. This needs to be analyzed further.';
 
   COMMENT ON COLUMN RESERVATION_NAME.ACTUAL_CHECK_IN_DATE IS 'Usually will be begin date and will have the time component.';
 
   COMMENT ON COLUMN RESERVATION_NAME.TRUNC_ACTUAL_CHECK_IN_DATE IS 'Usually will be begin date and will have no time component.';
 
   COMMENT ON COLUMN RESERVATION_NAME.ACTUAL_CHECK_OUT_DATE IS 'This is the actual check out date with time component.';
 
   COMMENT ON COLUMN RESERVATION_NAME.TRUNC_ACTUAL_CHECK_OUT_DATE IS 'This is the actual check out date with no time component.';
 
   COMMENT ON COLUMN RESERVATION_NAME.CREDIT_LIMIT IS 'Not used';
 
   COMMENT ON COLUMN RESERVATION_NAME.AUTHORIZED_BY IS 'This stores the pmsp.logged_uid who authorizes the direct bill';
 
   COMMENT ON COLUMN RESERVATION_NAME.PARENT_RESV_NAME_ID IS 'This column connects this reservation with parent reservation.';
 
   COMMENT ON COLUMN RESERVATION_NAME.CANCELLATION_NO IS 'Both cancellation no. & confirmation no. are based on user-defined algorithms and is customized at site .';
 
   COMMENT ON COLUMN RESERVATION_NAME.CANCELLATION_REASON_CODE IS 'This is the code of reason for the cancellation of the reservation.';
 
   COMMENT ON COLUMN RESERVATION_NAME.CANCELLATION_REASON_DESC IS 'This is the free text to explain more about the Cancellation Reason , defautls to description of the code.';
 
   COMMENT ON COLUMN RESERVATION_NAME.ARRIVAL_TRANSPORT_TYPE IS 'Guest''s Mode of transportation.';
 
   COMMENT ON COLUMN RESERVATION_NAME.ARRIVAL_STATION_CODE IS 'This is the Identification of guest arrival station.';
 
   COMMENT ON COLUMN RESERVATION_NAME.ARRIVAL_CARRIER_CODE IS 'Carrier code of the mode of transportation (Airline No. or Railway No., etc.)';
 
   COMMENT ON COLUMN RESERVATION_NAME.ARRIVAL_TRANSPORT_CODE IS 'The actual code no. of the transportation';
 
   COMMENT ON COLUMN RESERVATION_NAME.ARRIVAL_DATE_TIME IS 'Scheduled arrival time of the transport';
 
   COMMENT ON COLUMN RESERVATION_NAME.ARRIVAL_ESTIMATE_TIME IS 'This is the arrival estimate time of the carrier or mode of transport';
 
   COMMENT ON COLUMN RESERVATION_NAME.ARRIVAL_TRANPORTATION_YN IS 'Is arrival transportion is required or not ? Y/N';
 
   COMMENT ON COLUMN RESERVATION_NAME.ARRIVAL_COMMENTS IS 'This is the comments regarding arrival of the guest.';
 
   COMMENT ON COLUMN RESERVATION_NAME.DEPARTURE_TRANSPORT_TYPE IS 'This is the mode of transportation.';
 
   COMMENT ON COLUMN RESERVATION_NAME.DEPARTURE_STATION_CODE IS 'The name of the station where the guest is departing from.';
 
   COMMENT ON COLUMN RESERVATION_NAME.DEPARTURE_CARRIER_CODE IS 'This is Departure carrier code';
 
   COMMENT ON COLUMN RESERVATION_NAME.DEPARTURE_TRANSPORT_CODE IS 'The actual code no of the transportation';
 
   COMMENT ON COLUMN RESERVATION_NAME.DEPARTURE_DATE_TIME IS 'This is the same as end date with time component.';
 
   COMMENT ON COLUMN RESERVATION_NAME.DEPARTURE_ESTIMATE_TIME IS 'This is the departure estimate time of the carrier or mode of transport';
 
   COMMENT ON COLUMN RESERVATION_NAME.DEPARTURE_TRANSPORTATION_YN IS 'Is arrival transportion is required or not ? Y/N';
 
   COMMENT ON COLUMN RESERVATION_NAME.DEPARTURE_COMMENTS IS 'This is the comments of the guest''s departue.';
 
   COMMENT ON COLUMN RESERVATION_NAME.CANCELLATION_DATE IS 'This is the date when the reservation was cancelled .';
 
   COMMENT ON COLUMN RESERVATION_NAME.GUARANTEE_CODE IS 'This is a guarantee code for the guest''s reservation.';
 
   COMMENT ON COLUMN RESERVATION_NAME.WL_REASON_DESCRIPTION IS 'The reason for which reservation was wait listed . free form text .';
 
   COMMENT ON COLUMN RESERVATION_NAME.WL_REASON_CODE IS 'This is the code of the reason for waitlisting';
 
   COMMENT ON COLUMN RESERVATION_NAME.WL_PRIORITY IS 'Tells which wait list reservation is more important to the hotel e.gHIGH, MEDIUM, LOW';
 
   COMMENT ON COLUMN RESERVATION_NAME.DO_NOT_MOVE_ROOM IS 'Not used.';
 
   COMMENT ON COLUMN RESERVATION_NAME.EXTERNAL_REFERENCE IS 'It identifies the source from which the reservation originated . eg Central Reservation System ( one for every hotel chain like Hilton , Sheraton etc) and crs transaction are sent to PMS .';
 
   COMMENT ON COLUMN RESERVATION_NAME.PARTY_CODE IS 'A party_code will be assigned for the party reservations.';
 
   COMMENT ON COLUMN RESERVATION_NAME.WALKIN_YN IS 'Is the guest came to the hotel without a reservation? Y/N.';
 
   COMMENT ON COLUMN RESERVATION_NAME.ORIGINAL_END_DATE IS 'Original departure date of the reservation';
 
   COMMENT ON COLUMN RESERVATION_NAME.APPROVAL_AMOUNT_CALC_METHOD IS 'This is a rule for calculation of approval amount';
 
   COMMENT ON COLUMN RESERVATION_NAME.AMOUNT_PERCENT IS 'This is the percentage of the amount.';
 
   COMMENT ON COLUMN RESERVATION_NAME.NAME_TAX_TYPE IS 'This stores the rules for tax calculation especially with tax exemption';
 
   COMMENT ON COLUMN RESERVATION_NAME.TAX_EXEMPT_NO IS 'Tax exempt number on the profile';
 
   COMMENT ON COLUMN RESERVATION_NAME.ROOM_FEATURES IS 'This stores the codes for the rooms features. Currently not used';
 
   COMMENT ON COLUMN RESERVATION_NAME.WL_TELEPHONE_NO IS 'This is the waitlist telephone number.';
 
   COMMENT ON COLUMN RESERVATION_NAME.VIDEO_CHECKOUT_YN IS 'Flag if the guest can do video checkout';
 
   COMMENT ON COLUMN RESERVATION_NAME.DISCOUNT_AMT IS 'This is the discount is amount applied on the rate obtained from the rate model';
 
   COMMENT ON COLUMN RESERVATION_NAME.DISCOUNT_PRCNT IS 'This is the discount is percentage  applied on the rate obtained from the rate model';
 
   COMMENT ON COLUMN RESERVATION_NAME.DISCOUNT_REASON_CODE IS 'Discount reason code on the reservation';
 
   COMMENT ON COLUMN RESERVATION_NAME.COMMISSION_PAID IS 'Amount of commission paid';
 
   COMMENT ON COLUMN RESERVATION_NAME.COMMISSION_HOLD_CODE IS 'Commission code for a holding commission';
 
   COMMENT ON COLUMN RESERVATION_NAME.TRUNC_BEGIN_DATE IS 'This is a begin_date  with no  time component.';
 
   COMMENT ON COLUMN RESERVATION_NAME.TRUNC_END_DATE IS 'This contains the truncated component of end_date (i.e without timecomponent)';
 
   COMMENT ON COLUMN RESERVATION_NAME.SGUEST_NAME IS 'This is the CAPITAL letter of GUEST_NAME';
 
   COMMENT ON COLUMN RESERVATION_NAME.MEMBERSHIP_ID IS 'This is member ship id a foreign key to MEMBERSHIPS.membership_id.';
 
   COMMENT ON COLUMN RESERVATION_NAME.UDFC01 IS 'User defined charater column used by screen painter';
 
   COMMENT ON COLUMN RESERVATION_NAME.UDFC02 IS 'User defined charater column used by screen painter';
 
   COMMENT ON COLUMN RESERVATION_NAME.UDFC03 IS 'User defined charater column used by screen painter';
 
   COMMENT ON COLUMN RESERVATION_NAME.UDFC04 IS 'User defined charater column used by screen painter';
 
   COMMENT ON COLUMN RESERVATION_NAME.UDFC05 IS 'User defined charater column used by screen painter';
 
   COMMENT ON COLUMN RESERVATION_NAME.UDFC06 IS 'User defined charater column used by screen painter';
 
   COMMENT ON COLUMN RESERVATION_NAME.UDFC07 IS 'User defined charater column used by screen painter';
 
   COMMENT ON COLUMN RESERVATION_NAME.UDFC08 IS 'User defined charater column used by screen painter';
 
   COMMENT ON COLUMN RESERVATION_NAME.UDFC09 IS 'User defined charater column used by screen painter';
 
   COMMENT ON COLUMN RESERVATION_NAME.UDFC10 IS 'User defined charater column used by screen painter';
 
   COMMENT ON COLUMN RESERVATION_NAME.UDFC11 IS 'User defined charater column used by screen painter';
 
   COMMENT ON COLUMN RESERVATION_NAME.UDFC12 IS 'User defined charater column used by screen painter';
 
   COMMENT ON COLUMN RESERVATION_NAME.UDFC13 IS 'User defined charater column used by screen painter';
 
   COMMENT ON COLUMN RESERVATION_NAME.UDFC14 IS 'User defined charater column used by screen painter';
 
   COMMENT ON COLUMN RESERVATION_NAME.UDFC15 IS 'User defined charater column used by screen painter';
 
   COMMENT ON COLUMN RESERVATION_NAME.UDFC16 IS 'User defined charater column used by screen painter';
 
   COMMENT ON COLUMN RESERVATION_NAME.UDFC17 IS 'User defined charater column used by screen painter';
 
   COMMENT ON COLUMN RESERVATION_NAME.UDFC18 IS 'User defined charater column used by screen painter';
 
   COMMENT ON COLUMN RESERVATION_NAME.UDFC19 IS 'User defined charater column used by screen painter';
 
   COMMENT ON COLUMN RESERVATION_NAME.UDFC20 IS 'User defined charater column used by screen painter';
 
   COMMENT ON COLUMN RESERVATION_NAME.UDFC21 IS 'User defined charater column used by screen painter';
 
   COMMENT ON COLUMN RESERVATION_NAME.UDFC22 IS 'User defined charater column used by screen painter';
 
   COMMENT ON COLUMN RESERVATION_NAME.UDFC23 IS 'User defined charater column used by screen painter';
 
   COMMENT ON COLUMN RESERVATION_NAME.UDFC24 IS 'User defined charater column used by screen painter';
 
   COMMENT ON COLUMN RESERVATION_NAME.UDFC25 IS 'User defined charater column used by screen painter';
 
   COMMENT ON COLUMN RESERVATION_NAME.UDFC26 IS 'User defined charater column used by screen painter';
 
   COMMENT ON COLUMN RESERVATION_NAME.UDFC27 IS 'User defined charater column used by screen painter';
 
   COMMENT ON COLUMN RESERVATION_NAME.UDFC28 IS 'User defined charater column used by screen painter';
 
   COMMENT ON COLUMN RESERVATION_NAME.UDFC29 IS 'User defined charater column used by screen painter';
 
   COMMENT ON COLUMN RESERVATION_NAME.UDFC30 IS 'User defined charater column used by screen painter';
 
   COMMENT ON COLUMN RESERVATION_NAME.UDFC31 IS 'User defined charater column used by screen painter';
 
   COMMENT ON COLUMN RESERVATION_NAME.UDFC32 IS 'User defined charater column used by screen painter';
 
   COMMENT ON COLUMN RESERVATION_NAME.UDFC33 IS 'User defined charater column used by screen painter';
 
   COMMENT ON COLUMN RESERVATION_NAME.UDFC34 IS 'User defined charater column used by screen painter';
 
   COMMENT ON COLUMN RESERVATION_NAME.UDFC35 IS 'User defined charater column used by screen painter';
 
   COMMENT ON COLUMN RESERVATION_NAME.UDFC36 IS 'User defined charater column used by screen painter';
 
   COMMENT ON COLUMN RESERVATION_NAME.UDFC37 IS 'User defined charater column used by screen painter';
 
   COMMENT ON COLUMN RESERVATION_NAME.UDFC38 IS 'User defined charater column used by screen painter';
 
   COMMENT ON COLUMN RESERVATION_NAME.UDFC39 IS 'User defined charater column used by screen painter';
 
   COMMENT ON COLUMN RESERVATION_NAME.UDFC40 IS 'User defined charater column used by screen painter';
 
   COMMENT ON COLUMN RESERVATION_NAME.UDFN01 IS 'User defined number column used by screen painter';
 
   COMMENT ON COLUMN RESERVATION_NAME.UDFN02 IS 'User defined number column used by screen painter';
 
   COMMENT ON COLUMN RESERVATION_NAME.UDFN03 IS 'User defined number column used by screen painter';
 
   COMMENT ON COLUMN RESERVATION_NAME.UDFN04 IS 'User defined number column used by screen painter';
 
   COMMENT ON COLUMN RESERVATION_NAME.UDFN05 IS 'User defined number column used by screen painter';
 
   COMMENT ON COLUMN RESERVATION_NAME.UDFN06 IS 'User defined number column used by screen painter';
 
   COMMENT ON COLUMN RESERVATION_NAME.UDFN07 IS 'User defined number column used by screen painter';
 
   COMMENT ON COLUMN RESERVATION_NAME.UDFN08 IS 'User defined number column used by screen painter';
 
   COMMENT ON COLUMN RESERVATION_NAME.UDFN09 IS 'User defined number column used by screen painter';
 
   COMMENT ON COLUMN RESERVATION_NAME.UDFN10 IS 'User defined number column used by screen painter';
 
   COMMENT ON COLUMN RESERVATION_NAME.UDFN11 IS 'User defined number column used by screen painter';
 
   COMMENT ON COLUMN RESERVATION_NAME.UDFN12 IS 'User defined number column used by screen painter';
 
   COMMENT ON COLUMN RESERVATION_NAME.UDFN13 IS 'User defined number column used by screen painter';
 
   COMMENT ON COLUMN RESERVATION_NAME.UDFN14 IS 'User defined number column used by screen painter';
 
   COMMENT ON COLUMN RESERVATION_NAME.UDFN15 IS 'User defined number column used by screen painter';
 
   COMMENT ON COLUMN RESERVATION_NAME.UDFN16 IS 'User defined number column used by screen painter';
 
   COMMENT ON COLUMN RESERVATION_NAME.UDFN17 IS 'User defined number column used by screen painter';
 
   COMMENT ON COLUMN RESERVATION_NAME.UDFN18 IS 'User defined number column used by screen painter';
 
   COMMENT ON COLUMN RESERVATION_NAME.UDFN19 IS 'User defined number column used by screen painter';
 
   COMMENT ON COLUMN RESERVATION_NAME.UDFN20 IS 'User defined number column used by screen painter';
 
   COMMENT ON COLUMN RESERVATION_NAME.UDFN21 IS 'User defined number column used by screen painter';
 
   COMMENT ON COLUMN RESERVATION_NAME.UDFN22 IS 'User defined number column used by screen painter';
 
   COMMENT ON COLUMN RESERVATION_NAME.UDFN23 IS 'User defined number column used by screen painter';
 
   COMMENT ON COLUMN RESERVATION_NAME.UDFN24 IS 'User defined number column used by screen painter';
 
   COMMENT ON COLUMN RESERVATION_NAME.UDFN25 IS 'User defined number column used by screen painter';
 
   COMMENT ON COLUMN RESERVATION_NAME.UDFN26 IS 'User defined number column used by screen painter';
 
   COMMENT ON COLUMN RESERVATION_NAME.UDFN27 IS 'User defined number column used by screen painter';
 
   COMMENT ON COLUMN RESERVATION_NAME.UDFN28 IS 'User defined number column used by screen painter';
 
   COMMENT ON COLUMN RESERVATION_NAME.UDFN29 IS 'User defined number column used by screen painter';
 
   COMMENT ON COLUMN RESERVATION_NAME.UDFN30 IS 'User defined number column used by screen painter';
 
   COMMENT ON COLUMN RESERVATION_NAME.UDFN31 IS 'User defined number column used by screen painter';
 
   COMMENT ON COLUMN RESERVATION_NAME.UDFN32 IS 'User defined number column used by screen painter';
 
   COMMENT ON COLUMN RESERVATION_NAME.UDFN33 IS 'User defined number column used by screen painter';
 
   COMMENT ON COLUMN RESERVATION_NAME.UDFN34 IS 'User defined number column used by screen painter';
 
   COMMENT ON COLUMN RESERVATION_NAME.UDFN35 IS 'User defined number column used by screen painter';
 
   COMMENT ON COLUMN RESERVATION_NAME.UDFN36 IS 'User defined number column used by screen painter';
 
   COMMENT ON COLUMN RESERVATION_NAME.UDFN37 IS 'User defined number column used by screen painter';
 
   COMMENT ON COLUMN RESERVATION_NAME.UDFN38 IS 'User defined number column used by screen painter';
 
   COMMENT ON COLUMN RESERVATION_NAME.UDFN39 IS 'User defined number column used by screen painter';
 
   COMMENT ON COLUMN RESERVATION_NAME.UDFN40 IS 'User defined number column used by screen painter';
 
   COMMENT ON COLUMN RESERVATION_NAME.UDFD01 IS 'User defined date column used by screen painter';
 
   COMMENT ON COLUMN RESERVATION_NAME.UDFD02 IS 'User defined date column used by screen painter';
 
   COMMENT ON COLUMN RESERVATION_NAME.UDFD03 IS 'User defined date column used by screen painter';
 
   COMMENT ON COLUMN RESERVATION_NAME.UDFD04 IS 'User defined date column used by screen painter';
 
   COMMENT ON COLUMN RESERVATION_NAME.UDFD05 IS 'User defined date column used by screen painter';
 
   COMMENT ON COLUMN RESERVATION_NAME.UDFD06 IS 'User defined date column used by screen painter';
 
   COMMENT ON COLUMN RESERVATION_NAME.UDFD07 IS 'User defined date column used by screen painter';
 
   COMMENT ON COLUMN RESERVATION_NAME.UDFD08 IS 'User defined date column used by screen painter';
 
   COMMENT ON COLUMN RESERVATION_NAME.UDFD09 IS 'User defined date column used by screen painter';
 
   COMMENT ON COLUMN RESERVATION_NAME.UDFD10 IS 'User defined date column used by screen painter';
 
   COMMENT ON COLUMN RESERVATION_NAME.UDFD11 IS 'User defined date column used by screen painter';
 
   COMMENT ON COLUMN RESERVATION_NAME.UDFD12 IS 'User defined date column used by screen painter';
 
   COMMENT ON COLUMN RESERVATION_NAME.UDFD13 IS 'User defined date column used by screen painter';
 
   COMMENT ON COLUMN RESERVATION_NAME.UDFD14 IS 'User defined date column used by screen painter';
 
   COMMENT ON COLUMN RESERVATION_NAME.UDFD15 IS 'User defined date column used by screen painter';
 
   COMMENT ON COLUMN RESERVATION_NAME.UDFD16 IS 'User defined date column used by screen painter';
 
   COMMENT ON COLUMN RESERVATION_NAME.UDFD17 IS 'User defined date column used by screen painter';
 
   COMMENT ON COLUMN RESERVATION_NAME.UDFD18 IS 'User defined date column used by screen painter';
 
   COMMENT ON COLUMN RESERVATION_NAME.UDFD19 IS 'User defined date column used by screen painter';
 
   COMMENT ON COLUMN RESERVATION_NAME.UDFD20 IS 'User defined date column used by screen painter';
 
   COMMENT ON COLUMN RESERVATION_NAME.INSERT_ACTION_INSTANCE_ID IS 'This is used for Journalling purposes';
 
   COMMENT ON COLUMN RESERVATION_NAME.DML_SEQ_NO IS 'Internal';
 
   COMMENT ON COLUMN RESERVATION_NAME.BUSINESS_DATE_CREATED IS 'Business date the reservation was created';
 
   COMMENT ON COLUMN RESERVATION_NAME.TURNDOWN_YN IS 'Is the guest wants turndown facility or not ? Y/N';
 
   COMMENT ON COLUMN RESERVATION_NAME.ROOM_INSTRUCTIONS IS 'This is the Turndown instructions for the room.';
 
   COMMENT ON COLUMN RESERVATION_NAME.ROOM_SERVICE_TIME IS 'This is the Turndown room service time.';
 
   COMMENT ON COLUMN RESERVATION_NAME.EVENT_ID IS 'This is the event id number. Needs more research.';
 
   COMMENT ON COLUMN RESERVATION_NAME.REVENUE_TYPE_CODE IS 'Revenue type (catering/rooms)';
 
   COMMENT ON COLUMN RESERVATION_NAME.HURDLE IS 'This will be the average hurdle rate at the time of the original reservation per room per night, regardless of whether the rate was yieldable or not. This field will be updated if user re-queries after changes to reservation.';
 
   COMMENT ON COLUMN RESERVATION_NAME.HURDLE_OVERRIDE IS 'This will be taken from the field OVERRIDE in the HURDLE_RATES table.  This entry does not indicate that the rateable value of the reservation was less than the hurdle rate at the time of booking.  In fact, if any date of the reservation touches an overri';
 
   COMMENT ON COLUMN RESERVATION_NAME.RATEABLE_VALUE IS 'The net value of the rate based on what was set when the rate  was accepted (=indifference rate).';
 
   COMMENT ON COLUMN RESERVATION_NAME.RESTRICTION_OVERRIDE IS 'This field will be populated with a Y if the user has overridden any restriction, with the exception of a hurdle override, to accept the reservation.';
 
   COMMENT ON COLUMN RESERVATION_NAME.YIELDABLE_YN IS '- this is the yieldable status of the rate code selected.  The contents of this field will not be updated in the event that the reservation is updated and another rate code is selected.';
 
   COMMENT ON COLUMN RESERVATION_NAME.SGUEST_FIRSTNAME IS 'This is CAPITOL version of guest_first_name';
 
   COMMENT ON COLUMN RESERVATION_NAME.GUEST_LAST_NAME IS 'This is guest last name.';
 
   COMMENT ON COLUMN RESERVATION_NAME.GUEST_FIRST_NAME IS 'This is guest first name.';
 
   COMMENT ON COLUMN RESERVATION_NAME.GUEST_LAST_NAME_SDX IS 'This is soundex of GUEST LAST NAME - Phonotic sound.';
 
   COMMENT ON COLUMN RESERVATION_NAME.GUEST_FIRST_NAME_SDX IS 'This is soundex of GUEST FIRST NAME - Phonotic sound.';
 
   COMMENT ON COLUMN RESERVATION_NAME.CHANNEL IS 'Channel code';
 
   COMMENT ON COLUMN RESERVATION_NAME.SHARE_SEQ_NO IS 'Type of revenue';
 
   COMMENT ON COLUMN RESERVATION_NAME.GUEST_SIGNATURE IS 'Signature of the guest';
 
   COMMENT ON COLUMN RESERVATION_NAME.EXTENSION_ID IS 'Internal extension number for the main reservation';
 
   COMMENT ON COLUMN RESERVATION_NAME.RESV_CONTACT_ID IS 'Contact name id chosen as reservation contact';
 
   COMMENT ON COLUMN RESERVATION_NAME.BILLING_CONTACT_ID IS 'Contact name id chosen as billing contact';
 
   COMMENT ON COLUMN RESERVATION_NAME.LAST_SETTLE_DATE IS 'Latest date when a direct bill settlement was automatically done using the Direct Bill Batch Folios option';
 
   COMMENT ON COLUMN RESERVATION_NAME.LAST_PERIODIC_FOLIO_DATE IS 'Latest date when a folio was printed using the Periodic Batch Folios option';
 
   COMMENT ON COLUMN RESERVATION_NAME.PERIODIC_FOLIO_FREQ IS 'Frequency in number of days when folios should be printed for this reservation';
 
   COMMENT ON COLUMN RESERVATION_NAME.CONFIRMATION_LEG_NO IS 'Reservation leg no. for itinerary reservations. CONFIRMATION_NO and this column will make unique identification for an external system';
 
   COMMENT ON COLUMN RESERVATION_NAME.GUEST_STATUS IS 'Used for Police/Tourist Export';
 
   COMMENT ON COLUMN RESERVATION_NAME.GUEST_TYPE IS 'Used for Police/Tourist Export';
 
   COMMENT ON COLUMN RESERVATION_NAME.CHECKIN_DURATION IS 'Duration in seconds to complete Check-In';
 
   COMMENT ON COLUMN RESERVATION_NAME.AUTHORIZER_ID IS 'Application User ID of the employee who will act as the host for this guest.';
 
   COMMENT ON COLUMN RESERVATION_NAME.LAST_ONLINE_PRINT_SEQ IS 'Last Online-Printing Sequence Number used by this reservation.';
 
   COMMENT ON COLUMN RESERVATION_NAME.ENTRY_POINT IS '(Customized) Entry point into the country. (Croatian Requirements)';
 
   COMMENT ON COLUMN RESERVATION_NAME.ENTRY_DATE IS 'Entry Date into the country. (Croatian Requirements)';
 
   COMMENT ON COLUMN RESERVATION_NAME.PSEUDO_MEM_TYPE IS 'Default membership type used with the Pseudo Membership Points calculation functionality.';
 
   COMMENT ON COLUMN RESERVATION_NAME.PSEUDO_MEM_TOTAL_POINTS IS 'Total pseudo membership points accrued for the default membership type.';
 
   COMMENT ON COLUMN RESERVATION_NAME.FOLIO_TEXT1 IS 'Additional text field 1 to display on the folio';
 
   COMMENT ON COLUMN RESERVATION_NAME.FOLIO_TEXT2 IS 'Additional text field 2 to display on the folio';
 
   COMMENT ON COLUMN RESERVATION_NAME.COMP_TYPE_CODE IS 'Code used to identify the casino comp type and ranking of a guest.';
 
   COMMENT ON COLUMN RESERVATION_NAME.UNI_CARD_ID IS 'Universal Card ID used by interfaces for key encoding purposes.';
 
   COMMENT ON COLUMN RESERVATION_NAME.EXP_CHECKINRES_ID IS 'Used for Croatian Requirement Exports, to store a unique checkin number.';
 
   COMMENT ON COLUMN RESERVATION_NAME.ORIGINAL_BEGIN_DATE IS 'Original Arrival date of reservation. This will be populated only when NA moves arrival date automatically due to Noshow guest.';
 
   COMMENT ON COLUMN RESERVATION_NAME.OWNER_FF_FLAG IS 'Indicates reservation for Owner or Friends/Family. O=Owner Reservation; F=Friends/Family Reservation.';
 
   COMMENT ON COLUMN RESERVATION_NAME.COMMISSION_PAYOUT_TO IS 'Indicates to whom the commission will be paid: NULL, T (Travel Agent) , S (Source) and B (Both).';
 
   COMMENT ON COLUMN RESERVATION_NAME.PRE_CHARGING_YN IS 'Indicates if the reservation has charging privileges before arrival.';
 
   COMMENT ON COLUMN RESERVATION_NAME.POST_CHARGING_YN IS 'Indicates if the reservation has charging privileges after checkout.';
 
   COMMENT ON COLUMN RESERVATION_NAME.POST_CO_FLAG IS 'Identifies the charging status of the reservation after check out. O=Open Checkout, P=Charging Privileges, C=Closed Checkout.';
 
   COMMENT ON COLUMN RESERVATION_NAME.FOLIO_CLOSE_DATE IS 'Date the folio was changed to closed.';
 
   COMMENT ON COLUMN RESERVATION_NAME.SCHEDULE_CHECKOUT_YN IS 'Is the guest scheduled for automatic check out?';
 
   COMMENT ON COLUMN RESERVATION_NAME.CUSTOM_REFERENCE IS 'Custom reference number.';
 
   COMMENT ON COLUMN RESERVATION_NAME.GUARANTEE_CODE_PRE_CI IS 'Guarantee code before check in. Populated when the guarantee code is changed to CHECKED IN.';
 
   COMMENT ON COLUMN RESERVATION_NAME.ESIGNED_REG_CARD_NAME IS 'Name of file that contains the electronically signed registration card.';
 
   COMMENT ON COLUMN RESERVATION_NAME.STATISTICAL_ROOM_TYPE IS 'Room Type used to calculate statistics for export(DRS).';
 
   COMMENT ON COLUMN RESERVATION_NAME.STATISTICAL_RATE_TIER IS 'Rate Tier used for exports(DRS).';
 
   COMMENT ON COLUMN RESERVATION_NAME.YM_CODE IS 'Yield Market Code.';
 
   COMMENT ON COLUMN RESERVATION_NAME.KEY_VALID_UNTIL IS 'Room Key Expiration Date.';
 
   COMMENT ON COLUMN RESERVATION_NAME.KEY_PIN_CODE IS 'Room Key PIN code.';
 
   COMMENT ON COLUMN RESERVATION_NAME.PRE_REGISTERED_YN IS 'Indicates whether the reservation is pre-registered for internet check-in or not.';
 
   COMMENT ON COLUMN RESERVATION_NAME.TAX_REGISTRATION_NO IS 'Tax Registration Number, Maldives Bed Tax Reporting';
 
   COMMENT ON COLUMN RESERVATION_NAME.VISA_NUMBER IS 'Visa number, Maldives Bed Tax Reporting';
 
   COMMENT ON COLUMN RESERVATION_NAME.VISA_ISSUE_DATE IS 'Visa Issue Date, Maldives Bed Tax Reporting';
 
   COMMENT ON COLUMN RESERVATION_NAME.VISA_EXPIRATION_DATE IS 'Visa Expiration Date, Maldives Bed Tax Reporting';
 
   COMMENT ON COLUMN RESERVATION_NAME.TAX_NO_OF_STAYS IS 'Number of days for which the Maldives tax is applicable.';
 
   COMMENT ON COLUMN RESERVATION_NAME.ASB_PRORATED_YN IS 'Indicates whether a prorated amount should be used for an Apartment Style Billing rate.';
 
   COMMENT ON COLUMN RESERVATION_NAME.AUTO_SETTLE_DAYS IS 'The interval of days between each auto folio settlement.';
 
   COMMENT ON COLUMN RESERVATION_NAME.AUTO_SETTLE_YN IS 'Indicates if the reservation is a candidate for auto folio settlement.';
 
   COMMENT ON COLUMN RESERVATION_NAME.SPLIT_FROM_RESV_NAME_ID IS 'Stores resv_name_id of the original multi room reservation from which this reservation is split off.';
 
   COMMENT ON COLUMN RESERVATION_NAME.NEXT_DESTINATION IS 'Country Specific Requirement for Nigeria.';
 
   COMMENT ON COLUMN RESERVATION_NAME.DATE_OF_ARRIVAL_IN_COUNTRY IS 'Country Specific Requirement for Nigeria.';
 
   COMMENT ON COLUMN RESERVATION_NAME.PRE_ARR_REVIEWED_DT IS 'This date flags if and when the record was reviewed from pre-arrival screen.';
 
   COMMENT ON COLUMN RESERVATION_NAME.PRE_ARR_REVIEWED_USER IS 'User id who reviewed the record.';
 
   COMMENT ON COLUMN RESERVATION_NAME.BONUS_CHECK_ID IS 'Identifier for the Bonus Check.';
 
   COMMENT ON COLUMN RESERVATION_NAME.MOBILE_AUDIO_KEY_YN IS 'Marked as Y when the reservation is Opt In.';
 
   COMMENT ON COLUMN RESERVATION_NAME.DIRECT_BILL_VERIFY_RESPONSE IS 'Store the approval code received from the credit card interface when verification is done for a direct bill.';
 
   COMMENT ON COLUMN RESERVATION_NAME.ADDRESSEE_NAME_ID IS 'Internal Name ID for the Addressee used for the Addressee Functionality. (refers to NAME table)';
 
   COMMENT ON COLUMN RESERVATION_NAME.SUPER_SEARCH_INDEX_TEXT IS 'Used for Oracle Text Index';
 
   COMMENT ON COLUMN RESERVATION_NAME.AUTO_CHECKIN_YN IS 'Indicated if a new reservation should be created and automatically checked in whenever the room is checked out. Available for pseudo room types only.';
--------------------------------------------------------
--  DDL for Table RESERVATION_DAILY_ELEMENTS
--------------------------------------------------------

  CREATE TABLE RESERVATION_DAILY_ELEMENTS 
   (	RESORT VARCHAR(20), 
	RESERVATION_DATE DATE, 
	RESV_DAILY_EL_SEQ NUMERIC, 
	RESV_STATUS VARCHAR(20), 
	EXTERNAL_REFERENCE VARCHAR(80), 
	ROOM_CLASS VARCHAR(20), 
	ROOM_CATEGORY VARCHAR(20), 
	BOOKED_ROOM_CATEGORY VARCHAR(20), 
	ROOM VARCHAR(20), 
	CANCELLATION_NO NUMERIC, 
	CANCELLATION_DATE DATE, 
	CANCELLATION_CODE VARCHAR(20), 
	CANCELLATION_REASON_DESC VARCHAR(2000), 
	GUARANTEE_CODE VARCHAR(20), 
	MARKET_CODE VARCHAR(20), 
	ORIGIN_OF_BOOKING VARCHAR(20), 
	EXCHANGE_RATE NUMERIC, 
	ORIGINAL_BASE_RATE NUMERIC, 
	BASE_RATE_AMOUNT NUMERIC, 
	RATE_AMOUNT NUMERIC, 
	ROOM_COST NUMERIC, 
	QUANTITY NUMERIC, 
	ADULTS NUMERIC, 
	CHILDREN NUMERIC, 
	PHYSICAL_QUANTITY NUMERIC, 
	ALLOTMENT_HEADER_ID NUMERIC, 
	DAY_USE_YN VARCHAR(1), 
	DUE_OUT_YN VARCHAR(1), 
	INSERT_USER NUMERIC, 
	INSERT_DATE DATE, 
	UPDATE_USER NUMERIC, 
	UPDATE_DATE DATE, 
	INSERT_ACTION_INSTANCE_ID NUMERIC, 
	DML_SEQ_NO NUMERIC, 
	EXT_SEQ_NO NUMERIC, 
	EXT_SEG_NO NUMERIC, 
	CRIBS NUMERIC, 
	EXTRA_BEDS NUMERIC, 
	ALLOTMENT_RECORD_TYPE VARCHAR(20), 
	BLOCK_RESORT VARCHAR(20), 
	BLOCK_ID NUMERIC, 
	TURNDOWN_STATUS VARCHAR(2), 
	AWD_UPGR_FROM VARCHAR(20), 
	AWD_UPGR_TO VARCHAR(20)
   ) ;
 

   COMMENT ON COLUMN RESERVATION_DAILY_ELEMENTS.RESORT IS 'The property that the record belongs to';
 
   COMMENT ON COLUMN RESERVATION_DAILY_ELEMENTS.RESERVATION_DATE IS 'The particular day (Date) of the reservation.';
 
   COMMENT ON COLUMN RESERVATION_DAILY_ELEMENTS.RESV_DAILY_EL_SEQ IS 'This is reservation daily elements sequence number.';
 
   COMMENT ON COLUMN RESERVATION_DAILY_ELEMENTS.RESV_STATUS IS 'The status of this reservation leg.  ( BOOKED,CANCELLED,WAITLIST,NOSHOW)';
 
   COMMENT ON COLUMN RESERVATION_DAILY_ELEMENTS.EXTERNAL_REFERENCE IS 'Not used';
 
   COMMENT ON COLUMN RESERVATION_DAILY_ELEMENTS.ROOM_CLASS IS 'This is the type of ROOM CLASS';
 
   COMMENT ON COLUMN RESERVATION_DAILY_ELEMENTS.ROOM_CATEGORY IS 'The room category that is booked for this reservation leg.';
 
   COMMENT ON COLUMN RESERVATION_DAILY_ELEMENTS.BOOKED_ROOM_CATEGORY IS 'Holds the category of room originally booked.';
 
   COMMENT ON COLUMN RESERVATION_DAILY_ELEMENTS.ROOM IS 'The room that is booked for this reservation leg.';
 
   COMMENT ON COLUMN RESERVATION_DAILY_ELEMENTS.CANCELLATION_NO IS 'The cancellation number calculated by the system when a user cancele this detail record.FOR  FUTURE  ANTICIPATED USE';
 
   COMMENT ON COLUMN RESERVATION_DAILY_ELEMENTS.CANCELLATION_DATE IS 'The date/time this reservation detail was canceled.FOR  FUTURE  ANTICIPATED USE';
 
   COMMENT ON COLUMN RESERVATION_DAILY_ELEMENTS.CANCELLATION_CODE IS 'The user entered reason this reservation line was canceled.FOR  FUTURE  ANTICIPATED USE';
 
   COMMENT ON COLUMN RESERVATION_DAILY_ELEMENTS.CANCELLATION_REASON_DESC IS 'FOR  FUTURE  ANTICIPATED USE';
 
   COMMENT ON COLUMN RESERVATION_DAILY_ELEMENTS.GUARANTEE_CODE IS 'For future use.';
 
   COMMENT ON COLUMN RESERVATION_DAILY_ELEMENTS.MARKET_CODE IS 'Identifies the market segment associated with rate code';
 
   COMMENT ON COLUMN RESERVATION_DAILY_ELEMENTS.ORIGIN_OF_BOOKING IS 'Similar to market code but shows the origin like local market or intranet etc';
 
   COMMENT ON COLUMN RESERVATION_DAILY_ELEMENTS.EXCHANGE_RATE IS 'Not used.';
 
   COMMENT ON COLUMN RESERVATION_DAILY_ELEMENTS.ORIGINAL_BASE_RATE IS 'Not used.';
 
   COMMENT ON COLUMN RESERVATION_DAILY_ELEMENTS.BASE_RATE_AMOUNT IS 'Not used.';
 
   COMMENT ON COLUMN RESERVATION_DAILY_ELEMENTS.RATE_AMOUNT IS 'The sum of share amounts of all the reservations staying in the room.';
 
   COMMENT ON COLUMN RESERVATION_DAILY_ELEMENTS.ROOM_COST IS 'Estimated costs for the rate';
 
   COMMENT ON COLUMN RESERVATION_DAILY_ELEMENTS.QUANTITY IS 'Quantity of product for this leg.  For lodging, the same amount as number_rooms.';
 
   COMMENT ON COLUMN RESERVATION_DAILY_ELEMENTS.ADULTS IS 'Number of adults on this detail line.';
 
   COMMENT ON COLUMN RESERVATION_DAILY_ELEMENTS.CHILDREN IS 'Number of children on this reservation line';
 
   COMMENT ON COLUMN RESERVATION_DAILY_ELEMENTS.PHYSICAL_QUANTITY IS 'Physical Quantity of the reservation.';
 
   COMMENT ON COLUMN RESERVATION_DAILY_ELEMENTS.ALLOTMENT_HEADER_ID IS 'This is the id of the block to which this record belongs';
 
   COMMENT ON COLUMN RESERVATION_DAILY_ELEMENTS.DAY_USE_YN IS 'Tells if it is a day use reservation or not';
 
   COMMENT ON COLUMN RESERVATION_DAILY_ELEMENTS.DUE_OUT_YN IS 'The last day of the reservation. (DUE OUT DAY).';
 
   COMMENT ON COLUMN RESERVATION_DAILY_ELEMENTS.INSERT_USER IS 'The user that created the record';
 
   COMMENT ON COLUMN RESERVATION_DAILY_ELEMENTS.INSERT_DATE IS 'The date the record was created';
 
   COMMENT ON COLUMN RESERVATION_DAILY_ELEMENTS.UPDATE_USER IS 'The user that modified the record';
 
   COMMENT ON COLUMN RESERVATION_DAILY_ELEMENTS.UPDATE_DATE IS 'The date the record was modified';
 
   COMMENT ON COLUMN RESERVATION_DAILY_ELEMENTS.INSERT_ACTION_INSTANCE_ID IS 'Not used.';
 
   COMMENT ON COLUMN RESERVATION_DAILY_ELEMENTS.DML_SEQ_NO IS 'Not used.';
 
   COMMENT ON COLUMN RESERVATION_DAILY_ELEMENTS.EXT_SEQ_NO IS 'Not used';
 
   COMMENT ON COLUMN RESERVATION_DAILY_ELEMENTS.EXT_SEG_NO IS 'Not used';
 
   COMMENT ON COLUMN RESERVATION_DAILY_ELEMENTS.CRIBS IS 'Number of cribs on the reservation';
 
   COMMENT ON COLUMN RESERVATION_DAILY_ELEMENTS.EXTRA_BEDS IS 'Number of Extra beds on the reservation';
 
   COMMENT ON COLUMN RESERVATION_DAILY_ELEMENTS.ALLOTMENT_RECORD_TYPE IS 'Indicates whether the room type inventory was taken from the allotment or House availabilty.';
 
   COMMENT ON COLUMN RESERVATION_DAILY_ELEMENTS.BLOCK_RESORT IS 'Property this block belongs to.';
 
   COMMENT ON COLUMN RESERVATION_DAILY_ELEMENTS.BLOCK_ID IS 'Business Block ID.';
 
   COMMENT ON COLUMN RESERVATION_DAILY_ELEMENTS.TURNDOWN_STATUS IS 'Turndown status of the room per reservation per day. C-Completed NR-Not required R-Requested.';
 
   COMMENT ON COLUMN RESERVATION_DAILY_ELEMENTS.AWD_UPGR_FROM IS 'Room Type  before the Upgrade Award';
 
   COMMENT ON COLUMN RESERVATION_DAILY_ELEMENTS.AWD_UPGR_TO IS 'Room Type after the Upgrade Award';
--------------------------------------------------------
--  DDL for Table RESERVATION_DAILY_ELEMENT_NAME
--------------------------------------------------------

  CREATE TABLE RESERVATION_DAILY_ELEMENT_NAME 
   (	RESORT VARCHAR(20), 
	RESV_NAME_ID NUMERIC, 
	RESERVATION_DATE DATE, 
	RESV_DAILY_EL_SEQ NUMERIC, 
	TRAVEL_AGENT_ID NUMERIC, 
	COMPANY_ID NUMERIC, 
	SOURCE_ID NUMERIC, 
	GROUP_ID NUMERIC, 
	SHARE_PAYMENT_TYPE VARCHAR(20), 
	SHARE_AMOUNT NUMERIC, 
	SHARE_PRCNT NUMERIC, 
	ADULTS NUMERIC, 
	CHILDREN NUMERIC, 
	DISCOUNT_AMT NUMERIC, 
	DISCOUNT_PRCNT NUMERIC, 
	DISCOUNT_REASON_CODE VARCHAR(20), 
	FIXED_RATE_YN VARCHAR(1) DEFAULT 'N', 
	BASE_RATE_AMOUNT NUMERIC, 
	AUTO_POST_AMOUNT NUMERIC, 
	SHARE_PRIORITY NUMERIC, 
	INSERT_USER NUMERIC, 
	INSERT_DATE DATE, 
	UPDATE_USER NUMERIC, 
	UPDATE_DATE DATE, 
	LAST_SHARE_CALCULATION VARCHAR(1), 
	INSERT_ACTION_INSTANCE_ID NUMERIC, 
	DML_SEQ_NO NUMERIC, 
	NET_ROOM_AMT NUMERIC, 
	ROOM_TAX NUMERIC, 
	PKG_AMT NUMERIC, 
	PKG_TAX NUMERIC, 
	GROSS_RATE_AMT NUMERIC, 
	ADULTS_TAX_FREE NUMERIC, 
	CHILDREN_TAX_FREE NUMERIC, 
	CHILDREN1 NUMERIC, 
	CHILDREN2 NUMERIC, 
	CHILDREN3 NUMERIC, 
	RATE_CODE VARCHAR(20), 
	CURRENCY_CODE VARCHAR(20), 
	EXCHANGE_POSTING_TYPE VARCHAR(20), 
	MEMBERSHIP_POINTS NUMERIC, 
	CHILDREN4 NUMERIC, 
	CHILDREN5 NUMERIC, 
	COMMISSION_CODE VARCHAR(20), 
	AWARD_CODE_1 VARCHAR(20), 
	AWARD_CODE_2 VARCHAR(20), 
	AWARD_CODE_3 VARCHAR(20), 
	AWARD_CODE_4 VARCHAR(20), 
	AWARD_CODE_5 VARCHAR(20), 
	AWARD_VOUCHER_1 VARCHAR(80), 
	AWARD_VOUCHER_2 VARCHAR(80), 
	AWARD_VOUCHER_3 VARCHAR(80), 
	AWARD_VOUCHER_4 VARCHAR(80), 
	AWARD_VOUCHER_5 VARCHAR(80), 
	DO_NOT_MOVE_YN VARCHAR(1), 
	AWARD_CODE VARCHAR(20), 
	POINTS NUMERIC, 
	UPSELL_CHARGE NUMERIC, 
	SHARE_AMOUNT_ORIGINAL NUMERIC
   ) ;
 

   COMMENT ON COLUMN RESERVATION_DAILY_ELEMENT_NAME.RESORT IS 'The property that the record belongs to';
 
   COMMENT ON COLUMN RESERVATION_DAILY_ELEMENT_NAME.RESV_NAME_ID IS 'The primary key for this table.';
 
   COMMENT ON COLUMN RESERVATION_DAILY_ELEMENT_NAME.RESERVATION_DATE IS 'The particular day (Date) of the reservation.';
 
   COMMENT ON COLUMN RESERVATION_DAILY_ELEMENT_NAME.RESV_DAILY_EL_SEQ IS 'This is the reseration daily element sequence number.';
 
   COMMENT ON COLUMN RESERVATION_DAILY_ELEMENT_NAME.TRAVEL_AGENT_ID IS 'This Name_id of the profile type travel agents .';
 
   COMMENT ON COLUMN RESERVATION_DAILY_ELEMENT_NAME.COMPANY_ID IS 'This Name_id of the profile type company .';
 
   COMMENT ON COLUMN RESERVATION_DAILY_ELEMENT_NAME.SOURCE_ID IS 'This Name_id of the profile type source.';
 
   COMMENT ON COLUMN RESERVATION_DAILY_ELEMENT_NAME.GROUP_ID IS 'This Name_id of the profile type group.';
 
   COMMENT ON COLUMN RESERVATION_DAILY_ELEMENT_NAME.SHARE_PAYMENT_TYPE IS 'Not used.';
 
   COMMENT ON COLUMN RESERVATION_DAILY_ELEMENT_NAME.SHARE_AMOUNT IS 'The rate amount for the reservation date.';
 
   COMMENT ON COLUMN RESERVATION_DAILY_ELEMENT_NAME.SHARE_PRCNT IS 'Not used.';
 
   COMMENT ON COLUMN RESERVATION_DAILY_ELEMENT_NAME.ADULTS IS 'Number of adults on this detail line.';
 
   COMMENT ON COLUMN RESERVATION_DAILY_ELEMENT_NAME.CHILDREN IS 'Number of children on this reservation line';
 
   COMMENT ON COLUMN RESERVATION_DAILY_ELEMENT_NAME.DISCOUNT_AMT IS 'Not used.';
 
   COMMENT ON COLUMN RESERVATION_DAILY_ELEMENT_NAME.DISCOUNT_PRCNT IS 'Not used.';
 
   COMMENT ON COLUMN RESERVATION_DAILY_ELEMENT_NAME.DISCOUNT_REASON_CODE IS 'Not used.';
 
   COMMENT ON COLUMN RESERVATION_DAILY_ELEMENT_NAME.FIXED_RATE_YN IS 'This determines the reservation is a fixed rate or not ?';
 
   COMMENT ON COLUMN RESERVATION_DAILY_ELEMENT_NAME.BASE_RATE_AMOUNT IS 'Not used.';
 
   COMMENT ON COLUMN RESERVATION_DAILY_ELEMENT_NAME.AUTO_POST_AMOUNT IS 'Not used.';
 
   COMMENT ON COLUMN RESERVATION_DAILY_ELEMENT_NAME.SHARE_PRIORITY IS 'Not used.';
 
   COMMENT ON COLUMN RESERVATION_DAILY_ELEMENT_NAME.INSERT_USER IS 'The user that created the record';
 
   COMMENT ON COLUMN RESERVATION_DAILY_ELEMENT_NAME.INSERT_DATE IS 'The date the record was created';
 
   COMMENT ON COLUMN RESERVATION_DAILY_ELEMENT_NAME.UPDATE_USER IS 'The user that modified the record';
 
   COMMENT ON COLUMN RESERVATION_DAILY_ELEMENT_NAME.UPDATE_DATE IS 'The date the record was modified';
 
   COMMENT ON COLUMN RESERVATION_DAILY_ELEMENT_NAME.LAST_SHARE_CALCULATION IS 'This is the Last share, S - Split, Z - Zero and F - Full etc...';
 
   COMMENT ON COLUMN RESERVATION_DAILY_ELEMENT_NAME.INSERT_ACTION_INSTANCE_ID IS 'Not used.';
 
   COMMENT ON COLUMN RESERVATION_DAILY_ELEMENT_NAME.DML_SEQ_NO IS 'Not used.';
 
   COMMENT ON COLUMN RESERVATION_DAILY_ELEMENT_NAME.NET_ROOM_AMT IS 'Not used.';
 
   COMMENT ON COLUMN RESERVATION_DAILY_ELEMENT_NAME.ROOM_TAX IS 'Not used.';
 
   COMMENT ON COLUMN RESERVATION_DAILY_ELEMENT_NAME.PKG_AMT IS 'Not used.';
 
   COMMENT ON COLUMN RESERVATION_DAILY_ELEMENT_NAME.PKG_TAX IS 'Not used.';
 
   COMMENT ON COLUMN RESERVATION_DAILY_ELEMENT_NAME.GROSS_RATE_AMT IS 'Not used.';
 
   COMMENT ON COLUMN RESERVATION_DAILY_ELEMENT_NAME.ADULTS_TAX_FREE IS 'Number of tax free adults';
 
   COMMENT ON COLUMN RESERVATION_DAILY_ELEMENT_NAME.CHILDREN_TAX_FREE IS 'Number of tax free children';
 
   COMMENT ON COLUMN RESERVATION_DAILY_ELEMENT_NAME.CHILDREN1 IS 'Number of children in age group 1.';
 
   COMMENT ON COLUMN RESERVATION_DAILY_ELEMENT_NAME.CHILDREN2 IS 'Number of children in age group 2.';
 
   COMMENT ON COLUMN RESERVATION_DAILY_ELEMENT_NAME.CHILDREN3 IS 'Number of children in age group 3.';
 
   COMMENT ON COLUMN RESERVATION_DAILY_ELEMENT_NAME.RATE_CODE IS 'Rate code for the selected leg';
 
   COMMENT ON COLUMN RESERVATION_DAILY_ELEMENT_NAME.CURRENCY_CODE IS 'Currency this reservation is confirmed for';
 
   COMMENT ON COLUMN RESERVATION_DAILY_ELEMENT_NAME.EXCHANGE_POSTING_TYPE IS 'type of exchange posting, C - fixed at checkin, R - Fixed at Reservation etc..';
 
   COMMENT ON COLUMN RESERVATION_DAILY_ELEMENT_NAME.MEMBERSHIP_POINTS IS 'Used for shell vacations to store points for member per stay';
 
   COMMENT ON COLUMN RESERVATION_DAILY_ELEMENT_NAME.CHILDREN4 IS 'Number of Children in age group 4 (No rate amount can be defined for this bucket).';
 
   COMMENT ON COLUMN RESERVATION_DAILY_ELEMENT_NAME.CHILDREN5 IS 'Number of Children in age group 5 (No rate amount can be defined for this bucket).';
 
   COMMENT ON COLUMN RESERVATION_DAILY_ELEMENT_NAME.COMMISSION_CODE IS 'The commission code to be applied for this stay date for this reservation.';
 
   COMMENT ON COLUMN RESERVATION_DAILY_ELEMENT_NAME.AWARD_CODE_1 IS 'Award code 1';
 
   COMMENT ON COLUMN RESERVATION_DAILY_ELEMENT_NAME.AWARD_CODE_2 IS 'Award code 2';
 
   COMMENT ON COLUMN RESERVATION_DAILY_ELEMENT_NAME.AWARD_CODE_3 IS 'Award code 3';
 
   COMMENT ON COLUMN RESERVATION_DAILY_ELEMENT_NAME.AWARD_CODE_4 IS 'Award code 4';
 
   COMMENT ON COLUMN RESERVATION_DAILY_ELEMENT_NAME.AWARD_CODE_5 IS 'Award code 5';
 
   COMMENT ON COLUMN RESERVATION_DAILY_ELEMENT_NAME.AWARD_VOUCHER_1 IS 'Award Voucher number 1';
 
   COMMENT ON COLUMN RESERVATION_DAILY_ELEMENT_NAME.AWARD_VOUCHER_2 IS 'Award Voucher number 2';
 
   COMMENT ON COLUMN RESERVATION_DAILY_ELEMENT_NAME.AWARD_VOUCHER_3 IS 'Award Voucher number 3';
 
   COMMENT ON COLUMN RESERVATION_DAILY_ELEMENT_NAME.AWARD_VOUCHER_4 IS 'Award Voucher number 4';
 
   COMMENT ON COLUMN RESERVATION_DAILY_ELEMENT_NAME.AWARD_VOUCHER_5 IS 'Award Voucher number 5';
 
   COMMENT ON COLUMN RESERVATION_DAILY_ELEMENT_NAME.DO_NOT_MOVE_YN IS 'Do not move room flag.';
 
   COMMENT ON COLUMN RESERVATION_DAILY_ELEMENT_NAME.AWARD_CODE IS 'Award code';
 
   COMMENT ON COLUMN RESERVATION_DAILY_ELEMENT_NAME.POINTS IS 'Points for this date';
 
   COMMENT ON COLUMN RESERVATION_DAILY_ELEMENT_NAME.UPSELL_CHARGE IS 'Incremental Upsell charges for the reservation date.';
 
   COMMENT ON COLUMN RESERVATION_DAILY_ELEMENT_NAME.SHARE_AMOUNT_ORIGINAL IS 'The original rate amount for the reservation date.';
--------------------------------------------------------
--  DDL for Table ALLOTMENT_SNAPSHOT
--------------------------------------------------------

  CREATE TABLE ALLOTMENT_SNAPSHOT 
   (	ALLOTMENT_HEADER_ID NUMERIC, 
	RESORT VARCHAR(20), 
	ALLOTMENT_DATE DATE, 
	SNAPSHOT_TYPE VARCHAR(20), 
	ROOM_CLASS VARCHAR(20), 
	ROOM_CATEGORY VARCHAR(20), 
	SC_ROOM_CATEGORY VARCHAR(20), 
	QUANTITY NUMERIC, 
	OCC1 NUMERIC, 
	OCC2 NUMERIC, 
	OCC3 NUMERIC, 
	OCC4 NUMERIC, 
	RATE1 NUMERIC, 
	RATE2 NUMERIC, 
	RATE3 NUMERIC, 
	RATE4 NUMERIC, 
	RATEAP NUMERIC, 
	LAPTOP_CHANGE NUMERIC(2,0), 
	INSERT_DATE DATE, 
	INSERT_USER NUMERIC, 
	UPDATE_DATE DATE, 
	UPDATE_USER NUMERIC, 
	CHANGE_DATE DATE
   ) ;
 

   COMMENT ON COLUMN ALLOTMENT_SNAPSHOT.ALLOTMENT_HEADER_ID IS 'Business Block ID';
 
   COMMENT ON COLUMN ALLOTMENT_SNAPSHOT.RESORT IS 'The property that the record belongs to';
 
   COMMENT ON COLUMN ALLOTMENT_SNAPSHOT.ALLOTMENT_DATE IS 'Date from ALLOTMENT_DETAIL';
 
   COMMENT ON COLUMN ALLOTMENT_SNAPSHOT.SNAPSHOT_TYPE IS 'Possible Snapshot types: original, current, pickup';
 
   COMMENT ON COLUMN ALLOTMENT_SNAPSHOT.ROOM_CLASS IS 'Room Class reserved';
 
   COMMENT ON COLUMN ALLOTMENT_SNAPSHOT.ROOM_CATEGORY IS 'Room Category reserved';
 
   COMMENT ON COLUMN ALLOTMENT_SNAPSHOT.SC_ROOM_CATEGORY IS 'S&C Room Category mapped to ROOM_CATEGORY';
 
   COMMENT ON COLUMN ALLOTMENT_SNAPSHOT.QUANTITY IS 'Number of Rooms reserved';
 
   COMMENT ON COLUMN ALLOTMENT_SNAPSHOT.OCC1 IS 'Number of rooms by Occupancy 1';
 
   COMMENT ON COLUMN ALLOTMENT_SNAPSHOT.OCC2 IS 'Number of rooms by Occupancy 2';
 
   COMMENT ON COLUMN ALLOTMENT_SNAPSHOT.OCC3 IS 'Number of rooms by Occupancy 3';
 
   COMMENT ON COLUMN ALLOTMENT_SNAPSHOT.OCC4 IS 'Number of rooms by Occupancy 4';
 
   COMMENT ON COLUMN ALLOTMENT_SNAPSHOT.RATE1 IS 'Occupancy 1 Rate';
 
   COMMENT ON COLUMN ALLOTMENT_SNAPSHOT.RATE2 IS 'Occupancy 2 Rate';
 
   COMMENT ON COLUMN ALLOTMENT_SNAPSHOT.RATE3 IS 'Occupancy 3 Rate';
 
   COMMENT ON COLUMN ALLOTMENT_SNAPSHOT.RATE4 IS 'Occupancy 4 Rate';
 
   COMMENT ON COLUMN ALLOTMENT_SNAPSHOT.RATEAP IS 'Occupancy Additional Rate';
 
   COMMENT ON COLUMN ALLOTMENT_SNAPSHOT.LAPTOP_CHANGE IS 'Laptop change indicator';
 
   COMMENT ON COLUMN ALLOTMENT_SNAPSHOT.INSERT_DATE IS 'The date the record was created';
 
   COMMENT ON COLUMN ALLOTMENT_SNAPSHOT.INSERT_USER IS 'The user that created the record';
 
   COMMENT ON COLUMN ALLOTMENT_SNAPSHOT.UPDATE_DATE IS 'The date the record was modified';
 
   COMMENT ON COLUMN ALLOTMENT_SNAPSHOT.UPDATE_USER IS 'The user that modified the record';
 
   COMMENT ON COLUMN ALLOTMENT_SNAPSHOT.CHANGE_DATE IS 'Contains the latest Business Date when changes have occured.';
--------------------------------------------------------
--  DDL for Table ALLOTMENT$HEADER
--------------------------------------------------------

  CREATE TABLE ALLOTMENT$HEADER 
   (	RESORT VARCHAR(20), 
	ALLOTMENT_HEADER_ID NUMERIC, 
	ALLOTMENT_TYPE VARCHAR(20), 
	BEGIN_DATE DATE, 
	END_DATE DATE, 
	DESCRIPTION VARCHAR(2000), 
	SHOULDER_BEGIN_DATE DATE, 
	SHOULDER_END_DATE DATE, 
	ALLOTMENT_CODE VARCHAR(20), 
	MASTER_NAME_ID NUMERIC, 
	COMPANY_NAME_ID NUMERIC, 
	AGENT_NAME_ID NUMERIC, 
	SOURCE_NAME_ID NUMERIC, 
	INACTIVE_DATE DATE, 
	CANCEL_RULE VARCHAR(20), 
	RATE_CODE VARCHAR(20), 
	BOOKING_STATUS VARCHAR(10), 
	BOOKING_STATUS_ORDER NUMERIC, 
	STATUS VARCHAR(20), 
	ELASTIC NUMERIC, 
	INV_CUTOFF_DATE DATE, 
	INV_CUTOFF_DAYS NUMERIC, 
	TENTATIVE_LEVEL NUMERIC, 
	INFO VARCHAR(2000), 
	MARKET_CODE VARCHAR(20), 
	SOURCE VARCHAR(20), 
	CHANNEL VARCHAR(20), 
	AVG_PEOPLE_PER_ROOM NUMERIC, 
	ORIGINAL_RATE_CODE VARCHAR(20), 
	BOOKING_ID VARCHAR(20), 
	CANCELLATION_NO NUMERIC, 
	CANCELLATION_CODE VARCHAR(20), 
	CANCELLATION_DATE DATE, 
	CANCELLATION_DESC VARCHAR(2000), 
	GUARANTEE_CODE VARCHAR(20), 
	ROOMS_PER_DAY NUMERIC, 
	AVERAGE_RATE NUMERIC, 
	RESERVE_INVENTORY_YN VARCHAR(1), 
	ALLOTMENT_ORIGION VARCHAR(20) DEFAULT 'PMS', 
	SUPER_BLOCK_ID NUMERIC(10,0), 
	SUPER_BLOCK_RESORT VARCHAR(20), 
	ACTION_ID NUMERIC, 
	DML_SEQ_NO NUMERIC, 
	CONTACT_NAME_ID NUMERIC, 
	ALIAS VARCHAR(2000), 
	SALES_ID VARCHAR(20), 
	PAYMENT_METHOD VARCHAR(20), 
	RIV_MARKET_SEGMENT VARCHAR(20), 
	EXCHANGE_POSTING_TYPE VARCHAR(20), 
	CURRENCY_CODE VARCHAR(20), 
	EXCHANGE_RATE NUMERIC, 
	DATE_OPENED_FOR_PICKUP DATE, 
	MAINMARKET VARCHAR(20), 
	TRACECODE VARCHAR(20), 
	OWNER_RESORT VARCHAR(20), 
	OWNER NUMERIC, 
	OWNER_CODE VARCHAR(10), 
	RMS_OWNER_RESORT VARCHAR(20), 
	RMS_OWNER NUMERIC, 
	RMS_OWNER_CODE VARCHAR(10), 
	CAT_OWNER_RESORT VARCHAR(20), 
	CAT_OWNER NUMERIC, 
	CAT_OWNER_CODE VARCHAR(10), 
	BOOKINGTYPE VARCHAR(20), 
	BOOKINGMETHOD VARCHAR(20), 
	METHOD_DUE DATE, 
	RMS_DECISION DATE, 
	RMS_FOLLOWUP DATE, 
	RMS_CURRENCY VARCHAR(20), 
	RMS_QUOTE_CURR VARCHAR(20), 
	RMS_EXCHANGE NUMERIC(9,2), 
	ATTENDEES NUMERIC, 
	CAT_STATUS VARCHAR(20), 
	CAT_DECISION DATE, 
	CAT_FOLLOWUP DATE, 
	CAT_CUTOFF DATE, 
	CAT_CURRENCY VARCHAR(20), 
	CAT_QUOTE_CURR VARCHAR(20), 
	CAT_EXCHANGE NUMERIC(9,2), 
	CAT_CANX_NO NUMERIC, 
	CAT_CANX_CODE VARCHAR(20), 
	CAT_CANX_DATE DATE, 
	CAT_CANX_DESC VARCHAR(2000), 
	INFOBOARD VARCHAR(50), 
	BFST_YN VARCHAR(1), 
	BFST_PRICE NUMERIC(9,2), 
	BFST_DESC VARCHAR(40), 
	PORTERAGE_YN VARCHAR(1), 
	PORTERAGE_PRICE NUMERIC(9,2), 
	COMMISSION VARCHAR(20), 
	DETAILS_OK_YN VARCHAR(1), 
	DISTRIBUTED_YN VARCHAR(1), 
	CONTRACT_NR VARCHAR(20), 
	FUNCTIONTYPE VARCHAR(60), 
	REPRESENTATIVE VARCHAR(40), 
	DEFAULT_PM_RESV_NAME_ID NUMERIC, 
	CATERINGONLY_YN VARCHAR(1) DEFAULT 'N', 
	EVENTS_GUARANTEED_YN VARCHAR(1), 
	TAX_AMOUNT NUMERIC, 
	SERVICE_CHARGE NUMERIC, 
	UDFC01 VARCHAR(200), 
	UDFC02 VARCHAR(200), 
	UDFC03 VARCHAR(200), 
	UDFC04 VARCHAR(200), 
	UDFC05 VARCHAR(200), 
	UDFC06 VARCHAR(200), 
	UDFC07 VARCHAR(200), 
	UDFC08 VARCHAR(200), 
	UDFC09 VARCHAR(200), 
	UDFC10 VARCHAR(200), 
	UDFD01 DATE, 
	UDFD02 DATE, 
	UDFD03 DATE, 
	UDFD04 DATE, 
	UDFD05 DATE, 
	UDFD06 DATE, 
	UDFD07 DATE, 
	UDFD08 DATE, 
	UDFD09 DATE, 
	UDFD10 DATE, 
	UDFN01 NUMERIC, 
	UDFN02 NUMERIC, 
	UDFN03 NUMERIC, 
	UDFN04 NUMERIC, 
	UDFN05 NUMERIC, 
	UDFN06 NUMERIC, 
	UDFN07 NUMERIC, 
	UDFN08 NUMERIC, 
	UDFN09 NUMERIC, 
	UDFN10 NUMERIC, 
	DOWNLOAD_RESORT VARCHAR(20), 
	DOWNLOAD_SREP NUMERIC, 
	DOWNLOAD_DATE DATE, 
	UPLOAD_DATE DATE, 
	LAPTOP_CHANGE NUMERIC(2,0), 
	EXTERNAL_REFERENCE VARCHAR(20), 
	EXTERNAL_LOCKED VARCHAR(20), 
	PROFILE_ID NUMERIC, 
	RESORT_BOOKED VARCHAR(20), 
	INSERT_DATE DATE, 
	INSERT_USER NUMERIC, 
	UPDATE_DATE DATE, 
	UPDATE_USER NUMERIC, 
	MANUAL_CUTOFF VARCHAR(10), 
	SNAPSHOT_SETUP VARCHAR(10), 
	TBD_RATES VARCHAR(10), 
	DESTINATION VARCHAR(100), 
	LEAD_SOURCE VARCHAR(200), 
	PROGRAM VARCHAR(200), 
	COMPETITION VARCHAR(200), 
	CONTROL_BLOCK_YN VARCHAR(1), 
	CRS_GTD_YN VARCHAR(1), 
	UDFC11 VARCHAR(200), 
	UDFC12 VARCHAR(200), 
	UDFC13 VARCHAR(200), 
	UDFC14 VARCHAR(200), 
	UDFC15 VARCHAR(200), 
	UDFC16 VARCHAR(200), 
	UDFC17 VARCHAR(200), 
	UDFC18 VARCHAR(200), 
	UDFC19 VARCHAR(200), 
	UDFC20 VARCHAR(200), 
	UDFC21 VARCHAR(200), 
	UDFC22 VARCHAR(200), 
	UDFC23 VARCHAR(200), 
	UDFC24 VARCHAR(200), 
	UDFC25 VARCHAR(200), 
	UDFC26 VARCHAR(200), 
	UDFC27 VARCHAR(200), 
	UDFC28 VARCHAR(200), 
	UDFC29 VARCHAR(200), 
	UDFC30 VARCHAR(200), 
	UDFC31 VARCHAR(200), 
	UDFC32 VARCHAR(200), 
	UDFC33 VARCHAR(200), 
	UDFC34 VARCHAR(200), 
	UDFC35 VARCHAR(200), 
	UDFC36 VARCHAR(200), 
	UDFC37 VARCHAR(200), 
	UDFC38 VARCHAR(200), 
	UDFC39 VARCHAR(200), 
	UDFC40 VARCHAR(200), 
	UDFD11 DATE, 
	UDFD12 DATE, 
	UDFD13 DATE, 
	UDFD14 DATE, 
	UDFD15 DATE, 
	UDFD16 DATE, 
	UDFD17 DATE, 
	UDFD18 DATE, 
	UDFD19 DATE, 
	UDFD20 DATE, 
	UDFN11 NUMERIC, 
	UDFN12 NUMERIC, 
	UDFN13 NUMERIC, 
	UDFN14 NUMERIC, 
	UDFN15 NUMERIC, 
	UDFN16 NUMERIC, 
	UDFN17 NUMERIC, 
	UDFN18 NUMERIC, 
	UDFN19 NUMERIC, 
	UDFN20 NUMERIC, 
	UDFN21 NUMERIC, 
	UDFN22 NUMERIC, 
	UDFN23 NUMERIC, 
	UDFN24 NUMERIC, 
	UDFN25 NUMERIC, 
	UDFN26 NUMERIC, 
	UDFN27 NUMERIC, 
	UDFN28 NUMERIC, 
	UDFN29 NUMERIC, 
	UDFN30 NUMERIC, 
	UDFN31 NUMERIC, 
	UDFN32 NUMERIC, 
	UDFN33 NUMERIC, 
	UDFN34 NUMERIC, 
	UDFN35 NUMERIC, 
	UDFN36 NUMERIC, 
	UDFN37 NUMERIC, 
	UDFN38 NUMERIC, 
	UDFN39 NUMERIC, 
	UDFN40 NUMERIC, 
	SYNCHRONIZE_YN VARCHAR(1), 
	ORIGINAL_BEGIN_DATE DATE, 
	ORIGINAL_END_DATE DATE, 
	MTG_REVENUE NUMERIC, 
	MTG_BUDGET NUMERIC, 
	ARRIVAL_TIME DATE, 
	DEPARTURE_TIME DATE, 
	COMP_ROOMS_FIXED_YN VARCHAR(1), 
	COMP_ROOMS NUMERIC, 
	COMP_PER_STAY_YN VARCHAR(1), 
	COMP_ROOM_VALUE NUMERIC, 
	UDESCRIPTION VARCHAR(80), 
	XDESCRIPTION VARCHAR(120), 
	XUDESCRIPTION VARCHAR(120), 
	RM_COMMISSION_1 NUMERIC, 
	RM_COMMISSION_2 NUMERIC, 
	FB_COMMISSION_1 NUMERIC, 
	FB_COMMISSION_2 NUMERIC, 
	CATERING_PKGS_YN VARCHAR(1), 
	AGENT_CONTACT_NAME_ID NUMERIC, 
	SHOW_RATE_AMOUNT_YN VARCHAR(1), 
	PRINT_RATE_YN VARCHAR(1), 
	SYNC_CONTRACT_YN VARCHAR(1), 
	LEAD_TYPE VARCHAR(20), 
	LEAD_ORIGIN VARCHAR(20), 
	DUE_DATE DATE, 
	LEADSTATUS VARCHAR(10), 
	SENT_YN VARCHAR(1), 
	SENT_DATE DATE, 
	SENT_VIA VARCHAR(10), 
	SENT_BY NUMERIC, 
	REPLY_STATUS VARCHAR(10), 
	REPLY_DATE DATE, 
	REPLY_VIA VARCHAR(10), 
	REPLY_BY NUMERIC, 
	DATE_PEL DATE, 
	DATE_ACL DATE, 
	DATE_TDL DATE, 
	DATE_CFL DATE, 
	DATE_LSL DATE, 
	TDL_REASON VARCHAR(20), 
	LEAD_NEW_YN VARCHAR(1), 
	LEAD_RECEIVED_YN VARCHAR(1), 
	LEADSEND1 VARCHAR(80), 
	LEADSEND2 VARCHAR(80), 
	LEADSEND3 VARCHAR(80), 
	COM_METHOD1 VARCHAR(20), 
	COM_METHOD2 VARCHAR(20), 
	COM_METHOD3 VARCHAR(20), 
	COM_ADDRESS1 VARCHAR(200), 
	COM_ADDRESS2 VARCHAR(200), 
	COM_ADDRESS3 VARCHAR(200), 
	LEAD_ERROR VARCHAR(200), 
	RESP_TIME NUMERIC, 
	RESP_TIME_CODE VARCHAR(20), 
	UPDATE_DATE_EXTERNAL DATE, 
	HIDE_ACC_INFO_YN VARCHAR(1), 
	PENDING_SEND_YN VARCHAR(1), 
	SEND_TO_CENTRAL_YN VARCHAR(1), 
	CREDIT_CARD_ID NUMERIC, 
	EXCLUSION_MESSAGE VARCHAR(4000), 
	POT_ROOM_NIGHTS NUMERIC, 
	POT_ROOM_REVENUE NUMERIC, 
	POT_FB_REVENUE NUMERIC, 
	POT_OTHER_REVENUE NUMERIC, 
	COMMISSIONABLE_YN VARCHAR(1), 
	COMMISSIONABLE_PERC NUMERIC, 
	FIT_DISCOUNT_PERC NUMERIC, 
	FIT_DISCOUNT_LEVEL NUMERIC, 
	BFST_INCL_YN VARCHAR(1), 
	BFST_INCL_PRICE NUMERIC, 
	SERVICE_INCL_YN VARCHAR(1), 
	SERVICE_PERC NUMERIC, 
	DBL_RM_SUPPLEMENT_YN VARCHAR(1), 
	DBL_RM_SUPPLEMENT_PRICE NUMERIC, 
	TAX_INCLUDED_YN VARCHAR(1), 
	TAX_INCLUDED_PERC NUMERIC, 
	RATE_OVERRIDE VARCHAR(1), 
	CENTRAL_OWNER VARCHAR(2000), 
	SELL_THRU_YN VARCHAR(1), 
	TOURCODE VARCHAR(20), 
	SERVICE_FEE_YN VARCHAR(1), 
	SERVICE_FEE NUMERIC, 
	CAT_ITEM_DISCOUNT NUMERIC, 
	BEGIN_DATE_ORIGINAL DATE, 
	END_DATE_ORIGINAL DATE, 
	ROOMING_LIST_RULES VARCHAR(500), 
	FLAT_RATE_YN VARCHAR(1), 
	BLOCK_TYPE VARCHAR(20), 
	GREEK_CONTRACT_NR VARCHAR(20), 
	TA_RECORD_LOCATOR VARCHAR(60), 
	UALIAS VARCHAR(40), 
	RATE_OVERRIDE_REASON VARCHAR(40), 
	ORIGINAL_BEGIN_DATE_HOLIDEX DATE, 
	SUB_ALLOTMENT_YN VARCHAR(1), 
	PUBLISH_RATES_YN VARCHAR(1), 
	TAX_TYPE VARCHAR(20), 
	BEO_LAST_PRINT DATE, 
	ATTACHMENT_URL VARCHAR(2000), 
	LEADCHANGE_BYPROPERTY_YN VARCHAR(1), 
	KEEP_LEAD_CONTROL_YN VARCHAR(1), 
	DUE_DATE_ORD DATE, 
	ALLOW_ALTERNATE_DATES_YN VARCHAR(1), 
	REGENERATED_LEAD_YN VARCHAR(1), 
	ORMS_BLOCK_CLASS VARCHAR(80), 
	LOST_TO_PROPERTY VARCHAR(100), 
	CXL_PENALTY NUMERIC, 
	ORMS_FINAL_BLOCK VARCHAR(1), 
	FIT_DISCOUNT_TYPE VARCHAR(20), 
	ORMS_TRANSIENT_BLOCK VARCHAR(1), 
	HLX_DEPOSIT_DAYS NUMERIC, 
	HLX_CANX_NOTICE_DAYS NUMERIC, 
	HLX_RETURN_EACH_DAY_YN VARCHAR(1), 
	HLX_COMMISSIONABLE_YN VARCHAR(1), 
	HLX_DI_SECURED_YN VARCHAR(1), 
	HLX_DD_SECURED_YN VARCHAR(1), 
	HLX_RATES_GNR_SECURED_YN VARCHAR(1), 
	HLX_RATE_ALL_SECURED_YN VARCHAR(1), 
	HLX_HOUSINGINFO_SECURED_YN VARCHAR(1), 
	ISAC_OPPTY_ID VARCHAR(30), 
	LINK_DATE DATE, 
	TLP_RESPONSEID VARCHAR(50), 
	TLP_URL VARCHAR(2000), 
	DISTRIBUTED_DATE DATE, 
	FB_AGENDA_CURR VARCHAR(20), 
	FIT_CONTRACT_MODE VARCHAR(3), 
	PROPOSAL_SHOW_SPACENAME_YN VARCHAR(1), 
	PROPOSAL_SHOW_EVENTPRICE_YN VARCHAR(1), 
	PROPOSAL_OWNER_SELECTION VARCHAR(1), 
	PROPOSAL_DECISION_SELECTION VARCHAR(1), 
	PROPOSAL_SENT_DATE DATE, 
	PROPOSAL_VIEW_TOKEN VARCHAR(2000), 
	ALLOTMENT_CLASSIFICATION VARCHAR(40), 
	SUPER_SEARCH_INDEX_TEXT VARCHAR(100), 
	RATE_PROTECTION VARCHAR(1), 
	NON_COMPETE VARCHAR(1), 
	CONVERSION_CODE VARCHAR(40), 
	RANKING_CODE VARCHAR(40), 
	NON_COMPETE_CODE VARCHAR(40), 
	RATE_GUARANTEED_YN VARCHAR(1), 
	PROPOSAL_SHOW_PMS_ROOM_TYPE_YN VARCHAR(1), 
	SC_QUOTE_ID VARCHAR(200)
   ) ;
 

   COMMENT ON COLUMN ALLOTMENT$HEADER.RESORT IS 'The property that the record belongs to';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.ALLOTMENT_HEADER_ID IS 'Unique Business Block ID';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.ALLOTMENT_TYPE IS 'Type of Block alloted for the group.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.BEGIN_DATE IS 'The day this record becomes valid for use by the system.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.END_DATE IS 'The day this record ceases to be valid for use by the system.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.DESCRIPTION IS 'Description for Allotment Code';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.SHOULDER_BEGIN_DATE IS 'Earliest Arrival Date';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.SHOULDER_END_DATE IS 'Latest Departure Date';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.ALLOTMENT_CODE IS 'Group code';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.MASTER_NAME_ID IS 'Profile Id. ( Name_Id ) of the Group Profile attached to this business block.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.COMPANY_NAME_ID IS 'Profile Id. ( Name_Id ) of the Company  attached to this business block.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.AGENT_NAME_ID IS 'Profile Id. ( Name_Id ) of the Travel Agent attached to this business block.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.SOURCE_NAME_ID IS 'Profile Id. ( Name_Id ) of the Source  attached to this business block.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.INACTIVE_DATE IS 'The date the record was marked as inactive';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.CANCEL_RULE IS 'Not Used';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.RATE_CODE IS 'The rate code for which this record applies';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.BOOKING_STATUS IS 'Business block status of the record';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.BOOKING_STATUS_ORDER IS 'Sorting Order for Business Block Status';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.STATUS IS 'Single Character that identifies the current status of the business block. ( Values can be I - Initial, F- Offer, O - Open for pickup & C - Cancelled';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.ELASTIC IS 'No of days can be extended from End Date even after expiry.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.INV_CUTOFF_DATE IS 'Date on which the available inventory for the block will be cut-off by the system.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.INV_CUTOFF_DAYS IS 'Number of days before when the available rooms for a particular room type and date should be picked-up, failing which the block inventory will be cut-off by the system.  This number is applicable to all room-types and dates that are attached to this busin';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.TENTATIVE_LEVEL IS 'Not used';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.INFO IS 'Not Used';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.MARKET_CODE IS 'Market code attached to this business block.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.SOURCE IS 'Origib of booking that is attached to this business block.,';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.CHANNEL IS 'Channel code attached to this business block';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.AVG_PEOPLE_PER_ROOM IS 'Not used';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.ORIGINAL_RATE_CODE IS 'Not used';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.BOOKING_ID IS 'External S&C vendor booking ID and used in HYATT-mode.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.CANCELLATION_NO IS 'Used to store the cancellation number.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.CANCELLATION_CODE IS 'User defined code that idenfies the reason for cancellation. ( Applicable only for cancelled business blocks ).';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.CANCELLATION_DATE IS 'Cancellation Date. ( Applicable only for cancelled business blocks ).';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.CANCELLATION_DESC IS 'User defined description that explains the reason for cancellation. ( Applicable only for cancelled business blocks ).';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.GUARANTEE_CODE IS 'Guarantee Code attached to this Business Block.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.ROOMS_PER_DAY IS 'Approximate number of rooms per day to be booked.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.AVERAGE_RATE IS 'Approximate / average rate.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.RESERVE_INVENTORY_YN IS 'Rooms Inventory is deducted from Property Inventory';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.ALLOTMENT_ORIGION IS 'PMS or SC, determines which application create the Business block';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.SUPER_BLOCK_ID IS 'Parent Block ID';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.SUPER_BLOCK_RESORT IS 'Parent Resort';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.ACTION_ID IS 'System generated number that identifies that last transaction that affected this record.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.DML_SEQ_NO IS 'Unique Identifier used internally by the system to identify the order in which records are affected in different tables within a single transaction.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.CONTACT_NAME_ID IS 'Contact Person Name';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.ALIAS IS 'Alternate block name for webProposal.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.SALES_ID IS 'Not used';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.PAYMENT_METHOD IS 'Mode of payment';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.RIV_MARKET_SEGMENT IS 'Not used';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.EXCHANGE_POSTING_TYPE IS 'Posting type to be used while converting the rates from the block''s currency to the base currency.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.CURRENCY_CODE IS 'Currency Code attached to this business block.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.EXCHANGE_RATE IS 'Exchange Rate of the block''s currency with respect to the hotel''s base currency.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.DATE_OPENED_FOR_PICKUP IS 'Business Date when the business block was opened for pickup.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.MAINMARKET IS 'Main Market Code';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.TRACECODE IS 'Trace Code';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.OWNER_RESORT IS 'Property of Business Block Owner';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.OWNER IS 'Business Block Owner ID';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.OWNER_CODE IS 'Business Block Owner SREPCODE';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.RMS_OWNER_RESORT IS 'Property of Rooms Salesmanager';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.RMS_OWNER IS 'Rooms Salesmanager ID';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.RMS_OWNER_CODE IS 'Primary Rooms Owner SalesRep Code';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.CAT_OWNER_RESORT IS 'Property of Catering Owner';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.CAT_OWNER IS 'Catering SalesManager ID';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.CAT_OWNER_CODE IS 'Primary Catering Owner SalesRep Code';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.BOOKINGTYPE IS 'Booking Type';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.BOOKINGMETHOD IS 'Booking Method';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.METHOD_DUE IS 'Due Date';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.RMS_DECISION IS 'Decision Date for Rooms';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.RMS_FOLLOWUP IS 'Rooms Followup Date';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.RMS_CURRENCY IS 'Rooms Currency Code';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.RMS_QUOTE_CURR IS 'Rooms quotes currency code';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.RMS_EXCHANGE IS 'Rooms Exchange Rate';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.ATTENDEES IS 'Number of Attendees for Catering Events';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.CAT_STATUS IS 'Catering Status';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.CAT_DECISION IS 'Catering Decision Date';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.CAT_FOLLOWUP IS 'Catering Followup Date';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.CAT_CUTOFF IS 'Catering Cutoff Date';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.CAT_CURRENCY IS 'Catering Currency';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.CAT_QUOTE_CURR IS 'Quoted Catering Currency';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.CAT_EXCHANGE IS 'Catering Currency Exchange rate';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.CAT_CANX_NO IS 'Catering Cancellation ID';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.CAT_CANX_CODE IS 'Catering Cancellation code';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.CAT_CANX_DATE IS 'Catering Cancellation Date';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.CAT_CANX_DESC IS 'Cancellation Description';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.INFOBOARD IS 'Catering Infoboard Name';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.BFST_YN IS 'Breakfast Included ?';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.BFST_PRICE IS 'Breakfast Price';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.BFST_DESC IS 'Breakfast Description';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.PORTERAGE_YN IS 'Portage Included';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.PORTERAGE_PRICE IS 'Porterage Price';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.COMMISSION IS 'Commission';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.DETAILS_OK_YN IS 'Contractual Details finalized';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.DISTRIBUTED_YN IS 'BEO is distrubuted';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.CONTRACT_NR IS 'Contract Number';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.FUNCTIONTYPE IS 'Type of Catering Function';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.REPRESENTATIVE IS 'Group Representative';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.DEFAULT_PM_RESV_NAME_ID IS 'Defualt Posting Master ID';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.CATERINGONLY_YN IS 'This is a Catering Only Booking ?';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.EVENTS_GUARANTEED_YN IS 'Customer guaranteed the Events';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.TAX_AMOUNT IS 'Tax Amount';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.SERVICE_CHARGE IS 'Service Charge';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.UDFC01 IS 'User-defined character field';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.UDFC02 IS 'User-defined character field';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.UDFC03 IS 'User-defined character field';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.UDFC04 IS 'User-defined character field';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.UDFC05 IS 'User-defined character field';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.UDFC06 IS 'User-defined character field';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.UDFC07 IS 'User-defined character field';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.UDFC08 IS 'User-defined character field';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.UDFC09 IS 'User-defined character field';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.UDFC10 IS 'User-defined character field';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.UDFD01 IS 'User-defined date field';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.UDFD02 IS 'User-defined date field';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.UDFD03 IS 'User-defined date field';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.UDFD04 IS 'User-defined date field';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.UDFD05 IS 'User-defined date field';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.UDFD06 IS 'User-defined date field';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.UDFD07 IS 'User-defined date field';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.UDFD08 IS 'User-defined date field';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.UDFD09 IS 'User-defined date field';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.UDFD10 IS 'User-defined date field';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.UDFN01 IS 'User-defined number field';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.UDFN02 IS 'User-defined number field';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.UDFN03 IS 'User-defined number field';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.UDFN04 IS 'User-defined number field';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.UDFN05 IS 'User-defined number field';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.UDFN06 IS 'User-defined number field';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.UDFN07 IS 'User-defined number field';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.UDFN08 IS 'User-defined number field';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.UDFN09 IS 'User-defined number field';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.UDFN10 IS 'User-defined number field';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.DOWNLOAD_RESORT IS 'Laptop: Property of Salesrep';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.DOWNLOAD_SREP IS 'Download SalesRep ID';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.DOWNLOAD_DATE IS 'Download Date';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.UPLOAD_DATE IS 'Expected checkin date';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.LAPTOP_CHANGE IS 'Laptop Change Indicator';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.EXTERNAL_REFERENCE IS 'External Reference';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.EXTERNAL_LOCKED IS 'Specifies if the block is under OPERA''s control or under an external system''s control.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.PROFILE_ID IS 'Business Profile ID';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.RESORT_BOOKED IS 'Final resort where Booking is confirmed -via Lead process.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.INSERT_DATE IS 'The date the record was created';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.INSERT_USER IS 'The user that created the record';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.UPDATE_DATE IS 'The date the record was modified';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.UPDATE_USER IS 'The user that modified the record';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.MANUAL_CUTOFF IS 'Block was cutoff manullay';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.SNAPSHOT_SETUP IS 'Snapshot has been created';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.TBD_RATES IS 'To be Determined Rates';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.DESTINATION IS 'Destination Code for Cancellation';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.LEAD_SOURCE IS 'Lead Source';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.PROGRAM IS 'Program';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.COMPETITION IS 'Competition';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.CONTROL_BLOCK_YN IS 'Control Block Y/N';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.CRS_GTD_YN IS 'CRS Guaranteed Y/N';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.SYNCHRONIZE_YN IS 'Synchronize Sub-Blocks with Master Block if  Y';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.MTG_REVENUE IS 'Meeting Revenue for SFA';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.MTG_BUDGET IS 'Meeting Budget';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.ARRIVAL_TIME IS 'Group Arrival Time';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.DEPARTURE_TIME IS 'Group Departure Time';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.COMP_ROOMS_FIXED_YN IS 'Complimentary Rooms: Fixed amount (Y) or calculated (N)';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.COMP_ROOMS IS 'Number of complimentary Rooms';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.COMP_PER_STAY_YN IS 'Complimentary Rooms based per Stay (Y) or per Night (N)';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.COMP_ROOM_VALUE IS 'Complimentary Rooms: Value given to Customer';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.UDESCRIPTION IS 'This is upper-case description of regular description column for fast search';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.XDESCRIPTION IS 'Multi Byte Description Field';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.XUDESCRIPTION IS 'Multi Byte Description in uppercase';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.RM_COMMISSION_1 IS 'stores Rooms commission for Agent 1';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.RM_COMMISSION_2 IS 'stores Rooms commission for Agent 2';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.FB_COMMISSION_1 IS 'stores FB commission for Agent 1';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.FB_COMMISSION_2 IS 'stores FB commission for Agent 2';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.CATERING_PKGS_YN IS 'Catering packages can be added to the Business Block';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.AGENT_CONTACT_NAME_ID IS 'Profile ID (Name_ID) of the Agent Contact attached to this business block.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.SHOW_RATE_AMOUNT_YN IS 'Flag used to show or hide rate column in Block Grid and used as default by block reservations.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.PRINT_RATE_YN IS 'Default value used for block reservations.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.SYNC_CONTRACT_YN IS 'Indicates if original grid will be copied to contract grid. Performed in the allotment_detail trigger.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.LEAD_TYPE IS 'Currently: BOOKING';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.LEAD_ORIGIN IS 'Property Code of Lead Origin.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.DUE_DATE IS 'Not in use.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.LEADSTATUS IS 'Lead Status [PEL|LSL|CFL]';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.SENT_YN IS 'Lead has been send.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.SENT_DATE IS 'Lead Sent Date.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.SENT_VIA IS 'Lead Sent Communication Method.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.SENT_BY IS 'Lead Sent by User ID.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.REPLY_STATUS IS 'Lead Replystatus [ACL|TDL]';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.REPLY_DATE IS 'Reply Date.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.REPLY_VIA IS 'Reply Communication Method.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.REPLY_BY IS 'Replied by User ID.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.DATE_PEL IS 'Date Lead turned Pending.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.DATE_ACL IS 'Date Lead was accepted.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.DATE_TDL IS 'Date Lead was turned down.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.DATE_CFL IS 'Date Lead was confirmed.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.DATE_LSL IS 'Date Lead was lost.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.TDL_REASON IS 'Turn Down Reason from entity_detail (TURNDOWNCODES).';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.LEAD_NEW_YN IS 'New Lead (Y/N) ?';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.LEAD_RECEIVED_YN IS 'Lead has been received, not used.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.LEADSEND1 IS 'Name of Contact 1 (Free text or from RESORT_CONTACTS)';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.LEADSEND2 IS 'Name of Contact 2 (Free text or from RESORT_CONTACTS)';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.LEADSEND3 IS 'Name of Contact 3 (Free text or from RESORT_CONTACTS)';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.COM_METHOD1 IS 'How this lead is to be sent. [EMAIL|FAX|PRINT|DATA]';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.COM_METHOD2 IS 'How this lead is to be sent. [EMAIL|FAX|PRINT|DATA]';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.COM_METHOD3 IS 'How this lead is to be sent. [EMAIL|FAX|PRINT|DATA]';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.COM_ADDRESS1 IS 'Communication Address for Contact 1 (E-mail / Fax #)';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.COM_ADDRESS2 IS 'Communication Address for Contact 2 (E-mail / Fax #)';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.COM_ADDRESS3 IS 'Communication Address for Contact 3 (E-mail / Fax #)';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.LEAD_ERROR IS 'Error Code during Lead Transmission, not in use.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.RESP_TIME IS 'Response Time.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.RESP_TIME_CODE IS 'The unit of time (from UNIT_OF_TIME table).';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.UPDATE_DATE_EXTERNAL IS 'Update Date by LEAD REPLY.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.HIDE_ACC_INFO_YN IS 'Hides Account/Contact Info if Y.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.PENDING_SEND_YN IS 'Indicates if Lead gets send via Lead Server.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.SEND_TO_CENTRAL_YN IS 'Identifies if a business block needs to be send to Central based on KEY_PROFILE_YN in NAME.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.CREDIT_CARD_ID IS 'Numeric ID of the credit card attached to business block. Links to NAME_CREDIT_CARD.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.EXCLUSION_MESSAGE IS 'The message that will pop up if the block is excluded (not allowed) to modify/create reservation/cancel reservation.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.POT_ROOM_NIGHTS IS 'Projected Room Nights.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.POT_ROOM_REVENUE IS 'Projected Room Revenue.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.POT_FB_REVENUE IS 'Projected F&B Revenue.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.POT_OTHER_REVENUE IS 'Projected Other Revenue.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.COMMISSIONABLE_YN IS 'PCR: is this rate code commissionable ?';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.COMMISSIONABLE_PERC IS 'PCR: Commissionable Percentage.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.FIT_DISCOUNT_PERC IS 'Published Corporate Rate: Discount Percentage.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.FIT_DISCOUNT_LEVEL IS 'Fit Discount Level.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.BFST_INCL_YN IS 'PCR: Is breakfast is included in this rate code?';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.BFST_INCL_PRICE IS 'PCR: The estimated breakfast price for this ratecode.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.SERVICE_INCL_YN IS 'PCR: Are Service Charges included in this rate code?';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.SERVICE_PERC IS 'Service Percentage included.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.DBL_RM_SUPPLEMENT_YN IS 'Stores the double room supplement.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.DBL_RM_SUPPLEMENT_PRICE IS 'Stores the double room supplement price.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.TAX_INCLUDED_YN IS 'Tax is included in this rate.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.TAX_INCLUDED_PERC IS 'Percentage of included Tax.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.RATE_OVERRIDE IS 'Indicates if the rate code can be overridden.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.CENTRAL_OWNER IS 'Stores the name and phone number of the primary central owner.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.SELL_THRU_YN IS 'Sell Thru Indicator.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.TOURCODE IS 'Tour Code.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.SERVICE_FEE_YN IS 'Service Fee applies?';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.SERVICE_FEE IS 'Service Fee Amount per room/night';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.CAT_ITEM_DISCOUNT IS 'Default discount percentage applied to catering items.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.BEGIN_DATE_ORIGINAL IS 'Stores the original block begin date. Any date ealier will be treated as a Shoulder date.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.END_DATE_ORIGINAL IS 'Stores the original block End date.  Any date later will be treated as a Shoulder date.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.ROOMING_LIST_RULES IS 'Stores Rooming List Rules.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.FLAT_RATE_YN IS 'Determines if rate check is done for Occ1 or Occ1 and Additional Rate.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.BLOCK_TYPE IS 'Determines block being [G] - Group or [W] - Wholesale.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.GREEK_CONTRACT_NR IS 'Greek Contract Number.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.TA_RECORD_LOCATOR IS 'Free format field to store information from Wholesaler.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.UALIAS IS 'Not in use.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.RATE_OVERRIDE_REASON IS 'Reason why the rate code was overridden, used for FIT Contracts.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.ORIGINAL_BEGIN_DATE_HOLIDEX IS 'Original Block Start Date, used as identifier in the HOLIDEX interface.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.SUB_ALLOTMENT_YN IS 'Indicates if Business Block is a Sub-Allocation.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.PUBLISH_RATES_YN IS 'Indicates that negotiated rates need to be published.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.TAX_TYPE IS 'NAME_TAX_TYPE to default on the Posting Master.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.BEO_LAST_PRINT IS 'Date when the BEO report was last printed for this business block.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.ATTACHMENT_URL IS 'URL pointing to Lead Attachments.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.LEADCHANGE_BYPROPERTY_YN IS 'Indication that the Property has updated the Lead Information, will prevent further SFA updates.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.KEEP_LEAD_CONTROL_YN IS 'If set to ?Y?, lead will not be converted to booking upon lead sending.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.DUE_DATE_ORD IS 'Due Date Sorting Column.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.ALLOW_ALTERNATE_DATES_YN IS 'Indicates if Alternate Dates can be specified by the property.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.REGENERATED_LEAD_YN IS 'Indicates if a lead has been regenerated (copied and lost) by the system and differentiates between leads that have been lost by the user or due to changes to the lead master.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.LOST_TO_PROPERTY IS 'Competitor to whom the booking was lost.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.CXL_PENALTY IS 'Charges received as result of  booking cancellation by the customer - Cancellation Penalty.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.FIT_DISCOUNT_TYPE IS 'Identifies whether FIT discount level is based on Room Nights or Total Revenue [ROOM, REVENUE].';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.HLX_DEPOSIT_DAYS IS 'SCH Mode: Number of Days Deposit due to guarantee the guest booking.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.HLX_CANX_NOTICE_DAYS IS 'SCH Mode: Number of days before the arrival date a reservation can be canceled without losing the deposit.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.HLX_RETURN_EACH_DAY_YN IS 'SCH Mode: Return One Day at a time.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.HLX_COMMISSIONABLE_YN IS 'SCH Mode: Determines if Travel Agent commission will be paid on reservations booked through the HOLIDEX Plus TACP program.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.HLX_DI_SECURED_YN IS 'SCH Mode: Secured from DI Display.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.HLX_DD_SECURED_YN IS 'SCH Mode: All Description DD Secured.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.HLX_RATES_GNR_SECURED_YN IS 'SCH Mode: Rates Secured from GNR.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.HLX_RATE_ALL_SECURED_YN IS 'SCH Mode: Rates Secured from All Displays';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.HLX_HOUSINGINFO_SECURED_YN IS 'SCH Mode: Housing Information Secured.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.ISAC_OPPTY_ID IS 'STAR MODE: ISAC opportunity ID.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.LINK_DATE IS 'STAR MODE: Date when the OPERA block was linked to an ISAC opportunity.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.TLP_RESPONSEID IS 'Stores the TLPe - Response ID';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.TLP_URL IS 'Stores the TLPe - Result URL.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.DISTRIBUTED_DATE IS 'Timestamp of the last date/time the distributed_yn flag was set to Y.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.FB_AGENDA_CURR IS 'Currency code for the F&B Agendas attached to the business block.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.FIT_CONTRACT_MODE IS 'Operation Mode for FIT Contracts [ SFA=SFA control, RC=Ratecode, RA=RateAmounts ]';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.PROPOSAL_SHOW_SPACENAME_YN IS 'Show function space names on webProposal.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.PROPOSAL_SHOW_EVENTPRICE_YN IS 'Show price per event on webProposal.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.PROPOSAL_OWNER_SELECTION IS 'Owner Selection: [O]verall Owner /  [R]ooms Owner /  [C]atering Owner.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.PROPOSAL_DECISION_SELECTION IS 'Decision Date Selection: [R]ooms Decision Date /  [C]atering Decision Date.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.PROPOSAL_SENT_DATE IS 'The date/time when the proposal was last send out in webProposal for this booking.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.PROPOSAL_VIEW_TOKEN IS 'The webProposal token to view the proposal.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.ALLOTMENT_CLASSIFICATION IS 'Classifies this allotment record: MASTER_ALLOCATION, SUB_ALLOCATION, SUB_BOOKING, SUB_TOUR, SUB_ITINERARY';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.SUPER_SEARCH_INDEX_TEXT IS 'Used in Oracle Text Index.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.RATE_PROTECTION IS 'Indicates that a Rate Protection exists for this booking: [A]ll, [S]ome, [N]one. No other group can be booked using rates lower than the one that is flagged as rate protect.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.NON_COMPETE IS 'Indicate that no other block of the same industry can be booked for the selected dates.Non-Compete indicator : [A]ll, [S]ome, [N]one.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.CONVERSION_CODE IS 'Conversion Code identifies the likelyhood of the booking moving to the next active status.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.RANKING_CODE IS 'Indicates the ranking of a block.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.NON_COMPETE_CODE IS 'Indicates the Non-Compete code of a block.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.RATE_GUARANTEED_YN IS 'Rate Guaranteed Y/N.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.PROPOSAL_SHOW_PMS_ROOM_TYPE_YN IS 'Show PMS roomtypes in webProposal otherwise S&C roomtypes are shown.';
 
   COMMENT ON COLUMN ALLOTMENT$HEADER.SC_QUOTE_ID IS 'Quote ID reference for the last printed catering quote report (S&C Quotation Report).';
--------------------------------------------------------
--  DDL for Table ALLOTMENT$DETAIL
--------------------------------------------------------

  CREATE TABLE ALLOTMENT$DETAIL 
   (	ALLOTMENT_DETAIL_ID NUMERIC, 
	ALLOTMENT_HEADER_ID NUMERIC, 
	RESORT VARCHAR(20), 
	ROOM_CATEGORY VARCHAR(20), 
	SC_ROOM_CATEGORY VARCHAR(20), 
	ALLOTMENT_DATE DATE, 
	ROOM_CLASS VARCHAR(20), 
	TO_SELL NUMERIC, 
	FORCASTED_TO_SELL NUMERIC, 
	ELASTIC NUMERIC, 
	SOLD NUMERIC, 
	ELASTIC_SOLD NUMERIC, 
	RELEASED NUMERIC, 
	SHOULDER_YN VARCHAR(1) DEFAULT 'N', 
	RATE_AMOUNT_1 NUMERIC, 
	RATE_AMOUNT_2 NUMERIC, 
	RATE_AMOUNT_3 NUMERIC, 
	RATE_AMOUNT_4 NUMERIC, 
	RATE_AMOUNT_AP NUMERIC, 
	ACTION_ID NUMERIC, 
	DML_SEQ_NO NUMERIC, 
	RATE_AMOUNT_CHILD NUMERIC, 
	PHYSICAL_CONVERSION_FACTOR NUMERIC, 
	CONTRACT NUMERIC, 
	PROJECTED_OCC1 NUMERIC, 
	PROJECTED_OCC2 NUMERIC, 
	PROJECTED_OCC3 NUMERIC, 
	PROJECTED_OCC4 NUMERIC, 
	PICKUP_OCC1 NUMERIC, 
	PICKUP_OCC2 NUMERIC, 
	PICKUP_OCC3 NUMERIC, 
	PICKUP_OCC4 NUMERIC, 
	PICKUP_RATE1 NUMERIC, 
	PICKUP_RATE2 NUMERIC, 
	PICKUP_RATE3 NUMERIC, 
	PICKUP_RATE4 NUMERIC, 
	PICKUP_RATEAP NUMERIC, 
	CONTRACT_OCC1 NUMERIC, 
	CONTRACT_OCC2 NUMERIC, 
	CONTRACT_OCC3 NUMERIC, 
	CONTRACT_OCC4 NUMERIC, 
	LAPTOP_CHANGE NUMERIC(2,0), 
	INSERT_DATE DATE, 
	INSERT_USER NUMERIC, 
	UPDATE_DATE DATE, 
	UPDATE_USER NUMERIC, 
	CUTOFF_DATE DATE, 
	RECORD_TYPE VARCHAR(20), 
	INVENTORY_DEDUCT NUMERIC, 
	INVENTORY_DATE DATE, 
	BOOKING_POSITION NUMERIC, 
	SUB_BLOCK_PICKUP NUMERIC, 
	MATERIALIZATION_AMNT NUMERIC, 
	CHANGE_DATE DATE, 
	DISCOUNT_REASON_CODE VARCHAR(20), 
	DISCOUNT_AMT NUMERIC, 
	DISCOUNT_PCT NUMERIC, 
	FIXED_RATE_YN VARCHAR(1)
   ) ;
 

   COMMENT ON COLUMN ALLOTMENT$DETAIL.ALLOTMENT_DETAIL_ID IS 'Allotment_detail_id -- Sequence generated column.';
 
   COMMENT ON COLUMN ALLOTMENT$DETAIL.ALLOTMENT_HEADER_ID IS 'Unique ID link for Allotment Header.';
 
   COMMENT ON COLUMN ALLOTMENT$DETAIL.RESORT IS 'The property that the record belongs to';
 
   COMMENT ON COLUMN ALLOTMENT$DETAIL.ROOM_CATEGORY IS 'This is the Room Type booked for this allotment.';
 
   COMMENT ON COLUMN ALLOTMENT$DETAIL.SC_ROOM_CATEGORY IS 'Sales & Catering Room Category that is linked to ROOM_CATEGORY';
 
   COMMENT ON COLUMN ALLOTMENT$DETAIL.ALLOTMENT_DATE IS 'Date of Allotment for which the specified room category is booked.';
 
   COMMENT ON COLUMN ALLOTMENT$DETAIL.ROOM_CLASS IS 'Room Class that this record corresponds to';
 
   COMMENT ON COLUMN ALLOTMENT$DETAIL.TO_SELL IS 'Allocated Rooms for this day/roomtype.';
 
   COMMENT ON COLUMN ALLOTMENT$DETAIL.FORCASTED_TO_SELL IS 'FORCASTED_TO_SELL inventory';
 
   COMMENT ON COLUMN ALLOTMENT$DETAIL.ELASTIC IS 'Not Used.';
 
   COMMENT ON COLUMN ALLOTMENT$DETAIL.SOLD IS 'Number of rooms picked up by reservations.';
 
   COMMENT ON COLUMN ALLOTMENT$DETAIL.ELASTIC_SOLD IS 'Not Used.';
 
   COMMENT ON COLUMN ALLOTMENT$DETAIL.RELEASED IS 'Number of rooms released by block cutoff';
 
   COMMENT ON COLUMN ALLOTMENT$DETAIL.SHOULDER_YN IS 'Indicates if this date is a shoulder date.';
 
   COMMENT ON COLUMN ALLOTMENT$DETAIL.RATE_AMOUNT_1 IS '1 person rate';
 
   COMMENT ON COLUMN ALLOTMENT$DETAIL.RATE_AMOUNT_2 IS '2 person rate';
 
   COMMENT ON COLUMN ALLOTMENT$DETAIL.RATE_AMOUNT_3 IS '3  person rate';
 
   COMMENT ON COLUMN ALLOTMENT$DETAIL.RATE_AMOUNT_4 IS '4  person rate';
 
   COMMENT ON COLUMN ALLOTMENT$DETAIL.RATE_AMOUNT_AP IS 'Additional person rate.';
 
   COMMENT ON COLUMN ALLOTMENT$DETAIL.ACTION_ID IS 'The action identification number of the last action that affected this record.';
 
   COMMENT ON COLUMN ALLOTMENT$DETAIL.DML_SEQ_NO IS 'Unique Identifier used internally by the system to identify the order in which records are affected in different tables within a single transaction.';
 
   COMMENT ON COLUMN ALLOTMENT$DETAIL.RATE_AMOUNT_CHILD IS 'Rate amount to be applied for children in this business block, for the room type and date that this record corresponds to ..';
 
   COMMENT ON COLUMN ALLOTMENT$DETAIL.PHYSICAL_CONVERSION_FACTOR IS 'Not Used.';
 
   COMMENT ON COLUMN ALLOTMENT$DETAIL.CONTRACT IS 'Number of rooms that are in contracted status in this business block  for the particular room type & date that this record corresponds to.';
 
   COMMENT ON COLUMN ALLOTMENT$DETAIL.PROJECTED_OCC1 IS 'Projected number of rooms with Single occupancy  when the business block is in the Initial status ( not open for pickup yet ) for the particular room type & date that this record corresponds to.';
 
   COMMENT ON COLUMN ALLOTMENT$DETAIL.PROJECTED_OCC2 IS 'Projected number of rooms with Double occupancy  when the business block is in the Initial status ( not open for pickup yet ) for the particular room type & date that this record corresponds to.';
 
   COMMENT ON COLUMN ALLOTMENT$DETAIL.PROJECTED_OCC3 IS 'Projected number of rooms with Triple occupancy  when the business block is in the Initial status ( not open for pickup yet ) for the particular room type & date that this record corresponds to.';
 
   COMMENT ON COLUMN ALLOTMENT$DETAIL.PROJECTED_OCC4 IS 'Projected number of rooms with Quadruple occupancy  when the business block is in the Initial status ( not open for pickup yet ) for the particular room type & date that this record corresponds to.';
 
   COMMENT ON COLUMN ALLOTMENT$DETAIL.PICKUP_OCC1 IS 'Number of rooms with Single occupancy that are in Picked Up status in this business block  for the particular room type & date that this record corresponds to.';
 
   COMMENT ON COLUMN ALLOTMENT$DETAIL.PICKUP_OCC2 IS 'Number of rooms with Double occupancy that are in Picked Up status in this business block  for the particular room type & date that this record corresponds to.';
 
   COMMENT ON COLUMN ALLOTMENT$DETAIL.PICKUP_OCC3 IS 'Number of rooms with Triple occupancy that are in Picked Up status in this business block  for the particular room type & date that this record corresponds to.';
 
   COMMENT ON COLUMN ALLOTMENT$DETAIL.PICKUP_OCC4 IS 'Number of rooms with Quadruple occupancy that are in Picked Up status in this business block  for the particular room type & date that this record corresponds to.';
 
   COMMENT ON COLUMN ALLOTMENT$DETAIL.PICKUP_RATE1 IS 'Rate ( Amount ) to be used for rooms with Single occupancy in this business block  for the particular room type & date that this record corresponds to.';
 
   COMMENT ON COLUMN ALLOTMENT$DETAIL.PICKUP_RATE2 IS 'Rate ( Amount ) to be used for rooms with Double occupancy in this business block  for the particular room type & date that this record corresponds to.';
 
   COMMENT ON COLUMN ALLOTMENT$DETAIL.PICKUP_RATE3 IS 'Rate ( Amount ) to be used for rooms with Triple occupancy in this business block  for the particular room type & date that this record corresponds to.';
 
   COMMENT ON COLUMN ALLOTMENT$DETAIL.PICKUP_RATE4 IS 'Rate ( Amount ) to be used for rooms with Quadruple occupancy in this business block  for the particular room type & date that this record corresponds to.';
 
   COMMENT ON COLUMN ALLOTMENT$DETAIL.PICKUP_RATEAP IS 'Rate ( Amount ) to be used for rooms with occupancy more than 4, in this business block  for the particular room type & date that this record corresponds to.';
 
   COMMENT ON COLUMN ALLOTMENT$DETAIL.CONTRACT_OCC1 IS 'Number of rooms with Single occupancy that are in contracted status in this business block  for the particular room type & date that this record corresponds to.';
 
   COMMENT ON COLUMN ALLOTMENT$DETAIL.CONTRACT_OCC2 IS 'Number of rooms with Double occupancy that are in contracted status in this business block  for the particular room type & date that this record corresponds to.';
 
   COMMENT ON COLUMN ALLOTMENT$DETAIL.CONTRACT_OCC3 IS 'Number of rooms with Triple occupancy that are in contracted status in this business block  for the particular room type & date that this record corresponds to.';
 
   COMMENT ON COLUMN ALLOTMENT$DETAIL.CONTRACT_OCC4 IS 'Number of rooms with Quadruple occupancy that are in contracted status in this business block  for the particular room type & date that this record corresponds to.';
 
   COMMENT ON COLUMN ALLOTMENT$DETAIL.LAPTOP_CHANGE IS 'Laptop change indicator';
 
   COMMENT ON COLUMN ALLOTMENT$DETAIL.INSERT_DATE IS 'The date the record was created';
 
   COMMENT ON COLUMN ALLOTMENT$DETAIL.INSERT_USER IS 'The user that created the record';
 
   COMMENT ON COLUMN ALLOTMENT$DETAIL.UPDATE_DATE IS 'The date the record was modified';
 
   COMMENT ON COLUMN ALLOTMENT$DETAIL.UPDATE_USER IS 'The user that modified the record';
 
   COMMENT ON COLUMN ALLOTMENT$DETAIL.CUTOFF_DATE IS 'Date when inventory left in the block will be cut-off.';
 
   COMMENT ON COLUMN ALLOTMENT$DETAIL.RECORD_TYPE IS 'Identifies the detail record for Allotted Rooms,Sell Limits, etc.';
 
   COMMENT ON COLUMN ALLOTMENT$DETAIL.INVENTORY_DEDUCT IS 'Stores either forecast_to_sell/to_sell/sold column depending on Record Type.';
 
   COMMENT ON COLUMN ALLOTMENT$DETAIL.INVENTORY_DATE IS 'Last date when column inventory_deduct was changed.';
 
   COMMENT ON COLUMN ALLOTMENT$DETAIL.BOOKING_POSITION IS 'Stores the Booking Position room pickup.';
 
   COMMENT ON COLUMN ALLOTMENT$DETAIL.SUB_BLOCK_PICKUP IS 'Number of rooms allotted by Sub-Allocations for the Master-Allocation.';
 
   COMMENT ON COLUMN ALLOTMENT$DETAIL.CHANGE_DATE IS 'Contains the latest Business Date when changes have occured.';
 
   COMMENT ON COLUMN ALLOTMENT$DETAIL.DISCOUNT_REASON_CODE IS 'Discount Reason Code.';
 
   COMMENT ON COLUMN ALLOTMENT$DETAIL.DISCOUNT_AMT IS 'Discount Amount.';
 
   COMMENT ON COLUMN ALLOTMENT$DETAIL.DISCOUNT_PCT IS 'Discount Percentage.';
 
   COMMENT ON COLUMN ALLOTMENT$DETAIL.FIXED_RATE_YN IS 'Allows the change of room block rate amounts when a rate code is attached to the business block.';
--------------------------------------------------------
--  DDL for Table ALLOTMENT$ALTERNATE_DATES
--------------------------------------------------------

  CREATE TABLE ALLOTMENT$ALTERNATE_DATES 
   (	RESORT VARCHAR(20), 
	ALLOTMENT_HEADER_ID NUMERIC, 
	ARRIVAL_DATE DATE, 
	DEPARTURE_DATE DATE, 
	ALTERNATE_ARRIVAL_DATE DATE, 
	ALTERNATE_DEPARTURE_DATE DATE, 
	ALLOTMENT_ALT_DATE_SEQNO NUMERIC, 
	ROOM_CATEGORY VARCHAR(20), 
	SINGLE_OCC_RATE NUMERIC, 
	DOUBLE_OCC_RATE NUMERIC, 
	TRIPLE_OCC_RATE NUMERIC, 
	QUAD_OCC_RATE NUMERIC, 
	PREFERRED_YN VARCHAR(1), 
	SC_ROOM_CATEGORY VARCHAR(20), 
	PRIORITY NUMERIC, 
	MAIN_BOOK_DATES_YN VARCHAR(1)
   ) ;
 

   COMMENT ON COLUMN ALLOTMENT$ALTERNATE_DATES.RESORT IS 'Property this record belongs to.';
 
   COMMENT ON COLUMN ALLOTMENT$ALTERNATE_DATES.ALLOTMENT_HEADER_ID IS 'FK Reference to Allotment$Header table.';
 
   COMMENT ON COLUMN ALLOTMENT$ALTERNATE_DATES.ARRIVAL_DATE IS 'Preferred Arrival Date.';
 
   COMMENT ON COLUMN ALLOTMENT$ALTERNATE_DATES.DEPARTURE_DATE IS 'Preferred Departure date.';
 
   COMMENT ON COLUMN ALLOTMENT$ALTERNATE_DATES.ALTERNATE_ARRIVAL_DATE IS 'Alternate Arrival Date.';
 
   COMMENT ON COLUMN ALLOTMENT$ALTERNATE_DATES.ALTERNATE_DEPARTURE_DATE IS 'Alternate Departure Date.';
 
   COMMENT ON COLUMN ALLOTMENT$ALTERNATE_DATES.ALLOTMENT_ALT_DATE_SEQNO IS 'Primary Key ID.';
 
   COMMENT ON COLUMN ALLOTMENT$ALTERNATE_DATES.ROOM_CATEGORY IS 'Room Type for the alternate date.';
 
   COMMENT ON COLUMN ALLOTMENT$ALTERNATE_DATES.SINGLE_OCC_RATE IS '1 Person Rate.';
 
   COMMENT ON COLUMN ALLOTMENT$ALTERNATE_DATES.DOUBLE_OCC_RATE IS '2 Person Rate.';
 
   COMMENT ON COLUMN ALLOTMENT$ALTERNATE_DATES.TRIPLE_OCC_RATE IS '3 Person Rate.';
 
   COMMENT ON COLUMN ALLOTMENT$ALTERNATE_DATES.QUAD_OCC_RATE IS '3 Person Rate.';
 
   COMMENT ON COLUMN ALLOTMENT$ALTERNATE_DATES.PREFERRED_YN IS 'Indicates the preferred alternate date.';
 
   COMMENT ON COLUMN ALLOTMENT$ALTERNATE_DATES.SC_ROOM_CATEGORY IS 'SC Room Type for the alternate date.';
 
   COMMENT ON COLUMN ALLOTMENT$ALTERNATE_DATES.PRIORITY IS 'Priority to specify how the alternate dates would fit best in the property (-1 = NA, 0 = Blank, 1 = Preferred Date, 2 = Next Preferred Date, ...)';
 
   COMMENT ON COLUMN ALLOTMENT$ALTERNATE_DATES.MAIN_BOOK_DATES_YN IS 'Indicates if this record corresponds with the main booking dates.';
--------------------------------------------------------
--  DDL for Table ALLOTMENT$REMOTE_OWNERS
--------------------------------------------------------

  CREATE TABLE ALLOTMENT$REMOTE_OWNERS 
   (	ALLOT_REMOTE_OWNER_ID NUMERIC, 
	RESORT VARCHAR(20), 
	ALLOTMENT_HEADER_ID NUMERIC, 
	OWNER_RESORT VARCHAR(20), 
	OWNER_CODE VARCHAR(10), 
	OWNER_TYPE VARCHAR(20), 
	OWNER_ORIGIN VARCHAR(1), 
	LAST_NAME VARCHAR(40), 
	FIRST_NAME VARCHAR(40), 
	PRIMARY_EMAIL VARCHAR(2000), 
	PRIMARY_PHONE VARCHAR(2000), 
	INSERT_DATE DATE, 
	INSERT_USER NUMERIC, 
	UPDATE_DATE DATE, 
	UPDATE_USER NUMERIC
   ) ;
 

   COMMENT ON COLUMN ALLOTMENT$REMOTE_OWNERS.ALLOT_REMOTE_OWNER_ID IS 'Allotment Remote Owner ID (PK).';
 
   COMMENT ON COLUMN ALLOTMENT$REMOTE_OWNERS.RESORT IS 'Property of the Business Block the remote owner is linked to.';
 
   COMMENT ON COLUMN ALLOTMENT$REMOTE_OWNERS.ALLOTMENT_HEADER_ID IS 'Business Block ID the remote owner is linked to.';
 
   COMMENT ON COLUMN ALLOTMENT$REMOTE_OWNERS.OWNER_RESORT IS 'Owner default Property Code.';
 
   COMMENT ON COLUMN ALLOTMENT$REMOTE_OWNERS.OWNER_CODE IS 'Owner initials.';
 
   COMMENT ON COLUMN ALLOTMENT$REMOTE_OWNERS.OWNER_TYPE IS 'Identifies the Owner type: BOOK, ROOM, CATERING.';
 
   COMMENT ON COLUMN ALLOTMENT$REMOTE_OWNERS.OWNER_ORIGIN IS 'Owner Origin: [C]entral / [P]roperty.';
 
   COMMENT ON COLUMN ALLOTMENT$REMOTE_OWNERS.LAST_NAME IS 'Owner Last Name.';
 
   COMMENT ON COLUMN ALLOTMENT$REMOTE_OWNERS.FIRST_NAME IS 'Owner First Name.';
 
   COMMENT ON COLUMN ALLOTMENT$REMOTE_OWNERS.PRIMARY_EMAIL IS 'Owner Primary Email address.';
 
   COMMENT ON COLUMN ALLOTMENT$REMOTE_OWNERS.PRIMARY_PHONE IS 'Owner Primary Phone Number.';
 
   COMMENT ON COLUMN ALLOTMENT$REMOTE_OWNERS.INSERT_DATE IS 'The date the record was created.';
 
   COMMENT ON COLUMN ALLOTMENT$REMOTE_OWNERS.INSERT_USER IS 'The user that created the record.';
 
   COMMENT ON COLUMN ALLOTMENT$REMOTE_OWNERS.UPDATE_DATE IS 'The date the record was modified.';
 
   COMMENT ON COLUMN ALLOTMENT$REMOTE_OWNERS.UPDATE_USER IS 'The user that modified the record.';
--------------------------------------------------------
--  DDL for Table ALLOTMENT_ACTION
--------------------------------------------------------

  CREATE TABLE ALLOTMENT_ACTION 
   (	RESORT VARCHAR(20), 
	ALLOTMENT_HEADER_ID NUMERIC, 
	ACTION_ID NUMERIC, 
	ACTION_TYPE VARCHAR(100), 
	ACTION_DESC VARCHAR(2000), 
	MACHINE VARCHAR(64), 
	TERMINAL VARCHAR(10), 
	INSERT_USER NUMERIC, 
	INSERT_DATE DATE, 
	LAPTOP_CHANGE NUMERIC(2,0), 
	PARENT_ACTION_ID NUMERIC, 
	MODULE VARCHAR(2000), 
	CHILD_PRIMARY_ID VARCHAR(500), 
	CHAIN_CODE VARCHAR(20), 
	CHANGE_DATE DATE
   ) ;
 

   COMMENT ON COLUMN ALLOTMENT_ACTION.RESORT IS 'The property that the record belongs to';
 
   COMMENT ON COLUMN ALLOTMENT_ACTION.ALLOTMENT_HEADER_ID IS 'Unique ID for Allotment.';
 
   COMMENT ON COLUMN ALLOTMENT_ACTION.ACTION_ID IS 'System generated Action Id';
 
   COMMENT ON COLUMN ALLOTMENT_ACTION.ACTION_TYPE IS 'Type of action that this record corresponds to.';
 
   COMMENT ON COLUMN ALLOTMENT_ACTION.ACTION_DESC IS 'Action Description';
 
   COMMENT ON COLUMN ALLOTMENT_ACTION.MACHINE IS 'Machine from where the action was performed in the system';
 
   COMMENT ON COLUMN ALLOTMENT_ACTION.TERMINAL IS 'Workstation from where the action was performed in the system';
 
   COMMENT ON COLUMN ALLOTMENT_ACTION.INSERT_USER IS 'The user that created the record';
 
   COMMENT ON COLUMN ALLOTMENT_ACTION.INSERT_DATE IS 'The date the record was created';
 
   COMMENT ON COLUMN ALLOTMENT_ACTION.LAPTOP_CHANGE IS 'Laptop Change Indicator';
 
   COMMENT ON COLUMN ALLOTMENT_ACTION.PARENT_ACTION_ID IS 'Stores the parent Action ID for grouped Allotment Actions';
 
   COMMENT ON COLUMN ALLOTMENT_ACTION.MODULE IS 'Contains the module name that triggered this action';
 
   COMMENT ON COLUMN ALLOTMENT_ACTION.CHILD_PRIMARY_ID IS 'Contains linking ID to a child table of Allotment_Header as defined by ACTION_TYPE.';
 
   COMMENT ON COLUMN ALLOTMENT_ACTION.CHAIN_CODE IS 'Chain code.';
 
   COMMENT ON COLUMN ALLOTMENT_ACTION.CHANGE_DATE IS 'Contains the latest Business Date when changes have occured.';
--------------------------------------------------------
--  DDL for Table ALLOTMENT_DETAIL_DATA_ELEMENTS
--------------------------------------------------------

  CREATE GLOBAL TEMPORARY TABLE ALLOTMENT_DETAIL_DATA_ELEMENTS 
   (	DATA_ELEMENT VARCHAR(240), 
	OLD_VALUE VARCHAR(1000), 
	NEW_VALUE VARCHAR(1000), 
	SCOPE_FROM DATE, 
	SCOPE_TO DATE, 
	ALLOTMENT_HEADER_ID NUMERIC, 
	ROOM_CATEGORY NUMERIC
   ) ON COMMIT DELETE ROWS ;
 

   COMMENT ON COLUMN ALLOTMENT_DETAIL_DATA_ELEMENTS.DATA_ELEMENT IS 'The name of the data element changed.';
 
   COMMENT ON COLUMN ALLOTMENT_DETAIL_DATA_ELEMENTS.OLD_VALUE IS 'The Old value of the changed data element.';
 
   COMMENT ON COLUMN ALLOTMENT_DETAIL_DATA_ELEMENTS.NEW_VALUE IS 'The new value of the changed data element.';
 
   COMMENT ON COLUMN ALLOTMENT_DETAIL_DATA_ELEMENTS.SCOPE_FROM IS 'The FROM date for a scope change.';
 
   COMMENT ON COLUMN ALLOTMENT_DETAIL_DATA_ELEMENTS.SCOPE_TO IS 'The TO date for a scope change.';
 
   COMMENT ON COLUMN ALLOTMENT_DETAIL_DATA_ELEMENTS.ALLOTMENT_HEADER_ID IS 'Linked ID to the ALLOTMENT$HEADER table.';
 
   COMMENT ON COLUMN ALLOTMENT_DETAIL_DATA_ELEMENTS.ROOM_CATEGORY IS 'The Room Type changed for this room block.';
--------------------------------------------------------
--  DDL for Table ALLOTMENT_ITEMS
--------------------------------------------------------

  CREATE TABLE ALLOTMENT_ITEMS 
   (	ID NUMERIC, 
	RESORT VARCHAR(20), 
	ALLOTMENT_HEADER_ID NUMERIC, 
	ITEM_ID NUMERIC, 
	BEGIN_DATE DATE, 
	END_DATE DATE, 
	QUANTITY NUMERIC, 
	INSERT_DATE DATE, 
	INSERT_USER NUMERIC, 
	UPDATE_DATE DATE, 
	UPDATE_USER NUMERIC
   ) ;
 

   COMMENT ON COLUMN ALLOTMENT_ITEMS.ID IS 'Unique ID for this record from ALLOTMENT_ITEMS_SEQNO.';
 
   COMMENT ON COLUMN ALLOTMENT_ITEMS.RESORT IS 'Property this record belongs to.';
 
   COMMENT ON COLUMN ALLOTMENT_ITEMS.ALLOTMENT_HEADER_ID IS 'references ID from ALLOTMENT_HEADER table.';
 
   COMMENT ON COLUMN ALLOTMENT_ITEMS.ITEM_ID IS 'reference Item ID from GEM$ITEM table.';
 
   COMMENT ON COLUMN ALLOTMENT_ITEMS.BEGIN_DATE IS 'Item Inventory starts from this date.';
 
   COMMENT ON COLUMN ALLOTMENT_ITEMS.END_DATE IS 'Item Inventory ends on this date.';
 
   COMMENT ON COLUMN ALLOTMENT_ITEMS.QUANTITY IS 'Item quantity that is reserved on this date.';
 
   COMMENT ON COLUMN ALLOTMENT_ITEMS.INSERT_DATE IS 'Date this record was created.';
 
   COMMENT ON COLUMN ALLOTMENT_ITEMS.INSERT_USER IS 'User that created this record.';
 
   COMMENT ON COLUMN ALLOTMENT_ITEMS.UPDATE_DATE IS 'Date this record was updated.';
 
   COMMENT ON COLUMN ALLOTMENT_ITEMS.UPDATE_USER IS 'User that updated this record.';
--------------------------------------------------------
--  DDL for Table ALLOTMENT_RATES
--------------------------------------------------------

  CREATE TABLE ALLOTMENT_RATES 
   (	RESORT VARCHAR(20), 
	ALLOTMENT_HEADER_ID NUMERIC, 
	RATE_CODE VARCHAR(20), 
	PRIMARY_YN VARCHAR(1), 
	INSERT_DATE DATE, 
	INSERT_USER NUMERIC, 
	RECORD_TYPE VARCHAR(20) DEFAULT 'ALLOTMENT', 
	BEGIN_DATE DATE, 
	END_DATE DATE
   ) ;
 

   COMMENT ON COLUMN ALLOTMENT_RATES.RESORT IS 'The property this record belongs to.';
 
   COMMENT ON COLUMN ALLOTMENT_RATES.ALLOTMENT_HEADER_ID IS 'Unique Contract/Business Block ID.';
 
   COMMENT ON COLUMN ALLOTMENT_RATES.RATE_CODE IS 'Stores the rate code.';
 
   COMMENT ON COLUMN ALLOTMENT_RATES.PRIMARY_YN IS 'Indicates the primary rate code.';
 
   COMMENT ON COLUMN ALLOTMENT_RATES.INSERT_DATE IS 'The date the record was created.';
 
   COMMENT ON COLUMN ALLOTMENT_RATES.INSERT_USER IS 'The user that created the record.';
 
   COMMENT ON COLUMN ALLOTMENT_RATES.RECORD_TYPE IS 'The allotment detail record type this rate code applies to.';
 
   COMMENT ON COLUMN ALLOTMENT_RATES.BEGIN_DATE IS 'Date this rate code takes effect.';
 
   COMMENT ON COLUMN ALLOTMENT_RATES.END_DATE IS 'Date until this rate code is in effect.';
--------------------------------------------------------
--  DDL for Table ALTERNATE_RESORT
--------------------------------------------------------

  CREATE TABLE ALTERNATE_RESORT 
   (	RESORT VARCHAR(20), 
	ALTERNATE_RESORT VARCHAR(20), 
	INSERT_DATE DATE, 
	INSERT_USER NUMERIC, 
	UPDATE_DATE DATE, 
	UPDATE_USER NUMERIC, 
	DISTANCE NUMERIC, 
	DISTANCE_TYPE VARCHAR(20), 
	DRIVING_TIME VARCHAR(20), 
	DIRECTION VARCHAR(20), 
	COMMENTS VARCHAR(2000), 
	ORDER_BY NUMERIC, 
	CROSS_BOOKING_YN VARCHAR(1), 
	CROSS_POSTING_YN VARCHAR(1), 
	CROSS_BLOCKING_YN VARCHAR(1), 
	ALTERNATE_YN VARCHAR(1), 
	CROSS_REPORTING_YN VARCHAR(1)
   ) ;
 

   COMMENT ON COLUMN ALTERNATE_RESORT.RESORT IS 'The property that the record belongs to';
 
   COMMENT ON COLUMN ALTERNATE_RESORT.ALTERNATE_RESORT IS 'The alternate resort for this property.';
 
   COMMENT ON COLUMN ALTERNATE_RESORT.INSERT_DATE IS 'The date the record was created';
 
   COMMENT ON COLUMN ALTERNATE_RESORT.INSERT_USER IS 'The user that created the record';
 
   COMMENT ON COLUMN ALTERNATE_RESORT.UPDATE_DATE IS 'The date the record was modified';
 
   COMMENT ON COLUMN ALTERNATE_RESORT.UPDATE_USER IS 'The user that modified the record';
 
   COMMENT ON COLUMN ALTERNATE_RESORT.DISTANCE IS 'The distance to the alternate property.';
 
   COMMENT ON COLUMN ALTERNATE_RESORT.DISTANCE_TYPE IS 'The distance type to the alternate (I.E: Kilometers, Miles, Yards)';
 
   COMMENT ON COLUMN ALTERNATE_RESORT.DRIVING_TIME IS 'The driving time to the alternate.';
 
   COMMENT ON COLUMN ALTERNATE_RESORT.DIRECTION IS 'The direction from the given property to the alternate property.';
 
   COMMENT ON COLUMN ALTERNATE_RESORT.COMMENTS IS 'Any comments regarding this property as it pertains to its status as an alternate.';
 
   COMMENT ON COLUMN ALTERNATE_RESORT.ORDER_BY IS 'The order in which alternate resorts will be shown.';
--------------------------------------------------------
--  DDL for Table COUNTRY$
--------------------------------------------------------

  CREATE TABLE COUNTRY$ 
   (	NAME VARCHAR(20), 
	STATUS VARCHAR(20), 
	COUNTRY_CODE VARCHAR(3), 
	GUEST_ADDRESS_FORMAT VARCHAR(20) DEFAULT 'DEFAULT_GUEST', 
	PROPERTY_ADDRESS_FORMAT VARCHAR(20) DEFAULT 'DEFAULT_PROPERTY', 
	COUNTRY_NAME VARCHAR(300), 
	STATISTIC_CODE VARCHAR(3), 
	REGION_CODE VARCHAR(3), 
	INSERT_USER NUMERIC, 
	INSERT_DATE DATE, 
	UPDATE_USER NUMERIC, 
	UPDATE_DATE DATE, 
	INACTIVE_DATE DATE, 
	ISO_CODE VARCHAR(20), 
	ISO_NAME VARCHAR(200), 
	SHOW_SEQUENCE NUMERIC, 
	PRINT_SEQUENCE NUMERIC, 
	COUNTRY_MAIN_GROUP VARCHAR(40), 
	CAN_DELETE_YN VARCHAR(1) DEFAULT 'Y', 
	ADDRESSDOCTOR_MODE VARCHAR(20), 
	DISPLAY_COUNTRY_FLAG_YN VARCHAR(1)
   ) ;
 

   COMMENT ON COLUMN COUNTRY$.NAME IS 'Not Used.';
 
   COMMENT ON COLUMN COUNTRY$.STATUS IS 'Not Used.';
 
   COMMENT ON COLUMN COUNTRY$.COUNTRY_CODE IS 'The unique identifier for this country.  The primary key for this table.';
 
   COMMENT ON COLUMN COUNTRY$.GUEST_ADDRESS_FORMAT IS 'Guest Address Format Codes. For Confirmation Letters.';
 
   COMMENT ON COLUMN COUNTRY$.PROPERTY_ADDRESS_FORMAT IS 'Property Address Format Codes. For Confirmation Letters.';
 
   COMMENT ON COLUMN COUNTRY$.COUNTRY_NAME IS 'Country name.';
 
   COMMENT ON COLUMN COUNTRY$.STATISTIC_CODE IS 'Internal';
 
   COMMENT ON COLUMN COUNTRY$.REGION_CODE IS 'Region to which the Country belongs.';
 
   COMMENT ON COLUMN COUNTRY$.INSERT_USER IS 'The user that created the record';
 
   COMMENT ON COLUMN COUNTRY$.INSERT_DATE IS 'The date the record was created';
 
   COMMENT ON COLUMN COUNTRY$.UPDATE_USER IS 'The user that modified the record';
 
   COMMENT ON COLUMN COUNTRY$.UPDATE_DATE IS 'The date the record was modified';
 
   COMMENT ON COLUMN COUNTRY$.INACTIVE_DATE IS 'The date the record was marked as inactive';
 
   COMMENT ON COLUMN COUNTRY$.ISO_CODE IS 'ISO standard code for the country';
 
   COMMENT ON COLUMN COUNTRY$.ISO_NAME IS 'ISO standard name for the country';
 
   COMMENT ON COLUMN COUNTRY$.SHOW_SEQUENCE IS 'Display sequence for LOVs';
 
   COMMENT ON COLUMN COUNTRY$.PRINT_SEQUENCE IS 'Print sequence for reports';
 
   COMMENT ON COLUMN COUNTRY$.COUNTRY_MAIN_GROUP IS 'Main group of country. Used in statistic reports (e.g. ISTAT)';
 
   COMMENT ON COLUMN COUNTRY$.CAN_DELETE_YN IS 'Indicates if record can be deleted';
 
   COMMENT ON COLUMN COUNTRY$.ADDRESSDOCTOR_MODE IS 'Defines the mode used to invoke Addressdoctor service [INTERACTIVE or FASTCOMPLETION]';
 
   COMMENT ON COLUMN COUNTRY$.DISPLAY_COUNTRY_FLAG_YN IS 'Indicates if the Country Flag should be displayed on the front end.';
--------------------------------------------------------
--  DDL for Table ITEM$RESERVATION
--------------------------------------------------------

  CREATE TABLE ITEM$RESERVATION 
   (	ITEM_RESV_ID NUMERIC, 
	RESORT VARCHAR(20), 
	ITEM_ID NUMERIC, 
	RESERVED_BY VARCHAR(20), 
	RESERVED_BY_ID NUMERIC, 
	RESOURCE_ID NUMERIC, 
	BEGIN_DATE DATE, 
	END_DATE DATE, 
	SETUP_TIME NUMERIC, 
	SETDOWN_TIME NUMERIC, 
	QUANTITY NUMERIC, 
	INSERT_DATE DATE, 
	INSERT_USER NUMERIC, 
	UPDATE_DATE DATE, 
	UPDATE_USER NUMERIC, 
	DEDUCT_INVENTORY_YN VARCHAR(1)
   ) ;
 

   COMMENT ON COLUMN ITEM$RESERVATION.ITEM_RESV_ID IS 'Unique ID from Sequence ITEM_RESERVATION_SEQNO.';
 
   COMMENT ON COLUMN ITEM$RESERVATION.RESORT IS 'Property this record belongs to.';
 
   COMMENT ON COLUMN ITEM$RESERVATION.ITEM_ID IS 'Item ID from GEM$ITEM table.';
 
   COMMENT ON COLUMN ITEM$RESERVATION.RESERVED_BY IS 'possible values: EVENT or RESERVATION.';
 
   COMMENT ON COLUMN ITEM$RESERVATION.RESERVED_BY_ID IS 'contains either Event ID or Reservation Name ID.';
 
   COMMENT ON COLUMN ITEM$RESERVATION.RESOURCE_ID IS 'contains either Event Item ID or Reservation Package ID.';
 
   COMMENT ON COLUMN ITEM$RESERVATION.BEGIN_DATE IS 'Reservation Start Date/Time includes setup time.';
 
   COMMENT ON COLUMN ITEM$RESERVATION.END_DATE IS 'Reservation End Date/Time includes setdown time.';
 
   COMMENT ON COLUMN ITEM$RESERVATION.SETUP_TIME IS 'Setup Time in minutes.';
 
   COMMENT ON COLUMN ITEM$RESERVATION.SETDOWN_TIME IS 'Setdown Time in minutes.';
 
   COMMENT ON COLUMN ITEM$RESERVATION.QUANTITY IS 'Number of Items reserved.';
 
   COMMENT ON COLUMN ITEM$RESERVATION.INSERT_DATE IS 'Date this record was created.';
 
   COMMENT ON COLUMN ITEM$RESERVATION.INSERT_USER IS 'User that created this record.';
 
   COMMENT ON COLUMN ITEM$RESERVATION.UPDATE_DATE IS 'Date this record was updated.';
 
   COMMENT ON COLUMN ITEM$RESERVATION.UPDATE_USER IS 'User that updated this record.';
 
   COMMENT ON COLUMN ITEM$RESERVATION.DEDUCT_INVENTORY_YN IS 'Indicates if the item deducts from inventory or not.';
--------------------------------------------------------
--  DDL for Table ITEM$PACKAGES
--------------------------------------------------------

  CREATE TABLE ITEM$PACKAGES 
   (	ITEM_PROD_ID NUMERIC, 
	RESORT VARCHAR(20), 
	PRODUCT VARCHAR(20), 
	ITEM_ID NUMERIC, 
	QUANTITY NUMERIC, 
	INSERT_DATE DATE, 
	INSERT_USER NUMERIC, 
	UPDATE_DATE DATE, 
	UPDATE_USER NUMERIC
   ) ;
 

   COMMENT ON COLUMN ITEM$PACKAGES.ITEM_PROD_ID IS 'Unqiue ID from ITEM_PACKAGES_SEQNO';
 
   COMMENT ON COLUMN ITEM$PACKAGES.RESORT IS 'Property this record belongs to.';
 
   COMMENT ON COLUMN ITEM$PACKAGES.PRODUCT IS 'Package Code.';
 
   COMMENT ON COLUMN ITEM$PACKAGES.ITEM_ID IS 'Item ID from GEM$ITEM table.';
 
   COMMENT ON COLUMN ITEM$PACKAGES.QUANTITY IS 'Item Quantity attached to the package.';
 
   COMMENT ON COLUMN ITEM$PACKAGES.INSERT_DATE IS 'Date this record was created.';
 
   COMMENT ON COLUMN ITEM$PACKAGES.INSERT_USER IS 'User that created this record.';
 
   COMMENT ON COLUMN ITEM$PACKAGES.UPDATE_DATE IS 'Date this record was updated.';
 
   COMMENT ON COLUMN ITEM$PACKAGES.UPDATE_USER IS 'User that updated this record.';
--------------------------------------------------------
--  DDL for Table RESERVATION$_PAYMENT_METHODS
--------------------------------------------------------

  CREATE TABLE RESERVATION$_PAYMENT_METHODS 
   (	RESORT VARCHAR(20), 
	RESV_NAME_ID NUMERIC, 
	FOLIO_VIEW NUMERIC, 
	PAYMENT_METHOD VARCHAR(20), 
	CREDIT_CARD_ID NUMERIC, 
	APPROVAL_AMOUNT_CALC_METHOD NUMERIC, 
	AMOUNT_PERCENT NUMERIC, 
	INSERT_USER NUMERIC, 
	INSERT_DATE DATE, 
	UPDATE_USER NUMERIC, 
	UPDATE_DATE DATE, 
	BONUS_CHECK_ID NUMERIC, 
	DIRECT_BILL_VERIFY_RESPONSE VARCHAR(20)
   ) ;
 

   COMMENT ON COLUMN RESERVATION$_PAYMENT_METHODS.RESORT IS 'The property this record belongs to.';
 
   COMMENT ON COLUMN RESERVATION$_PAYMENT_METHODS.RESV_NAME_ID IS 'The reservation that the record belongs to.';
 
   COMMENT ON COLUMN RESERVATION$_PAYMENT_METHODS.FOLIO_VIEW IS 'Folio Window.';
 
   COMMENT ON COLUMN RESERVATION$_PAYMENT_METHODS.PAYMENT_METHOD IS 'Indicates the payment method to be used to pay for this folio window.';
 
   COMMENT ON COLUMN RESERVATION$_PAYMENT_METHODS.CREDIT_CARD_ID IS 'Internal ID of the credit card attached to this folio window.';
 
   COMMENT ON COLUMN RESERVATION$_PAYMENT_METHODS.APPROVAL_AMOUNT_CALC_METHOD IS 'Rule ID to be used for calculation of approval amount.';
 
   COMMENT ON COLUMN RESERVATION$_PAYMENT_METHODS.AMOUNT_PERCENT IS 'Percentage of room rate OR a flat amount.';
 
   COMMENT ON COLUMN RESERVATION$_PAYMENT_METHODS.INSERT_USER IS 'The user that created the record.';
 
   COMMENT ON COLUMN RESERVATION$_PAYMENT_METHODS.INSERT_DATE IS 'The date the record was created.';
 
   COMMENT ON COLUMN RESERVATION$_PAYMENT_METHODS.UPDATE_USER IS 'The user that modified the record.';
 
   COMMENT ON COLUMN RESERVATION$_PAYMENT_METHODS.UPDATE_DATE IS 'The date the record was modified.';
 
   COMMENT ON COLUMN RESERVATION$_PAYMENT_METHODS.BONUS_CHECK_ID IS 'Identifier for the Bonus Check.';
 
   COMMENT ON COLUMN RESERVATION$_PAYMENT_METHODS.DIRECT_BILL_VERIFY_RESPONSE IS 'Store the approval code received from the credit card interface when verification is done for a direct bill.';
--------------------------------------------------------
--  DDL for Table RESERVATION_CANCEL_LIST
--------------------------------------------------------

  CREATE TABLE RESERVATION_CANCEL_LIST 
   (	RESORT VARCHAR(20), 
	RESV_NAME_ID NUMERIC, 
	CANCEL_AFTER DATE, 
	DEPOSIT_REQUIRED_YN VARCHAR(1), 
	CC_PENDING_DAYS NUMERIC, 
	STATUS VARCHAR(20) DEFAULT 'CANCEL', 
	PROCESSING_MSG VARCHAR(4000)
   ) ;
 

   COMMENT ON COLUMN RESERVATION_CANCEL_LIST.RESORT IS 'The property that the record belongs to.';
 
   COMMENT ON COLUMN RESERVATION_CANCEL_LIST.RESV_NAME_ID IS 'Internal reservation name id which the record belongs to.';
 
   COMMENT ON COLUMN RESERVATION_CANCEL_LIST.CANCEL_AFTER IS 'Indicates the date that reservation will be auto cancelled on.';
 
   COMMENT ON COLUMN RESERVATION_CANCEL_LIST.DEPOSIT_REQUIRED_YN IS 'Indicates whether deposit is required or not.';
 
   COMMENT ON COLUMN RESERVATION_CANCEL_LIST.CC_PENDING_DAYS IS 'Indicates the number of days that auto mass cancellation will wait before cancelling reservation.';
 
   COMMENT ON COLUMN RESERVATION_CANCEL_LIST.STATUS IS 'Status of the auto cancellation. Can be CANCEL,CANCELLED,NOT_REQUIRED,FAILED';
 
   COMMENT ON COLUMN RESERVATION_CANCEL_LIST.PROCESSING_MSG IS 'Processing message. Will be updated during the auto cancellation process.';
--------------------------------------------------------
--  DDL for Table RESERVATION_HEADER
--------------------------------------------------------

  CREATE TABLE RESERVATION_HEADER 
   (	RESV_NO NUMERIC, 
	EXTERNAL_REFERENCE VARCHAR(80), 
	CONTACT_FIRST VARCHAR(40), 
	CONTACT_LAST VARCHAR(40), 
	INSERT_USER NUMERIC, 
	INSERT_DATE DATE, 
	UPDATE_USER NUMERIC, 
	UPDATE_DATE DATE, 
	BOOKING_DATE DATE
   ) ;
 

   COMMENT ON COLUMN RESERVATION_HEADER.RESV_NO IS 'The primary key for this table.';
 
   COMMENT ON COLUMN RESERVATION_HEADER.EXTERNAL_REFERENCE IS 'The external record locator for this reservation.';
 
   COMMENT ON COLUMN RESERVATION_HEADER.CONTACT_FIRST IS 'The first name of the contact for this reservation.';
 
   COMMENT ON COLUMN RESERVATION_HEADER.CONTACT_LAST IS 'The last name of the contact for this reservation.';
 
   COMMENT ON COLUMN RESERVATION_HEADER.INSERT_USER IS 'The user that created the record';
 
   COMMENT ON COLUMN RESERVATION_HEADER.INSERT_DATE IS 'The date the record was created';
 
   COMMENT ON COLUMN RESERVATION_HEADER.UPDATE_USER IS 'The user that modified the record';
 
   COMMENT ON COLUMN RESERVATION_HEADER.UPDATE_DATE IS 'The date the record was modified';
 
   COMMENT ON COLUMN RESERVATION_HEADER.BOOKING_DATE IS 'Date the reservation was created';
--------------------------------------------------------
--  DDL for Table RESERVATION_ITEMS
--------------------------------------------------------

  CREATE TABLE RESERVATION_ITEMS 
   (	RESERVATION_ITEM_ID NUMERIC, 
	RESORT VARCHAR(20), 
	RESV_NAME_ID NUMERIC, 
	PRODUCT_CODE VARCHAR(20), 
	RATE_CODE VARCHAR(20), 
	ALLOTMENT_HEADER_ID NUMERIC, 
	ITEM_ID NUMERIC, 
	BEGIN_DATE DATE, 
	END_DATE DATE, 
	QUANTITY NUMERIC, 
	INSERT_DATE DATE, 
	INSERT_USER NUMERIC, 
	UPDATE_DATE DATE, 
	UPDATE_USER NUMERIC, 
	RESERVATION_PRODUCT_ID NUMERIC
   ) ;
 

   COMMENT ON COLUMN RESERVATION_ITEMS.RESERVATION_ITEM_ID IS 'Primary Key from Sequence.';
 
   COMMENT ON COLUMN RESERVATION_ITEMS.RESORT IS 'Property this record belongs to.';
 
   COMMENT ON COLUMN RESERVATION_ITEMS.RESV_NAME_ID IS 'Reservation Name ID links to Reservation_Name table.';
 
   COMMENT ON COLUMN RESERVATION_ITEMS.PRODUCT_CODE IS 'Product code, if the item was inserted via an inventory package.';
 
   COMMENT ON COLUMN RESERVATION_ITEMS.RATE_CODE IS 'Rate code, if the item was inserted via a rate code.';
 
   COMMENT ON COLUMN RESERVATION_ITEMS.ALLOTMENT_HEADER_ID IS 'Allotment ID, if the item was inserted via a Business Block.';
 
   COMMENT ON COLUMN RESERVATION_ITEMS.ITEM_ID IS 'Item ID of the item attached to the reservation.';
 
   COMMENT ON COLUMN RESERVATION_ITEMS.BEGIN_DATE IS 'Start Date for which the inventory item is attached.';
 
   COMMENT ON COLUMN RESERVATION_ITEMS.END_DATE IS 'End Date until the inventory item is attached.';
 
   COMMENT ON COLUMN RESERVATION_ITEMS.QUANTITY IS 'Quantity of the inventory item attached.';
 
   COMMENT ON COLUMN RESERVATION_ITEMS.INSERT_DATE IS 'The date the record was created.';
 
   COMMENT ON COLUMN RESERVATION_ITEMS.INSERT_USER IS 'The user that created the record.';
 
   COMMENT ON COLUMN RESERVATION_ITEMS.UPDATE_DATE IS 'The date the record was modified.';
 
   COMMENT ON COLUMN RESERVATION_ITEMS.UPDATE_USER IS 'The user that modified the record.';
 
   COMMENT ON COLUMN RESERVATION_ITEMS.RESERVATION_PRODUCT_ID IS 'Links to RESERVATION_PRODUCTS.RESERVATION_PRODUCT_ID.';
--------------------------------------------------------
--  DDL for Table RESORT
--------------------------------------------------------

  CREATE TABLE RESORT 
   (	RESORT VARCHAR(20), 
	BEGIN_DATE DATE, 
	NAME VARCHAR(80), 
	LEGAL_OWNER VARCHAR(80), 
	COUNTRY_CODE VARCHAR(3), 
	CRS_RESORT VARCHAR(20), 
	STREET VARCHAR(2000), 
	POST_CODE VARCHAR(20), 
	CITY VARCHAR(40), 
	STATE VARCHAR(3), 
	TELEPHONE VARCHAR(40), 
	FAX VARCHAR(40), 
	WEBADDRESS VARCHAR(200), 
	TOLLFREE VARCHAR(40), 
	EMAIL VARCHAR(100), 
	KEEP_AVAILABILITY NUMERIC, 
	BUDGET_MONTH NUMERIC, 
	SAVE_PROFILES NUMERIC, 
	DEFAULT_RESERVATION_TYPE VARCHAR(20), 
	BLOCK VARCHAR(20), 
	CURRENCY_SYMBOL VARCHAR(20), 
	SOURCE_COMMISSION VARCHAR(20), 
	TA_COMMISSION VARCHAR(20), 
	CHECK_IN_TIME DATE, 
	CHECK_OUT_TIME DATE, 
	LONG_STAY_CONTROL NUMERIC, 
	CREDIT_LIMIT NUMERIC, 
	NUMBER_ROOMS NUMERIC,
	NUMBER_FLOORS NUMERIC,
	NUMBER_BEDS NUMERIC,
	RHYTHM_SHEETS NUMERIC, 
	RHYTHM_TOWELS NUMERIC, 
	BASE_LANGUAGE VARCHAR(20), 
	FOLIO_LANGUAGE1 VARCHAR(20), 
	FOLIO_LANGUAGE2 VARCHAR(20), 
	FOLIO_LANGUAGE3 VARCHAR(20), 
	FOLIO_LANGUAGE4 VARCHAR(20), 
	WARNING_AMOUNT NUMERIC, 
	THOUSAND_SEPARATOR VARCHAR(1), 
	PACKAGE_PROFIT VARCHAR(20), 
	PACKAGE_LOSS VARCHAR(20), 
	DECIMAL_PLACES NUMERIC, 
	DECIMAL_SEPARATOR VARCHAR(20), 
	SHORT_DATE_FORMAT VARCHAR(20), 
	LONG_DATE_FORMAT VARCHAR(20), 
	DATE_SEPARATOR VARCHAR(1), 
	FONT NUMERIC, 
	COPIES NUMERIC, 
	DEFAULT_FOLIO_STYLE NUMERIC, 
	INDIVIDUAL_ROOM_WARNING NUMERIC, 
	GROUP_ROOM_WARNING NUMERIC, 
	VIDEO_CO_START DATE, 
	VIDEO_CO_STOP DATE, 
	PASSERBY_SOURCE VARCHAR(20), 
	PASSERBY_MARKET VARCHAR(20), 
	AR_COMPANY VARCHAR(20), 
	AR_AGENT VARCHAR(20), 
	AR_GROUPS VARCHAR(20), 
	AR_INDIVIDUALS VARCHAR(20), 
	AR_ACCT_NO_MAND_YN VARCHAR(1) DEFAULT 'N', 
	AGING_LEVEL1 NUMERIC, 
	AGING_LEVEL2 NUMERIC, 
	AGING_LEVEL3 NUMERIC, 
	AGING_LEVEL4 NUMERIC, 
	AGING_LEVEL5 NUMERIC, 
	AR_ACCT_NO_FORMAT VARCHAR(20), 
	DATE_FOR_AGING VARCHAR(3), 
	ZERO_INV_PUR_DAYS NUMERIC, 
	MIN_DAYS_BET_2_REMINDER_LETTER NUMERIC, 
	ALLOWANCE_PERIOD_ADJ VARCHAR(20), 
	HOTEL_ID VARCHAR(80), 
	INSERT_DATE DATE, 
	INSERT_USER NUMERIC, 
	UPDATE_DATE DATE, 
	UPDATE_USER NUMERIC, 
	CURRENCY_CODE VARCHAR(20), 
	CURRENCY_DECIMALS NUMERIC, 
	EXCHANGE_POSTING_TYPE VARCHAR(1), 
	TURNAWAY_CODE VARCHAR(20), 
	SUMM_CURRENCY_CODE VARCHAR(20), 
	FAX_NO_FORMAT VARCHAR(80), 
	TELEPHONE_NO_FORMAT VARCHAR(80), 
	LOCAL_CURRENCY_FORMAT VARCHAR(80), 
	DEFAULT_PROPERTY_ADDRESS VARCHAR(20) DEFAULT 'DEFAULT_PROPERTY', 
	DEFAULT_GUEST_ADDRESS VARCHAR(20) DEFAULT 'DEFAULT_GUEST', 
	LICENSE_CODE VARCHAR(20), 
	EXPIRY_DATE DATE, 
	TIME_FORMAT VARCHAR(20), 
	NAME_ID_LINK NUMERIC, 
	DUTY_MANAGER_PAGER VARCHAR(80), 
	CHAIN_CODE VARCHAR(20), 
	RESORT_TYPE VARCHAR(20), 
	END_DATE DATE, 
	GENMGR VARCHAR(100), 
	DIRSALES VARCHAR(100), 
	LEADSEND VARCHAR(100), 
	AIRPORT VARCHAR(100), 
	AIRPORT_DISTANCE VARCHAR(50), 
	AIRPORT_TIME VARCHAR(50), 
	HOTEL_TYPE VARCHAR(20), 
	OWNERSHIP VARCHAR(20), 
	QUOTED_CURRENCY VARCHAR(10), 
	COM_METHOD VARCHAR(10), 
	COM_ADDRESS VARCHAR(100), 
	INVENTORY_YN VARCHAR(1), 
	NOTES VARCHAR(4000), 
	SGL_NUM VARCHAR(5), 
	SGL_RATE1 NUMERIC, 
	SGL_RATE2 NUMERIC, 
	DBL_NUM VARCHAR(5), 
	DBL_RATE1 NUMERIC, 
	DBL_RATE2 NUMERIC, 
	TPL_NUM VARCHAR(5), 
	TPL_RATE1 NUMERIC, 
	TPL_RATE2 NUMERIC, 
	SUI_NUM VARCHAR(5), 
	SUI_RATE1 NUMERIC, 
	SUI_RATE2 NUMERIC, 
	TOT_ROOMS NUMERIC(5,0), 
	SEASON1 VARCHAR(100), 
	SEASON2 VARCHAR(100), 
	SEASON3 VARCHAR(100), 
	SEASON4 VARCHAR(100), 
	SEASON5 VARCHAR(100), 
	HOTEL_FC VARCHAR(2000), 
	MEETING_FC VARCHAR(2000), 
	BR_AREA VARCHAR(50), 
	BR_SEATS NUMERIC(5,0), 
	MEET_SPACE NUMERIC, 
	MEET_ROOMS NUMERIC(4,0), 
	MEET_SEATS NUMERIC(5,0), 
	RESTAURANT NUMERIC(3,0), 
	IMG_HOTEL_ID NUMERIC, 
	IMG_DIRECTION_ID NUMERIC, 
	IMG_MAP_ID NUMERIC, 
	ALLOW_LOGIN_YN VARCHAR(1) DEFAULT 'Y', 
	AR_BAL_TRX_CODE VARCHAR(20), 
	AR_CREDIT_TRX_CODE VARCHAR(20), 
	AR_TYPEWRITER VARCHAR(2000), 
	AR_SETTLE_CODE VARCHAR(20), 
	CASH_SHIFT_DROP VARCHAR(20), 
	CHECK_EXG_PAIDOUT VARCHAR(20), 
	CHECK_SHIFT_DROP VARCHAR(20), 
	CHECK_TRXCODE VARCHAR(20), 
	CURRENCY_EXG_PAIDOUT VARCHAR(20), 
	DEPOSIT_LED_TRX_CODE VARCHAR(20), 
	FISCAL_START_DATE DATE, 
	FISCAL_END_DATE DATE, 
	FISCAL_PERIOD_TYPE VARCHAR(20), 
	DEFAULT_COMMISSION_PERCENTAGE VARCHAR(20), 
	DEFAULT_PREPAID_COMM VARCHAR(20), 
	DEFAULT_TRX_COMM_CODE VARCHAR(20), 
	FILE_TRANSFER_FORMAT VARCHAR(2000), 
	CONFIGURATION_MODE VARCHAR(20), 
	CONFIRM_REGCARD_PRINTER VARCHAR(2000), 
	DEFAULT_PRINTER VARCHAR(40), 
	DEFAULT_REGISTRATION_CARD VARCHAR(80), 
	WEEKEND_DAYS VARCHAR(20), 
	DEFAULT_GROUPS_RATE_CODE VARCHAR(20), 
	MAX_NO_NIGHTS NUMERIC(5,0), 
	AWARDS_TIMEOUT NUMERIC(5,0), 
	DEFAULT_POSTING_ROOM VARCHAR(20), 
	GUEST_LOOKUP_TIMEOUT NUMERIC(5,0), 
	VIDEOCHECKOUT_PRINTER VARCHAR(40), 
	WAKE_UP_DELAY NUMERIC(5,0), 
	NIGHT_AUDIT_CASHIER_ID VARCHAR(80), 
	COMPANY_ADDRESS_TYPE VARCHAR(40), 
	COMPANY_PHONE_TYPE VARCHAR(40), 
	DEFAULT_FAX_TYPE VARCHAR(40), 
	DEFAULT_MEMBERSHIP_TYPE VARCHAR(40), 
	INDIVIDUAL_ADDRESS_TYPE VARCHAR(40), 
	INDIVIDUAL_PHONE_TYPE VARCHAR(40), 
	DFLT_PKG_TRAN_CODE VARCHAR(20), 
	DFLT_TRAN_CODE_RATE_CODE VARCHAR(20), 
	MAX_OCCUPANCY NUMERIC(5,0), 
	INACTIVE_DAYS_FOR_GUEST_PROFIL NUMERIC(5,0), 
	DEFAULT_RATE_CODE VARCHAR(20), 
	PER_RESERVATION_ROOM_LIMIT NUMERIC(5,0), 
	SCRIPT_ID NUMERIC, 
	CRO_CODE VARCHAR(20), 
	FLOW_CODE VARCHAR(20), 
	EXT_PROPERTY_CODE VARCHAR(20), 
	EXT_EXP_FILE_LOCATION VARCHAR(240), 
	REGION_CODE VARCHAR(3), 
	OPUS_CURRENCY_CODE VARCHAR(20), 
	COM_NAME_XREF_ID NUMERIC, 
	HOTEL_CODE VARCHAR(80), 
	CURTAIN_COLOR VARCHAR(240), 
	RECONCILE_DATE DATE DEFAULT NULL, 
	PAYMENT_DATE DATE DEFAULT NULL, 
	PATH_ID NUMERIC, 
	XRESORT_NUMBER NUMERIC, 
	DIRECTIONS VARCHAR(2000), 
	DESTINATION_ID VARCHAR(20), 
	MAX_CREDIT_DAYS NUMERIC, 
	PATH VARCHAR(80), 
	ACCESS_CODE VARCHAR(1), 
	FLAGS VARCHAR(20), 
	TOURIST_NUMBER VARCHAR(20), 
	DISABLE_LOGIN_YN VARCHAR(1), 
	INT_TAX_INCLUDED_YN VARCHAR(1), 
	DOWNLOAD_REST_YN VARCHAR(1), 
	TIMEZONE_REGION VARCHAR(80), 
	CURRENCY_DIVISOR NUMERIC, 
	PROPINFO_URL VARCHAR(2000), 
	LATITUDE NUMERIC, 
	LONGITUDE NUMERIC, 
	TRANSLATE_MULTICHAR_YN VARCHAR(1), 
	QTY_SINGLE_ROOMS NUMERIC, 
	QTY_DOUBLE_ROOMS NUMERIC, 
	QTY_TWIN_ROOMS NUMERIC, 
	QTY_SUITES NUMERIC, 
	QTY_GUEST_ROOM_FLOORS NUMERIC, 
	QTY_GUEST_ELEVATORS NUMERIC, 
	QTY_NON_SMOKING_ROOMS NUMERIC, 
	QTY_CONNECTING_ROOMS NUMERIC, 
	QTY_HANDICAPPED_ROOMS NUMERIC, 
	QTY_FAMILY_ROOMS NUMERIC, 
	MAX_ADULTS_FAMILY_ROOM NUMERIC, 
	MAX_CHILDREN_FAMILY_ROOM NUMERIC, 
	FLOOR_NUM_EXECUTIVE_FLOOR VARCHAR(1000), 
	ROOM_AMENITY VARCHAR(2000), 
	SHOP_DESCRIPTION VARCHAR(2000), 
	PROP_PIC_URL VARCHAR(2000), 
	PROP_MAP_URL VARCHAR(2000), 
	CATERING_CURRENCY_CODE VARCHAR(20), 
	CATERING_CURRENCY_FORMAT VARCHAR(80), 
	DEFAULT_RATECODE_RACK VARCHAR(20), 
	DEFAULT_RATECODE_PCR VARCHAR(20), 
	BLACKOUT_PERIOD_NOTES VARCHAR(4000), 
	EXTERNAL_SC_YN VARCHAR(1), 
	SEND_LEAD_AS_BOOKING_YN VARCHAR(1), 
	EXP_HOTEL_CODE VARCHAR(80), 
	LIC_ROOM_INFO bytea
   ) ;
 

   COMMENT ON COLUMN RESORT.RESORT IS 'The property that the record belongs to';
 
   COMMENT ON COLUMN RESORT.BEGIN_DATE IS 'The date this resort becomes valid for use by the system';
 
   COMMENT ON COLUMN RESORT.NAME IS 'The name of this property.';
 
   COMMENT ON COLUMN RESORT.LEGAL_OWNER IS 'The owner who owns this property';
 
   COMMENT ON COLUMN RESORT.COUNTRY_CODE IS 'The name of the country in which this property resides.';
 
   COMMENT ON COLUMN RESORT.CRS_RESORT IS 'Not used';
 
   COMMENT ON COLUMN RESORT.STREET IS 'The street of the property.';
 
   COMMENT ON COLUMN RESORT.POST_CODE IS 'The postal code of this property.';
 
   COMMENT ON COLUMN RESORT.CITY IS 'The physical city in which this property resides.';
 
   COMMENT ON COLUMN RESORT.STATE IS 'The state in which this property is located.';
 
   COMMENT ON COLUMN RESORT.TELEPHONE IS 'The direct dial phone number of this property';
 
   COMMENT ON COLUMN RESORT.FAX IS 'The fax phone number';
 
   COMMENT ON COLUMN RESORT.WEBADDRESS IS 'Webaddress of the property';
 
   COMMENT ON COLUMN RESORT.TOLLFREE IS 'Toll free telephone number.';
 
   COMMENT ON COLUMN RESORT.EMAIL IS 'Email id for the property.';
 
   COMMENT ON COLUMN RESORT.KEEP_AVAILABILITY IS 'To calculate the entire availability of the Hotel for future reservations';
 
   COMMENT ON COLUMN RESORT.BUDGET_MONTH IS 'Financial Year of the Property';
 
   COMMENT ON COLUMN RESORT.SAVE_PROFILES IS 'To store number of days before deleting the gest profile';
 
   COMMENT ON COLUMN RESORT.DEFAULT_RESERVATION_TYPE IS 'The Default reservation type for this property';
 
   COMMENT ON COLUMN RESORT.BLOCK IS 'It contains the reservation type to be used when making group block';
 
   COMMENT ON COLUMN RESORT.CURRENCY_SYMBOL IS 'Symbol to designate default currency';
 
   COMMENT ON COLUMN RESORT.SOURCE_COMMISSION IS 'For default commission percentage';
 
   COMMENT ON COLUMN RESORT.TA_COMMISSION IS 'For default commission percentage';
 
   COMMENT ON COLUMN RESORT.CHECK_IN_TIME IS 'The Hotel official check intime';
 
   COMMENT ON COLUMN RESORT.CHECK_OUT_TIME IS 'The Hotel official check out time';
 
   COMMENT ON COLUMN RESORT.LONG_STAY_CONTROL IS 'The default length of stay';
 
   COMMENT ON COLUMN RESORT.CREDIT_LIMIT IS 'The default credit limit for guests.';
 
   COMMENT ON COLUMN RESORT.NUMBER_ROOMS IS 'Total number of rooms in this property';
 
   COMMENT ON COLUMN RESORT.NUMBER_FLOORS IS 'Total number of floors in this property';
 
   COMMENT ON COLUMN RESORT.NUMBER_BEDS IS 'Total number of beds in this property';
 
   COMMENT ON COLUMN RESORT.RHYTHM_SHEETS IS 'Total number of Sheets';
 
   COMMENT ON COLUMN RESORT.RHYTHM_TOWELS IS 'Total number of Towels';
 
   COMMENT ON COLUMN RESORT.BASE_LANGUAGE IS 'The base language of the Hotel';
 
   COMMENT ON COLUMN RESORT.FOLIO_LANGUAGE1 IS 'Other languages';
 
   COMMENT ON COLUMN RESORT.FOLIO_LANGUAGE2 IS 'Other languages';
 
   COMMENT ON COLUMN RESORT.FOLIO_LANGUAGE3 IS 'Other languages';
 
   COMMENT ON COLUMN RESORT.FOLIO_LANGUAGE4 IS 'Other languages';
 
   COMMENT ON COLUMN RESORT.WARNING_AMOUNT IS 'Amount at which warning is raised.';
 
   COMMENT ON COLUMN RESORT.THOUSAND_SEPARATOR IS 'Separator for monetory values';
 
   COMMENT ON COLUMN RESORT.PACKAGE_PROFIT IS 'Package Profit code for a particular Package';
 
   COMMENT ON COLUMN RESORT.PACKAGE_LOSS IS 'Package Loss code for a particular package';
 
   COMMENT ON COLUMN RESORT.DECIMAL_PLACES IS 'Number of places for the default currency';
 
   COMMENT ON COLUMN RESORT.DECIMAL_SEPARATOR IS 'Type of decimal separator';
 
   COMMENT ON COLUMN RESORT.SHORT_DATE_FORMAT IS 'Short date format for the property.';
 
   COMMENT ON COLUMN RESORT.LONG_DATE_FORMAT IS 'Long date format for the property.';
 
   COMMENT ON COLUMN RESORT.DATE_SEPARATOR IS 'Type of separator to distinguish between DD MM and YYYY';
 
   COMMENT ON COLUMN RESORT.FONT IS 'Not used';
 
   COMMENT ON COLUMN RESORT.COPIES IS 'Number of copies to be printed';
 
   COMMENT ON COLUMN RESORT.DEFAULT_FOLIO_STYLE IS 'Folio style to be used for all guests';
 
   COMMENT ON COLUMN RESORT.INDIVIDUAL_ROOM_WARNING IS 'To define an upper limit to the number of rooms for group';
 
   COMMENT ON COLUMN RESORT.GROUP_ROOM_WARNING IS 'To define an upper limit to the number of rooms for Group';
 
   COMMENT ON COLUMN RESORT.VIDEO_CO_START IS 'Video check out start time.';
 
   COMMENT ON COLUMN RESORT.VIDEO_CO_STOP IS 'Video check out end time.';
 
   COMMENT ON COLUMN RESORT.PASSERBY_SOURCE IS 'Source code for passerby';
 
   COMMENT ON COLUMN RESORT.PASSERBY_MARKET IS 'Market code for passerby';
 
   COMMENT ON COLUMN RESORT.AR_COMPANY IS 'Default Account Type for a Company for the Property';
 
   COMMENT ON COLUMN RESORT.AR_AGENT IS 'Default Account Type for an Agent for the Property';
 
   COMMENT ON COLUMN RESORT.AR_GROUPS IS 'Default Account Type for a Group for the Property';
 
   COMMENT ON COLUMN RESORT.AR_INDIVIDUALS IS 'Default Account Type for Individual for the Property';
 
   COMMENT ON COLUMN RESORT.AR_ACCT_NO_MAND_YN IS 'Specifies if the AR acct No is mandatory(Y/N)';
 
   COMMENT ON COLUMN RESORT.AGING_LEVEL1 IS 'Aging bucket 1';
 
   COMMENT ON COLUMN RESORT.AGING_LEVEL2 IS 'Aging bucket 2';
 
   COMMENT ON COLUMN RESORT.AGING_LEVEL3 IS 'Aging bucket 3';
 
   COMMENT ON COLUMN RESORT.AGING_LEVEL4 IS 'Aging bucket 4';
 
   COMMENT ON COLUMN RESORT.AGING_LEVEL5 IS 'Aging bucket 5';
 
   COMMENT ON COLUMN RESORT.AR_ACCT_NO_FORMAT IS 'Number format of AR account no.';
 
   COMMENT ON COLUMN RESORT.DATE_FOR_AGING IS 'Date the aging should begin';
 
   COMMENT ON COLUMN RESORT.ZERO_INV_PUR_DAYS IS 'Internal';
 
   COMMENT ON COLUMN RESORT.MIN_DAYS_BET_2_REMINDER_LETTER IS 'Minimum days for reminder letter.';
 
   COMMENT ON COLUMN RESORT.ALLOWANCE_PERIOD_ADJ IS 'Period for the allowance';
 
   COMMENT ON COLUMN RESORT.HOTEL_ID IS 'Hotel id';
 
   COMMENT ON COLUMN RESORT.INSERT_DATE IS 'The date the record was created';
 
   COMMENT ON COLUMN RESORT.INSERT_USER IS 'The user that created the record';
 
   COMMENT ON COLUMN RESORT.UPDATE_DATE IS 'The date the record was modified';
 
   COMMENT ON COLUMN RESORT.UPDATE_USER IS 'The user that modified the record';
 
   COMMENT ON COLUMN RESORT.CURRENCY_CODE IS 'The base currency code for this property.';
 
   COMMENT ON COLUMN RESORT.CURRENCY_DECIMALS IS 'Number of decimals to designate currency';
 
   COMMENT ON COLUMN RESORT.EXCHANGE_POSTING_TYPE IS 'Default Exchange posting status for the property';
 
   COMMENT ON COLUMN RESORT.TURNAWAY_CODE IS 'Turnaway code for the property.';
 
   COMMENT ON COLUMN RESORT.SUMM_CURRENCY_CODE IS 'Internal';
 
   COMMENT ON COLUMN RESORT.FAX_NO_FORMAT IS 'Fax number formats.';
 
   COMMENT ON COLUMN RESORT.TELEPHONE_NO_FORMAT IS 'Formats for telephone number';
 
   COMMENT ON COLUMN RESORT.LOCAL_CURRENCY_FORMAT IS 'Format for the local currency.';
 
   COMMENT ON COLUMN RESORT.DEFAULT_PROPERTY_ADDRESS IS 'Default property address format.';
 
   COMMENT ON COLUMN RESORT.DEFAULT_GUEST_ADDRESS IS 'Default guest address format.';
 
   COMMENT ON COLUMN RESORT.LICENSE_CODE IS 'Not used';
 
   COMMENT ON COLUMN RESORT.EXPIRY_DATE IS 'Not used.';
 
   COMMENT ON COLUMN RESORT.TIME_FORMAT IS 'Default time format for the property.';
 
   COMMENT ON COLUMN RESORT.NAME_ID_LINK IS 'Internal';
 
   COMMENT ON COLUMN RESORT.DUTY_MANAGER_PAGER IS 'Pager number for the Manager on duty for the property.';
 
   COMMENT ON COLUMN RESORT.CHAIN_CODE IS 'Chain Code for the chain to which the property belongs';
 
   COMMENT ON COLUMN RESORT.RESORT_TYPE IS 'Type of resort.';
 
   COMMENT ON COLUMN RESORT.END_DATE IS 'Future use.';
 
   COMMENT ON COLUMN RESORT.GENMGR IS 'Future use';
 
   COMMENT ON COLUMN RESORT.DIRSALES IS 'Future use';
 
   COMMENT ON COLUMN RESORT.LEADSEND IS 'Future use';
 
   COMMENT ON COLUMN RESORT.AIRPORT IS 'The Airport Code for the airport near the property';
 
   COMMENT ON COLUMN RESORT.AIRPORT_DISTANCE IS 'Distance of the Airport specified in the AIRPORT_CODE column from the Property';
 
   COMMENT ON COLUMN RESORT.AIRPORT_TIME IS 'Time it takes to travel the distance between the Property and the Airport specified in AIRPORT_CODE column';
 
   COMMENT ON COLUMN RESORT.HOTEL_TYPE IS 'Future use';
 
   COMMENT ON COLUMN RESORT.OWNERSHIP IS 'Future use';
 
   COMMENT ON COLUMN RESORT.QUOTED_CURRENCY IS 'Future use';
 
   COMMENT ON COLUMN RESORT.COM_METHOD IS 'Internal';
 
   COMMENT ON COLUMN RESORT.COM_ADDRESS IS 'Internal';
 
   COMMENT ON COLUMN RESORT.INVENTORY_YN IS 'Future use';
 
   COMMENT ON COLUMN RESORT.NOTES IS 'Notes for the property';
 
   COMMENT ON COLUMN RESORT.SGL_NUM IS 'Future use';
 
   COMMENT ON COLUMN RESORT.SGL_RATE1 IS 'Future use';
 
   COMMENT ON COLUMN RESORT.SGL_RATE2 IS 'Future use';
 
   COMMENT ON COLUMN RESORT.DBL_NUM IS 'Not used';
 
   COMMENT ON COLUMN RESORT.DBL_RATE1 IS 'Not used';
 
   COMMENT ON COLUMN RESORT.DBL_RATE2 IS 'Not used';
 
   COMMENT ON COLUMN RESORT.TPL_NUM IS 'Future use';
 
   COMMENT ON COLUMN RESORT.TPL_RATE1 IS 'Future use';
 
   COMMENT ON COLUMN RESORT.TPL_RATE2 IS 'Future use';
 
   COMMENT ON COLUMN RESORT.SUI_NUM IS 'Future use';
 
   COMMENT ON COLUMN RESORT.SUI_RATE1 IS 'Future use';
 
   COMMENT ON COLUMN RESORT.SUI_RATE2 IS 'Future use';
 
   COMMENT ON COLUMN RESORT.TOT_ROOMS IS 'Future use';
 
   COMMENT ON COLUMN RESORT.SEASON1 IS 'Future use';
 
   COMMENT ON COLUMN RESORT.SEASON2 IS 'Future use';
 
   COMMENT ON COLUMN RESORT.SEASON3 IS 'Future use';
 
   COMMENT ON COLUMN RESORT.SEASON4 IS 'Future use';
 
   COMMENT ON COLUMN RESORT.SEASON5 IS 'Future use';
 
   COMMENT ON COLUMN RESORT.HOTEL_FC IS 'Future use';
 
   COMMENT ON COLUMN RESORT.MEETING_FC IS 'Future use';
 
   COMMENT ON COLUMN RESORT.BR_AREA IS 'Ball Room Area';
 
   COMMENT ON COLUMN RESORT.BR_SEATS IS 'No of Ballroom Seats';
 
   COMMENT ON COLUMN RESORT.MEET_SPACE IS 'Future use';
 
   COMMENT ON COLUMN RESORT.MEET_ROOMS IS 'Future use';
 
   COMMENT ON COLUMN RESORT.MEET_SEATS IS 'Future use';
 
   COMMENT ON COLUMN RESORT.RESTAURANT IS 'Future use';
 
   COMMENT ON COLUMN RESORT.IMG_HOTEL_ID IS 'Future use';
 
   COMMENT ON COLUMN RESORT.IMG_DIRECTION_ID IS 'Future use';
 
   COMMENT ON COLUMN RESORT.IMG_MAP_ID IS 'Future use';
 
   COMMENT ON COLUMN RESORT.ALLOW_LOGIN_YN IS 'Allow loggin in to this resort(Y/N)';
 
   COMMENT ON COLUMN RESORT.AR_BAL_TRX_CODE IS 'Internal';
 
   COMMENT ON COLUMN RESORT.AR_CREDIT_TRX_CODE IS 'Internal';
 
   COMMENT ON COLUMN RESORT.AR_TYPEWRITER IS 'Internal';
 
   COMMENT ON COLUMN RESORT.AR_SETTLE_CODE IS 'Internal';
 
   COMMENT ON COLUMN RESORT.CASH_SHIFT_DROP IS 'Internal';
 
   COMMENT ON COLUMN RESORT.CHECK_EXG_PAIDOUT IS 'Internal';
 
   COMMENT ON COLUMN RESORT.CHECK_SHIFT_DROP IS 'Internal';
 
   COMMENT ON COLUMN RESORT.CHECK_TRXCODE IS 'Internal';
 
   COMMENT ON COLUMN RESORT.CURRENCY_EXG_PAIDOUT IS 'Not used';
 
   COMMENT ON COLUMN RESORT.DEPOSIT_LED_TRX_CODE IS 'Future use';
 
   COMMENT ON COLUMN RESORT.FISCAL_START_DATE IS 'Future use';
 
   COMMENT ON COLUMN RESORT.FISCAL_END_DATE IS 'Future use';
 
   COMMENT ON COLUMN RESORT.FISCAL_PERIOD_TYPE IS 'Future use';
 
   COMMENT ON COLUMN RESORT.DEFAULT_COMMISSION_PERCENTAGE IS 'Not used';
 
   COMMENT ON COLUMN RESORT.DEFAULT_PREPAID_COMM IS 'Not used.';
 
   COMMENT ON COLUMN RESORT.DEFAULT_TRX_COMM_CODE IS 'Not used.';
 
   COMMENT ON COLUMN RESORT.FILE_TRANSFER_FORMAT IS 'Not used.';
 
   COMMENT ON COLUMN RESORT.CONFIGURATION_MODE IS 'Internal';
 
   COMMENT ON COLUMN RESORT.CONFIRM_REGCARD_PRINTER IS 'Internal';
 
   COMMENT ON COLUMN RESORT.DEFAULT_PRINTER IS 'Not Used';
 
   COMMENT ON COLUMN RESORT.DEFAULT_REGISTRATION_CARD IS 'Default registration card for the property.';
 
   COMMENT ON COLUMN RESORT.WEEKEND_DAYS IS 'Weekend days for the property.';
 
   COMMENT ON COLUMN RESORT.DEFAULT_GROUPS_RATE_CODE IS 'Not used';
 
   COMMENT ON COLUMN RESORT.MAX_NO_NIGHTS IS 'Not used';
 
   COMMENT ON COLUMN RESORT.AWARDS_TIMEOUT IS 'Internal';
 
   COMMENT ON COLUMN RESORT.DEFAULT_POSTING_ROOM IS 'Future use';
 
   COMMENT ON COLUMN RESORT.GUEST_LOOKUP_TIMEOUT IS 'Future use';
 
   COMMENT ON COLUMN RESORT.VIDEOCHECKOUT_PRINTER IS 'Future use';
 
   COMMENT ON COLUMN RESORT.WAKE_UP_DELAY IS 'Future use';
 
   COMMENT ON COLUMN RESORT.NIGHT_AUDIT_CASHIER_ID IS 'Future use';
 
   COMMENT ON COLUMN RESORT.COMPANY_ADDRESS_TYPE IS 'Internal';
 
   COMMENT ON COLUMN RESORT.COMPANY_PHONE_TYPE IS 'Internal';
 
   COMMENT ON COLUMN RESORT.DEFAULT_FAX_TYPE IS 'Not used';
 
   COMMENT ON COLUMN RESORT.DEFAULT_MEMBERSHIP_TYPE IS 'Future use';
 
   COMMENT ON COLUMN RESORT.INDIVIDUAL_ADDRESS_TYPE IS 'Future use';
 
   COMMENT ON COLUMN RESORT.INDIVIDUAL_PHONE_TYPE IS 'Future use';
 
   COMMENT ON COLUMN RESORT.DFLT_PKG_TRAN_CODE IS 'Future use';
 
   COMMENT ON COLUMN RESORT.DFLT_TRAN_CODE_RATE_CODE IS 'Future use';
 
   COMMENT ON COLUMN RESORT.MAX_OCCUPANCY IS 'Future use';
 
   COMMENT ON COLUMN RESORT.INACTIVE_DAYS_FOR_GUEST_PROFIL IS 'Future use';
 
   COMMENT ON COLUMN RESORT.DEFAULT_RATE_CODE IS 'Future use';
 
   COMMENT ON COLUMN RESORT.PER_RESERVATION_ROOM_LIMIT IS 'Future use';
 
   COMMENT ON COLUMN RESORT.SCRIPT_ID IS 'Future use';
 
   COMMENT ON COLUMN RESORT.CRO_CODE IS 'Code for the CRO';
 
   COMMENT ON COLUMN RESORT.FLOW_CODE IS 'Future use';
 
   COMMENT ON COLUMN RESORT.EXT_PROPERTY_CODE IS 'Future use';
 
   COMMENT ON COLUMN RESORT.EXT_EXP_FILE_LOCATION IS 'Future use';
 
   COMMENT ON COLUMN RESORT.REGION_CODE IS 'Future use';
 
   COMMENT ON COLUMN RESORT.OPUS_CURRENCY_CODE IS 'Future use';
 
   COMMENT ON COLUMN RESORT.COM_NAME_XREF_ID IS 'Internal';
 
   COMMENT ON COLUMN RESORT.HOTEL_CODE IS 'Future use';
 
   COMMENT ON COLUMN RESORT.CURTAIN_COLOR IS 'Color that of the background';
 
   COMMENT ON COLUMN RESORT.RECONCILE_DATE IS 'Minimim last Reconciliation Date for the Property used in Cross Property Postings. This will get updated while running the user defined procedure during the night audit process.';
 
   COMMENT ON COLUMN RESORT.PAYMENT_DATE IS 'Minimim Payment Date for the Property used in Cross Property Postings. This will get updated while running the user defined procedure during the night audit process.';
 
   COMMENT ON COLUMN RESORT.PATH_ID IS 'Used to link the path id in Interfaces with the resort. This is required to enable the Cross Postings possible. This value we give here should match with the path id used in interfaces otherwise the Cross Postings may yield wrong results.';
 
   COMMENT ON COLUMN RESORT.XRESORT_NUMBER IS 'Numbers (1 thru 10) given to the resorts in the schema to print the tax collected by that resort in the gstfolio when proper merge codes are selected.';
 
   COMMENT ON COLUMN RESORT.MAX_CREDIT_DAYS IS 'Maximum number of days that are allowed to credit a bill. (Country requirements.) Used in CASHIERING MODULE.';
 
   COMMENT ON COLUMN RESORT.DISABLE_LOGIN_YN IS 'LOGIN into the application is disabled.';
 
   COMMENT ON COLUMN RESORT.CURRENCY_DIVISOR IS 'Countries with large amounts can define divisor as 1000 (k) or 1000000 (m) which divides amounts on for display on screens and reports.';
 
   COMMENT ON COLUMN RESORT.PROPINFO_URL IS 'URL where property information is located.';
 
   COMMENT ON COLUMN RESORT.LATITUDE IS 'Latitude of the property in decimal';
 
   COMMENT ON COLUMN RESORT.LONGITUDE IS 'Longitude of the property in decimal';
 
   COMMENT ON COLUMN RESORT.TRANSLATE_MULTICHAR_YN IS 'Indicates whether the property handles multi byte characters and whether they are translateable or not';
 
   COMMENT ON COLUMN RESORT.QTY_SINGLE_ROOMS IS 'Number of single rooms.';
 
   COMMENT ON COLUMN RESORT.QTY_DOUBLE_ROOMS IS 'Number of double rooms.';
 
   COMMENT ON COLUMN RESORT.QTY_TWIN_ROOMS IS 'Number of twin rooms.';
 
   COMMENT ON COLUMN RESORT.QTY_SUITES IS 'Number of suites.';
 
   COMMENT ON COLUMN RESORT.QTY_GUEST_ROOM_FLOORS IS 'Total of guest rooms floors.';
 
   COMMENT ON COLUMN RESORT.QTY_GUEST_ELEVATORS IS 'Number of guest elevators.';
 
   COMMENT ON COLUMN RESORT.QTY_NON_SMOKING_ROOMS IS 'Number of non smoking rooms.';
 
   COMMENT ON COLUMN RESORT.QTY_CONNECTING_ROOMS IS 'Number of connecting rooms.';
 
   COMMENT ON COLUMN RESORT.QTY_HANDICAPPED_ROOMS IS 'Number of handicapped rooms.';
 
   COMMENT ON COLUMN RESORT.QTY_FAMILY_ROOMS IS 'Number of family rooms.';
 
   COMMENT ON COLUMN RESORT.MAX_ADULTS_FAMILY_ROOM IS 'Maximum adults in family rooms.';
 
   COMMENT ON COLUMN RESORT.MAX_CHILDREN_FAMILY_ROOM IS 'Maximum children in family rooms.';
 
   COMMENT ON COLUMN RESORT.FLOOR_NUM_EXECUTIVE_FLOOR IS 'Floor number of executive floor.';
 
   COMMENT ON COLUMN RESORT.ROOM_AMENITY IS 'Room amenity.';
 
   COMMENT ON COLUMN RESORT.SHOP_DESCRIPTION IS 'Shop description.';
 
   COMMENT ON COLUMN RESORT.PROP_PIC_URL IS 'Property picture URL.';
 
   COMMENT ON COLUMN RESORT.PROP_MAP_URL IS 'Property MAP URL.';
 
   COMMENT ON COLUMN RESORT.CATERING_CURRENCY_CODE IS 'Catering Currency Code, used when Catering Currency differs from base currency.';
 
   COMMENT ON COLUMN RESORT.CATERING_CURRENCY_FORMAT IS 'Catering currency format.';
 
   COMMENT ON COLUMN RESORT.DEFAULT_RATECODE_RACK IS 'Rate code used to default a RACK rate code, used for FIT Contracts.';
 
   COMMENT ON COLUMN RESORT.DEFAULT_RATECODE_PCR IS 'Rate code used to default a PCR rate code, used in FIT Contracts.';
 
   COMMENT ON COLUMN RESORT.BLACKOUT_PERIOD_NOTES IS 'Blackout period notes defaulted onto the FIT Contract at time of creation.';
 
   COMMENT ON COLUMN RESORT.EXTERNAL_SC_YN IS 'Indicates that the property uses an external SC system.';
 
   COMMENT ON COLUMN RESORT.SEND_LEAD_AS_BOOKING_YN IS 'Indicates that the property accepts leads as bookings.';
 
   COMMENT ON COLUMN RESORT.EXP_HOTEL_CODE IS 'Hotel code used for third party exports';
 
   COMMENT ON COLUMN RESORT.LIC_ROOM_INFO IS 'Internally used license room information.';
--------------------------------------------------------
--  DDL for Table ROOM_REPAIRS
--------------------------------------------------------

  CREATE TABLE ROOM_REPAIRS 
   (	RESORT VARCHAR(20), 
	ROOM VARCHAR(20), 
	SEQ NUMERIC, 
	REPAIR_TYPE VARCHAR(20), 
	REASON_CODE VARCHAR(20), 
	BEGIN_DATE DATE, 
	END_DATE DATE, 
	ROOM_STATUS VARCHAR(20), 
	COMPLETED_DATE DATE, 
	RETURN_STATUS VARCHAR(20), 
	REPAIR_REMARKS VARCHAR(2000)
   ) ;
 

   COMMENT ON COLUMN ROOM_REPAIRS.RESORT IS 'The property that the record belongs to';
 
   COMMENT ON COLUMN ROOM_REPAIRS.ROOM IS 'The room which is under repair.';
 
   COMMENT ON COLUMN ROOM_REPAIRS.SEQ IS 'Unique sequence to determine the repair record.';
 
   COMMENT ON COLUMN ROOM_REPAIRS.REPAIR_TYPE IS 'Indicates the source of repairs.Eg HK etc (Yet to define new values)';
 
   COMMENT ON COLUMN ROOM_REPAIRS.REASON_CODE IS 'Reason for putting rooms into OO/OS.';
 
   COMMENT ON COLUMN ROOM_REPAIRS.BEGIN_DATE IS 'Start date for locking room from selling';
 
   COMMENT ON COLUMN ROOM_REPAIRS.END_DATE IS 'Date indicating end of repairs';
 
   COMMENT ON COLUMN ROOM_REPAIRS.ROOM_STATUS IS 'Room Status can be OO [Out of Order], OS [Out of Service], CW [Closed for Web]';
 
   COMMENT ON COLUMN ROOM_REPAIRS.COMPLETED_DATE IS 'Date when repair was completed';
 
   COMMENT ON COLUMN ROOM_REPAIRS.RETURN_STATUS IS 'The status the Room should be returned as.';
 
   COMMENT ON COLUMN ROOM_REPAIRS.REPAIR_REMARKS IS 'Special remarks for the repair or reason for repair.';
--------------------------------------------------------
--  DDL for Table ROOM_MAINTENANCE
--------------------------------------------------------

  CREATE TABLE ROOM_MAINTENANCE 
   (	MAINTENANCE_ID NUMERIC, 
	RESORT VARCHAR(20), 
	ROOM VARCHAR(20), 
	MAINTENANCE_CODE VARCHAR(20), 
	REMARKS VARCHAR(2000), 
	INSERT_USER NUMERIC, 
	INSERT_DATE DATE, 
	UPDATE_USER NUMERIC, 
	UPDATE_DATE DATE, 
	RESOLVED_BY NUMERIC, 
	RESOLVED_DATE DATE
   ) ;
 

   COMMENT ON COLUMN ROOM_MAINTENANCE.MAINTENANCE_ID IS 'Internal maintenance id';
 
   COMMENT ON COLUMN ROOM_MAINTENANCE.RESORT IS 'The property that the record belongs to';
 
   COMMENT ON COLUMN ROOM_MAINTENANCE.ROOM IS 'Room number';
 
   COMMENT ON COLUMN ROOM_MAINTENANCE.MAINTENANCE_CODE IS 'Maintenance code';
 
   COMMENT ON COLUMN ROOM_MAINTENANCE.REMARKS IS 'Maintenance remarks';
 
   COMMENT ON COLUMN ROOM_MAINTENANCE.INSERT_USER IS 'The user that created the record';
 
   COMMENT ON COLUMN ROOM_MAINTENANCE.INSERT_DATE IS 'The date the record was created';
 
   COMMENT ON COLUMN ROOM_MAINTENANCE.UPDATE_USER IS 'The user that modified the record';
 
   COMMENT ON COLUMN ROOM_MAINTENANCE.UPDATE_DATE IS 'The date the record was modified';
 
   COMMENT ON COLUMN ROOM_MAINTENANCE.RESOLVED_BY IS 'User who resolved';


 CREATE TABLE CURRENCY_EXCHANGE_RATES
   (
     BEGIN_DATE DATE ,
     EXCHANGE_RATE NUMERIC,
     LOCK_RATE_YN  VARCHAR(1),
     COMMENTS      VARCHAR(2000),
     INSERT_DATE DATE,
     INSERT_USER NUMERIC,
     UPDATE_DATE DATE ,
     UPDATE_USER                NUMERIC,
     RESORT                     VARCHAR(10),
     EXCHANGE_RATE_TYPE         VARCHAR(10),
     BASE_CURR_CODE             VARCHAR(10),
     CURRENCY_CODE              VARCHAR(10),
     CURR_ACTION_ID             NUMERIC,
     BUY_COMM_PERC              NUMERIC,
     SELL_COMM_PERC             NUMERIC,
     SELL_EXCHANGE_RATE         NUMERIC,
     BUY_FOREIGN_EXCHANGE_RATE  NUMERIC,
     SELL_FOREIGN_EXCHANGE_RATE NUMERIC   );

CREATE TABLE FOREIGN_CURRENCY
  (
    CURRENCY_CODE     VARCHAR(20),
    FORMAT_MASK       VARCHAR(80),
    DECIMAL_POSITIONS NUMERIC,
    DESCRIPTION       VARCHAR(2000),
    INSERT_DATE DATE,
    INSERT_USER NUMERIC,
    UPDATE_DATE DATE,
    UPDATE_USER                NUMERIC,
    TRIAN_METHOD_YN            VARCHAR(1),
    PREVIOUS_LOCAL_CURRENCY_YN VARCHAR(1),
    CURR_ACTION_ID             NUMERIC,
    CAN_DELETE_YN              VARCHAR(1),
    CURRENCY_SYMBOL            VARCHAR(10),
    SELL_CURRENCY_YN           VARCHAR(1),
    CHAIN_CODE                 VARCHAR(20),
    INACTIVE_DATE DATE,
    USED_FOR_CC_PAYMENTS_YN VARCHAR(1)
  );


CREATE TABLE CURRENCY_EXCHANGE_RATES_JRNL
  (
    BEGIN_DATE DATE,
    EXCHANGE_RATE NUMERIC,
    LOCK_RATE_YN  VARCHAR(1),
    COMMENTS      VARCHAR(2000),
    INSERT_DATE DATE,
    INSERT_USER NUMERIC,
    UPDATE_DATE DATE,
    UPDATE_USER                NUMERIC,
    RESORT                     VARCHAR(20),
    EXCHANGE_RATE_TYPE         VARCHAR(20),
    BASE_CURR_CODE             VARCHAR(20),
    CURRENCY_CODE              VARCHAR(20),
    CURR_ACTION_ID             NUMERIC,
    OLD_CURR_ACTION_ID         NUMERIC,
    BUY_COMM_PERC              NUMERIC,
    SELL_COMM_PERC             NUMERIC,
    SELL_EXCHANGE_RATE         NUMERIC,
    BUY_FOREIGN_EXCHANGE_RATE  NUMERIC,
    SELL_FOREIGN_EXCHANGE_RATE NUMERIC,
    SYSTEM_DATE DATE,
    JRNL_BUSINESS_DATE DATE,
    JRNL_USER NUMERIC
  );


  CREATE TABLE RATE_HEADER
    (
      RESORT               VARCHAR(20),
      RATE_CODE            VARCHAR(20),
      RATE_CLASS           VARCHAR(20),
      RATE_CATEGORY        VARCHAR(20),
      LOS_UNIT             NUMERIC,
      SELL_SEQUENCE        NUMERIC,
      PACKAGE_YN           VARCHAR(1),
      DESCRIPTION          VARCHAR(2000),
      FLAT_OR_PERCENTAGE   VARCHAR(20),
      OPERATOR_TYPE        VARCHAR(20),
      BASE_RATE_CODE       VARCHAR(20),
      ORDER_BY             NUMERIC,
      ALTERNATE_RATE_CODE  VARCHAR(20),
      COMMISSION_CODE      VARCHAR(20),
      COMMISSION_YN        VARCHAR(20),
      LABEL                VARCHAR(20),
      FOLIO_TEXT           VARCHAR(2000),
      RATE_INCLUDES_TAX_YN VARCHAR(1),
      MARKET_CODE          VARCHAR(20),
      SOURCE_CODE          VARCHAR(20),
      BACK_TO_BACK_YN      VARCHAR(1),
      BEGIN_BOOKING_DATE DATE,
      END_BOOKING_DATE DATE,
      YIELDABLE_YN             VARCHAR(1),
      HIGHLIGHT_RATE_AMOUNT_YN VARCHAR(1),
      SHOW_RATE_AMOUNT_YN      VARCHAR(1),
      DAYUSE_YN                VARCHAR(1),
      PRINT_RATE_YN            VARCHAR(1),
      TRX_CODE                 VARCHAR(20),
      TRX_CODE_WK              VARCHAR(20),
      PKG_TRX_CODE             VARCHAR(20),
      TRX_TAX_INCL_YN          VARCHAR(1) DEFAULT 'N',
      PKG_TRX_CODE_WK          VARCHAR(20),
      PROFIT_TRX_CODE          VARCHAR(20),
      TRX_WK_TAX_INCL_YN       VARCHAR(1) DEFAULT 'N',
      PKG_TRX_TAX_INCL_YN      VARCHAR(1) DEFAULT 'N',
      PKG_TRX_WK_TAX_INCL_YN   VARCHAR(1) DEFAULT 'N',
      CURRENCY_CODE            VARCHAR(20),
      EXCHANGE_POSTING_TYPE    VARCHAR(20),
      NEGOTIATED               VARCHAR(1),
      COMPLIMENTARY_YN         VARCHAR(1),
      HOUSE_USE_YN             VARCHAR(1),
      INACTIVE_DATE DATE,
      POSTING_RHYTHM    VARCHAR(20) DEFAULT 'D',
      WEEKEND_DAYS      VARCHAR(20),
      RATE_CALENDAR_YN  VARCHAR(1),
      ADVANCE_BOOKING   NUMERIC,
      CLOSED_TO_ARRIVAL VARCHAR(20),
      FREQUENT_FLYER_YN VARCHAR(1),
      MAX_LOS           NUMERIC,
      ADDITION          VARCHAR(2000),
      MULTIPLICATION    VARCHAR(2000),
      SHORT_INFO        VARCHAR(2000),
      LONG_INFO         VARCHAR(2000),
      RATE_CODE_LOCKED  VARCHAR(1),
      INSERT_USER       NUMERIC,
      INSERT_DATE DATE,
      UPDATE_USER NUMERIC,
      UPDATE_DATE DATE,
      RATE_BUCKET             VARCHAR(3),
      EXTERNAL_LOCKED         VARCHAR(1) DEFAULT 'N',
      YIELD_AS                VARCHAR(20),
      GDS_ALLOWED_YN          VARCHAR(1),
      LOYALTY_PROGRAM_YN      VARCHAR(1),
      REDEMPTION_RATE_YN      VARCHAR(1),
      DISPLAY_SET             VARCHAR(40),
      BASE_FLT_PCT            VARCHAR(3),
      BASE_ROUNDING           VARCHAR(1),
      BASE_AMOUNT             NUMERIC,
      DISTRIBUTE_YN           VARCHAR(1) DEFAULT 'N',
      TIERED_YN               VARCHAR(1) DEFAULT 'N',
      DEPT_CODE               VARCHAR(20),
      WK_DEPT_CODE            VARCHAR(20),
      COMMISSION_PCT          NUMERIC,
      DISCOUNT_YN             VARCHAR(1),
      GROUP_CODE              VARCHAR(20),
      RATE_LEVEL              NUMERIC,
      ROD_YN                  VARCHAR(1),
      ROD_BASED_YN            VARCHAR(1),
      ROD_BASE_FLT_PCT        VARCHAR(3),
      ROD_BASE_ROUNDING       VARCHAR(1),
      ROD_BASE_AMOUNT         NUMERIC,
      RATEINFO_URL            VARCHAR(2000),
      COMMISSIONABLE_YN       VARCHAR(1),
      FIT_DISCOUNT_PERC       NUMERIC,
      BFST_INCL_YN            VARCHAR(1),
      BFST_PRICE              NUMERIC,
      SERVICE_INCL_YN         VARCHAR(1),
      FIT_DISCOUNT_LEVEL      NUMERIC,
      SERVICE_PERC            NUMERIC,
      COMMISSIONABLE_PERC     NUMERIC,
      DBL_RM_SUPPLEMENT_YN    VARCHAR(1),
      DBL_RM_SUPPLEMENT_PRICE NUMERIC,
      TAX_INCLUDED_YN         VARCHAR(1),
      TAX_INCLUDED_PERC       NUMERIC,
      DAILY_RATES_YN          VARCHAR(1),
      CHANGE_STATE            VARCHAR(1),
      SDOW_BEGIN_BOOKING_DATE DATE,
      SDOW_END_BOOKING_DATE DATE,
      MAX_ADVANCE_BOOKING        NUMERIC,
      BBAR_YN                    VARCHAR(1),
      BBAR_BASED_YN              VARCHAR(1),
      BBAR_BASE_FLT_PCT          VARCHAR(3),
      BBAR_BASE_ROUNDING         VARCHAR(3),
      BBAR_BASE_AMOUNT           NUMERIC,
      YM_CODE                    VARCHAR(4000),
      MIN_OCCUPANCY              NUMERIC,
      MAX_OCCUPANCY              NUMERIC,
      AVAILABILITY_UPDATE_YN     VARCHAR(1),
      RATES_TO_GDS_YN            VARCHAR(1),
      DISPLAY_REGIONAL_YN        VARCHAR(1),
      DBASE_RATE_CODE            VARCHAR(20),
      DBASE_FLT_PCT              VARCHAR(3),
      DBASE_ROUNDING             VARCHAR(3),
      DBASE_AMOUNT               NUMERIC,
      DBASE_COMPARE_YN           VARCHAR(1),
      RATE_FLOOR                 NUMERIC,
      MFN_UPLOAD_YN              VARCHAR(1),
      ASB_RATE_CYCLE             VARCHAR(2),
      ADV_BASE_RATE_CODE         VARCHAR(20),
      ADV_BASE_ROUNDING          VARCHAR(3),
      PENDING_APPROVAL_YN        VARCHAR(1) DEFAULT 'N',
      UPSELL_YN                  VARCHAR(1),
      OWNER_RATE_YN              VARCHAR(1),
      MANDATE_RESV_PROFILES      VARCHAR(2000),
      BBAR_COMPARE_YN            VARCHAR(1),
      BYPASS_HURDLE_YN           VARCHAR(1),
      ORS_SELL_SEQUENCE          NUMERIC,
      ADV_BASE_COMPARE_YN        VARCHAR(1),
      BYPASS_RANK_CHECK_YN       VARCHAR(1),
      RANK_VALUE                 NUMERIC,
      RANK_ADJUSTMENT_FACTOR     NUMERIC,
      DEFAULT_TO_HIGHEST_BAR_YN  VARCHAR(1),
      RATE_FLOOR_OVERRIDE_YN     VARCHAR(1),
      EXTRA_PERSON_CHARGE_BEGINS NUMERIC,
      CURR_CODE_DECIMAL_POS      NUMERIC,
      OCCUPANCY_LEVEL            NUMERIC,
      OVERRIDE_PACKAGE_YN        VARCHAR(1),
      CAT_PKG_YN                 VARCHAR(1),
      CAT_PKG_CODE               VARCHAR(20)
    );

CREATE TABLE RESORT_ORIGINS_OF_BOOKING
  (
    RESORT             VARCHAR(20),
    SOURCE_CODE        VARCHAR(20),
    PARENT_SOURCE_CODE VARCHAR(20),
    DESCRIPTION        VARCHAR(2000),
    INSERT_USER        NUMERIC,
    INSERT_DATE DATE,
    UPDATE_USER NUMERIC,
    UPDATE_DATE DATE,
    INACTIVE_DATE DATE,
    SELL_SEQUENCE NUMERIC,
    SC_ORDERBY    NUMERIC
  );

CREATE VIEW CURRENCY_EXCHANGE_RATES_VIEW (RESORT, CURRENCY_CODE, BASE_CURR_CODE, EXCHANGE_RATE_TYPE, BEGIN_DATE, EXCHANGE_RATE, BUY_COMM_PERC, NET_BUY_RATE, SELL_EXCHANGE_RATE, SELL_COMM_PERC, NET_SELL_RATE, LOCK_RATE_YN, CURR_ACTION_ID, COMMENTS, INSERT_USER, INSERT_DATE, UPDATE_USER, UPDATE_DATE, DESCRIPTION, BUY_FOREIGN_EXCHANGE_RATE, SELL_FOREIGN_EXCHANGE_RATE)
AS
  SELECT c.Resort ,
    c.Currency_Code ,
    c.Base_Curr_Code ,
    c.Exchange_Rate_Type ,
    c.Begin_Date ,
    c.Exchange_Rate ,
    c.Buy_Comm_Perc ,
    ((1 / c.Exchange_Rate) * (1 - (NVL(c.Buy_Comm_Perc, 0) / 100))) Net_Buy_Rate
    /* This is the multiplying factor by which the amount will be multiplied to get to the result  */
    ,
    c.Sell_Exchange_Rate ,
    c.Sell_Comm_Perc ,
    ((1 / c.Sell_Exchange_Rate) * (1 + (NVL(c.Sell_Comm_Perc, 0) / 100))) Net_Sell_Rate
    /* This is the multiplying factor by which the amount will be multiplied to get to the result */
    ,
    c.Lock_Rate_Yn ,
    c.Curr_Action_Id ,
    c.Comments ,
    c.Insert_User ,
    c.Insert_Date ,
    c.Update_User ,
    c.Update_Date ,
    f.Description ,
    c.Buy_Foreign_Exchange_Rate ,
    c.Sell_Foreign_Exchange_Rate
  FROM Currency_Exchange_Rates c ,
    Foreign_Currency f
  WHERE c.Currency_Code = f.Currency_Code
  UNION ALL
  SELECT c.Resort ,
    c.Currency_Code ,
    c.Base_Curr_Code ,
    c.Exchange_Rate_Type ,
    c.Begin_Date ,
    c.Exchange_Rate ,
    c.Buy_Comm_Perc ,
    ((1 / c.Exchange_Rate) * (1 - (NVL(c.Buy_Comm_Perc, 0) / 100))) Net_Buy_Rate
    /* This is the multiplying factor by which the amount will be multiplied to get to the result  */
    ,
    c.Sell_Exchange_Rate ,
    c.Sell_Comm_Perc ,
    ((1 / c.Sell_Exchange_Rate) * (1 + (NVL(c.Sell_Comm_Perc, 0) / 100))) Net_Sell_Rate
    /* This is the multiplying factor by which the amount will be multiplied to get to the result */
    ,
    c.Lock_Rate_Yn ,
    c.Curr_Action_Id ,
    c.Comments ,
    c.Insert_User ,
    c.Insert_Date ,
    c.Update_User ,
    c.Update_Date ,
    f.Description ,
    c.Buy_Foreign_Exchange_Rate ,
    c.Sell_Foreign_Exchange_Rate
  FROM Currency_Exchange_Rates_Jrnl c ,
    Foreign_Currency f
  WHERE c.Currency_Code                      = f.Currency_Code;

