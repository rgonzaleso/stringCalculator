require 'sinatra'
require './config'
require './lib/ahorcado'

get '/' do
    ahorcado = Ahorcado.new
    session['ahorcado'] = ahorcado

    @tip = ahorcado.tip
    
    erb  :juegoAhorcado
end

post '/' do

    ahorcado = session['ahorcado'] 
    if( ahorcado == nil)
        ahorcado = Ahorcado.new
        session['ahorcado'] = ahorcado
    end

    @mensaje = ahorcado.validar params['palabra']
    erb :juegoAhorcado
 
end

