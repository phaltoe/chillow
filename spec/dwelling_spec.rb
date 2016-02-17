require 'spec_helper'

describe Dwelling do
  let(:dwelling) { Dwelling.new("601 Brickell Key Drive", "Miami", "FL", "33131") }

  it 'has an address' do
    expect(dwelling.address).to eq("601 Brickell Key Drive")
  end

  it 'has a city or town' do
    expect(dwelling.city_or_town).to eq("Miami")
  end

  it 'has a state' do
    expect(dwelling.state).to eq("FL")
  end

  it 'has a zip code' do
    expect(dwelling.zip_code).to eq("33131")
  end
end
