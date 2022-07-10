class CreateDrinks < ActiveRecord::Migration[6.1]
  def change
    create_table :drinks do |t|
      t.integer :points
      t.references :user_id, null: false, foreign_key: true
      t.boolean :favorite

      t.timestamps
    end
  end
end
