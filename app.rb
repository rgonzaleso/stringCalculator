require 'sinatra'
require './config'
require './lib/ahorcado'

get '/' do
    erb  :jugador1
end

post '/' do
    @mensaje = 'Palabra secreta almacenada'

    ahorcado = Ahorcado.new params['palabraSecreta']
    session['ahorcado'] = ahorcado

    erb :jugador2
end

get '/jugador2' do
    erb  :jugador2
end

post '/jugador2' do

    ahorcado = session['ahorcado'] 
    @mensaje = ahorcado.validar params['palabra']
    erb :jugador2
 
end

