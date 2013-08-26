class TextsController < ApplicationController
	def index
		@texts = Text.all
	end

	def new
		@text = Text.new
	end

	def create
		@text = Text.new(text_params)
		if @text.save
			redirect_to @text
		else
			render 'new'
		end
	end

	def show
		@text = Text.find(params[:id])
		@comments = @text.comments
	end

	def destroy
		@text = Text.find(params[:id])
		@text.destroy
		redirect_to texts_path
	end

	def edit
		@text = Text.find(params[:id])
	end

	def update
		@text = Text.find(params[:id])
		if @text.update(text_params)
			redirect_to @text
		else
			render 'edit'
		end
	end

	private
		def text_params
			params.require(:text).permit(:author, :body)
		end

end
