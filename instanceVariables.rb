class Apple
    attr_accessor :color, :flavor

    def description
        puts "The color of the apple is #{@color} and its flavor is #{@flavor}"
    end
end

gala = Apple.new
gala.color = "red"
gala.flavor = "sweet"
gala.description
