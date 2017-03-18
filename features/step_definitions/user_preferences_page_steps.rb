When(/^I should be in your preferences page$/) do
  @preferences_page = @page.preferences
  expect(@preferences_page.heading.text).to eql('Your Preferences')
end

When(/^I enter following  details in your preferences page$/) do |table|
  table.hashes.each do |hash|
    puts hash
    @preferences_page.fixed_tariff.click
    @preferences_page.quarterly_direct_debit.click if hash['payment_mode']
    @preferences_page.user_email_id.set hash['email_id']
    @preferences_page.agree_terms.click
  end
end

When(/^I click on prices button$/) do
  @preferences_page.go_to_prices.click
end