class AnimesController < ApplicationController

	def index
		@anime = Anime.all
	end

	def new
		@anime = Anime.new
	end

	def create
		@anime = Anime.new(animes_params)
		@anime.save
		redirect_to @anime
	end

	def show
		@anime = Anime.find(params[:id])
	end

	private 

	def animes_params
		params.require(:anime).permit(
			:title, 
			:summary, 
			:episodes, 
			:status,
			{:genre_ids => []}
			)
	end

end
