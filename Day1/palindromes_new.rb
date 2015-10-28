def is_palindrome? str

	str.downcase!

	split(' ') == str.split(' ').reverse

end

puts is_palindrome? "Fall leaves as soon as leaves fall"

