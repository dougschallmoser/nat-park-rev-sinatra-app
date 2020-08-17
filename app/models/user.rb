class User < ActiveRecord::Base

    def slug
        self.username.downcase.strip.gsub(' ', '-')
    end

    def self.find_by_slug(slug_name)
        self.all.detect {|user| user.slug == slug_name}
    end 

end