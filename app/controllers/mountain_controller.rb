class MountainsController < ApplicationController 

  get '/mountains' do
    @mountains = Mountain.all
    
    erb :"mountains/index"
  end
end