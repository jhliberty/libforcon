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
    @post = Post.new(params[:id])
    if @post.save
      flash[:notice] = "Success"
      redirect_to(post_index_path)
    else
      render 'new'
    end
  end
  
  def edit
    
  end
  
  def update
    
  end  
end
