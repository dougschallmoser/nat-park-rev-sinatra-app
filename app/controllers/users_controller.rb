
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
            login(params[:user][:username], params[:user][:password])
            redirect "/users/#{current_user.slug}"
        else 
            flash[:message] = "Username is already taken. Please try again."
            redirect "/signup"
        end 
    end
    
    get '/users/:slug' do 
        if logged_in?
            @user = User.find_by_slug(params[:slug])
            erb :"/users/show"
        else 
            redirect "/login"
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
        login(params[:username], params[:password])
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