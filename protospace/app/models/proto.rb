class Proto < ActiveRecord::Base
  belongs_to :user
  has_many :prototype_photo
end