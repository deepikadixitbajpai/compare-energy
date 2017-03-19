module CompareEnergy
  class YourEnergyUsage < SitePrism::Page

    def initialize
      wait_for_heading
    end

    element :heading, :xpath, "/html/body/div/div/main/h2"

    element :two_bed, :xpath, "//*[@id='how-big-is-your-home']/div/div/label[1]/span/span"
    element :four_bed, :xpath, "//*[@id='how-big-is-your-home']/div/div/label[2]/span/span"
    element :five_bed, :xpath, "//*[@id='how-big-is-your-home']/div/div/label[2]/span/span"

    element :two_occupant, :xpath, "//*[@id='number-of-occupants']/div/div/label[1]/span/span"
    element :four_occupant, :xpath, "//*[@id='number-of-occupants']/div/div/label[2]/span/span"
    element :five_occupant, :xpath, "//*[@id='number-of-occupants']/div/div/label[3]/span/span"

    element :gas_heating, :xpath, "//*[@id='main-heating-source']/div/div/label[1]/span/span"
    element :elec_heating, :xpath, "//*[@id='main-heating-source']/div/div/label[2]/span/span"
    element :other_heating, :xpath, "//*[@id='main-heating-source']/div/div/label[3]/span/span"

    element :arctic_temp, :xpath, "//*[@id='heating-usage']/div/div/label[1]/span/span"
    element :temperate_temp, :xpath, "//*[@id='heating-usage']/div/div/label[2]/span/span"
    element :tropical_temp, :xpath, "//*[@id='heating-usage']/div/div/label[3]/span/span"

    element :wafer_thin_insulatin, :xpath, "//*[@id='house-insulation']/div/div/label[1]/span/span"
    element :well_wrapped_insulatin, :xpath, "//*[@id='house-insulation']/div/div/label[2]/span/span"
    element :airtight_insulatin, :xpath, "//*[@id='house-insulation']/div/div/label[3]/span/span"

    element :gas_cooking, :xpath, "//*[@id='main-cooking-source']/div/div/label[1]/span/span"
    element :elec_cooking, :xpath, "//*[@id='main-cooking-source']/div/div/label[2]/span/span"
    element :other_cooking, :xpath, "//*[@id='main-cooking-source']/div/div/label[3]/span/span"


    element :hardly_occupied, :xpath, "//*[@id='house-occupied']/div/div/label[1]/span/span"
    element :evenings_weekends_occupied, :xpath, "//*[@id='house-occupied']/div/div/label[2]/span/span"
    element :mostly_occupied, :xpath, "//*[@id='house-occupied']/div/div/label[3]/span/span"

    element :next, "#goto-person-details-button"
  end

end
