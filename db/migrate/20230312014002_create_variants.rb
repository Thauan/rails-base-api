class CreateVariants < ActiveRecord::Migration[5.2]
  def change
    create_table :variants, id: :uuid do |t|
      t.string :type, null: true
      t.string :value, null: true
      t.integer :quantity, null: true
      t.string :meta_datas, null: true

      t.timestamps
    end
  end
end
