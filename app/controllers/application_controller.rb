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

        def logged_in_buttons
            logged_in_buttons = <<-DOC
                <a href='/posts'>Reviews</a> |
                <a href='/users/#{current_user.slug}'>My Page</a> |
                <a href='/logout'>Sign Out</a> |
                You are logged in as: #{current_user.username}
                DOC
        end

        def not_logged_in_buttons
            not_logged_in_buttons = <<-DOC
                <a href='/posts'>Reviews</a> |
                <a href='/signup'>Sign Up</a> |
                <a href='/login'>Sign In</a>
                DOC
        end

    end

end