class Review < ApplicationRecord
  belongs_to :user
  belongs_to :genre
  
  mount_uploader :image, ImageUploader
  
  validates :movietitle, presence: true, length: { maximum: 50 }
  validates :caption, length: { maximum: 50 }
  validates :genre_id, presence: true
  
  has_many :comments
  has_many :favorites, dependent: :destroy
  has_many :liked, through: :favorites, source: :user
  
end
