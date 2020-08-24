
class PostsController < ApplicationController

    get '/posts' do 
        @posts = Post.all
        @parks = Park.all
        @state_names = @posts.collect {|post| post.park.state}       
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
        session[:return_url] = request.url
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
        redirect_if_not_post_owner(@post)
        @parks = Park.all
        erb :"posts/edit"
    end

    patch '/posts/:id' do 
        redirect_if_not_logged_in
        post = Post.find_by(:id => params[:id])
        redirect_if_not_post_owner(post)
        if post.update(params[:post])
            flash[:edit] = "Changes saved successfully."
            redirect "/posts/#{post.id}"
        else
            flash[:edit_error] = "Something went wrong and changes were not saved."
            redirect "/posts/#{post.id}/edit"
        end
    end

    delete '/posts/:id' do 
        redirect_if_not_logged_in
        post = Post.find_by(:id => params[:id])
        redirect_if_not_post_owner(post)
        if post.delete 
            flash[:message] = "Review deleted successfully."
        else
            flash[:message] = "Something went wrong and the review was not deleted."
        end
        redirect "/users/#{current_user.slug}"
    end

end