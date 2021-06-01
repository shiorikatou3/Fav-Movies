class Review < ApplicationRecord
  
  belongs_to :user
  belongs_to :genre
  
  mount_uploader :image, ImageUploader
  
  validates :movietitle, presence: true, length: { maximum: 50 }
  validates :caption, presence: true, length: { maximum: 50 }
  validates :genre_id, presence: true
  validates :time, numericality: { only_integer: true }, allow_nil: true
  def time=(value)
    value.tr!("０-９", "0-9") if value.is_a?(String)
    super(value)
  end
  
  has_many :comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :liked, through: :favorites, source: :user
  

  
  
end


