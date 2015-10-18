class AddImage1ToPrototypePhoto < ActiveRecord::Migration
  def change
    add_column :prototype_photos, :image1, :string
    add_column :prototype_photos, :image2, :string
    add_column :prototype_photos, :image3, :string
  end
end
