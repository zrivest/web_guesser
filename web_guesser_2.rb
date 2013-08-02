require 'sinatra'
require 'sinatra/reloader'

number = rand(101)

get '/' do
  guess = params['guess'].to_i
  if guess > number + 5
    message = "Way TOO high!"
    elsif guess > number
      message = "Too high!"
    elsif guess < number - 5
      message = "Way TOO Low!"
    elsif guess < number
      message = "Too Low!"
  else
    message = "Good job, Bro!\nThe SECRET NUMBER is #{number}!"
  end
  erb :index, :locals => {:number => number, :message => message}
end