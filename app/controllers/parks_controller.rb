require 'rack-flash'

class ParksController < ApplicationController

    use Rack::Flash

    get '/parks/:slug' do 
        if @park = Park.find_by_slug(params[:slug])
            erb :"parks/show"
        else
            erb :"parks/error"
        end
    end

    get '/parks/states/:slug' do 
        states_unique = Park.all.collect{|park| park.state}.uniq
        if states_unique.detect {|state| state.downcase.strip.gsub(' ', '-') == params[:slug]}
            @state_name = params[:slug].split("-").map(&:capitalize).join(" ")
            @posts = Post.find_by_slug_state(params[:slug])
            erb :"parks/show_states"
        else
            erb :"parks/error"
        end
    end

end