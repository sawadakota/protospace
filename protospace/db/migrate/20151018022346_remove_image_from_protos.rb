class RemoveImageFromProtos < ActiveRecord::Migration
  def change
    remove_column :protos, :image, :string
  end
end
