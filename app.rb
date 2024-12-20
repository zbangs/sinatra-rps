require "sinatra"
require "sinatra/reloader"

moves = ["rock","paper","scissors"]

get("/") do
  erb(:rules)
end

get "/rock" do
  @comp = moves[rand(0..2)]
  erb(:rock)
end

get "/paper" do
  @comp = moves[rand(0..2)]
  erb(:paper)
end

get "/scissors" do
  @comp = moves[rand(0..2)]
  erb(:scissors)
end
