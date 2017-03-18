module CompareEnergy
  class YourElectricity < SitePrism::Page
    def initialize
      wait_for_heading
    end

    element :heading, :xpath, "/html/body/div/div/main/section[1]/h2"
    element :tariff_type, "select[id='electricity-tariff-additional-info']"

    element :economy_7, :xpath, "//*[@id='economy-7-question']/div/div/label[1]/span"
    element :no_economy_7, :xpath, "//*[@id='economy-7-question']/div/div/label[2]/span"

    element :payment_method, "select[id='electricity-payment-method-dropdown-link']"

    element :main_heating_source, :xpath, "//*[@id='electricity-main-heating-source-question']/div/div/label[1]/span"
    element :not_main_heating_source, :xpath, "//*[@id='electricity-main-heating-source-question']/div/div/label[2]/span"

    element :kwh_usage, :xpath, "//*[@id='electricity-usage-question']/div/div/div[1]/label[1]/span"
    element :spent_during_day, :xpath, "//*[@id='economy-7-day-usage']"
    element :spent_during_day_period, "select[id='economy-7-day-usage-dropdown']"
    element :spent_during_night, :xpath, "//*[@id='economy-7-night-usage']"
    element :bill_day, "select[id='electricity-bill-day']"


    element :amount_usage, :xpath, "//*[@id='electricity-usage-question']/div/div/div[1]/label[2]/span"
    element :amount_spend, :xpath, "//*[@id='electricity-spend']"
    element :amount_spend_period, "select[id='electricity-spend-dropdown']"

    element :back, :xpath, "//*[@id='go-back']"
    element :next, :xpath, "//*[@id='goto-your-energy']"
  end

end