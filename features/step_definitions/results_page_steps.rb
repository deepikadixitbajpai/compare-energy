Then(/^I should be in Results page with heading "([^"]*)"$/) do |arg1|
  @results_page = @page.results
  expect(@results_page.get_current_tariff_heading).to eql(arg1)
end

Then(/^I should get the best results in "([^"]*)"$/) do |arg1|
  expect(@results_page.get_heading).to eql(arg1)

end

Then(/^I should see the results table$/) do
  expect(@results_page.get_cheapest_tariff_name).to eql(@results_page.get_first_result_row_tariff_name)
  expect(@results_page.get_cheapest_tariff_savings).to eql(@results_page.get_first_result_row_tariff_savings)
  expect(@results_page.get_cheapest_tariff_estimated_annual_bill).to eql(@results_page.get_first_result_row_tariff_estimated_annual_bill)
  #expect(@results_page.results_table).to be_displayed
end

Then(/^I should see the results details in the results table$/) do

end