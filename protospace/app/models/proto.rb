class Proto < ActiveRecord::Base
  belongs_to :user
  has_many :thumnails
  has_many :likes
  accepts_nested_attributes_for :thumnails
  has_many :comments
end
