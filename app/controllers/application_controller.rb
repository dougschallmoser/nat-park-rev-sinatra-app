
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

        def login(username, password)
            user = User.find_by(:username => username)
            if user && user.authenticate(password)
                session[:username] = user.username 
                flash[:logged_in] = "You have successfully logged in."
                redirect_if_return_url_exists
                redirect "/users/#{current_user.slug}"
            else 
                flash[:credential_error] = "Invalid credentials. Please try again."
                redirect "/login"
            end
        end
        
        def redirect_if_not_logged_in
            if !logged_in?
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

        def redirect_if_return_url_exists
            if session[:return_url]
                redirect session[:return_url]
                session[:return_url].clear
            end
        end

        def authenticate_and_change_password(user)
            if user.authenticate(params[:current_password])
                user.update(params[:user]) 
                if !params[:new_password].empty?
                    user.password = params[:new_password]
                    user.save
                end
                flash[:message] = "Changes saved successfully."
                redirect "/users/#{current_user.slug}/account"
            else 
                flash[:message] = "Password incorrect. Please try again."
                redirect "/users/#{current_user.slug}/edit"
            end 
        end
    end

end