class AddStatusToPrototypePhotos < ActiveRecord::Migration
  def change
    add_column :prototype_photos, :status, :integer
    add_column :prototype_photos, :proto_id, :integer
  end
end
