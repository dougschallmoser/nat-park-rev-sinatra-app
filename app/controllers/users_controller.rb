class UsersController < ApplicationController

    get '/signup' do
        if !logged_in?
            erb :"users/new"
        else 
            redirect "/users/#{current_user.slug}"
        end
    end

    post '/signup' do 
        @user = User.new(params[:user])
        if @user.save
            redirect "/login"
        else 
            redirect "/signup"
        end 
    end
    
    get '/users/:slug' do 
        if logged_in?
            @user = User.find_by_slug(params[:slug])
            erb "/users/show"
        else 
            redirect "/login"
        end
    end
    
    get '/login' do 
        if !logged_in?
            erb :"users/login"
        else 
            redirect "/users/show"
        end
    end

    post '/login' do 
        login(params[:username], params[:password])
        redirect "/users/#{current_user.slug}"
    end

end