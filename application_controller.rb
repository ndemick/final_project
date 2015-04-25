require 'bundler'
Bundler.require

class MyApp < Sinatra::Base

  get '/' do
    erb :hoome
  end

end