class CreateArts < ActiveRecord::Migration
  def change
    create_table :arts do |t|
      t.string :name
      t.string :date
      t.string :description
      t.references :admin, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
