class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :content
      t.integer :rating 
      t.string :created_at
      t.integer :user_id
      t.integer :park_id
    end 
  end
end
