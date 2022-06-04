class Item < ApplicationRecord
  has_many :item_images, dependent: :destroy
  accepts_attachments_for :item_images, attachment: :image
end
