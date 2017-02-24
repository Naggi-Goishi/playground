require 'tilt'
require 'slim'

class Person
  attr_accessor :name
end

def render (path)
  Tilt.new("templates/#{path}").render
end

template = Tilt.new('templates/sample.slim')

me = Person.new

foo = 'I am a variable foo'
bar = 'I am a variable bar'

p template.render(me, foo: foo, bar: bar) {
  'I will yield'
}

