class ApplicationController < Sinatra::Base

    configure do 
        enable :sessions
        set :session_secret, "my_app_secret"
        set :views, "app/views"
    end 

    helpers do

    end 

end