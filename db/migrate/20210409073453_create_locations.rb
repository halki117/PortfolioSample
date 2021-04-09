class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.text :description
      t.string :images, null: false
      t.string :address,  #住所
      f.float :latitude,  #緯度
      f.float :longitude,  #経度
      t.timestamps
    end
  end
end
