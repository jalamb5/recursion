# frozen_string_literal: true

def merge_sort(list)
  return list unless list.length > 1

  sorted_array = []

  middle = list.length / 2
  first_half = merge_sort(list.slice(0...middle))
  second_half = merge_sort(list.slice(middle..list.length))

  until first_half.empty? || second_half.empty?
    first_half.first <= second_half.first ? sorted_array << first_half.shift : sorted_array << second_half.shift
  end
  sorted_array + first_half + second_half
end

p merge_sort([2, 1, 1, 9, 2, 5, 2])
