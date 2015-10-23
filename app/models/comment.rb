class Comment < ActiveRecord::Base

  belongs_to :users
  belongs_to :posts

  validates :comment_body, :presence => true
end
