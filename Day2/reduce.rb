require 'pry'
sentence = "How are you?"
sentence.chars.reduce("") do |memo, char|
  if ['a', 'e', 'i', 'o', 'u'].include? (char)
    memo + char * 5
  else
    memo + char
  end

end

