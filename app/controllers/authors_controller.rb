class AuthorsController < ApplicationController
	before_action :set_author_by_slug, only: [:show, :edit, :destroy]
	def index
		@authors = Author.all
	end

	def show
		@quotes = Quote.where(author: @author.author_name)
	end

	def new
		@author = Author.new
	end

	def create
		@author = Author.new(author_params)
		@author.save
		redirect_to "/authors/#{@author.slug}"
	end

	def edit
	end

	def update
		@author = Author.find(params[:id])
		@author.update(author_params)
		redirect_to "/authors/#{@author.slug}"
	end

	def destroy
		@author.destroy
		redirect_to '/authors'
	end

	private

	  def author_params
		  params.require(:author).permit(:author_name, :year_of_birth, :birthplace, :description, :slug)
	  end

	  def set_author_by_slug
	  	@author = Author.find_by(slug: params[:slug])
	  end
end
