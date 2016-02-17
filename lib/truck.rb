require_relative 'box'
require_relative 'capacity'

class Truck
  include Capacity
  
  attr_reader :max_capacity
  attr_reader :items

  def initialize(max_capacity)
    @max_capacity = max_capacity
    @items = []
  end

  def unload(box)
    @items.delete(box)
  end
end
