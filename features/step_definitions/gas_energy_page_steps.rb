When(/^I should be in Gas Energy page$/) do
  @gas_page = @page.gas_energy
  expect(@gas_page.heading.text).to eql('Gas')

end

When(/^I enter following  details in gas energy page$/) do |table|
  table.hashes.each do |hash|
    puts hash
    @gas_page.tarrif_type.select(hash['current_tarrif'])
    @gas_page.payment_method.select(hash['payment_method'])
    @gas_page.not_main_heating_source.click
    @gas_page.kwh_usage.click
    @gas_page.kwh_spend.set hash['kwh_spend']
  end
end

When(/^I click on next page button in gas page$/) do
  @gas_page.next.click
end