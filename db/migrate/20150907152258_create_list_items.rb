class CreateListItems < ActiveRecord::Migration
  def change
    create_table :list_items do |t|
      t.string :title
      t.string :address
      t.boolean :complete
      t.boolean :favorite
      t.integer :city_list_id

      t.timestamps null: false
    end
  end
end
