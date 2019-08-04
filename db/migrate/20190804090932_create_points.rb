class CreatePoints < ActiveRecord::Migration[5.2]
  def change
    create_table :points do |t|
      t.integer :tickets_point
      t.integer :merupay_point
      t.timestamps
    end
  end
end