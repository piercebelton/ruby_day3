require 'rspec'
require_relative 'collections'

describe Garage do
  it "tests that car collections sort correctly" do
    g = Garage.new
    expect{g.sort_by_year}.to change{car_coll?}
  end

end
