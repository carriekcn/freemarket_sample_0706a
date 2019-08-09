class CreateUsersValuations < ActiveRecord::Migration[5.2]
  def change
    create_table :users_valuations do |t|
      t.references :user, null: false, foreign_key: true
      t.references :valuation, null: false, foreign_key: true
      t.timestamps
    end
  end
end
