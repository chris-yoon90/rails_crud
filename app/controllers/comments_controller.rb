class CommentsController < ApplicationController
	def create
		@text = Text.find(params[:text_id])
		@comment = @text.comments.create(comment_params)

		redirect_to @text
	end

	def destroy
		@text = Text.find(params[:text_id])
		@comment = @text.comments.find(params[:id])
		@comment.destroy
		redirect_to @text
	end

	private
		def comment_params
			params.require(:comment).permit(:commenter, :comment_text)
		end

end
