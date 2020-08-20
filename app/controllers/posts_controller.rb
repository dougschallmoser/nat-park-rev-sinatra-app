require 'rack-flash'

class PostsController < ApplicationController

    use Rack::Flash

    get '/posts' do 
        @posts = Post.all
        @parks = Park.all
        @states_unique = Park.all.collect{|park| park.state}.uniq
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
    
    post '/posts' do
        if logged_in?
            post = Post.new(params[:post])
            post.user = current_user
            post.save
            redirect "/users/#{current_user.slug}"
        else 
            redirect "/login"
        end
    end

    get '/posts/:id' do 
        if logged_in?
            if @post = Post.find_by(:id => params[:id])
                erb :"posts/show"
            else
                erb :"/posts/error"
            end 
        else
            redirect "/login"
        end
    end

    get '/posts/:id/edit' do
        if logged_in?
            @post = Post.find_by(:id => params[:id])
            @parks = Park.all
            if @post && @post.user == current_user
                erb :"posts/edit"
            else 
                redirect "/posts"
            end
        else 
            redirect "/login"
        end
    end

    patch '/posts/:id' do 
        if logged_in?
            post = Post.find_by(:id => params[:id])
            if post && post.user == current_user
                if post.update(params[:post])
                    redirect "/posts/#{post.id}"
                else
                    redirect "/posts/#{post.id}/edit"
                end
            else
                redirect "/posts"
            end
        else
            redirect "login"
        end
    end

    delete '/posts/:id' do 
        if logged_in?
            post = Post.find_by(:id => params[:id])
            if post && post.user == current_user
                post.delete 
                redirect "/users/#{current_user.slug}"
            end
        else
            redirect "/login"
        end
    end

end