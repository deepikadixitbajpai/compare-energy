
class YourSupplier < SitePrism::Page
  set_url "https://energy.comparethemarket.com/energy/v2/?AFFCLIE=TSTT"

  element :postcode, :xpath, "//*[@id='your-postcode']"
  element :find_postcode, :xpath, "//*[@id='find-postcode']"

  element :have_bill, :xpath, "//*[@id='have-bill-label']/span/span"
  element :not_have_bill, :xpath, "//*[@id='no-bill-label']/span/span"
  element :compare_gas_electricity, :xpath, "//*[@id='compare-both-label']/span/span"
  element :compare_gas, :xpath, "//*[@id='compare-gas-label']/span/span"
  element :compare_electricity, :xpath, "//*[@id='compare-electricity-label']/span/span"

  element :same_electricity_gas_supplier, :xpath, "//*[@id='same-supplier-question']/div/div/label[1]/span"
  element :different_electricity_gas_supplier, :xpath, "//*[@id='same-supplier-question']/div/div/label[2]/span"

  #section :electricity_supplier, SupplierOptions, "#elec-energy-suppliers-question"
  #elements :electricity_supplier, :xpath, "//*[@id='elec-energy-suppliers-question']/div/div/div[1]"
  element :dont_know_electricity_supplier, "select[id='electricity-supplier-dont-know']"

  #section :gas_supplier, SupplierOptions, "#gas-energy-suppliers-question"
  #elements :gas_supplier, :xpath, "//*[@id='gas-energy-suppliers-question']/div/div/div[1]"
  element :dont_know_gas_supplier, "select[id='gas-supplier-dont-know']"

  element :next, :xpath, "//*[@id='goto-your-supplier-details']"

end

class SupplierOptions < SitePrism::Section
  element :british_gas, :xpath, "//*[@id='elec-energy-suppliers-question']/div/div/div[1]/label[1]/span/span"
  element :edf_energy, :xpath, "//*[@id='elec-energy-suppliers-question']/div/div/div[1]/label[2]/span/span"
  element :eon, :xpath, "//*[@id='elec-energy-suppliers-question']/div/div/div[1]/label[3]/span/span"
  element :npower, :xpath, "//*[@id='elec-energy-suppliers-question']/div/div/div[1]/label[4]/span/span"
  element :scottish_power, :xpath, "//*[@id='elec-energy-suppliers-question']/div/div/div[1]/label[5]/span/span"
  element :sse, :xpath, "//*[@id='elec-energy-suppliers-question']/div/div/div[1]/label[6]/span/span"
  element :other_options, "select[id='sel1']"
end
