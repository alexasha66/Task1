# encode UTF-8


# Площадь треугольника можно вычилсить, зная его основание (a) и высоту (h) по формуле: 1/2*a*h.
# Программа должна запрашивать основание и высоту треуголиника и возвращать его площадь

def square(a=0,b=0)
  0.5*(a*b)
end

print "\n Введите основание (a) треугольника: "
a = gets.to_i

print "\nВведите высоту (h) треугольника: "
h = gets.to_i

print "\n Площадь треугольника : #{square(a,h)}"

