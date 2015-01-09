require 'sinatra'
require 'sinatra/reloader'
also_reload './lib/word_freq'

get '/' do
	erb :word_freq
end

get '/results' do
	erb :results
end
