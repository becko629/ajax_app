class PostsController < ApplicationController

  def index
    @posts = Post.order(id: "DESC")
  end

  # def new
  # nd

  def create
    post = Post.create(content: params[:content])
    rnder json:{ post: post}
  end
end
