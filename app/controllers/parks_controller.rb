require 'rack-flash'

class ParksController < ApplicationController

    use Rack::Flash

    get '/parks/:slug' do 
        @park = Park.find_by_slug(params[:slug])
        erb :"parks/show"
    end

    get '/parks/states/:slug' do 
        @state_name = params[:slug].split("-").map(&:capitalize).join(" ")
        @posts = Post.find_by_slug_state(params[:slug])
        erb :"parks/show_states"
    end

end