def solution(string)
	words = string.scan(/[A-Z][a-z]*|[a-z]+/).join(' ')
	puts words
end
solution('camelCasingTest')