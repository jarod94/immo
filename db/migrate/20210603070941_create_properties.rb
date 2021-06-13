class CreateProperties < ActiveRecord::Migration[5.2]
  def change
    create_table :properties do |t|
      t.string :propertyName
      t.integer :rent
      t.string :railName
      t.integer :buildAge
      t.string :address
      t.text :note

      t.timestamps
    end
  end
end
