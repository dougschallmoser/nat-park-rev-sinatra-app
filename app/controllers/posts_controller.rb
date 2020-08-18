require 'rack-flash'

class PostsController < ApplicationController

    use Rack::Flash

    get '/posts' do 
        @posts = Post.all
        erb :"posts/index"
    end 

end