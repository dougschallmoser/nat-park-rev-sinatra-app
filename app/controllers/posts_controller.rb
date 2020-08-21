
class PostsController < ApplicationController

    get '/posts' do 
        @posts = Post.all
        @parks = Park.all
        @unique_states = @parks.collect{|park| park.state}.uniq
        erb :"posts/index"
    end 
    
    get '/posts/new' do 
        redirect_if_not_logged_in
        @parks = Park.all
        erb :"posts/new"
    end
    
    post '/posts' do
        redirect_if_not_logged_in
        post = Post.new(params[:post])
        post.user = current_user
        if post.save
            flash[:message] = "Review successfully created."
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
        if @post && post_owner?(@post)
            @parks = Park.all
            erb :"posts/edit"
        else 
            flash[:permission] = "You do not have permission to edit that post."
            redirect "/posts"
        end
    end

    patch '/posts/:id' do 
        redirect_if_not_logged_in
        post = Post.find_by(:id => params[:id])
        if post && post_owner?(post)
            if post.update(params[:post])
                flash[:edit] = "Changes saved successfully."
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
        if post && post_owner?(post)
            post.delete 
            flash[:message] = "Review deleted successfully."
        else
            flash[:message] = "You do not have permission to delete that review."
        end
        redirect "/users/#{current_user.slug}"
    end

end