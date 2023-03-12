class CreateVariants < ActiveRecord::Migration[5.2]
  def change
    create_table :variants do |t|

      t.timestamps
    end
  end
end
