class Genre < ApplicationRecord
  
  has_ancestry
  
  has_many :reviews, dependent: :destroy
  has_many :genreusers, through: :reviews, source: :user
  
  
  
end
