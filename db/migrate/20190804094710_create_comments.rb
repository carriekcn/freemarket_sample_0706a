class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.references :user, foreign_key: true
      t.references :items, foreign_key: true
      t.text :body, null: false
      t.datetime :created_at, null: false
      t.datetime :updated_at, null: false
      t.timestamps
    end
  end
end
