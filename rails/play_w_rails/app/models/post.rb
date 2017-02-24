class Post < ActiveRecord::Base
  has_many :categorys_posts
  has_many :categories, through: :categorys_posts
end
