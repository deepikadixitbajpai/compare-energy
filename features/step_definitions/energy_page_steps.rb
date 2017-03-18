When(/^I should be in Energy page$/) do
  @energy_page = @page.energy
  expect(@energy_page.heading.text).to eql("Your Energy")
end

When(/^I enter following  details in energy page$/) do |table|
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

When(/^I click on next page button in energy page$/) do
  @energy_page.next.click
end