class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string  :name,                 index: true, null: false
      t.string  :state,                null: false
      t.string  :shipping_charges,     null: false
      t.string  :shipping_method,      null: false
      t.string  :days_ship,            null: false
      t.integer :price,                null: false
      t.text    :description,          null: false
      t.string  :shipping_source_area, null: false

      t.string  :size
      t.string  :status,               default: 0  
      t.integer :good
      t.string  :delivery_status
      t.integer  :payment_status 

      t.references :user,     foreign_key: true, null: false
      t.references :category, foreign_key: true, null: false

      t.timestamps
    end
  end
end
