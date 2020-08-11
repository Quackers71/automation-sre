class Fruit
    attr_accessor :color, :flavor
end

class Apple < Fruit
end

class Grape < Fruit
end

granny_smith = Apple.new
granny_smith.flavor = "tart"
granny_smith.color = "green"

carnelian = Grape.new
carnelian.flavor = "sweet"
carnelian.color = "purple"

puts granny_smith.flavor

puts carnelian.color
puts carnelian.flavor
