class CreateIngredients < ActiveRecord::Migration[6.1]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.references :drink_id, null: false, foreign_key: true
      t.references :category_id, null: false, foreign_key: true
      t.integer :points
      t.float :cost

      t.timestamps
    end
  end
end
