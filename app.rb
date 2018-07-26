require 'sinatra/base'
require 'pry'
class App < Sinatra::Base

  get "/newteam" do
    erb :newteam
  end

  post "/newteam" do
    binding.pry
    @name = params["name"]
    @coach = params["coach"]
    @point_guard = params ["point_guard"]
    @shooting_guard = params["shooting_guard"]
    @small_forward = params["small_forward"]
    @power_forward = params ["power_forward"]
    @center = params["center"]

    erb :team
  end
end
