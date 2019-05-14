class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, uniqueness: true, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: ['chinese', 'italian', 'japanese', 'french', 'belgian']
end
 # When a restaurant is destroyed, all of its reviews should be destroyed as well.

