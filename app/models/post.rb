class Post < ApplicationRecord
   
   default_scope { order created_at: :desc }
   mount_uploader :image, ImageUploader
   before_create :set_active
   belongs_to :account
   has_many :likes
   has_many :comments
   has_one_attached :image
   
   scope :active, -> { where active: true }

   
   def set_active
    self.active = true
   end
end
