class Proto < ActiveRecord::Base
  belongs_to :user
  has_many :prototype_photos
  accepts_nested_attributes_for :prototype_photos
end