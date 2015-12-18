def fibonacci(n)
  n.zero? || n==1 ? n : fibonacci(n - 1) + fibonacci(n - 2)
end

1.upto(13) { |x| puts fibonacci(x) }
