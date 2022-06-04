class RemoveStringFromItemImages < ActiveRecord::Migration[6.1]
  def change
    remove_column :item_images, :string, :string
  end
end
