class Tag < ActiveRecord::Base
  has_many :post_tags
  has_and_belongs_to_many :posts
  validates :name, :presence => true
end
