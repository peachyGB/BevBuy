class CreateCustomizations < ActiveRecord::Migration[6.1]
  def change
    create_table :customizations do |t|
      t.references :drink_id, null: false, foreign_key: true
      t.references :ingredient_id, null: false, foreign_key: true


      t.timestamps
    end
  end
end
