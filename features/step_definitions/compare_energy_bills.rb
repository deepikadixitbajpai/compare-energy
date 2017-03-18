Given(/^I am on Compare Energy link in Compare market website$/) do
  @page = CompareEnergy::Page.new
  @energy_supplier_page = @page.supplier
  @energy_supplier_page.load
  expect(@energy_supplier_page).to be_displayed
end

And(/^I enter following  details in supplier page$/) do |table|
  table.hashes.each do |hash|
    @energy_supplier_page.postcode.set hash['postcode']
    @energy_supplier_page.find_postcode.click
    if hash['have_bill'] == "yes"
      @energy_supplier_page.have_bill.click
    else
      @energy_supplier_page.not_have_bill.click
    end

    @energy_supplier_page.compare_gas_electricity.click
    @energy_supplier_page.different_electricity_gas_supplier.click if hash['same_supplier']
    if hash['elec_supplier'] == 'nPower'
      @energy_supplier_page.elec_npower.click
    else
      @energy_supplier_page.dont_know_electricity_supplier.click
    end
    if hash['gas_supplier'] == 'British Gas'
      @energy_supplier_page.british_gas.click
    else
      @energy_supplier_page.dont_know_gas_supplier.click
    end
  end
end

When(/^I click to next page$/) do
  @energy_supplier_page.next.click
end

When(/^I should be in Electricity Energy page$/) do
  @electricity_page = @page.electrical_energy
  #assesrtion for heading
end

And(/^I should be in Energy page$/) do
  @energy_page = @page.energy
  expect(@energy_page.heading.text).to eql("Your Energy")
end

And(/^I enter following  details in energy page$/) do |table|
  table.hashes.each do |hash|
    @energy_page.pre_payment_meter.click
    @energy_page.no_economy_7.click
    if hash['elec_spend'] == "I don't know"
      @energy_page.dont_know_electricity_spend.click
    else
      @energy_page.electricity_spend.set hash['elec_spend']
    end
    @energy_page.electricity_spend_period.select(hash['elec_spend_period']) if hash['elec_spend_period']
    if hash['gas_spend'] == "I don't know"
      @energy_page.dont_know_gas_spend.click
    else
      @energy_page.gas_spend.set hash['gas_spend']
    end
    @energy_page.gas_spend_period.select(hash['gas_spend_period']) if hash['gas_spend_period']
  end
end

And(/^I click on next page button in energy page$/) do
  @energy_page.next.click
end

And(/^I enter following  details in electricity energy page$/) do |table|
  table.hashes.each do |hash|
    puts hash
    @electricity_page.tariff_type.select(hash['tariff_type'])
    @electricity_page.wait_for_no_economy_7
    @electricity_page.economy_7.click
    @electricity_page.payment_method.select(hash['payment_method'])
    @electricity_page.main_heating_source.click
    @electricity_page.kwh_usage.click
    @electricity_page.spent_during_day.set hash['day_spend']
    @electricity_page.spent_during_night.set hash['night_spend']
  end
end

When(/^I select the tariff type "([^"]*)"$/) do |tariff_type|
  @electricity_page.tariff_type.select(tariff_type)
end

When(/^I select economy 7 plan$/) do
  @electricity_page.wait_for_no_economy_7
  @electricity_page.economy_7.click
end

When(/^I select payment method "([^"]*)"$/) do |payment_method|
  @electricity_page.payment_method.select('Pay On Receipt Of Bill')
end

When(/^I select electricity as main heating source$/) do
  @electricity_page.main_heating_source.click
end
When(/^I click on next page button in electricity page$/) do
  @electricity_page.next.click
end

When(/^I should be in Gas Energy page$/) do
  @gas_page = @page.gas_energy
  #assesrtion for heading
end

And(/^I enter following  details in gas energy page$/) do |table|
  table.hashes.each do |hash|
    puts hash
    @gas_page.not_main_heating_source.click
    @gas_page.kwh_usage.click
    @gas_page.kwh_spend.set hash['kwh_spend']
  end
end

And(/^I click on next page button in gas page$/) do
  @gas_page.next.click
end

And(/^I should be in energy usage page$/) do
  @energy_usage = @page.energy_usage
  expect(@energy_usage.heading.text).to eql('Your energy usage')
end

And(/^I enter following  details in energy usage page$/) do |table|
  table.hashes.each do |hash|
    @energy_usage.two_bed.click
    @energy_usage.four_occupant.click
    @energy_usage.elec_heating.click
    @energy_usage.temperate_temp.click
    @energy_usage.wafer_thin_insulatin.click
    @energy_usage.gas_cooking.click
    @energy_usage.hardly_occupied.click
  end
end

And(/^I click on next page button in energy usage page$/) do
  @energy_usage.next.click
end

And(/^I should be in your details page$/) do
  @preferences_page = @page.preferences
  expect(@preferences_page.heading.text).to eql('Your Preferences')
end

And(/^I enter following  details in your details page$/) do |table|
  table.hashes.each do |hash|
    puts hash
    @preferences_page.fixed_tariff.click
    @preferences_page.quarterly_direct_debit.click if hash['payment_mode']
    @preferences_page.user_email_id.set hash['email_id']
    @preferences_page.agree_terms.click
  end
end

And(/^I click on prices button$/) do
  @preferences_page.go_to_prices.click
end

Then(/^I should be in Results page with heading "([^"]*)"$/) do |arg1|
  @results_page = @page.results
  expect(@results_page.current_tariff_heading.text).to eql(arg1)
end

Then(/^I should get the best results in "([^"]*)"$/) do |arg1|
  @results_page.wait_for_results_heading(10)
  expect(@results_page.results_heading.text).to eql(arg1)
end

