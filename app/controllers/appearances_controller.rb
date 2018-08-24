class AppearancesController < ApplicationController
  def new
  end

  def create
    @appearance = Appearance.create(appearances_params)

    redirect_to @appearance.episode
  end

  private

  def appearances_params
    params.require(:appearance).permit(:rating, :guest_id, :episode_id)
  end
end
