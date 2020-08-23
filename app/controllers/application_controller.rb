
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
                <span class="nav-text-logo"><a id="nav-logo" href='/'>NatParkRev</a>    </span>
                <span class="nav-text"><a href='/posts'>Reviews</a>    </span>
                <span class="nav-text"><a href='/users/#{current_user.slug}'>My Page</a>    </span>
                <span class="nav-text"><a href='/posts/new'>Create</a>    </span>
                <span class="nav-text"><a href='/logout'>Logout</a>    </span>
                <span class="nav-user"><h5>You are logged in as: <span class="orangeText">#{current_user.username}</h5></span>
            DOC
        end

        def display_nav_not_logged_in
            <<-DOC
                <span class="nav-text-logo"><a id="nav-logo" href='/'>NatParkRev</a>    </span>
                <span class="nav-text"><a href='/posts'>Reviews</a>    </span>
                <span class="nav-text"><a href='/signup'>Sign Up</a>    </span>
                <span class="nav-text"><a href='/login'>Login</a>    </span>
            DOC
        end

    end

end