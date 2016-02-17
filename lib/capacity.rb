module Capacity

  def full?
    items.length == max_capacity
  end

  def add(item)
    #item will stand for roommate or box
    @items << item if !full?
  end

  def remove(item)
    #item will stand for roommate or box
    @items.pop
  end
end
