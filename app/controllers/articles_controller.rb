class ArticlesController < ApplicationController
	layout "articles"
	
	def index
		@articles=Article.all
	end

	def create
		@article=Article.new(params.require(:article).permit(:title, :text))
		if @article.save
			redirect_to articles_path
		else
			render "edit"
		end

	end

	def new
		@article=Article.new()
	end

	def edit
		@article=Article.find(params[:id])
	end

	def update
		@article=Article.find(params[:id])
		if @article.update(params.require(:article).permit(:title, :text))
			redirect_to articles_path
		else
			render "edit"
		end
	end

	def show
		@article=Article.find(params[:id])
	end

	def destroy
		@article=Article.find(params[:id])
		@article.destroy()
		redirect_to articles_path
	end

end
