class Collection

def data
  [
    ['Frank', 33],
    ['Stacy', 15],
    ['Juan', 24],
    ['Dom', 32],
    ['Steve', 24],
    ['Jill', 24]
  ]
end

def states 
  {"Oregon" => "OR",
   "Alabama" => "AL",
   "New Jersey" => "NJ",
   "Colorado" => "CO"}
end

def capitals 
   {"OR" => "Salem",
    "AL" => "Montgomery",
    "NJ" => "Trenton",
    "CO" => "Denver"}
end

def scores
  {
    "A"=>1, "B"=>3, "C"=>3, "D"=>2,
    "E"=>1, "F"=>4, "G"=>2, "H"=>4,
    "I"=>1, "J"=>8, "K"=>5, "L"=>1,
    "M"=>3, "N"=>1, "O"=>1, "P"=>3,
    "Q"=>10, "R"=>1, "S"=>1, "T"=>1,
    "U"=>1, "V"=>4, "W"=>4, "X"=>8,
    "Y"=>4, "Z"=>10
  }
end

def first_name
  names = data.sort_by! {|name, age| [age, name]}
    names.each do |name|
      puts name[0]
    end
  p names.to_h
end

def to_hash
  names = data.map do |name, age| 
    {age=>name}
    end
    p names
end

def output_capital_from_state(state)
  puts "#{state} has the capital #{capitals[states[state]]}"
end

def output_state_from_capital(capital)
  puts "#{capital} is the capital of #{states.invert[capitals.invert[capital]]}"
end

def word
  ['H', 'E', 'L', 'L', 'O']
end

def word_v2
  "hello"
end

def letter_score
  word.each do |letter|
    puts "#{letter} has the score #{scores[letter]}"
  end
end

def letter_score_v2
  word_v2.split("").each do |letter|
    puts "#{letter.upcase} has the score #{scores[letter.upcase]}"
  end
end

def word_score
  total = 0
  word_v2.split("").each do |letter|
    total += scores[letter.upcase]
  end
    puts "#{word_v2} has the total score #{total}"

end


# Collection.new.first_name
# Collection.new.to_hash
# Collection.new.letter_score
# Collection.new.letter_score_v2
# Collection.new.word_score
# Collection.new.output_capital_from_state("Colorado")
# Collection.new.output_state_from_capital("Denver")


end