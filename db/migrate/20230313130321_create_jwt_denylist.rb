class CreateJwtDenylist < ActiveRecord::Migration[5.2]
  def change
    create_table :jwt_denylists, id: :uuid do |t|
      t.string :jti, null: false
      t.datetime :exp, null: false
    end

    add_index :jwt_denylists, :jti
  end
end
