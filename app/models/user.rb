class User < ActiveRecord::Base

    has_many :posts 
    has_many :parks, through: :posts

    has_secure_password
    validates :name, :presence => true 
    validates :email, :presence => true 
    validates :username, :presence => true
    validates :username, :uniqueness => true

    def slug
        self.username.downcase.strip.gsub(' ', '-')
    end

    def self.find_by_slug(slug_name)
        self.all.detect {|user| user.slug == slug_name}
    end 

end