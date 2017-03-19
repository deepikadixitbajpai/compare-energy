module CompareEnergy
  class YourSupplier < SitePrism::Page
    set_url "https://energy.comparethemarket.com/energy/v2/?AFFCLIE=TSTT"

    def search_post_code(postcodeValue)
      postcode.set postcodeValue
      find_postcode.click
    end

    def have_bill_handy(value)
      if value == "yes"
        have_bill.click
      else
        not_have_bill.click
      end
    end

    def compare(value)
      case value
        when "Gas & Electricity"
          compare_gas_electricity.click
        when "Electricity only"
          compare_electricity.click
        when "Gas only"
          compare_gas.click
      end
    end

    def same_supplier(value)
      if value == "yes"
        same_electricity_gas_supplier.click
      else
        different_electricity_gas_supplier.click
      end
    end

    def select_electricity_provider(provider_name)
      case provider_name
        when "British Gas"
          elec_british_gas.click
        when "EDF Energy"
          elec_edf_energy.click
        when "E.ON"
          elec_eon.click
        when "npower"
          elec_npower.click
        when "Scottish Power"
          elec_scottish_power.click
        when "SSE"
          elec_sse.click
        when "I don't know"
          dont_know_electricity_supplier.click
        else
          elec_other_options.select(provider_name)
      end
    end

    def select_gas_provider(provider_name)
      case provider_name
        when "British Gas"
          gas_british_gas.click
        when "EDF Energy"
          gas_edf_energy.click
        when "E.ON"
          gas_eon.click
        when "npower"
          gas_npower.click
        when "Scottish Power"
          gas_scottish_power.click
        when "SSE"
          gas_sse.click
        when "I don't know"
          dont_know_gas_supplier.click
        else
          gas_other_options.select(provider_name)
      end
    end

    def go_to_next_page
      next_page.click
    end

    private
    element :postcode, "#your-postcode"
    element :find_postcode, "#find-postcode"

    element :have_bill, "#have-bill-label"
    element :not_have_bill, "#no-bill-label"

    element :compare_gas_electricity, "#compare-both-label"
    element :compare_gas, "#compare-gas-label"
    element :compare_electricity, "#compare-electricity-label"

    element :same_electricity_gas_supplier, :xpath, "//*[@id='same-supplier-question']/div/div/label[1]/span"
    element :different_electricity_gas_supplier, :xpath, "//*[@id='same-supplier-question']/div/div/label[2]/span"

    element :elec_british_gas, :xpath, "//*[@id='elec-energy-suppliers-question']/div/div/div[1]/label[1]/span/span"
    element :elec_edf_energy, :xpath, "//*[@id='elec-energy-suppliers-question']/div/div/div[1]/label[2]/span/span"
    element :elec_eon, :xpath, "//*[@id='elec-energy-suppliers-question']/div/div/div[1]/label[3]/span/span"
    element :elec_npower, :xpath, "//*[@id='elec-energy-suppliers-question']/div/div/div[1]/label[4]/span/span"
    element :elec_scottish_power, :xpath, "//*[@id='elec-energy-suppliers-question']/div/div/div[1]/label[5]/span/span"
    element :elec_sse, :xpath, "//*[@id='elec-energy-suppliers-question']/div/div/div[1]/label[6]/span/span"
    element :elec_other_options, "select[id='sel1']"
    element :dont_know_electricity_supplier, :xpath, "//*[@id='elec-energy-suppliers-question']/div/div/div[2]/label/span"

    element :gas_british_gas, :xpath, "//*[@id='gas-energy-suppliers-question']/div/div/div[1]/label[1]/span/span"
    element :gas_edf_energy, :xpath, "//*[@id='gas-energy-suppliers-question']/div/div/div[1]/label[2]/span/span"
    element :gas_eon, :xpath, "//*[@id='gas-energy-suppliers-question']/div/div/div[1]/label[3]/span/span"
    element :gas_npower, :xpath, "//*[@id='gas-energy-suppliers-question']/div/div/div[1]/label[4]/span/span"
    element :gas_scottish_power, :xpath, "//*[@id='gas-energy-suppliers-question']/div/div/div[1]/label[5]/span/span"
    element :gas_sse, :xpath, "//*[@id='gas-energy-suppliers-question']/div/div/div[1]/label[6]/span/span"
    element :gas_other_options, "select[id='sel2']"
    element :dont_know_gas_supplier, :xpath, "//*[@id='gas-energy-suppliers-question']/div/div/div[2]/label/span"

    element :next_page, "#goto-your-supplier-details"

    # elements :top_six_electricity_provider, "label[for^='electricity-top-six-']"
    # elements :top_six_gas_provider, "label[for^='gas-top-six-']"
    #
    # def select_provider(providers, providerName)
    #   provider = providers.detect {|provider| provider[:'supplier-name'] == providerName}
    #   provider.click unless provider.nil?
    # end

  end
end

