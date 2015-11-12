class Proto < ActiveRecord::Base
  paginates_per 10
  belongs_to :user
  has_many :thumnails
  has_many :likes
  accepts_nested_attributes_for :thumnails
  has_many :comments
  acts_as_taggable_on :labels
  acts_as_taggable
end
