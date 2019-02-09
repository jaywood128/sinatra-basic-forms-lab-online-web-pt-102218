require_relative 'config/environment'
require_relative 'models/puppy'
class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/puppy' do
    Puppy.map do |pup|
      pup.name = @name
      pup.age = @age
      pup.breed = @breed
      binding.pry
    end
    erb :display_puppy
  end
end
