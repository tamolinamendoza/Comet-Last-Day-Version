require 'bundler'
Bundler.require
require_relative 'models/model.rb'

class ApplicationController < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/stores' do
    binding.pry
    erb :index
  end


end
