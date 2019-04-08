class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    # erb :'posts/new'
  end

  def create
    @post = Post.create(title: params[:post][:title], description: params[:post][:description])
    redirect_to "/posts"
  end

  def show
    @post = Post.find_by_id(params[:id])
  end

end
