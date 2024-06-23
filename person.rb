class Person
  attr_accessor :name, :weight, :height

  def initialize(name, weight, height)
    @name = name.capitalize!
    @weight = weight
    @height = height
  end

  def to_s
    "#{@name}, weight is #{@weight}, height is #{@height}"
  end
end
