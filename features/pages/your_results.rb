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

    private
    element :current_tariff_heading, :xpath, "/html/body/div/div/main/section[1]/div/h2"

    element :results_heading, :xpath, "/html/body/div/div/main/section[3]/h2"
  end

end
