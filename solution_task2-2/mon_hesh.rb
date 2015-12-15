# Сделать хеш, содеращий месяцы и количество дней в месяце. 
# В цикле выводить те месяцы, у которых количество дней ровно 30


require 'date'

def days_in_month(year, month)
  Date.new(year, month, -1).day
end


months =  Date::MONTHNAMES[1..-1]

days_sel=30

hash_month={}

months.each_index { |month_number|

days =days_in_month(Time.now.year, month_number+1)
puts months[month_number] if days == days_sel 
hash_month[months[month_number]] =  days

}                

puts hash_month

