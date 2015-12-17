# Заданы три числа, которые обозначают число, месяц, год (запрашиваем у пользователя).
# Найти порядковый номер даты, начиная отсчет с начала года. Учесть, что год может быть високосным

require 'date'

def days_in_year(year, month, day)
# Системная функция Date.new работает с учетом, что год может быть високосным
  Date.new(year, month, day).yday
  rescue  =>  err
	puts err.class
  end
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

