require 'rack-flash'

class PostsController < ApplicationController

    use Rack::Flash

    get '/posts' do 
        @posts = Post.all
        erb :"posts/index"
    end 
    
    get '/posts/new' do 
        if logged_in?
            @parks = Park.all
            erb :"posts/new"
        else 
            redirect "/login"
        end
    end
    
    get '/posts/:id' do 
        @post = Post.find(params[:id])
        erb :"posts/show"
    end

    post '/posts' do
        post = Post.new(params[:post])
        post.user = current_user
        post.save
        redirect "/users/#{current_user.slug}"
    end


end