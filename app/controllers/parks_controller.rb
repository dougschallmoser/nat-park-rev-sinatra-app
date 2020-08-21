
class ParksController < ApplicationController

    get '/parks/:slug' do 
        if @park = Park.find_by_slug(params[:slug])
            erb :"parks/show_parks"
        else
            erb :"parks/error"
        end
    end

    get '/states/:slug' do 
        unique_states = Park.all.collect{|park| park.state}.uniq
        if unique_states.detect {|state| state.downcase.strip.gsub(' ', '-') == params[:slug]}
            @state_name = params[:slug].split("-").map(&:capitalize).join(" ")
            @posts = Post.find_by_slug_state(params[:slug])
            erb :"parks/show_states"
        else
            erb :"posts/error"
        end
    end

end