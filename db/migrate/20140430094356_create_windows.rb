class CreateWindows < ActiveRecord::Migration
  def change
    create_table :windows do |t|
      t.string :name
      t.text :price

      t.timestamps
    end
  end
end
