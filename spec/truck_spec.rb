require 'spec_helper'

describe Truck do
  let(:truck) { Truck.new(3) }

  let(:occupant_1) { Occupant.new("Michael", "Jordan")}
  let(:occupant_2) { Occupant.new("Lionel", "Messi")}
  let(:occupant_3) { Occupant.new("Neymar", "Junior")}
  let(:occupant_4) { Occupant.new("Neymar", "Junior")}

  let(:jordan) { Box.new(occupant_1) }
  let(:messi) { Box.new(occupant_2) }
  let(:neymar) { Box.new(occupant_3) }
  let(:neymar) { Box.new(occupant_4) }

  describe '#initialize' do
    it 'can handle a max capacity of boxes' do
      expect(truck.max_capacity).to eq(3)
    end

    it 'should have no occupants when opened' do
      expect(truck.items).to eq([])
    end
  end

  describe '#add box' do
     it 'add a box to the truck' do
       truck.add(jordan)
       truck.add(messi)
       truck.add(neymar)
       expect(truck.items.length).to eq(3)
     end
   end

   describe '#remove box' do
     it 'remove a box from the truck' do
       truck.add(messi)
       truck.add(neymar)
       truck.add(neymar)
       truck.remove(neymar)
       expect(truck.items.length).to eq(2)
     end
  end

  describe '#full' do
    it 'returns true if the truck is at full capacity' do
      truck.add(messi)
      truck.add(neymar)
      truck.add(jordan)
      expect(truck.full?).to eq(true)
    end

    it 'returns false if the truck isn\'t at full capacity' do
      truck.add(jordan)
      truck.add(messi)
      expect(truck.full?).to eq(false)
    end
  end

  describe '#unload' do
    it 'unloads all the boxes from a particular occupant' do
      truck.add(messi)
      truck.add(neymar)
      truck.add(jordan)
      truck.add(neymar)
      truck.add(neymar)
      truck.unload(neymar)
      expect(truck.items.length).to eq(2)
    end
  end
end
