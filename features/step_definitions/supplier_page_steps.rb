Given(/^I am on Compare Energy link in Compare market website$/) do
  @page = CompareEnergy::Page.new
  @energy_supplier_page = @page.supplier
  @energy_supplier_page.load
  expect(@energy_supplier_page).to be_displayed
end

When(/^I enter following  details in supplier page$/) do |table|
  table.hashes.each do |hash|
    # @energy_supplier_page.postcode.set hash['postcode']
    # @energy_supplier_page.find_postcode.click
    @energy_supplier_page.search_post_code(hash['postcode'])
    if hash['have_bill'] == "yes"
      @energy_supplier_page.have_bill.click
    else
      @energy_supplier_page.not_have_bill.click
    end

    @energy_supplier_page.compare_gas_electricity.click
    @energy_supplier_page.different_electricity_gas_supplier.click if hash['same_supplier']
    # @energy_supplier_page.select_electricity_provider(hash['elec_supplier'])
    # @energy_supplier_page.select_gas_provider(hash['gas_supplier'])
    if hash['elec_supplier'] == 'NPower'
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

When(/^I go to next page$/) do
  @energy_supplier_page.next.click
end