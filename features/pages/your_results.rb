module CompareEnergy
  class YourResults < SitePrism::Page

    def initialize
      wait_for_results_heading(10)
    end

    def get_current_tariff_heading
      current_tariff_heading.text
    end

    def get_heading
      results_heading.text
    end

    def get_cheapest_tariff_name
      cheapest_tariff.find("div.pps-relevancy-tariff-name").text
     # cheapest_tariff.find("div.pps-relevancy-card-inner div:nth-child(2)").text
     # cheapest_tariff.find("div.pps-relevancy-saving-amount").text
    end

    def get_cheapest_tariff_savings
      cheapest_tariff.find("div.pps-relevancy-saving-amount").text
    end

    def get_cheapest_tariff_estimated_annual_bill
      cheapest_tariff.find("div.pps-relevancy-card-inner div:nth-child(2)").text


    end

    def get_first_result_row_tariff_name
      first_result_row.find("td.supplier").text
    end

    def get_first_result_row_tariff_savings
      first_result_row.find("td.annual-saving strong.annual-saving-amount").text
    end
    def get_first_result_row_tariff_estimated_annual_bill
      first_result_row.find("td.annual-saving div.estimated-annual-bill strong").text
    end



    private
    element :current_tariff_heading, :xpath, "/html/body/div/div/main/section[1]/div/h2"

    element :results_heading, :xpath, "/html/body/div/div/main/section[3]/h2"

    element :cheapest_tariff, "#relevancy-panel"

    element :first_result_row, "table.price-table tbody tr:first"




  end

  # class TariffDetails
  #   attr_accessor name
  #   attr_accessor savings
  #   attr_accessor estimated_annual_bill
  #
  #
  # end

end
