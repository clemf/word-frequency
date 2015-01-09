require 'sinatra'
require 'sinatra/reloader'
also_reload '/lib/**/*.rb'
require './lib/word_freq'

get '/' do
	erb :word_freq
end

get '/results' do
	@result_num = params.fetch('search_target').word_freq(params.fetch('input_word'))
	erb :results
end
