require 'sinatra'
require './config'

get '/' do
    erb  :hola
end

post '/' do
    'Salvaste tu vida'
end
