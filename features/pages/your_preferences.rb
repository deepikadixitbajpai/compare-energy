module CompareEnergy
  class YourPreferences < SitePrism::Page
    def initialize
      wait_for_heading
    end
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

    element :back, :xpath, "//*[@id='go-back']"
  end

end
