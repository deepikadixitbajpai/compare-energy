module CompareEnergy
  class YourResults < SitePrism::Page

    def initialize
      wait_for_results_heading(10)
    end

    element :current_tariff_heading, :xpath, "/html/body/div/div/main/section[1]/div/h2"

    element :results_heading, :xpath, "/html/body/div/div/main/section[3]/h2"
  end

end
