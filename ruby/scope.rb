def hoge
  local = "in hoge"
  fuga
end

def fuga
  p binding.local_variable_defined?(:local) # => false
end

hoge

class Hoge
  def hoge
    local = "in hoge"
    fuga
  end

  def fuga
    p binding.local_variable_defined?(:local) # => false
  end
end

Hoge.new.hoge