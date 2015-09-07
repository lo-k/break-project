class CityList < ActiveRecord::Base
  # Validations

  # Associations
  belongs_to :user
  has_many :list_items
end
