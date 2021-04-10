class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.text :description
      t.string :images, null: false
      t.string :address  #住所
      t.float :latitude  #緯度
      t.float :longitude  #経度
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
