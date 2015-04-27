require('sinatra')
require('sinatra/reloader')
require('./lib/triangle.rb')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/result') do
  @a = params.fetch('a').to_i
  @b = params.fetch('b').to_i
  @c = params.fetch('c').to_i
  @type = Triangle.new(@a, @b, @c).get_type()

  erb(:result)
end
