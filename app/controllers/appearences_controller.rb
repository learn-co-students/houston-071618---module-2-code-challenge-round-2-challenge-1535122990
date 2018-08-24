class AppearencesController < ApplicationController
  def index
    @appearences = Appearence.all 
  end

  def show
    @appearence = Apperence.find(params[:id])
  end

  def new
    @appearence = Appearence.new
  end
  def create 
    @appearence = Appearence.create(appearence_params)
    redirect_to @appearence.episode
  end

  private 
  def appearence_params
    params.require(:appearence).permit(:guest_id, :episode_id, :rating)
  end
end
