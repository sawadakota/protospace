class CreatePrototypePhotos < ActiveRecord::Migration
  def change
    create_table :prototype_photos do |t|
      t.references :proto

      t.timestamps null: false
    end
  end
end
