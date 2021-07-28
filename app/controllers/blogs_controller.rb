class BlogsController < ApplicationController
  autocomplete :blog, :title, full: true

  def index
    if params[:search]
      @blogs = Blog.where("blogs.title LIKE ?", "%#{params[:search]}").paginate(page: params[:page], per_page: 2)
    else
      @blogs = Blog.all.paginate(page: params[:page], per_page: 2)
    end
  end

  def new
    @blog = Blog.new
    @blog.pictures.build
  end

  def create
    @blog = Blog.new(blogs_params)
    if @blog.save
      params[:pictures_attributes]['image'].each do |img|
        @blog.pictures.create(image: img)
      end
    end
  end

  def show
    @blog = Blog.find(params[:id])
  end

  def destroy
    blog_service = DeleteBlog.new(params)
    blog_service.request
    @id = blog_service.blog_id
  end


  private

  def blogs_params
    params.require(:blog).permit(:title, :content, :author_id)
  end
end
