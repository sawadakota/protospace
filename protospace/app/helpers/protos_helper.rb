module ProtosHelper

  def main_thumnail
    @proto.thumnails.main.first.image.url
  end

  def like_counter(likes)
    likes.count
  end
end
