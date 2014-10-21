class AnimesController < ApplicationController

	def new		
		@anime = Anime.new
	end

	def index
		@animes = Anime.all
	end

	def show
		@anime = Anime.find(params[:id])
	end

	def create
		@anime = Anime.new(params[:anime])
		
		if @anime.save
      flash[:success] = "anime added!"
      redirect_to animes_path
    else
      render 'new'
    end
	end

end