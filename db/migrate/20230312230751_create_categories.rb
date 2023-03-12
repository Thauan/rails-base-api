class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories, id: :uuid do |t|
      t.string :name, null: false
      t.text :description, null: true
      t.string :slug, null: false
      t.boolean :active, default: false

      t.timestamps
    end
  end
end
