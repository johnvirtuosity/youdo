class DogRegsController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @registrations = DogReg.all
  end

  def show
    @registration = DogReg.find(params[:id])
  end

  def create
    @registration = DogReg.new(regs_params)
    @registration.save
    redirect_to dog_dog_regs_path    
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

  def regs_params
    params.require(:dog_reg).permit(:dog_id, :registration_start, :registration_end,:rate_id)
  end
end
