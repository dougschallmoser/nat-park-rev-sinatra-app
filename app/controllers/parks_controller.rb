require 'rack-flash'

class ParksController < ApplicationController

    use Rack::Flash

    get '/parks/:slug' do 
        @park = Park.find_by_slug(params[:slug])
        erb :"parks/show"
    end

end