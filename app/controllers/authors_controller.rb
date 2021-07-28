class AuthorsController < ApplicationController

	def index
		@authors = Author.all.paginate(page: params[:page], per_page:5)
	end

	def new
		@author= Author.new
	end

	def create
		@author =Author.new(authors_params)
		@author.save
	end

	private
	def authors_params
		params.require(:author).permit(:name)
	end

end
