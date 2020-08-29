
class UsersController < ApplicationController

    get '/signup' do
        if !logged_in?
            erb :"users/signup"
        else 
            redirect "/users/#{current_user.slug}"
        end
    end

    post '/signup' do 
        user = User.new(params[:user])
        if user.save
            flash[:message] = "You have successfully created an account."
            session[:username] = user.username 
            redirect "/users/#{current_user.slug}"
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
            flash[:message] = "You do not have permission to view that user's page."
            redirect "/users/#{current_user.slug}"
        end 
    end

    get '/users/:username/account' do 
        redirect_if_not_logged_in
        @user = User.find_by_slug(params[:username])
        if @user && @user.username == session[:username]
            erb :"/users/account"
        else
            flash[:message] = "You do not have permission to edit that user's page."
            redirect "/users/#{current_user.slug}"
        end 
    end

    get '/users/:username/edit' do 
        redirect_if_not_logged_in
        @user = User.find_by_slug(params[:username])
        if @user && @user.username == session[:username]
            erb :"/users/edit"
        else
            flash[:message] = "You do not have permission to edit that user's page."
            redirect "/users/#{current_user.slug}"
        end 
    end

    patch '/users/:username' do
        redirect_if_not_logged_in
        user = User.find_by_slug(params[:username])
        if user && user.username == session[:username]
            authenticate_and_change_password(user)
        else
            flash[:message] = "You do not have permission to edit that user's page."
            redirect "/users/#{current_user.slug}/account"
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
            flash[:message] = "You have successfully logged in."
            redirect_if_return_url_exists
            redirect "/users/#{current_user.slug}"
        else 
            flash[:message] = "Invalid credentials. Please try again."
            redirect "/login"
        end
    end

    get '/logout' do 
        if logged_in?
            session.clear
            flash[:message] = "You have been logged out."
            redirect "/login"
        else
            redirect "/"
        end
    end

end