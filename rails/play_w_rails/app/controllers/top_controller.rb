class TopController < ApplicationController
  def index
    @post = Post.new
  end
end
