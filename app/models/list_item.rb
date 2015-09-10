class ListItem < ActiveRecord::Base
  # Validations
  validates :title, presence: true
  # validates :complete, presence: true
  # validates :favorite, presence: true
  # validates :city_list_id, presence: true

  # Associations
  belongs_to :city_list
  belongs_to :user

end
