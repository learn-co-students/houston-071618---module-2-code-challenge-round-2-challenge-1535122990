class EpisodesController < ApplicationController
  before_action :selected_episode, only:[:show, :edit, :update, :destroy]
  def index
    @episodes = Episode.all
  end

  def show
  end

  def new
  end

  def edit
  end
  private
  def selected_episode
    @episode = Episode.find(params[:id])
  end
  def episode_params
    params.require(:episode).permit(:date, :episode, :rating)
  end
end
