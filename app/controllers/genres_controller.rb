class GenresController < ApplicationController

	def new		
		@genre = Genre.new
	end

	def index
		@genres = Genre.all
	end

	def show
		@genre = Genre.find(params[:id])
	end

	def create
		@genre = Genre.new(secure_params)

		if @genre.valid?
      flash[:success] = "Genre added!"
      redirect_to genres_path
    else
      render 'new'
    end
	end

	private

	def secure_params
		params.require(:genre).permit(:name)
	end

end
