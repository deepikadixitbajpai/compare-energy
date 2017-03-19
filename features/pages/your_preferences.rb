module CompareEnergy
  class YourPreferences < SitePrism::Page
    def initialize
      wait_for_heading
    end

    def get_heading
      heading.text
    end

    def interested_tariff(value)
      case value
        when "Fixed tariff"
          fixed_tariff.click
        when "Variable tariff"
          variable_tariff.click
        when "All tariffs"
          all_tariff.click
      end
    end

    def interested_payment_type(value)
      case value
        when "Monthly direct debit"
          monthly_direct_debit.click
        when "Quarterly direct debit"
          quarterly_direct_debit.click
        when "Pay on receipt of bill"
          pay_on_receipt_bill.click
        when "All payment types"
          all_payment_types.click
      end
    end

    def enter_user_email(value)
      user_email_id.set value
    end

    def require_mareting_info
      marketing_info.click
    end

    def select_agree_terms(value)
      if value == "yes"
        agree_terms.click
      end
    end

    def go_to_prices_page
      go_to_prices.click
    end

    def go_to_back_page
      back_page.click
    end

    private
    element :heading, :xpath, "/html/body/div/div/main/div/div/h2"

    element :fixed_tariff, :xpath, "//*[@id='tariff-selection-question']/div/label[1]/span/span"
    element :variable_tariff, :xpath, "//*[@id='tariff-selection-question']/div/label[2]/span/span"
    element :all_tariff, :xpath, "//*[@id='tariff-selection-question']/div/label[3]/span/span"

    element :monthly_direct_debit, :xpath, "//*[@id='payment-selection-question']/div/label[1]/span/span"
    element :quarterly_direct_debit, :xpath, "//*[@id='payment-selection-question']/div/label[2]/span/span"
    element :pay_on_receipt_bill, :xpath, "//*[@id='payment-selection-question']/div/label[3]/span/span"
    element :all_payment_types, :xpath, "://*[@id='payment-selection-question']/div/label[4]/span/span"

    element :user_email_id, :xpath, "//*[@id='Email']"

    element :marketing_info, :xpath, "//*[@id='marketingT']/div/div[2]/label/span[2]"
    element :agree_terms, :xpath, "//*[@id='terms-label']/span[2]"

    element :go_to_prices, :xpath, "//*[@id='email-submit']"

    element :back_page, :xpath, "//*[@id='go-back']"
  end

end
