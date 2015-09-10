class User < ActiveRecord::Base
  # Validations
  validates :name, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true, format: {with: /@/}
  validates :password, presence: true
  validates :password_confirmation, presence: true

  # Associations
  has_secure_password
  has_many :city_lists
  has_many :list_items, :through => :city_lists
end
