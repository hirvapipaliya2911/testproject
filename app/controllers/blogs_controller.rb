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
		@blog.save!
	end

	def show
		@blog = Blog.find(params[:id])
	end

	

	private
	
	def blogs_params
		params.require(:blog).permit(:title,:content,:author_id,pictures_attributes: [:image])
	end
end
