class CreateThumnails < ActiveRecord::Migration
  def change
    create_table :thumnails do |t|
      t.references :proto
      t.integer    :status
      t.string     :image
      t.timestamps null: false
    end
  end
end
