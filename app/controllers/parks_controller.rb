
class ParksController < ApplicationController

    get '/parks/:park_name' do 
        if @park = Park.find_by_slug(params[:park_name])
            erb :"parks/show_parks"
        else
            erb :"parks/error"
        end
    end

    get '/states/:state_name' do 
        unique_states = Park.distinct.pluck(:state)
        if unique_states.detect {|state| state.downcase.strip.gsub(' ', '-') == params[:state_name]}
            @state_name = params[:state_name].split("-").map(&:capitalize).join(" ")
            @parks_in_state = Park.all.where(:state => @state_name)
            @posts = Post.find_by_slug_state(params[:state_name])
            erb :"parks/show_states"
        else
            erb :"posts/error"
        end
    end

end