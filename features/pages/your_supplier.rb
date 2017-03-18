module CompareEnergy
  class YourSupplier < SitePrism::Page
    set_url "https://energy.comparethemarket.com/energy/v2/?AFFCLIE=TSTT"

    def search_post_code(postcodeValue)
      postcode.set postcodeValue
      find_postcode.click
    end

    def select_electricity_provider(providerName)
      select_provider(top_six_electricity_provider, providerName)
    end

    def select_gas_provider(providerName)
      select_provider(top_six_gas_provider, providerName)
    end

    private
    element :postcode, "#your-postcode"
    element :find_postcode, "#find-postcode"
    elements :top_six_electricity_provider, "label[for^='electricity-top-six-']"
    elements :top_six_gas_provider, "label[for^='gas-top-six-']"

    def select_provider(providers, providerName)
      provider = providers.detect {|provider| provider[:'supplier-name'] == providerName}
      provider.click unless provider.nil?
    end

    public

    element :have_bill, "#have-bill-label"
    element :not_have_bill, "#no-bill-label"
    element :compare_gas_electricity, "#compare-both-label"
    element :compare_gas, "#compare-gas-label"
    element :compare_electricity, :xpath, "#compare-electricity-label"

    element :same_electricity_gas_supplier, :xpath, "//*[@id='same-supplier-question']/div/div/label[1]/span"
    element :different_electricity_gas_supplier, :xpath, "//*[@id='same-supplier-question']/div/div/label[2]/span"

    #section :electricity_supplier, SupplierOptions, "#elec-energy-suppliers-question"
    #elements :electricity_supplier, :xpath, "//*[@id='elec-energy-suppliers-question']/div/div/div[1]"
    element :elec_british_gas, :xpath, "//*[@id='elec-energy-suppliers-question']/div/div/div[1]/label[1]/span/span"
    element :elec_edf_energy, :xpath, "//*[@id='elec-energy-suppliers-question']/div/div/div[1]/label[2]/span/span"
    element :elec_eon, :xpath, "//*[@id='elec-energy-suppliers-question']/div/div/div[1]/label[3]/span/span"
    element :elec_npower, :xpath, "//*[@id='elec-energy-suppliers-question']/div/div/div[1]/label[4]/span/span"
    element :elec_scottish_power, :xpath, "//*[@id='elec-energy-suppliers-question']/div/div/div[1]/label[5]/span/span"
    element :elec_sse, :xpath, "//*[@id='elec-energy-suppliers-question']/div/div/div[1]/label[6]/span/span"
    element :elec_other_options, "select[id='sel1']"
    element :dont_know_electricity_supplier, :xpath, "//*[@id='elec-energy-suppliers-question']/div/div/div[2]/label/span"

    #section :gas_supplier, SupplierOptions, "#gas-energy-suppliers-question"
    #elements :gas_supplier, :xpath, "//*[@id='gas-energy-suppliers-question']/div/div/div[1]"
    element :british_gas, :xpath, "//*[@id='gas-energy-suppliers-question']/div/div/div[1]/label[1]/span/span"
    element :edf_energy, :xpath, "//*[@id='gas-energy-suppliers-question']/div/div/div[1]/label[2]/span/span"
    element :eon, :xpath, "//*[@id='gas-energy-suppliers-question']/div/div/div[1]/label[3]/span/span"
    element :npower, :xpath, "//*[@id='gas-energy-suppliers-question']/div/div/div[1]/label[4]/span/span"
    element :scottish_power, :xpath, "//*[@id='gas-energy-suppliers-question']/div/div/div[1]/label[5]/span/span"
    element :sse, :xpath, "//*[@id='gas-energy-suppliers-question']/div/div/div[1]/label[6]/span/span"
    element :other_options, "select[id='sel2']"
    element :dont_know_gas_supplier, :xpath, "//*[@id='gas-energy-suppliers-question']/div/div/div[2]/label/span"

    element :next, :xpath, "//*[@id='goto-your-supplier-details']"

  end
end

module CompareEnergy
  class SupplierOptions < SitePrism::Section
    element :british_gas, :xpath, "//*[@id='elec-energy-suppliers-question']/div/div/div[1]/label[1]/span/span"
    element :edf_energy, :xpath, "//*[@id='elec-energy-suppliers-question']/div/div/div[1]/label[2]/span/span"
    element :eon, :xpath, "//*[@id='elec-energy-suppliers-question']/div/div/div[1]/label[3]/span/span"
    element :npower, :xpath, "//*[@id='elec-energy-suppliers-question']/div/div/div[1]/label[4]/span/span"
    element :scottish_power, :xpath, "//*[@id='elec-energy-suppliers-question']/div/div/div[1]/label[5]/span/span"
    element :sse, :xpath, "//*[@id='elec-energy-suppliers-question']/div/div/div[1]/label[6]/span/span"
    element :other_options, "select[id='sel1']"
  end
end
