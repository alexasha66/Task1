# Заполнить хеш гласными буквами, где значением будет являтся порядковый номер буквы в алфавите (a - 1).

# Задачу про гласные переделай с использованием метода each_with_index

vowels = ['a', 'e', 'u', 'y', 'i', 'o']

alfabet = ('a'..'z').to_a

hash_vowels = {}

alfabet.each_with_index do |char,index|  hash_vowels[char] =  index if vowels.include? char  end


puts "\n -------------------------"
puts    hash_vowels            
