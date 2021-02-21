class Restaurant < ApplicationRecord
  has_many :comments
  belongs_to :user

  validates :name, presence: true, uniqueness: true
end
