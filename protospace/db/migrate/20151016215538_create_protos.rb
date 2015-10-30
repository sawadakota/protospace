class CreateProtos < ActiveRecord::Migration
  def change
    create_table :protos do |t|
      t.string   :title
      t.text     :catch_copy
      t.text        :concept
      t.references  :user
      t.integer    :likes_count
      t.timestamps null: false
    end
  end
end
