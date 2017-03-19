Then(/^I should be in Results page with heading "([^"]*)"$/) do |arg1|
  @results_page = @page.results
  expect(@results_page.get_current_tariff_heading).to eql(arg1)
end

Then(/^I should get the best results in "([^"]*)"$/) do |arg1|
  expect(@results_page.get_heading).to eql(arg1)
end

