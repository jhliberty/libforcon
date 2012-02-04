class PostsController < ApplicationController
  
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find_by_permalink(params[:id])
    unless @post
      redirect_to posts_path
    end
  end
  
  def new
    @post = Post.new
  end
  
  def create
    @post = Post.new(params[:post])
    if @post.save
      flash[:notice] = "Success"
      redirect_to(post_path(@post.permalink))
    else
      render 'new'
    end
  end
  
  def edit
    @post = Post.find_by_permalink(params[:id])
  end
  
  def update
    @post = Post.find_by_permalink(params[:id])
    if @post.update_attributes(params[:post])
      flash[:notice] = "Success"
      redirect_to(post_path(@post.permalink))
    else
      render 'edit'
    end
  end  
end
