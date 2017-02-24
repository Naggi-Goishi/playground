require 'tilt'
require 'slim'

def render (path)
  Tilt.new("templates/#{path}").render
end

template = Tilt.new('templates/sample.slim')
p template.render

