class DogRegsController < ApplicationController

  def index
    @registrations = DogReg.all
  end

  def show
    @registration = DogReg.find(params[:id])
  end

  def create
    # @registration = Registration.new(params)
    @registration = DogReg.new(dog_id: 1, registration_start: '01-02-2001', registration_end: '02-03-2001', rate_id: 1)
    @registration.save
    # redirect_to registrations_path    
    UserMailer.registration_confirmation(current_user,@registration).deliver_now
  end

  def update
  	@registration = DogReg.find(params[:id])
  	@registration.update(params)
  	redirect_to registrations_path
  end

  def destroy
  	@registration = DogReg.find(params[:id])
    redirect_to registrations_path
  end

  private

  def params
    params.require(:registration).permit(:dog_id, :registration_start, :registration_end,:rate_id)
  end
end
