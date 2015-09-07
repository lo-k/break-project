class User < ActiveRecord::Base
  # Validations

  # Associations
  has_secure_password
  has_many :city_lists
  has_many :list_items
end
