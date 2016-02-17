class House < Dwelling
  attr_reader :address
  attr_reader :city_or_town
  attr_reader :state
  attr_reader :zip_code
  attr_reader :asking_price

  def initialize(address, city_or_town, state, zip_code, asking_price)
    super(address, city_or_town, state, zip_code)
    @asking_price = asking_price
  end
end
