class BlogsController < ApplicationController

	def index
		@blogs= Blog.all
	end

	def new
		@blog= Blog.new
		@blog.pictures.build
	end

	def create
		@blog =Blog.new(blogs_params)
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
		@blog = Blog.find(params[:id])
		@blog.destroy
	end
	

	private
	
	def blogs_params
		params.require(:blog).permit(:title, :content, :author_id)
	end
end
