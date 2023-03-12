class CreateBrands < ActiveRecord::Migration[5.2]
  def change
    create_table :brands, id: :uuid do |t|
      t.string :name, null: false
      t.text :brief, null: true
      t.string :web_address, null: true
      t.boolean :active, default: false
      t.timestamps
    end
  end
end
