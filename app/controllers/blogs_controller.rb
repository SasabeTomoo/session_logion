class BlogsController < ApplicationController
  def index
    @blogs = Blog.all
  end
  def new
    @blog = Blog.new
  end
  def create
    Blog.create(blog_params)
    redirect_to new_blog_path
  end
  def show
    @blog = Blog.find(params[:id])
  end
  def edit
    @blog = Blog.find(params[:id])
  end
  def update
    @blog = Blog.find(params[:id])
    @blog.update(blog_params)
    redirect_to blogs_path
  end
  def destroy
    @blog = Blog.find(params[:id])
    @blog.destroy
    redirect_to blogs_path
  end
  private
  def blog_params
    params.require(:blog).permit(:name, :content)
  end
end
