class Person
  attr_accessor :name, :weight, :height

  def initialize(name, weight, height)
    @name = name
    @weight = weight
    @height = height
  end

  def to_s
    "#{@name}, #{@weight}, #{@weight}"
  end
end
