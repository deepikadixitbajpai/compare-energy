When(/^I should be in Electricity Energy page$/) do
  @electricity_page = @page.electrical_energy
  expect(@electricity_page.heading.text).to eql('Electricity')
end

When(/^I enter following  details in electricity energy page$/) do |table|
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

When(/^I click on next page button in electricity page$/) do
  @electricity_page.next.click
end