require_relative 'config/environment'

class App < Sinatra::Base
  get '/reverse' do
    erb :reverse
  end

  post '/reverse' do
    orig_string = params["string"]
    @rev_string = orig_string.reverse
    erb :reversed
  end

  get '/friends' do
    # Write your code here!
    @friends = ['Emily Wilding Davison', 'Harriet Tubman', 'Joan of Arc', 'Malala Yousafzai', 'Sojourner Truth','Kenny Yang', 'Nancy Do', 'Panda', 'Imaginary 1', 'you, yes you. i see you looking at my code.']

    erb :friends

  end
end
