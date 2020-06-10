require 'sinatra'
require './config'

get '/' do
    erb  :juegoAhorcado
end

post '/' do
    if params ['palabra'] == 'Hola'
     @mensaje = 'Salvaste tu vida'
    erb :resultado
    else 
        @mensaje = 'Perdiste tu vida'
         erb :resultado
    end
end

