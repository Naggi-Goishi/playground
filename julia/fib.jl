function fib(n)
  n < 2 ? n : fib(n-1) + fib(n-2)
end

@time result = fib(40)
println(result)