class Piglet
    def speak(string)
        return string
    end
end

hamlet = Piglet.new
hamlet.speak("Hello there,")

hamlet.speak("I'm a piglet!")

hamlet.speak("Piglets don't need parenthesis!")


class Piggy
    def pig_years(age)
        age * 18
    end
end

hammy = Piggy.new
age = hammy.pig_years(1)
puts age
 