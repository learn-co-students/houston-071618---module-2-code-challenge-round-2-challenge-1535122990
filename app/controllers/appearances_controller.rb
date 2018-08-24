class AppearancesController < ApplicationController
  before_action :selected_appearance, only: [:show, :edit, :update, :destroy]
  def index
    @appearances = Appearance.all
  end

  def show
  end


  def new
    @appearance = Appearance.new
    @episode_options = Episode.all.map { |episode| [episode.date, episode.id]}
    @guest_options = Guest.all.map { |guest| [guest.name, guest.id]}
  end
  def create
    @appearance = Appearance.create(appearance_params)
    redirect_to episode_path(@appearance.episode) #needs to go to episode showpage
  end

  def edit
    @episode_options = Episode.all.map { |episode| [episode.date, episode.id]}
    @guest_options = Guest.all.map { |guest| [guest.name, guest.id]}
  end
  def update
    @appearance.update
    redirect_to episode_path(@appearance.episode)
  end
  private
  def selected_appearance
    @appearance = Appearance.find(params[:id])
  end
  def appearance_params
    params.require(:appearance).permit(:guest_id, :episode_id, :rating)
  end

end
