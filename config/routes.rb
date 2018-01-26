Rails.application.routes.draw do

  get '/' => 'stations#index'

  get '/stations' => 'stations#index'
  get '/stations/:id' => 'stations#show'

  # You can add more routes anywhere in this file
  # if needed.

end
