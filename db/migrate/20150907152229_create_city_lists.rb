class CreateCityLists < ActiveRecord::Migration
  def change
    create_table :city_lists do |t|
      t.string :city

      t.timestamps null: false
    end
  end
end
