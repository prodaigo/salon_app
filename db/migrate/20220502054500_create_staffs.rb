class CreateStaffs < ActiveRecord::Migration[6.0]
  def change
    create_table :staffs do |t|
      t.string :name,         null: false
      t.integer :position_id, null: false
      t.string :hobby,        null: false
      t.text :introduction,   null: false
      t.references :user,     null: false, foreign_key: true

      t.timestamps
    end
  end
end
