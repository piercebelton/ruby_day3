require_relative 'toyota'
require_relative 'tata'
require_relative 'tesla'

print "Making collections of cars and stuff"

class Garage
  #Array which defines several cars by brand and then model year
  def initialize
    @car_coll = [Toyota.new(2007), Toyota.new(1998), Tata.new(2014), Tata.new(2013), Tesla.new(2015), Tesla.new(2018)]
  end

  def car_coll?
    @car_coll
  end

  #this sort function sorts by year only
  def sort_by_year
    @car_coll.sort do |a, b| a.year <=> b.year end
  end

  #this sort function sorts by model name only
  def sort_by_mname
    @car_coll.sort do |a, b| a.class.to_s <=> b.class.to_s end
  end

  #this sort function sorts first by model name, and then year.
  def sort_by_both
    @car_coll.sort_by{ |a|
      [a.class.to_s, a.year]}
  end
end
