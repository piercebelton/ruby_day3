require 'rspec'
require_relative 'car'

describe Car do

  it "should exist" do
    expect{Car.new(1)}.to_not raise_error
  end

  it "should return number of wheels" do
    car_a = Car.new(1)
    expect(car_a.wheels).to be 4
  end

  it "should return speed" do
    c = Car.new(1)
    expect(c.speed?).to be_a Numeric
  end

  it "should return 'beep'" do
    car_a = Car.new(1)
    expect(car_a.honk_horn("beep")).to eq("beep")
  end

  it "should show all car info" do
    car_a = Car.new(1)
    expect(car_a.to_s).to be_a String
  end



end
