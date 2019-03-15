require 'sinatra'
require 'sinatra/base'
require './television'

class App < Sinatra::Base

  set :server, 'thin'
  set :bind, '192.168.0.58'
  set :environment, :production

  before do
    content_type :json
  end

  get '/' do
    Television.instance.to_json
  end

  post '/on' do
    Television.instance.set_source('HDMI 1')
    Television.instance.to_json
  end

  post '/off' do
    Television.instance.power('off')
    Television.instance.to_json
  end

end
