class Park < ActiveRecord::Base

    has_many :posts
    has_many :users, through: :posts

    def slug
        self.name.downcase.strip.gsub(' ', '-')
    end

    def slug_state
        self.state.downcase.strip.gsub(' ', '-')
    end

    def self.find_by_slug(slug_name)
        self.all.detect {|park| park.slug == slug_name}
    end 
    
end