class PostsController < ApplicationController
  def create
    Post.create(create_paramas)
  end

  private
  def create_paramas
    params.require(:post).permit(category_ids: [])
  end
end
