class Park < ActiveRecord::Base

    has_many :posts
    has_many :users, through: :posts
    belongs_to :state
    
end