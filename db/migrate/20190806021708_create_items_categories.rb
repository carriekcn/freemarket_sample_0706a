class CreateItemsCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :items_categories do |t|
      t.references :category, null: false, foreign_key: true
      t.references :item, null: false, foreign_key: true
      t.timestamps
    end
  end
end
