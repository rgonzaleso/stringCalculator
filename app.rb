require 'sinatra'
require './config'
require './lib/ahorcado'

get '/' do
    erb  :juegoAhorcado
end

post '/' do

    ahorcado = Ahorcado.new
    @mensaje = ahorcado.validar params['palabra']
    erb :resultado
 
end

