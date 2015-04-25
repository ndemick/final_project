require 'bundler'
Bundler.require
require_relative "models/quiz.rb"

class MyApp < Sinatra::Base

  get '/' do
    erb :hoome
  end

  post '/results' do
  	quiz = Quiz.new(params)
  	quiz.process_results
  	@winner = quiz.find_max.to_s
  	erb :results 
  end

end