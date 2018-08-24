class EpisodesController < ApplicationController
  def index
    @episodes = Episode.all
  end

  def new
    @episode = Episode.new
  end

  def create
    # @episode = Episode.create(episode_params)
    #
    # redirect_to new_episode_path
  end

  def show
    @episode = Episode.find(params[:id])
  end

  private
  def episode_params
    params.require(:episode).permit(:episode, :number, :guest_id, :rating )
  end
end
