require 'rspec'
require_relative 'vehicle'

describe Vehicle do
  it "test Vehicle class exists" do
    expect{Vehicle.new(1)}.to_not raise_error
  end

  it "returns model year of vehicle" do
    v = Vehicle.new(1)
    expect(v.year).to eq(2016)
  end

  it "should turn lights off and on" do
    v = Vehicle.new(1)
    expect{v.lights_on(true)}.to change{v.lights_on?}.from(false).to(true)
    expect{v.lights_on(false)}.to change{v.lights_on?}.from(true).to(false)
  end

  it "should turn signals on and off" do
    v = Vehicle.new(1)
    expect{v.signal_on(true, "right")}.to change{v.r_signal?}.from(false).to(true)
    expect{v.signal_on(true, "banana")}.to change{v.l_signal?}.from(false).to(true)
    v.signal_on(true, "right")
    v.signal_on(true, "left")
    expect{v.signal_on(false, "both")}.to change{v.l_signal?}.from(true).to(false)
    expect(v.r_signal?).to be false
  end



end
