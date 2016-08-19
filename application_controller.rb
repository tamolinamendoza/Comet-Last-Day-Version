require 'bundler'
Bundler.require
require 'dotenv'
Dotenv.load
#require_relative 'models/connect.rb' #need to change the model route/ruby file when combining w/ sam's ruby
require_relative 'models/test_model.rb'



class ApplicationController < Sinatra::Base
  get '/' do
    erb :index
  end
  
  get '/index' do
    erb :index
  end

get '/personalized' do
  erb :index
  end


  post '/personalized' do
    #binding.pry
    @neighborhood = params[:neighborhood]
    @price = params[:price]
    @gender = params[:gender]
    @preference = stores(@neighborhood, @price, @gender)
 

  #   @preference.each do |store_name, store_details|
  # store_details.each do |key, value|
  #   @info = "#{store_name} #{key}: #{value}"
#   end
# end

    erb :page2
  end


end
