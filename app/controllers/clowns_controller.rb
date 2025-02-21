class ClownsController < ApplicationController
  def index
    @clowns = Clown.all
    render :index
  end

  def show
    @clown = Clown.find_by(id: params[:id])
    render :show
  end

  def create
    @clown = Clown.create(
      name: params[:name],
      specialty: params[:specialty],
      rates: params[:rates],
    )
    render :show
  end

  def update
    def update
      @clown = Clown.find_by(id: params[:id])
      @clown.update(
        name: params[:name] || @clown.name,
        specialty: params[:specialty] || @clown.specialty,
        rates: params[:rates] || @clown.rates,
      )
      render :show
    end
  end

  def destroy
    @clown = Clown.find_by(id: params[:id])
    @clown.destroy
    render json: { message: "Clown fired successfully" }
  end
end
