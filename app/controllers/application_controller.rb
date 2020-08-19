class ApplicationController < Sinatra::Base

    configure do 
        enable :sessions
        set :session_secret, "my_app_secret"
        set :views, "app/views"
        set :public_folder, "public"
    end 

    get '/' do 
        erb :index
    end

    helpers do
        def logged_in?
            !!current_user
        end

        def current_user 
            @current_user ||= User.find_by(:username => session[:username]) if session[:username]
        end

        def login(username, password)
            user = User.find_by(:username => username)
            if user && user.authenticate(password)
                session[:username] = user.username 
            else 
                redirect "/login"
            end
        end

        def logout
            session.clear
        end
    end

end