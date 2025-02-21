class BookingsController < ApplicationController

  def index
    @booking = Booking.all
    render :index
  end

  def show
    @booking = Booking.find_by(id: params[:id])
    render :show
  end

  def create
    @booking = Booking.new(
      clown_id: params[:clown_id],
      user_id: params[:user_id],
      duration: params[:duration],
      rating: params[:rating],
      arrival_time: params[:arrival_time],
      departure_time: params[:departure_time],
      event_date: params[:event_date]
    )
    if @booking.save!
      render :show
    else
      render json: {errors: @booking.errors.full_message}, status: :unprocessable_entity
    end
  end

  def update
    @booking = Booking.find_by(id: params[:id])
    @booking.update(
      clown_id: params[:clown_id],
      user_id: params[:user_id],
      duration: params[:duration],
      rating: params[:rating],
      arrival_time: params[:arrival_time],
      departure_time: params[:departure_time],
      event_date: params[:event_date]
    )
    render :show
  end

  def destroy
    @booking = Booking.find_by(id: params[:id])
    @booking.destroy
    render json: { message: "Booking has been deleteed" }
  end
end
