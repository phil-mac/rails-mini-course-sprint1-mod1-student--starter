jane = {
    first_name: "Jane",
    last_name: "Doe",
    level: :senior_level,
    age: 30,
    occupation: "Software Developer",
    employed: true,
    current_salary: 125000.0,
    languages: ["Ruby", "JavaScript", "Go"]
}

sara = {
    first_name: "Sara",
    last_name: "Smith",
    level: :mid_level,
    age: 26,
    occupation: "Software Developer",
    employed: true,
    current_salary: 80000.0,
    languages: ["Ruby", "Python"]
}

jason = {
    first_name: "Jason",
    last_name: "Gray",
    level: :entry_level,
    age: 23,
    occupation: "Student",
    employed: false,
    current_salary: 0.0,
    languages: ["C++", "Python"]
}

candidates = [jane, sara, jason]

# get average age of candidates

def average_age(people)
    people.map {|person| person[:age]}.reduce(0){|total, age| total + age} / people.length
end

puts average_age(candidates)

# language screening

def language_screening(people, language)
    people.select do |person| 
        downcase_languages = person[:languages].map { |lang| lang.downcase }
        downcase_languages.include?(language.downcase)
    end
end

puts language_screening(candidates, "JAvaScRipt")