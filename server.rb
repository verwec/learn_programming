require 'sinatra'
require 'json'

get '/challenges' do
  erb :index
end

put '/challenge/:id' do
  # command = params[:command]
  content_type :json
  {
    instructions: "Enter 2+6",
    output: "8"
  }.to_json
end
