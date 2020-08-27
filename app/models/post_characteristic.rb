class PostCharacteristic < ActiveRecord::Base

    belongs_to :post 
    belongs_to :characteristic

end