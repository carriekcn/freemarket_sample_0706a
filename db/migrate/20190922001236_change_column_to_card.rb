class ChangeColumnToCard < ActiveRecord::Migration[5.2]
  def change
    change_column :cards, :user_id, :bigint, null: false
  end
end
