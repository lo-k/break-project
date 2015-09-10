class CityList < ActiveRecord::Base
  # Validations
  validates :city, presence: true
  validates :user_id, presence: true

  # Associations
  belongs_to :user
  has_many :list_items
end
