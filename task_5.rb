triangle = [
  [2],
  [3,4],
  [6,5,7],
  [4,1,8,3]
]

def minimum_total(triangle)
  triangle_size = triangle.length

  # Создаем массив result_sum, где result_sum[level][index] будет содержать минимальную сумму пути от вершины
  # до элемента triangle[level][index]
  result_sum = Array.new(triangle_size) { Array.new }

  # Заполняем последнюю строку result_sum с элементами треугольника
  triangle[triangle_size - 1].each_with_index do |num, index|
    result_sum[triangle_size - 1][index] = num
  end

  # Вычисляем минимальную сумму пути от вершины до основания начиная с предпоследнего уровня
  (triangle_size - 2).downto(0) do |level|
    triangle[level].each_with_index do |num, index|
      # Минимальная сумма пути от вершины до элемента triangle[level][index] равна num плюс минимум из двух
      # соседних элементов в строке ниже
      result_sum[level][index] = num + [result_sum[level + 1][index], result_sum[level + 1][index + 1]].min
    end
  end

  return result_sum[0][0]
end

puts minimum_total(triangle)
