
class YourResults < SitePrism::Page
  element :current_tariff_heading, :xpath, "/html/body/div/div/main/section[1]/div/h2"

  element :results_heading, :xpath, "/html/body/div/div/main/section[3]/h2"
end