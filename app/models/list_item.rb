class ListItem < ActiveRecord::Base
  # Validations

  # Associations
  belongs_to :city_list
  belongs_to :user

end
