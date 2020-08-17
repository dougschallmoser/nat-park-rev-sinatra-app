class ApplicationController < Sinatra::Base

    enable :sessions
    set :session_secret, "my_app_secret"
    set :views, "app/views"

    helpers do

    end 

end