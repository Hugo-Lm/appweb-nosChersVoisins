class BookingsController < ApplicationController
  def create
    # @product = Product.find(params[:product_id])

    @booking = Booking.new
    @booking.user_id = current_user.id
    @booking.product_id = params[:product_id]   # PAS SECURE !
    @booking.start_date = range_date.split(" to ")[0]
    @booking.end_date = range_date.split(" to ")[1]
    @booking.save!
    authorize @booking
    redirect_to products_path
  end

  def destroy
    booking = Booking.find(params[:id])
    authorize booking
    booking.destroy
    redirect_to user_path(current_user)
  end

  private

  def bookings_params
    params.require(:booking).permit(:start_date, :end_date)
  end

  def range_date
    params.require(:booking).permit(:range_date)[:range_date]
  end
end
