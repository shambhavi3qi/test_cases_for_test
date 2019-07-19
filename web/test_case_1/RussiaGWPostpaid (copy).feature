Feature: This feature file tests all smoke test scenarios for Russia Gateway Postpaid

  Background:
    * I read the data from the excel "Config_Russia_GW_Postpaid.xlsx" and "Config" tab
    * I read obj data from the excel "obj_repo.xlsx" and "obj" tab
    * I read the data from the "iridium_service.xlsx" and "Smoke_test" tab

  @Telephony @RGW_Postpaid_Activate_Account_Russia_Gateway_Postpaid
  Scenario: Testcase id = RGW_Postpaid_Activate_Account_Russia_Gateway_Postpaid, description = Activate a Russia Gateway Postpaid Account with Russia Gateway Postpaid service plan
    Given Provisioning System Mode is set to "OFF" for testcase "RGW_Postpaid_Activate_Account_Russia_Gateway_Postpaid"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Russia_Gateway_SIM_Postpaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I select "Russia Gateway Postpaid" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I validate the device IDs in DB
    Then I validate products purchased and enabled services
    Then I validate two stage PINs and Voicemail option
    Then I validate the account details on network elements
    Then I validate the service order for activation

  @Telephony @RGW_Postpaid_ACTIVE_to_SUSPENDED
  Scenario: Testcase id = RGW_Postpaid_ACTIVE_to_SUSPENDED, description = Change status from ACTIVE to SUSPENDED
    Given Provisioning System Mode is set to "OFF" for testcase "RGW_Postpaid_ACTIVE_to_SUSPENDED"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I change the status to "SUSPENDED"
    Then I verify the status is updated successfully on BRM Server
    Then I verify the lifecycle state and service state on BRM DB Server

  @Telephony @RGW_Postpaid_SUSPENDED_to_ACTIVE
  Scenario: Testcase id = RGW_Postpaid_SUSPENDED_to_ACTIVE, description = Change status from SUSPENDED to ACTIVE
    Given Provisioning System Mode is set to "OFF" for testcase "RGW_Postpaid_SUSPENDED_to_ACTIVE"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I change the status to "ACTIVE"
    Then I verify the status is updated successfully on BRM Server
    Then I verify the lifecycle state and service state on BRM DB Server

  @Telephony @RGW_Postpaid_ACTIVE_to_DEACTIVE
  Scenario: Testcase id = RGW_Postpaid_ACTIVE_to_DEACTIVE, description = Change status from ACTIVE to DEACTIVE
    Given Provisioning System Mode is set to "OFF" for testcase "RGW_Postpaid_ACTIVE_to_DEACTIVE"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I change the status to "DEACTIVE"
    Then I verify the status is updated successfully on BRM Server
    Then I verify the lifecycle state and service state on BRM DB Server

  @Telephony @RGW_Postpaid_Activate_Account_Russia_Gateway_Postpaid_pre_req_1
  Scenario: Testcase id = RGW_Postpaid_Activate_Account_Russia_Gateway_Postpaid_pre_req_1, description = Activate a Russia Gateway Postpaid Account with Russia Gateway Postpaid service plan
    Given Provisioning System Mode is set to "OFF" for testcase "RGW_Postpaid_Activate_Account_Russia_Gateway_Postpaid_pre_req_1"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Russia_Gateway_SIM_Postpaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I select "Russia Gateway Postpaid" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I validate the device IDs in DB
    Then I validate products purchased and enabled services
    Then I validate two stage PINs and Voicemail option
    Then I validate the account details on network elements
    Then I validate the service order for activation

  @Telephony @RGW_Postpaid_ACTIVE_to_SUSPENDED_pre_req_1
  Scenario: Testcase id = RGW_Postpaid_ACTIVE_to_SUSPENDED_pre_req_1, description = Change status from ACTIVE to SUSPENDED
    Given Provisioning System Mode is set to "OFF" for testcase "RGW_Postpaid_ACTIVE_to_SUSPENDED_pre_req_1"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I change the status to "SUSPENDED"
    Then I verify the status is updated successfully on BRM Server
    Then I verify the lifecycle state and service state on BRM DB Server

  @Telephony @RGW_Postpaid_SUSPENDED_to_DEACTIVE
  Scenario: Testcase id = RGW_Postpaid_SUSPENDED_to_DEACTIVE, description = Change status from SUSPENDED to DEACTIVE
    Given Provisioning System Mode is set to "OFF" for testcase "RGW_Postpaid_SUSPENDED_to_DEACTIVE"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I change the status to "DEACTIVE"
    Then I verify the status is updated successfully on BRM Server
    Then I verify the lifecycle state and service state on BRM DB Server

  @Telephony @RGW_Postpaid_Activate_Account_Russia_Gateway_Postpaid_pre_req_2
  Scenario: Testcase id = RGW_Postpaid_Activate_Account_Russia_Gateway_Postpaid_pre_req_1, description = Activate a Russia Gateway Postpaid Account with Russia Gateway Postpaid service plan
    Given Provisioning System Mode is set to "OFF" for testcase "RGW_Postpaid_Activate_Account_Russia_Gateway_Postpaid_pre_req_1"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Russia_Gateway_SIM_Postpaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I select "Russia Gateway Postpaid" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I validate the device IDs in DB
    Then I validate products purchased and enabled services
    Then I validate two stage PINs and Voicemail option
    Then I validate the account details on network elements
    Then I validate the service order for activation

  @Telephony @RGW_Postpaid_Update_Service_Plan
  Scenario: Testcase id = RGW_Postpaid_Update_Service_Plan, description = Update Plan for Russia Gateway Postpaid Account
    Given Provisioning System Mode is set to "OFF" for testcase "RGW_Postpaid_Update_Service_Plan"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID to swap device
    Then I select "Russia Gateway Data Only" for "Service Plan"
    Then I capture the enabled services
    Then I click on obj repo "Update Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I validate the device IDs in DB
    Then I validate products purchased and enabled services
    Then I validate two stage PINs and Voicemail option
    Then I validate the account details on network elements

  @Telephony @RGW_Postpaid_Activate_Account_Russia_Gateway_Postpaid_pre_req_3
  Scenario: Testcase id = RGW_Postpaid_Activate_Account_Russia_Gateway_Postpaid_pre_req_1, description = Activate a Russia Gateway Postpaid Account with Russia Gateway Postpaid service plan
    Given Provisioning System Mode is set to "OFF" for testcase "RGW_Postpaid_Activate_Account_Russia_Gateway_Postpaid_pre_req_1"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Russia_Gateway_SIM_Postpaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I select "Russia Gateway Postpaid" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I validate the device IDs in DB
    Then I validate products purchased and enabled services
    Then I validate two stage PINs and Voicemail option
    Then I validate the account details on network elements
    Then I validate the service order for activation

  @Telephony @RGW_Postpaid_Device_Swap
  Scenario: Testcase id = RGW_Postpaid_Device_Swap, description = Swap SIM for Russia Gateway Postpaid Account
    Given Provisioning System Mode is set to "OFF" for testcase "RGW_Postpaid_Device_Swap"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID to swap device
    Then I capture the enabled services
    Then click on swap device link and enter value based on "Russia Gateway Postpaid Sim Query"
    Then I verify the status of the account is not pending
    Then I verify the status is updated followed by check on BRM Server
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I validate the device IDs in DB
    Then I verify the new Device id on BRM DB Server

  @Telephony @RGW_Postpaid_Bulk_Activate_Account
  Scenario: Testcase id = RGW_Postpaid_Bulk_Activate_Account, description = Activate Russia Gateway Postpaid Bulk Account
    Given Provisioning System Mode is set to "OFF" for testcase "RGW_Postpaid_Bulk_Activate_Account"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I create the bulk upload csv file for service "Telephony" and field "Russia_Gateway_SIM_Postpaid" and "2" items
    Then I set "Multiple SIMs" checkbox
    Then I upload the file "Telephony_Russia_Gateway_SIM_Postpaid.csv" to "File_Upload"
    Then I select "Russia Gateway Postpaid" for "Sub-Market"
    Then I select "Russia Gateway Postpaid" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I click on bulk request ID
    Then I wait for the bulk request to be processed with a threshold of "200" seconds
    Then I capture contract IDs from "Search_Results_Table"
    Then I click on "Search" tab
    Then I validate that accounts are activated with given details for bulk activation for "Russia_Gateway_SIM_Postpaid"

  @Telephony @RGW_Postpaid_Bulk_Plan_Change_i2i
  Scenario: Testcase id = RGW_Postpaid_Bulk_Plan_Change_i2i, description = Bulk plan change for Russia Gateway Postpaid individual to individual
    Given Provisioning System Mode is set to "OFF" for testcase "RGW_Postpaid_Bulk_Plan_Change_i2i"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I scroll into view of the element "Telephony_tab"
    Then I hover over "Telephony_tab" tab
    Then I click on "Bulk_Plan_Change"
    Then I upload the file "Telephony_Russia_Gateway_SIM_Postpaid.csv" to "File_Upload"
    Then I select "Russia Gateway Postpaid" for "Sub_market_bulk_plan_change"
    Then I select "None" for "Demo_Trial_Bulk_Plan_change"
    Then I select "Russia Gateway Postpaid" for "Plan_Coming_From"
    Then I select "Russia Gateway Data Only" for "Plan_Going_To"
    Then I capture the enabled services
    Then I click on obj repo "Change_Account_Button" button
    Then I click on bulk request ID
    Then I wait for the bulk request to be processed with a threshold of "200" seconds
    Then I capture contract IDs from "Search_Results_Table"
    Then I validate the success count and errors count on Bulk Request Status page
    Then I verify all the results are "success"
    Then I click on "Search" tab
    Then I validate that accounts are activated with given details for bulk activation for "Russia_Gateway_SIM_Postpaid"
