class GenresController < ApplicationController

	def index
		@genre = Genre.all
	end

	def new
		@genre = Genre.new
	end

	def create
		@genre = Genre.new(genres_params)
		@genre.save
		redirect_to @genre
	end

	def show
		@genre = Genre.find(params[:id])
	end

	private 

	def genres_params
		params.require(:genre).permit(:name)
	end

end
