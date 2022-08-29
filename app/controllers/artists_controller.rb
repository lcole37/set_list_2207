class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def new
  end

  def create
    artist = Artist.create(name: params[:name])
    redirect_to "/artists"
  end

  def artist_params
    params.permit(:name)

  end
end
