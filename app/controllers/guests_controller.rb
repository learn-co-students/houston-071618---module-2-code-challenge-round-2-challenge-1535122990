class GuestsController < ApplicationController
  before_action :selected_guest, only:[:show, :edit, :update, :destroy]

  def index
    @guests = Guest.all
  end

  def show
  end

  def new
    @guest = Guest.new
  end
  def create
  end

  def edit
  end

  private
  def selected_guest
    @guest = Guest.find(params[:id])
  end
  def guest_params
    params.require(:guest).permit(:name,:occupation, episode_ids:[])
  end
end
