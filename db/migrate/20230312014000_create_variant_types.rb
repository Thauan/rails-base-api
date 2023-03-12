class CreateVariantTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :variant_types, id: :uuid do |t|
      t.string :name
      t.string :reference_code
      
      t.timestamps
    end
  end
end
