class ApplicationController < Sinatra::Base

    configure do 
        enable :sessions
        set :session_secret, "my_app_secret"
        set :views, "app/views"
    end 

    get '/' do 
        erb :index
    end

    helpers do

    end 

end