class CreateUserDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :user_details do |t|
      t.references :user,          null: false, foreign_key: true
      t.text       :family_name,      null: false
      t.text       :first_name,       null: false
      t.text       :family_name_kana, null: false
      t.text       :first_name_kana,  null: false
      t.date       :birthday,         null: false
      t.references :point,         null: false, foreign_key: true
      t.text       :address,          null: false
      t.string     :zip_code,         null: false
      t.string     :phone_number,     null: false
      t.timestamps
    end
  end
end
