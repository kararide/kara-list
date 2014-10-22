class AnimesController < ApplicationController

	def index
		@anime = Anime.all
	end

	def new
		@anime = Anime.new
	end

	def create
		@genres_id = Genre.all(genres_params)
		@anime = Anime.new(animes_params)
		@anime.save
		redirect_to @anime
	end

	def show
		@anime = Anime.find(params[:id])
	end

	private 

	def animes_params
		params.require(:anime).permit([:title, :summary, :episodes, :status, :genre_id, :genre])
	end

	def genres_params
		params.require(:genre).permit(:name)
	end

end
