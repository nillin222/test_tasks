row = 'вОТтАКАЯсТРОКА'
result = ""

row.each_char { |char| result << char.send(char.upcase == char ? 'downcase' : 'upcase') }

p result
