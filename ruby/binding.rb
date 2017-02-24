class Demo
  def initialize(val)
    @secret = val
  end

  def get_binding
    return binding()
  end
end

k1 = Demo.new('hi')
b1 = k1.get_binding

p eval('@secret', b1)
#=> 'hi'

def get_binding(param)
  return binding
end

bind = get_binding('hello')
bind.eval('param')
# shor version of
# binding.eval("defined?(#{symbol}) == 'local-variable'")
bind.local_variable_defined?(:param) #=>true
bind.local_variable_defined?(:params) #=>false

# define local variable of a as 100
bind.local_variable_set(:a, 100)
bind.local_varibale_get(:a) #=> 100

#=> 'hello'
