class Calculation
    def calc(x, b, m)
        return m * x + b
    end
end

y_intercept_1 = Calculation.new
puts "The y intercept of the line is: #{y_intercept_1.calc(1, 2, 10)}"

y_intercept_2 = Calculation.new
puts "The y intercept of the line is: #{y_intercept_2.calc(35, 3, 4)}"
