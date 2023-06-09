class Like < ApplicationRecord
  belongs_to :author, class_name: 'User'
  belongs_to :post
  after_save :update_likes_counter
  def update_likes_counter
    post.increment!(:likescounter)
  end
end
