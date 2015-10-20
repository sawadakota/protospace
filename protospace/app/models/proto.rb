class Proto < ActiveRecord::Base
  belongs_to :user
  has_many :thumnails
  accepts_nested_attributes_for :thumnails
end
