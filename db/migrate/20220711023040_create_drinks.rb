class CreateDrinks < ActiveRecord::Migration[6.1]
  def change
    create_table :drinks do |t|
      t.references :user, null: false, foreign_key: true
      t.string :size
      t.boolean :favorite

      t.timestamps
    end
  end
end
