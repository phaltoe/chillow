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








  # We're going to need some trucks. Make a `Truck` class that specifies how many boxes
  # it can hold (and a `Box` class that stores the name of its owner, which should be
  # an `Occupant` object) and stores these `Box` objects in an array. Make sure the `Truck`
  # has a method to check if it is `full?`, one to `add_box`, and one to `remove_box`.
  # Also give the `Truck` a method to unload all the boxes of a particular `Occupant` at once.
