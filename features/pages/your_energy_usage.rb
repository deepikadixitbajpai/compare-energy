module CompareEnergy
  class YourEnergyUsage < SitePrism::Page

    def initialize
      wait_for_heading
    end

    element :heading, :xpath, "/html/body/div/div/main/h2"

    element :two_bed, "label[for='one-two-bedroom']"
    element :four_bed, "label[for='three-four-bedroom']"
    element :five_bed, "label[for='five-plus-bedroom']"

    element :two_occupant, "label[for='one-two-occupants']"
    element :four_occupant, "label[for='three-four-occupants']"
    element :five_occupant, "label[for='five-plus-occupants']"

    element :gas_heating, "label[for='gas-heat']"
    element :elec_heating, "label[for='electricity-heat']"
    element :other_heating, "label[for='other-heat']"

    element :arctic_temp, "label[for='arctic']"
    element :temperate_temp, "label[for='temperate']"
    element :tropical_temp, "label[for='tropical']"

    element :wafer_thin_insulatin, "label[for='wafer-thin']"
    element :well_wrapped_insulatin, "label[for='well-wrapped']"
    element :airtight_insulatin, "label[for='airtight']"

    element :gas_cooking, "label[for='gas-cooking']"
    element :elec_cooking, "label[for='electricity-cooking']"
    element :other_cooking, "label[for='other-cooking']"


    element :hardly_occupied, "label[for='hardly-ever']"
    element :evenings_weekends_occupied, "label[for='evenings-weekends']"
    element :mostly_occupied, "label[for='most-time']"

    element :next, "#goto-person-details-button"
  end

end
