# frozen_string_literal: true

# возвращает k макс. и k мин. эл-ов массива
module MinsMaxs
  def mins_maxs(k)
    length > k ? [max(k), min(k)] : nil
  end
end

# стандартный класс массивов
class Array
  include MinsMaxs
end
