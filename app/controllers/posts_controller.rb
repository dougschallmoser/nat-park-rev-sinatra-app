
class PostsController < ApplicationController

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
        redirect_if_not_logged_in
        post = Post.new(params[:post])
        post.user = current_user
        if post.save
            flash[:message] = "Review successfully saved."
            redirect "/posts/#{post.id}"
        else 
            flash[:message] = "Review did not save."
            redirect "/users/#{current_user.slug}"
        end
    end

    get '/posts/:id' do 
        redirect_if_not_logged_in
        if @post = Post.find_by(:id => params[:id])
            erb :"posts/show"
        else
            erb :"/posts/error"
        end 
    end

    get '/posts/:id/edit' do
        redirect_if_not_logged_in
        @post = Post.find_by(:id => params[:id])
        @parks = Park.all
        if @post && is_post_owner(@post)
            erb :"posts/edit"
        else 
            redirect "/posts"
        end
    end

    patch '/posts/:id' do 
        redirect_if_not_logged_in
        post = Post.find_by(:id => params[:id])
        if post && is_post_owner(post)
            if post.update(params[:post])
                redirect "/posts/#{post.id}"
            else
                redirect "/posts/#{post.id}/edit"
            end
        else
            redirect "/posts"
        end
    end

    delete '/posts/:id' do 
        redirect_if_not_logged_in
        post = Post.find_by(:id => params[:id])
        if post && is_post_owner(post)
            post.delete 
            flash[:message] = "Review successfully deleted."
        else
            flash[:message] = "You do not have permission to delete that review."
        end
        redirect "/users/#{current_user.slug}"
    end

end