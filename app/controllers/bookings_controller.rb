class BookingsController < ApplicationController

  def create
    # @product = Product.find(params[:product_id])

    @booking = Booking.new(bookings_params)
    @booking.user_id = current_user.id
    @booking.product_id = params[:product_id]   # PAS SECURE !
    @booking.save!
    authorize @booking
    redirect_to products_path
  end

  def destroy
    booking = Booking.find(params[:id])
    booking.destroy
    redirect_to user_path(current_user)
  end

  private

  def bookings_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
