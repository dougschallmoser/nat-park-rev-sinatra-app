require 'rack-flash'

class PostsController < ApplicationController

    use Rack::Flash

    get '/posts' do 
        @posts = Post.all
        erb :"posts/index"
    end 
    
    get '/posts/new' do 
        @parks = Park.all
        erb :"posts/new"
    end
    
    get '/posts/:id' do 
        @post = Post.find(params[:id])
        erb :"posts/show"
    end

    post '/posts' do
        @post = Post.create(params[:post])

    end


end