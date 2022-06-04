class CreateItemImages < ActiveRecord::Migration[6.1]
  def change
    create_table :item_images do |t|
      t.integer :item_id
      t.string :image_id
      t.string :string

      t.timestamps
    end
  end
end
