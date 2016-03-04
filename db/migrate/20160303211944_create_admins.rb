class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|
      t.string :username
      t.string :password_digest
      t.string :bio
      t.string :contact

      t.timestamps null: false
    end
  end
end
