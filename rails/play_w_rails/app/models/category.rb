class Category < ActiveRecord::Base
  has_many :categorys_posts
  has_many :posts, through: :categorys_posts
end
