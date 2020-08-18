class Park < ActiveRecord::Base

    has_many :posts
    has_many :users, through: :posts
    belongs_to :state

    def slug
        self.name.downcase.strip.gsub(' ', '-')
    end

    def self.find_by_slug(slug_name)
        self.all.detect {|park| park.slug == slug_name}
    end 
    
end