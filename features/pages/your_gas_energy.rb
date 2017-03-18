module CompareEnergy
  class YourGas < SitePrism::Page
    element :heading, :xpath, "/html/body/div/div/main/section[2]/h2"
    element :tarrif_type, "select[id='gas-tariff-additional-info']"
    element :payment_method, "select[id='gas-payment-method-dropdown-link']"
    element :main_heating_source, :xpath, "//*[@id='gas-main-heating-source-question']/div/div/label[1]/span"
    element :not_main_heating_source, :xpath, "//*[@id='gas-main-heating-source-question']/div/div/label[2]/span"

    element :kwh_usage, :xpath, "//*[@id='gas-type-of-bill-question']/div/div/div[1]/label[1]/span"
    element :kwh_spend, :xpath, "//*[@id='gas-usage']"
    element :kwh_spend_period, "select[id='type-of-Gas-bill-usage-dropdown']"

    element :amount_usage, :xpath, "//*[@id='gas-type-of-bill-question']/div/div/div[1]/label[2]/span"
    element :amount_spend, :xpath, "//*[@id='gas-spend']"
    element :amount_spend_period, "select[id='type-of-Gas-bill-dropdown']"
    element :bill_day, :xpath, "//*[@id='gas-bill-day']"

    element :back, :xpath, "//*[@id='go-back']"
    element :next, :xpath, "//*[@id='goto-your-energy']"
  end

end