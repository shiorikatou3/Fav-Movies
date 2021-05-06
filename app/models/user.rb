class User < ApplicationRecord
  validates :name, presence: true, length: { maximum: 50 }
  validates :favmoviesid, presence: true, length: { maximum: 50 },
                          format: { with: /\A[a-zA-Z0-9]+\z/ },
                          uniqueness: { case_sensitive: false }
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i },
                    uniqueness: { case_sensitive: false }
  validates :introduce, length: { maximum: 500 }
  has_secure_password
end
