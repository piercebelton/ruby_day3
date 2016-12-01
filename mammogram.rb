require 'rspec'
require_relative 'tata'

describe do

  it "test Tata class exists" do
    expect{Tata.new(1)}.to_not raise_error
  end

  it "speeds up Tata by 2kmph" do
    t = Tata.new(1)
    expect{t.accel}.to change{t.speed?}.from(0.0).to(2)
  end

  it "slows down Tata by 1.25kmph" do
    t = Tata.new(1)
    expect{t.brake}.to change{t.speed?}.from(0.0).to(-1.25)
  end

  it "should return 'beep'" do
    car_a = Tata.new(1)
    expect(car_a.honk_horn("beep")).to eq("beep")
  end

end
