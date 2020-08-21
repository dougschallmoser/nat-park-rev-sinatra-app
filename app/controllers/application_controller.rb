
class ApplicationController < Sinatra::Base

    register Sinatra::Flash

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
        def current_user 
            @current_user ||= User.find_by(:username => session[:username]) if session[:username]
        end
        
        def logged_in?
            !!current_user
        end
        
        def redirect_if_not_logged_in
            if !current_user
                flash[:not_logged_in] = "You must be logged in to view, create, edit or delete reviews."
                redirect "/login"
            end
        end
        
        def post_owner?(post)
            post.user == current_user
        end

        def redirect_if_not_post_owner(post)
            if !post || !post_owner?(post)
                flash[:permission] = "You do not have permission to alter that post."
                redirect "/users/#{current_user.slug}"
            end
        end

        def login(username, password)
            user = User.find_by(:username => username)
            if user && user.authenticate(password)
                session[:username] = user.username 
                flash[:logged_in] = "You have successfully logged in."
                redirect "/users/#{current_user.slug}"
            else 
                flash[:credential_error] = "Invalid credentials. Please try again."
                redirect "/login"
            end
        end

        def display_nav_logged_in
            <<-DOC
                <a href='/'>NatParkRev</a> |
                <a href='/posts'>Reviews</a> |
                <a href='/users/#{current_user.slug}'>My Page</a> |
                <a href='/posts/new'>Create</a> |
                <a href='/logout'>Logout</a> |
                <h5>You are logged in as: <span class="redText">#{current_user.username}</span></h5>
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