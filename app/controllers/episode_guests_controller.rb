class EpisodeGuestsController < ApplicationController
  def index
    @episode_guests = EpisodeGuest.all
  end

  def new
    @episode_guest = EpisodeGuest.new
  end

  def show
    @episode_guest = EpisodeGuest.find(params[:id])
  end

  def edit
    @episode_guest = EpisodeGuest.find(params[:id])
  end

  def create
    episode_guest = EpisodeGuest.create(episode_guest_params)

    redirect_to episode_guest_path(episode_guest)
  end

  private

  def episode_guest_params
    params.require(:episode_guest).permit(:episode_id, :guest_id, :rating)
  end

end
