require_relative 'capacity'

class Apartment
  include Capacity

  attr_reader :address
  attr_reader :city_or_town
  attr_reader :state
  attr_reader :zip_code
  attr_reader :rent_per_month
  attr_reader :lease_start_date
  attr_reader :lease_end_date
  attr_reader :max_capacity
  attr_reader :items

  def initialize(address, city_or_town, state, zip_code, rent_per_month, lease_start_date, lease_end_date, max_capacity)
    @address = address
    @city_or_town = city_or_town
    @state = state
    @zip_code = zip_code
    @rent_per_month = rent_per_month
    @lease_start_date = lease_start_date
    @lease_end_date = lease_end_date
    @max_capacity = max_capacity
    @items = []
  end
end
