
class UsersController < ApplicationController

    get '/signup' do
        if !logged_in?
            erb :"users/signup"
        else 
            redirect "/users/#{current_user.slug}"
        end
    end

    post '/signup' do 
        @user = User.new(params[:user])
        if @user.save
            flash[:signed_up] = "You have successfully created an account."
            login(params[:user][:username], params[:user][:password])
        else 
            flash[:message] = "Username is already taken. Please try again."
            redirect "/signup"
        end 
    end
    
    get '/users/:username' do 
        redirect_if_not_logged_in
        @user = User.find_by_slug(params[:username])
        if @user && @user.username == session[:username]
            erb :"/users/show"
        else
            flash[:permission] = "You do not have permission to view that user's page."
            redirect "/users/#{current_user.slug}"
        end 
    end
    
    get '/login' do 
        if !logged_in?
            erb :"users/login"
        else 
            redirect "/users/#{current_user.slug}"
        end
    end

    post '/login' do 
        user = User.find_by(:username => params[:username])
        if user && user.authenticate(params[:password])
            session[:username] = user.username 
            flash[:logged_in] = "You have successfully logged in."
            redirect_if_return_url_exists
            redirect "/users/#{current_user.slug}"
        else 
            flash[:credential_error] = "Invalid credentials. Please try again."
            redirect "/login"
        end
    end

    get '/logout' do 
        if logged_in?
            session.clear
            redirect "/login"
        else
            redirect "/"
        end
    end

end