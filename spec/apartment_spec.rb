require 'spec_helper'
require 'date'

describe Apartment do
  let(:lease_start_date) { Date.parse("2016-2-16") }
  let(:lease_end_date) { Date.parse("2017-2-16") }

  let(:apartment) { Apartment.new("1200 12th Ave. South, Ste. 1200", "Seattle", "WA", "98144", "$50,000.00", lease_start_date, lease_end_date, 3) }

  let(:roommate_1) { Occupant.new("Michael", "Jordan")}
  let(:roommate_2) { Occupant.new("Lionel", "Messi")}
  let(:roommate_3) { Occupant.new("Neymar", "Junior")}

  describe '#initialize' do

    it 'has an address' do
      expect(apartment.address).to eq("1200 12th Ave. South, Ste. 1200")
    end

    it 'has a city or town' do
      expect(apartment.city_or_town).to eq("Seattle")
    end

    it 'has a zip code' do
      expect(apartment.zip_code).to eq("98144")
    end

    it 'has a state' do
      expect(apartment.state).to eq("WA")
    end

    it 'has a rent per month price' do
      expect(apartment.rent_per_month).to eq("$50,000.00")
    end

    it 'has a lease start date' do
      expect(apartment.lease_start_date).to eq(lease_start_date)
    end

    it 'has a lease end date' do
      expect(apartment.lease_end_date).to be(lease_end_date)
    end

    it 'has a max capacity of occupants' do
      expect(apartment.max_capacity).to eq(3)
    end

    it 'should have no occupants when opened' do
      expect(apartment.items).to eq([])
    end
  end

  describe '#add_roommate' do
     it 'add a roommate to the apartment' do
       apartment.add(roommate_1)
       apartment.add(roommate_2)
       apartment.add(roommate_3)
       expect(apartment.items.length).to eq(3)
     end
   end

   describe '#remove roommate' do
     it 'remove a roommate from the apartment' do
       apartment.add(roommate_2)
       apartment.add(roommate_3)
       expect(apartment.items.length).to eq(2)
       apartment.remove(roommate_2)
       expect(apartment.items.length).to eq(1)
     end
  end

  describe '#full' do
    it 'returns true if the aparment occupants has reached full capacity' do
      apartment.add(roommate_1)
      apartment.add(roommate_2)
      apartment.add(roommate_3)
      expect(apartment.full?).to eq(true)
    end

    it 'returns false if the aparment occupants has reached full capacity' do
      apartment.add(roommate_1)
      apartment.add(roommate_2)
      expect(apartment.full?).to eq(false)
    end
  end
end
