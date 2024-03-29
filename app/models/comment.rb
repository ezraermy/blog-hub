class Comment < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: :author_id
  belongs_to :post

  def update_post_comments_counter
    post.update(commentsCounter: post.comments.count)
  end
end
