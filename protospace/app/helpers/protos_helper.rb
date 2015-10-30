module ProtosHelper

  def main_thumnail
    @proto.thumnails.main.first.image.url
  end

  def likes_counter(likes)
    likes.count
  end
end
