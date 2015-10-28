def is_palindrome? str

	str.downcase!

	str.gsub(/\s|[,]/, '') == str.gsub(/\s|[,]/, '').reverse

end

puts is_palindrome? "step on no pets"

