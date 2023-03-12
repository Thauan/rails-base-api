class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews, id: :uuid do |t|
      t.references :product, null: false, foreign_key: true, type: :uuid
      t.references :user, null: false, foreign_key: true
      t.boolean :product_delivered, default: false
      t.decimal :score, precision: 4, scale: 3

      t.timestamps
    end
  end
end
