class Review < ApplicationRecord
  belongs_to :user
  belongs_to :genre
  
  mount_uploader :image, ImageUploader
  
  validates :movietitle, presence: true, length: { maximum: 50 }
  validates :caption, length: { maximum: 50 }
  
  has_many :comments
  
end