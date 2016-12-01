require 'rspec'
require_relative 'toyota'

describe  do

  it "test Toyota class exists" do
    expect{Toyota.new(1)}.to_not raise_error
  end

  it "speeds up Toyota by 7kmph" do
    t = Toyota.new(1)
    expect{t.accel}.to change{t.speed?}.from(0.0).to(7)
  end

  it "slows down Toyota by 5kmph" do
    t = Toyota.new(1)
    expect{t.brake}.to change{t.speed?}.from(0.0).to(-5)
  end

  it "should return 'whoop'" do
    car_a = Toyota.new(1)
    expect(car_a.honk_horn("whoop")).to eq("whoop")
  end

end
