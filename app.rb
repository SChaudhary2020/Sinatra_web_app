require "sinatra"
require "sinatra/reloader"
require "active_support/all"


get("/login/page") do
  
  erb(:loginpage)
end

get("/login/result") do
   @username = params.fetch(:password)
   @password = params.fetch(:username)

   if @username == "sinatra" and @password =="password"
    "Welcome, #{@username}"
   else
    "Invalid username, #{@password}!"
   end
  erb(:login_result)
end
get("/home/page") do
  erb(:homepage)
end
get("/") do
  erb(:loginpage)
  erb(:homepage)
end
