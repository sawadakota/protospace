class Proto < ActiveRecord::Base
  belongs_to :user
  has_many :thumnails
  has_many :likes
  accepts_nested_attributes_for :thumnails
  has_many :comments
  acts_as_taggable_on :labels # post.label_list が追加される
  acts_as_taggable      # acts_as_taggable_on :tags のエイリアス
end
