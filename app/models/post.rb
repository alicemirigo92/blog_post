# class Post < ApplicationRecord
#   belongs_to :author, class_name: 'User'
#   has_many :comments, foreign_key: 'author_id', dependent: :destroy
#   has_many :likes, foreign_key: 'author_id', dependent: :destroy
#   validates :title, presence: true, length: { maximum: 250 }
#   validates :commentscounter, numericality: { only_integer: true }, comparison: { greater_than_or_equal_to: 0 }
#   validates :likescounter, numericality: { only_integer: true }, comparison: { greater_than_or_equal_to: 0 }

#   after_save :update_user_post_counter

#   def update_user_post_counter
#     author.increment!(:postscounter)
#   end

#   def five_most_recent_comments
#     comments.order(created_at: :desc).limit(5)
#   end

#   def decrement_user_post_counter
#     author.decrement!(:postscounter)
#   end
#   private :update_user_post_counter, :decrement_user_post_counter
# end
