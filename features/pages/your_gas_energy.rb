module CompareEnergy
  class YourGas < SitePrism::Page
    def initialize
      wait_for_heading
    end

    def get_heading
      heading.text
    end
    def select_tariff_type(value)
      tariff_type.select(value)
    end

    def select_payment_method(value)
      payment_method.select(value)
    end

    def main_heating_source(value)
      if value == "yes"
        main_heating_source.click
      else
        not_main_heating_source.click
      end
    end

    def current_usage(usage_type,spend,spend_period)
      case usage_type
        when "kWh"
          kwh_usage.click
          kwh_spend.set spend
          kwh_spend_period.select(spend_period)
        when "£"
          amount_usage.click
          amount_spend.set spend
          amount_spend_period.select(spend_period)
      end
    end

    def go_to_next_page
      next_page.click
    end

    def go_to_back_page
      back_page.click
    end

    private
    element :heading, :xpath, "/html/body/div/div/main/section[2]/h2"
    element :tariff_type, "select[id='gas-tariff-additional-info']"
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

    element :back_page, :xpath, "//*[@id='go-back']"
    element :next_page, :xpath, "//*[@id='goto-your-energy']"
  end

end