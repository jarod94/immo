class AddPropertyRefToStations < ActiveRecord::Migration[5.2]
  def change
    add_reference :stations, :property, foreign_key: true
  end
end
