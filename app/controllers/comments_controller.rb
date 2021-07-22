class CommentsController < ApplicationController

	def create
		@blog =Blog.find(params[:blog_id])
		@comment = @blog.comments.create!(comments_params.merge(user_id: current_user.id))
		redirect_to blog_path(@blog)
	end

	private

	def comments_params
		params.require(:comment).permit(:content)
	end
end
