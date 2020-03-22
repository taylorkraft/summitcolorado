class MountainController < ApplicationController 

  get '/mountains' do
    @mountains = Mountain.all
    
    erb :"mountains/index"
  end
  
end