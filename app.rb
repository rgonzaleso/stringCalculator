require 'sinatra'
require './config'

get '/' do
    erb  :juegoAhorcado
end

post '/' do
    @mensaje = 'Salvaste tu vida'
    erb :resultado
end
