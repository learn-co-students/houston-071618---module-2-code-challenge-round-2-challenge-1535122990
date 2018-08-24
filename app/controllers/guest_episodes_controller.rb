class GuestEpisodesController < ApplicationController

  def show
  end

  def index
  end

  def new
    GuestEpisode.new
  end

  def create
    @guest_episode = GuestEpisode.create(guest_episode_params)

    redirect_to @guest_episode.episode
  end

  def edit
  end

  private
  def guest_episode_params
    params.require(:guest_episode).permit(:guest_id, :episode_id, :rating)
  end
end
