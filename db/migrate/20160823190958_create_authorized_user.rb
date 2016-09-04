class CreateAuthorizedUser < ActiveRecord::Migration
  def change
    create_table :authorized_user do |t|
      t.string :sunet_id
      t.string :name

      t.timestamps null: false
    end
  end
end
