nums = [-1, -13, -2, 1, -3, 4, -1, 2, 1, -5, 4]

def max_subarray_sum(nums)
  max_sum = nums[0] # Максимальная сумма подмассива
  current_sum = nums[0] # Текущая сумма подмассива
  start_index = 0 # Индекс начала текущего подмассива
  end_index = 0 # Индекс конца текущего подмассива
  temp_start_index = 0 # Временный индекс начала текущего подмассива

  (1...nums.length).each do |i|
    # Если текущий элемент больше суммы текущего подмассива, то начинаем новый подмаслив с текущего элемента
    if nums[i] > current_sum + nums[i]
      current_sum = nums[i]
      temp_start_index = i
    else
      current_sum += nums[i]
    end

    # Если текущая сумма подмассива больше максимальной суммы, обновляем максимальную сумму и индексы
    if current_sum > max_sum
      max_sum = current_sum
      start_index = temp_start_index
      end_index = i
    end
  end

  return nums[start_index..end_index]
end

p max_subarray_sum(nums)
