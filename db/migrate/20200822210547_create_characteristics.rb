class CreateCharacteristics < ActiveRecord::Migration[6.0]
  def change
    create_table :characteristics do |t|
      t.string :name
      t.integer :post_id
    end
  end
end
