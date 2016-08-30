class CreateAuthorizedUsers < ActiveRecord::Migration
  def change
    create_table :authorized_users do |t|
      t.string :sunet_id
      t.string :name

      t.timestamps null: false
    end
  end
end
