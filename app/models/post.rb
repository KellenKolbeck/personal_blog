class Post < ActiveRecord::Base
  has_many :post_tags
  has_and_belongs_to_many :tags
  has_many :comments

  validates :title, :presence => true
  validates :body, :presence => true
end
