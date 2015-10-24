class Proto < ActiveRecord::Base
  belongs_to :user
  has_many :thumnails
  has_many :likes
  accepts_nested_attributes_for :thumnails

  def like_user(user)
    likes.find_by(user_id: user)
  end
end
