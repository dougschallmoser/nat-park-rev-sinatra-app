class UsersController < ApplicationController

    get '/signup' do
        if !logged_in?
            erb :"users/new"
        else 
            redirect "/users/:slug"
        end
    end

    post '/signup' do 
        @user = User.new(params[:user])
        if @user.save
            session[:username] = @user.username 
            redirect "/login"
        else 
            redirect "/signup"
        end 
    end
    
    get '/users/:slug' do 
        @user = User.find_by_slug(params[:slug])
        erb "/users/show"
    end
    
    get '/login' do 
        if !logged_in?
            erb :"users/login"
        else 
            redirect "/users/show"
        end
    end

    post '/login' do 
        user = User.find_by(:username => params[:username])
        

end