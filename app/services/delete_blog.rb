class DeleteBlog
  attr :params, :blog_id, :blog


  def initialize(params)
    @params = params
  end

  def request
    delete_blog
  end

  def delete_blog
    @blog_id = blog.id
    blog.destroy
  end

  def blog
    @blog = Blog.find(params[:id])
  end

end
