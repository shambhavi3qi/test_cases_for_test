Feature: This feature file tests all Smoke Test scenarios for Russia Gateway CrewWithCrew

  Background:
    * I read the data from the excel "RGW_Config_telephony_CrewWithCrew.xlsx" and "Config" tab
    * I read obj data from the excel "obj_repo.xlsx" and "obj" tab
    * I read the data from the "iridium_service.xlsx" and "Smoke_test" tab

  @Telephony @RGW_Crew_With_Crew_Activate_Account
  Scenario: Testcase id = RGW_Crew_With_Crew_Activate_Account, description = Activate a Standard Crew Service Plan for RGW Crew with Crew Account
    Given Provisioning System Mode is set to "OFF" for testcase "RGW_Crew_With_Crew_Activate_Account"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_RGW_SIM_Crew_With_Crew" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I select "Russia Gateway Crew" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I set the checkbox "Activate_Crew"
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
    Then I validate prepaid details on the prepaid DB
    Then I validate the service order for activation

  @Telephony @RGW_Crew_With_Crew_ACTIVE_to_SUSPENDED
  Scenario: Testcase id = RGW_Crew_With_Crew_ACTIVE_to_SUSPENDED, description = Change status from ACTIVE to SUSPENDED
    Given Provisioning System Mode is set to "OFF" for testcase "RGW_Crew_With_Crew_ACTIVE_to_SUSPENDED"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I change the status to "SUSPENDED"
    Then I verify the status is updated successfully on BRM Server
    Then I verify the lifecycle state and service state on BRM DB Server

  @Telephony @RGW_Crew_With_Crew_SUSPENDED_to_ACTIVE
  Scenario: Testcase id = RGW_Crew_With_Crew_SUSPENDED_to_ACTIVE, description = Change status from SUSPENDED to ACTIVE
    Given Provisioning System Mode is set to "OFF" for testcase "RGW_Crew_With_Crew_SUSPENDED_to_ACTIVE"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I change the status to "ACTIVE"
    Then I verify the status is updated successfully on BRM Server
    Then I verify the lifecycle state and service state on BRM DB Server

  @Telephony @RGW_Crew_With_Crew_ACTIVE_to_DEACTIVE
  Scenario: RGW_Testcase id = RGW_Crew_With_Crew_ACTIVE_to_DEACTIVE, description = Change status from ACTIVE to DEACTIVE
    Given Provisioning System Mode is set to "OFF" for testcase "RGW_Crew_With_Crew_ACTIVE_to_DEACTIVE"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I change the status to "DEACTIVE"
    Then I verify the status is updated successfully on BRM Server
    Then I verify the lifecycle state and service state on BRM DB Server

  @Telephony @RGW_Crew_With_Crew_Activate_Account_pre_req_1
  Scenario: Testcase id = RGW_Crew_With_Crew_Activate_Account_pre_req_1, description = Activate a Standard Crew Service Plan for RGW Crew with Crew Account
    Given Provisioning System Mode is set to "OFF" for testcase "RGW_Crew_With_Crew_Activate_Account_pre_req_1"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_RGW_SIM_Crew_With_Crew" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I select "Russia Gateway Crew" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I set the checkbox "Activate_Crew"
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
    Then I validate prepaid details on the prepaid DB
    Then I validate the service order for activation

  @Telephony @RGW_Crew_With_Crew_ACTIVE_to_SUSPENDED_pre_req_1
  Scenario: Testcase id = RGW_Crew_With_Crew_ACTIVE_to_SUSPENDED_pre_req_1, description = Change status from ACTIVE to SUSPENDED
    Given Provisioning System Mode is set to "OFF" for testcase "RGW_Crew_With_Crew_ACTIVE_to_SUSPENDED_pre_req_1"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I change the status to "SUSPENDED"
    Then I verify the status is updated successfully on BRM Server
    Then I verify the lifecycle state and service state on BRM DB Server

  @Telephony @RGW_Crew_With_Crew_SUSPENDED_to_DEACTIVE
  Scenario: Testcase id = RGW_Crew_With_Crew_SUSPENDED_to_DEACTIVE, description = Change status from SUSPENDED to DEACTIVE
    Given Provisioning System Mode is set to "OFF" for testcase "RGW_Crew_With_Crew_SUSPENDED_to_DEACTIVE"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I change the status to "DEACTIVE"
    Then I verify the status is updated successfully on BRM Server
    Then I verify the lifecycle state and service state on BRM DB Server

  @Telephony @RGW_Crew_With_Crew_Activate_Account_Standard_With_Restrict_Scratch_Cards
  Scenario: Testcase id = RGW_Crew_With_Crew_Activate_Account_Standard_With_Restrict_Scratch_Cards, description = Activate a RGW Crew with Crew Account with Standard Crew Service Plan and With Restrict Scratch Card Enabled
    Given Provisioning System Mode is set to "OFF" for testcase "RGW_Crew_With_Crew_Activate_Account_Standard_With_Restrict_Scratch_Cards"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_RGW_SIM_Crew_With_Crew" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I select "Russia Gateway Crew" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I set the checkbox "Activate_Crew"
    Then I set the checkbox "Restrict_Scratch_Cards"
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
    Then I validate prepaid details on the prepaid DB
    Then I validate the service order for activation

