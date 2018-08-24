class GuestsController < ApplicationController
  #before_action :selected_guest

  def index
    @guests = Guest.all
  end

  def show
    @guest = Guest.find(params[:id])
  end

  def selected_guest
    Guest.find(params[:id])
  end

  private
  def guest_params
  end

end
