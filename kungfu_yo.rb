module MartialArts
    def kung_fu
        return "Now I know kung-fu ;-)"
    end
end

class Person
    include MartialArts
end

class Panda
    include MartialArts
end

p = Panda.new
n = Person.new

puts p.kung_fu
puts n.kung_fu
