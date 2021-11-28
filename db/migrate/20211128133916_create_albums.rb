class CreateAlbums < ActiveRecord::Migration[6.1]
  def change
    create_table :albums do |t|
      t.string :name
      t.date :year
      t.string :artist

      t.timestamps
    end
  end
end
