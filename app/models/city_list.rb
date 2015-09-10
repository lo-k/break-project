class CityList < ActiveRecord::Base
  # Validations
  validates :city, presence: true
  validates :user_id, presence: true

  # Associations
  belongs_to :user
  has_many :list_items

  # Scopes
  def percent_completed
    total = list_items.count
    complete = list_items.where(complete: true).count

    if total > 0
      percent = ((complete.to_f / total.to_f) * 100).to_i
    else
      percent = 0
    end

    return percent
  end

  def count_favs
    list_items.where(favorite: true).count
  end
  
end
