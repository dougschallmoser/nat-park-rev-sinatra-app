class Post < ActiveRecord::Base

    belongs_to :user 
    belongs_to :park

    def slug
        self.name.downcase.strip.gsub(' ', '-')
    end

    def self.find_by_slug(slug_name)
        self.all.detect {|post| post.park.slug == slug_name}
    end 

end