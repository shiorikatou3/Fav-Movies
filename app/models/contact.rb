class Contact < ApplicationRecord
  validates :name, presence: true, length: { maximum: 50 }
  validates :message, presence: true
end
