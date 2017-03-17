Given(/^I am on Compare Energy link in Compare market website$/) do
  @energy_supplier_page = YourSupplier.new
  @energy_supplier_page.load
  expect(@energy_supplier_page).to be_displayed
end

When(/^I enter the postcode "([^"]*)"$/) do |arg1|
  @energy_supplier_page.postcode.set "TW13 4GJ"
  # puts @energy_supplier_page.postcode.text
  # expect(@energy_supplier_page.has_postcode?).to eql(true)end
  @energy_supplier_page.find_postcode.click
end

  When(/^I fill the details$/) do


  #@energy_supplier_page.have_bill.click
  @energy_supplier_page.compare_gas_electricity.click
  @energy_supplier_page.different_electricity_gas_supplier.click
  # puts @energy_supplier_page.electricity_supplier.size
  # @energy_supplier_page.electricity_supplier.each do |supplier|
  #   puts supplier.text
  #   puts "here"
  #   if supplier.text == 'EDF Energy'
  #     puts "I am here"
  #     supplier.click
  #   end
  # end
  #  @energy_supplier_page.dont_know_electricity_supplier.click
  #  @energy_supplier_page.dont_know_gas_supplier.click
  @energy_supplier_page.next.click

##############################################
  @electricity_page = YourElectricity.new
  @electricity_page.tarrif_type.select('1yr Fixed Price')
  # expect(@energy_page.heading.text).to eql("Your Energy")
  # @energy_page.wait_for_no_pre_payment_meter
  # @energy_page.no_pre_payment_meter.click
  @electricity_page.wait_for_no_economy_7
  @electricity_page.economy_7.click
  @electricity_page.payment_method.select('Pay On Receipt Of Bill')

  @electricity_page.main_heating_source.click
  @electricity_page.kwh_usage.click
  @electricity_page.spent_during_day.set "40"
  #@electricity_page.spent_during_day_period.select('Monthly')
  @electricity_page.spent_during_night.set "20"

  @electricity_page.next.click

  ##############################################

  @gas_page = YourGas.new
  @gas_page.not_main_heating_source.click
  @gas_page.kwh_usage.click
  @gas_page.kwh_spend.set "300"

  @gas_page.next.click

  ##############################################

  @details_page = YourDetails.new

  @details_page.fixed_tariff.click
  @details_page.quarterly_direct_debit.click
  @details_page.user_email_id.set "foo@bar.com"
  @details_page.agree_terms.click
  @details_page.go_to_prices.click
end


Then(/^I should get the comparison detais and best deal$/) do

  pending # Write code here that turns the phrase above into concrete actions
end