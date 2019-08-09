class CreateValuations < ActiveRecord::Migration[5.2]
  def change
    create_table :valuations do |t|
      t.integer :valuation, null: false
      t.timestamps
    end
  end
end
