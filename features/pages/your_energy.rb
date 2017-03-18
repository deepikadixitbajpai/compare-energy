module CompareEnergy
  class YourEnergy < SitePrism::Page

    def initialize
      wait_for_heading
    end

    element :heading, :xpath, "/html/body/div/div/main/h1"

    element :pre_payment_meter, :xpath, "//*[@id='prepay-yes-no']/div/div/label[1]"
    element :no_pre_payment_meter, :xpath, "//*[@id='prepay-yes-no']/div/div/label[2]"

    element :economy_7, :xpath, "//*[@id='economy-7-question]/div/div/label[1]"
    element :no_economy_7, :xpath, "//*[@id='economy-7-question']/div/div/label[2]"

    element :electricity_spend, :xpath, "//*[@id='electricity-current-spend']"
    element :electricity_spend_period, "select[id='electricity-current-spend-period']"

    element :dont_know_electricity_spend, :xpath, "//*[@id='electricity-dont-know-check']"

    element :gas_spend, :xpath, "//*[@id='gas-current-spend']"
    element :gas_spend_period, "select[id='gas-current-spend-period']"

    element :dont_know_gas_spend, :xpath, "//*[@id='gas-dont-know-check']"

    element :back, "select[id='go-back']"
    element :next, :xpath, "//*[@id='goto-your-energy']"
  end
end