#find the distance between d1, d2, d3, etc. 
#based on the coordinates that a person puts in there
#x,y coordinates
#delta y / delta x

#w1.length

require 'pry'
# require 'active_support/all'

class Wire
  attr_accessor :points, :length #attr_accessor produces 2 functions per --- get & set
  
  def initialize
    @points = 10.times.map { Point.new } #this will loop x number of times. In this case, 10 times. 
  end

  def distance(p1, p2) #pass in 2 pts, then it will give you the distance between the 2 pts
    Math.sqrt(((p1.x - p2.x)**2) + ((p1.y - p2.y)**2))
  end

  def length #what is the length of this wire? 
    (points.length - 1).times.map {|x| distance(points[x], points[x+1])}.inject(&:+) #the distance between 0 and 1 
    #one less than the number of points for the calculation ===== 

  end

  def to_s
    "This wire is of length #{length}"
  end
end

class Point
  attr_accessor :x, :y
  def initialize
    @x = Random.rand(1000) #x coordinate (pt)
    @y = Random.rand(1000) #y coordinate (pt)
  end
end

puts Wire.new