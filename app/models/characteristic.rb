class Characteristic < ActiveRecord::Base

    has_many :post_characteristics
    has_many :posts, through: :post_characteristics

end