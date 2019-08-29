class AddDetailsToUserDetails < ActiveRecord::Migration[5.2]
  def change
    add_column :user_details, :birthyear,  :date,   null: false
    add_column :user_details, :birthmonth, :date,   null: false
    add_column :user_details, :prefecture, :string, null: false
    add_column :user_details, :city,       :string, null: false
    add_column :user_details, :building,   :string
  end
end
