row = 'двадесятка'
dict = ['два', 'десятка', 'девятка', 'пять']

def word_break(row, dict)
  length_row = row.length
  # Создаем массив arr_result, где arr_result[end_point] будет true, если подстрока от позиции start_point входит в словарь.
  # Также позиция равная true будет позицией начала следующей подстроки и поэтому первый элемент равен true
  arr_result = [false] * (length_row + 1)
  arr_result[0] = true

  (1..length_row).each do |end_point|
    (0...end_point).each do |start_point|
      # В переборе на end_point делаем не включая в выбоку второй параметр,
      # таким образом перебираем все возможные комбинации слов
      # И если комбинация найдена то переходим на следующий end_point
      if arr_result[start_point] && dict.include?(row[start_point...end_point])
        arr_result[end_point] = true

        break
      end

    end
  end

  return arr_result[length_row]
end

p word_break(row, dict)
