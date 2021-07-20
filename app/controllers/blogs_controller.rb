class BlogsController < ApplicationController

	def index
		@blogs= Blog.all
	end

	def new
		@blog= Blog.new
		@blog.comments.build
		@blog.pictures.build
	end

	def create
		@blog =Blog.new(blogs_params)
		@blog.save!
	end

	private
	
	def blogs_params
		params.require(:blog).permit(:title,:content,:author_id,comments_attributes: [:content,:id],pictures_attributes: [:image])
	end
end
