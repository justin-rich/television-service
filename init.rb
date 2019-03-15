%w{
  sinatra sinatra/base singleton json
}.each {|gem| require gem}

require './api'
