class Review < ApplicationRecord
 #MAX_REVIEWS_COUNT = 3
  
  belongs_to :user
  belongs_to :genre
  
  mount_uploader :image, ImageUploader
  
  validates :movietitle, presence: true, length: { maximum: 50 }
  validates :caption, presence: true, length: { maximum: 50 }
  validates :genre_id, presence: true
  
  has_many :comments
  has_many :favorites, dependent: :destroy
  has_many :liked, through: :favorites, source: :user
  
  #validate :reviews_count_must_be_within_limit
  
  #private

  #def reviews_count_must_be_within_limit
  # ary = Review.pluck(:user_id, :genre_id)
  # reviews = ary.map{ |key| key.count }
  # errors.add(:base, "reviews count limit: #{MAX_REVIEWS_COUNT}") if reviews.count >= MAX_REVIEWS_COUNT
  #end
  
  
end


