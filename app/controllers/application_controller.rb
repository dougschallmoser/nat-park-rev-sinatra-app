require 'rack-flash'

class ApplicationController < Sinatra::Base

    use Rack::Flash

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
                redirect "/users/#{current_user.slug}"
            else 
                flash[:credential_error] = "Invalid credentials. Please try again."
                erb :"users/login"
            end
        end

        def redirect_if_not_logged_in
            if !current_user
                redirect "/login"
            end
        end

        def is_post_owner(obj)
            obj.user == current_user
        end

        def display_nav_logged_in
            <<-DOC
                <a href='/'>NatParkRev</a> |
                <a href='/posts'>Reviews</a> |
                <a href='/users/#{current_user.slug}'>My Page</a> |
                <a href='/posts/new'>Create</a> |
                <a href='/logout'>Logout</a> |
                You are logged in as: #{current_user.username}
            DOC
        end

        def display_nav_not_logged_in
            <<-DOC
                <a href='/'>NatParkRev</a> |
                <a href='/posts'>Reviews</a> |
                <a href='/signup'>Sign Up</a> |
                <a href='/login'>Login</a>
            DOC
        end
    end

end