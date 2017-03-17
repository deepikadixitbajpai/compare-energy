class SupplierOptions < SitePrism::Section
  element :british_gas, :xpath, "//*[@id='elec-energy-suppliers-question']/div/div/div[1]/label[1]/span/span"
  element :edf_energy, :xpath, "//*[@id='elec-energy-suppliers-question']/div/div/div[1]/label[2]/span/span"
  element :eon, :xpath, "//*[@id='elec-energy-suppliers-question']/div/div/div[1]/label[3]/span/span"
  element :npower, :xpath, "//*[@id='elec-energy-suppliers-question']/div/div/div[1]/label[4]/span/span"
  element :scottish_power, :xpath, "//*[@id='elec-energy-suppliers-question']/div/div/div[1]/label[5]/span/span"
  element :sse, :xpath, "//*[@id='elec-energy-suppliers-question']/div/div/div[1]/label[6]/span/span"
  element :other_options, "select[id='sel1']"
end
