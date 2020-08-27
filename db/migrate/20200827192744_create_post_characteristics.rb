class CreatePostCharacteristics < ActiveRecord::Migration[6.0]
  def change
    create_table :post_characteristics do |t|
      t.integer :post_id 
      t.integer :characteristic_id
    end
  end
end
