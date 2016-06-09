class RsvpsController < ApplicationController

  def new
    @rsvp = Rsvp.new
  end

  def create
    @rsvp = Rsvp.new(rsvp_params)
    if @rsvp.save
      redirect_to "/rsvps/#{@rsvp.id}"
    else
      render :new
    end
  end

  def show
    @rsvp = Rsvp.find_by(id: params[:id])
  end

  def edit
    @rsvp = Rsvp.find_by(id: params[:id])
  end

  def update
    @rsvp = Rsvp.find_by(id: params[:id])
    if @rsvp.update(rsvp_params)
      redirect_to "/rsvps/#{@rsvp.id}"
    else
      render :edit
    end
  end

  def destroy
    Rsvp.find_by(id: params[:id]).destroy
    redirect_to "/rsvps"
  end

  private

  def rsvp_params
    params.require(:rsvp).permit(:first_name, :last_name, :attending, :vegetarian, :guests  )
  end




end
