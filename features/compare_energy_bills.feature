Feature: As a end user of compare market
  I want to compare my energy bills
  so that I can get the comparison result


 Scenario: Compare both Electricity and Gas bills when user have bill and suggest the best deal
    Given I am on Compare Energy link in Compare market website
    And I enter following  details in supplier page
     |postcode|have_bill|comparison_of      |same_supplier| elec_supplier|gas_supplier|
     |PE2 6YS |yes      |electricity and gas| no          |NPower        |British Gas |
    And I click to next page
    And I should be in Electricity Energy page
    And I enter following  details in electricity energy page
     |tariff_type     |economy_7| payment_method        | main_heating_source| kwh_usage|day_spend|night_spend|
     |Juice           |yes      | Pay On Receipt Of Bill| yes                | yes      |40       |20         |
   And I click on next page button in electricity page
   And I should be in Gas Energy page
   And I enter following  details in gas energy page
     |main_heating_source|kwh_usage|kwh_spend|
     |no                 |yes      |300      |
   And I click on next page button in gas page
   And I should be in your preferences page
   And I enter following  details in your details page
     |fixed_tariff|payment_mode          |email_id   | agree_terms|
     |yes         |quarterly_direct_debit|foo@bar.com| yes        |
   And I click on prices button
   Then I should be in Results page with heading "Current tariff and usage"
   And I should get the best results in "Your Results"


  Scenario: Compare both Electricity and Gas bills when user doesn't have bill and suggest the best deal
   Given I am on Compare Energy link in Compare market website
   And I enter following  details in supplier page
     |postcode|have_bill|comparison_of      | elec_supplier|gas_supplier|
     |PE2 6YS |no       |electricity and gas|NPower        |British Gas |
   And I click to next page
   And I should be in Energy page
   And I enter following  details in energy page
     |pre_payment_meter|economy_7|elec_spend|elec_spend_period|gas_spend|gas_spend_period|
     | yes             |no       |120       | Quarterly       |300      |Annually        |
   And I click on next page button in energy page
   And I should be in your preferences page
   And I enter following  details in your details page
     |fixed_tariff|email_id   | agree_terms|
     |yes         |foo@bar.com| yes        |
   And I click on prices button
   Then I should be in Results page with heading "Current tariff and usage"
   And I should get the best results in "Your Results"



  Scenario: Compare both Electricity and Gas bills when user doesn't know much details and suggest the best deal
    Given I am on Compare Energy link in Compare market website
    And I enter following  details in supplier page
      |postcode|have_bill|comparison_of      | elec_supplier|gas_supplier|
      |PE2 6YS |no       |electricity and gas| I don't know |I don't know|
    And I click to next page
    And I should be in Energy page
    And I enter following  details in energy page
      |pre_payment_meter|economy_7|elec_spend  |gas_spend     |
      | yes             |no       |I don't know| I don't know |
    And I click on next page button in energy page
    And I should be in energy usage page
    And I enter following  details in energy usage page
      |beds |people|main_heating_source |temperature |insulation|main_cooking_source|visitors|
      | two |4     |electricity         | Temperate  |Wafer thin|Gas                |Hardly  |
    And I click on next page button in energy usage page
    And I should be in your preferences page
    And I enter following  details in your details page
      |fixed_tariff|email_id   | agree_terms|
      |yes         |foo@bar.com| yes        |
    And I click on prices button
    Then I should be in Results page with heading "Current tariff and usage"
    And I should get the best results in "Your Results"


