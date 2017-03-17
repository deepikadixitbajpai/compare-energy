
class YourEnergy < SitePrism::Page
  element :heading, :xpath, "/html/body/div/div/main/h1"

  element :pre_payment_meter, :xpath, "//*[@id='prepay-yes-no']/div/div/label[1]"
  element :no_pre_payment_meter, :xpath, "//*[@id='prepay-yes-no']/div/div/label[2]"

  element :economy_7, :xpath, "//*[@id='economy-7-question]/div/div/label[1]"
  element :no_economy_7, :xpath, "//*[@id='economy-7-question']/div/div/label[2]"

  element :electricity_spend, :xpath, "//*[@id='electricity-current-spend']"
  elements :electricity_spend_period, :xpath, "//*[@id='electricity-current-spend-period']"

  element :dont_know_electricity_spend, :xpath, "//*[@id='electricity-dont-know-check']"

  element :gas_spend, :xpath, "//*[@id='gas-current-spend']"
  elements :gas_spend_period, :xpath, "//*[@id='gas-current-spend-period']"

  element :dont_know_gas_spend, :xpath, "//*[@id='gas-dont-know-check']"

  element :back, "select[id='go-back']"
  element :next, "select[id='goto-your-energy']"

end

class YourElectricity < SitePrism::Page
  element :tarrif_type, "select[id='electricity-tariff-additional-info']"

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

class YourGas < SitePrism::Page
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