# Заполнить хеш гласными буквами, где значением будет являтся порядковый номер буквы в алфавите (a - 1).


vowels = ['a', 'e', 'u', 'y', 'i', 'o']
 
alfabet =('a'..'z').to_a

hash_vowels={}

alfabet.each_index { |char_number|
hash_vowels[alfabet[char_number]] =  char_number if vowels.include? alfabet[char_number]
print " #{alfabet[char_number]}, "
}

puts "\n -------------------------"
puts    hash_vowels            
