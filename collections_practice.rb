
def sort_array_asc(array)
  array.sort
end


def sort_array_desc(array)
  array.sort do |x, y|
    y <=> x
  end
end


def sort_array_char_count(array)
  array.sort_by do |word|
    word.length
  end
end


def swap_elements(array)
  second_element = array[1]
  third_element = array[2]
  array[1] = third_element
  array[2] = second_element
  array
end


def reverse_array(array)
  array.reverse
end


def kesha_maker(array)
  kesha_array = []
  array.each do |word|
    arr_word = word.split(//)
    arr_word.delete_at(2)
    kesh_word = arr_word.join
    kesha_array << kesh_word.insert(2, "$")
  end
  kesha_array
end


def find_a(array)
  a_array = []
  array.map do |word|
    if word.start_with?("a") || word.start_with?("A")
      a_array << word
    end
  end
  a_array
end


def sum_array(array)
  array.inject(:+)
end


def add_s(array)
  plural_array = []
  array.each_with_index do |word, index|
    if index != 1
      word << "s"
    end
    plural_array << word
  end
  plural_array
end
