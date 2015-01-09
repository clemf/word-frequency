require 'sinatra'
require 'sinatra/reloader'
also_reload './lib/**/*.rb'
require './lib/word_freq'

get '/' do
	@title = "Word Frequency"
	erb :word_freq
end

get '/results' do
	@title = "Word Frequency Results"
	@search_word = params.fetch('search_word')
	@search_target = params.fetch('search_target')
	@result_num = @search_target.word_freq(@search_word)
	@times = "times"
	if @result_num == 1
		@times = "time"
	end
	erb :results
end
