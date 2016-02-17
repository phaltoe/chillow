class Dwelling
  attr_reader :address 
  attr_reader :city_or_town
  attr_reader :state
  attr_reader :zip_code

  def initialize(address, city_or_town, state, zip_code)
    @address = address
    @city_or_town = city_or_town
    @state = state
    @zip_code = zip_code
  end
end
