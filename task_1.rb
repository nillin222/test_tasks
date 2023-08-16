(1..100).each do |number|
  text_output = ''

  text_output << 'Hi' if (number % 3).zero?
  text_output << 'By' if (number % 5).zero?

  p text_output.empty? ? number : text_output
end
