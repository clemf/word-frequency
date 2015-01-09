require 'rspec'
require 'word_freq'
require 'pry'

describe 'String#word_freq' do
	it 'returns 0 if the word is not found' do
		expect('foo'.word_freq('bar')).to eq 0
	end
	it 'returns the number of times input word is found' do
		expect('foo bar foo bar').word_freq('bar')).to eq 2
	end
end