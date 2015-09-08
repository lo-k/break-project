class CreateCityLists < ActiveRecord::Migration
  def change
    create_table :city_lists do |t|
      t.string :city
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
