class AuthorsController < ApplicationController

	def index
		@authors = Author.all
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
