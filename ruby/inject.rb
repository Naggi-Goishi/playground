class Hash 
  def key_to_sym
    self.inject({}) do |memo, (k, v)|
      memo[k.to_sym] = v
      memo
    end
  end
end

# my_hash = {name: 'Naggi', age: '17'}
# my_hash = my_hash.key_to_sym

# p my_hash