require 'bundler'
Bundler.require

class MyApp < Sinatra::Base

  get '/' do
    erb :hoome
  end

  post '/results' do
  	puts params
  end

end