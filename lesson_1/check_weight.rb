# encode UTF-8

# Идеальный вес. Программа запрашивает имя и рост и выводит идеальный вес по формуле <рост> - 110,
# после чего выводит результат пользователю на экран с обращением по имени. 
# Если идеальный вес получается отрицательным, то выводится строка "Ваш вес уже оптимальный"

print "\nВведите ваше имя: "
name_person = gets.to_i       

print "\nВведите ваш рост: "
growth_person = gets.to_s

weight = growth_person - 110


print "\n #{name_person}, Ваш " + (weight >=0 ? "идеальный вес - #{weight} кг " : "вес уже оптимальный")
