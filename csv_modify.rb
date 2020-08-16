require "csv"

CSV.open("test.txt", "a") do |people|
    new_person = ["Rusky Haskell", "698-369-1247", "SRE"]
    people.add_row(new_person)
end
