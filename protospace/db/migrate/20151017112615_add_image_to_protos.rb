class AddImageToProtos < ActiveRecord::Migration
  def change
    add_column :protos, :image, :string
  end
end
