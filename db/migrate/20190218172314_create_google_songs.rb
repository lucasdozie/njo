class CreateGoogleSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :google_songs do |t|
      t.string :Artise
      t.string :product_title
      t.string :content_provider
      t.string :device_type
      t.string :label
      t.string :start_date
      t.string :end_date
      t.integer :year

      t.timestamps
    end
  end
end
