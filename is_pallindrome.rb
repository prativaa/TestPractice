def is_pallindrome(str)
	(str == str.reverse) ?	(puts "#{str} is a pallindrome") : (puts "#{str} is not a pallindrome")
end

is_pallindrome("palpa")
is_pallindrome("tat")