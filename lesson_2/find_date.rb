# Заданы три числа, которые обозначают число, месяц, год (запрашиваем у пользователя).
# Найти порядковый номер даты, начиная отсчет с начала года. Учесть, что год может быть високосным

def leap_year(year)
  ((year % 4 == 0) && !(year % 100 == 0)) || (year % 400 == 0)
end


def days_in_year(year, month, day)
# Считаем количество дней через хеш {номер_месяца: кол_дней, ...}

  all_days = 0

  hash_month = {1 => 31, 2 => 28, 3 => 31, 4 => 30, 5 => 31, 6 => 30, 7 => 31, 8 => 31, 9 => 30, 10 => 31, 11 => 30, 12 => 31}

  hash_month.each { |current_month, month_days| all_days += month_days if current_month < month }

  all_days += day

  # Учитываем високосный ли год
  leap_year(year) && (month > 3) ? all_days += 1 : all_days

rescue => err
  puts err.class

end


print "\n Введите год (enter-текущий): "
my_year = gets.to_i

my_year = Time.now.year if my_year.zero?

print "\n Введите месяц (enter-текущий): "
my_month = gets.to_i
my_month = Time.now.month if my_month.zero?


print "\n Введите день (enter-текущий): "
my_day = gets.to_i
my_day = Time.now.day if my_day.zero?

print "\n ------------------"
print "\n порядковый номер даты : #{days_in_year(my_year, my_month, my_day)}"
 
