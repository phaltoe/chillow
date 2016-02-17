require 'spec_helper'

describe House do
  let(:house) { House.new("1 Paris Garden", "London", "SE1", "8NU", "300,000.00")}

  it 'has an address' do
    expect(house.address).to eq("1 Paris Garden")
  end

  it 'has a city or town' do
    expect(house.city_or_town).to eq("London")
  end

  it 'has a zip code' do
    expect(house.zip_code).to eq("8NU")
  end

  it 'has an asking price' do
    expect(house.asking_price).to eq("300,000.00")
  end

  it 'has a state' do
    expect(house.state).to eq("SE1")
  end
end