# Only one service plan is available
#  @Telephony @RGW_Crew_With_Crew_Update_Service_Plan
#  Scenario: Testcase id = RGW_Crew_With_Crew_Update_Service_Plan, description = Update Service Plan for RGW Crew with Crew Account
#    Given Provisioning System Mode is set to "OFF" for testcase "RGW_Crew_With_Crew_Update_Service_Plan"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "Search" tab
#    Then I enter "Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I click on the Contract ID to swap device
#    Then I select "GO UNLIMITED Crew" for "Service Plan"
#    Then I capture the enabled services
#    Then I click on obj repo "Update Account" button
#    Then I wait 5 seconds
#    Then I capture the data from account activation page
#    Then I click on "Search" tab
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I check status and cleanup on Network Elements if activation went to Error
#    Then I validate the device IDs in DB
#    Then I validate products purchased and enabled services
#    Then I validate two stage PINs and Voicemail option
#    Then I validate the account details on network elements
#    Then I validate prepaid details on the prepaid DB

  @Telephony @RGW_Crew_With_Crew_Bulk_Activate_Account
  Scenario: Testcase id = RGW_Crew_With_Crew_Bulk_Activate_Account, description = Activate RGW Crew with Crew Bulk Account
    Given Provisioning System Mode is set to "OFF" for testcase "RGW_Crew_With_Crew_Bulk_Activate_Account"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I create the bulk upload csv file for service "RGW" and field "RGW_SIM_Crew_With_Crew" and "1" items
    Then I set "Multiple SIMs" checkbox
    Then I upload the file "RGW_RGW_SIM_Crew_With_Crew.csv" to "File_Upload"
    Then I select "Russia Gateway Crew" for "Sub-Market"
    Then I select "Russia Gateway Crew" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I set the checkbox "Activate_Crew"
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I click on bulk request ID
    Then I wait for the bulk request to be processed with a threshold of "200" seconds
#    Then I capture the data from account activation page
    Then I capture contract IDs from "Search_Results_Table"
    Then I click on "Search" tab
    Then I validate that accounts are activated with given details for bulk activation for "RGW_SIM_Crew_With_Crew"

#Only one service plan is available
#  @Telephony @ @RGW_Crew_With_Crew_Bulk_Plan_Change_i2i
#  Scenario: Testcase id = RGW_Crew_With_Crew_Bulk_Plan_Change_i2i, description = Bulk plan change for RGW crew with crew individual to individual
#    Given Provisioning System Mode is set to "OFF" for testcase "RGW_Crew_With_Crew_Bulk_Plan_Change_i2i"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "Telephony" tab
#    Then I scroll into view of the element "Telephony_tab"
#    Then I hover over "Telephony_tab" tab
#    Then I click on "Bulk_Plan_Change"
#    Then I upload the file "Telephony_Telephony_SIM_Crew_With_Crew.csv" to "File_Upload"
#    Then I select "Standard Crew" for "Sub_market_bulk_plan_change"
#    Then I select "None" for "Demo_Trial_Bulk_Plan_change"
#    Then I select "Standard Crew" for "Plan_Coming_From"
#    Then I select "GO UNLIMITED Crew" for "Plan_Going_To"
#    Then I capture the enabled services
#    Then I click on obj repo "Change_Account_Button" button
#    Then I click on bulk request ID
#    Then I wait for the bulk request to be processed with a threshold of "200" seconds
#    Then I capture contract IDs from "Search_Results_Table"
#    Then I validate the success count and errors count on Bulk Request Status page
#    Then I verify all the results are "success"
#    Then I click on "Search" tab
#    Then I validate that accounts are activated with given details for bulk activation for "Telephony_SIM_Crew_With_Crew"