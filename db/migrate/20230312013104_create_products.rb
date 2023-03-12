class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products, id: :uuid do |t|
      t.string :name
      t.string :price
      t.string :slug, null: false
      t.text :description
      t.string :brief
      
      t.timestamps
    end
  end
end
