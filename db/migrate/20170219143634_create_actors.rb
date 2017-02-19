class CreateActors < ActiveRecord::Migration
  def change
    create_table :actors do |t|
      t.text :firstname
      t.text :lastname

      t.timestamps null: false
    end
  end
end
