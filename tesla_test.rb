require 'rspec'
require_relative 'tesla'

describe  do

  it "test Tesla class exists" do
    expect{Tesla.new(1)}.to_not raise_error
  end

  it "speeds up Tesla by 10kmph" do
    t = Tesla.new(1)
    expect{t.accel}.to change{t.speed?}.from(0.0).to(10)
  end

  it "slows down Tesla by 7kmph" do
    t = Tesla.new(1)
    expect{t.brake}.to change{t.speed?}.from(0.0).to(-7)
  end

  it "should return 'beep beep whatever doo weep'" do
    car_a = Tesla.new(1)
    expect(car_a.honk_horn("Beep-bee-bee-boop-bee-doo-weep")).to eq("Beep-bee-bee-boop-bee-doo-weep")
  end

end
