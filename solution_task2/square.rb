# encode UTF-8


# Площадь треугольника можно вычилсить, зная его основание (a) и высоту (h) по формуле: 1/2*a*h.
# Программа должна запрашивать основание и высоту треуголиника и возвращать его площадь

def square(a=0,b=0)
  (1.0/2)*(a*b)
end

print "\n Введите основание (a) треугольника: "
a = gets       

print "\nВведите высоту (h) треугольника: "
h = gets

print "\n Площадь треугольника : #{square(a.to_i,h.to_i)}"

