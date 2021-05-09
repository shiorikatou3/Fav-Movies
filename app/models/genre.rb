class Genre < ApplicationRecord
  has_ancestry
  
  has_many :reviews
end
