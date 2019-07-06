class ReservationsController < ApplicationController

  def index
    @reservations = current_user.reservations
  end

  def reserved
    @listings = current_user.listings
  end

  def create
    @reservations = current_user.reservations.create(reservations_params)

    redirect_to "/", notice:"予約が完了しました"
  end

  private
  def reservations_params
    params.require(:reservation).permit(:start_date, :end_date, :price_pernight, :total_price)
  end
end
