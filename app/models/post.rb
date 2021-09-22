class Post < ApplicationRecord
  belongs_to :user
  has_one_attached :avatar
  has_many :likes

  def likes_count
    Like.count { |x| x[:post_id] == self.id }
  end
end
