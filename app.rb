require 'sinatra'
require 'sinatra/reloader'
also_reload '/lib/**/*.rb'
require './lib/word_freq'

get '/' do
	erb :word_freq
end

get '/results' do
	@search_word = params.fetch('search_word')
	@search_target = params.fetch('search_target')
	@result_num = @search_target.word_freq(@search_word)
	erb :results
end
