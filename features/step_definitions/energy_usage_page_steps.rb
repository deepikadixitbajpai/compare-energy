When(/^I should be in energy usage page$/) do
  @energy_usage = @page.energy_usage
  expect(@energy_usage.heading.text).to eql('Your energy usage')
end

When(/^I enter following details in energy usage page$/) do |table|
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

When(/^I click on next page button in energy usage page$/) do
  @energy_usage.next.click
end
