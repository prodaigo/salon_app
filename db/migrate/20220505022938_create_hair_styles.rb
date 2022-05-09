class CreateHairStyles < ActiveRecord::Migration[6.0]
  def change
    create_table :hair_styles do |t|
      t.string :style_name, null: false
      t.integer :gender_id, null: false
      t.integer :genre_id,  null: false
      t.references :user,   null: false, foreign_key: true
      t.timestamps
    end
  end
end
