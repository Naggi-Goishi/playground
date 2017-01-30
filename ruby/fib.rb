require 'benchmark'

def fib(n)
  n < 2 ? n : fib(n-1) + fib(n-2)
end

result = Benchmark.realtime do
  fib(40)
end

p result