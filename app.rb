require 'sinatra'
require 'haml'

healthy_restaurants = ["Chuy's", "Thai Cuisine", "Subway", "Smokey Mos", "Freebirds", "Jason's Deli", "Poke Jos"]

get '/' do
  @healthy_restaurant = healthy_restaurants.sample
  page = <<-eos
!!!
%html
  %head
    %title EAT
  %body
    %h1 EAT
    %p= @healthy_restaurant
eos
  haml page
end
