def divider(x, y)
    # Divides two parameters and returns the result.
    if y == 0
        puts "Can't divide by zero!"
        return
    end
    return x / y
end

puts divider(10, 2)

puts divider(10, 0)
# Edge case now catchered by an if statement which returns an error message