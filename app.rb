require './environment'
require 'pry'
module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here

    get '/' do
      erb :root
    end

    get '/new' do
      erb :"pirates/new"
    end

    post '/pirates' do
      @pirate = Pirate.new(params["pirate"])
      # binding.pry
      params["pirate"]["ships"].each do |attributes|
        # binding.pry
        Ship.new(attributes)
      end
      @ships = Ship.all
      erb :"pirates/show"
    end

  end
end
