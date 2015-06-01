class DogsController < ApplicationController

  def index
    @dogs = Dog.all.includes(:dog_regs)
  end

  def show
    @dog = Dog.find(params[:id])
  end

  def create
  	@dog = Dog.create(dog_params)
  	redirect_to dogs_path
  end

  def update
    my_params = params[:dog]
    @dog = Dog.find(params[:id])
    @dog.update(name: my_params[:name], breed: my_params[:breed], date_of_birth: my_params[:date_of_birth])
    @dog.save()
    redirect_to dogs_path
  end

  def destroy
    @dog = Dog.find(params[:id])
    @dog.destroy
    redirect_to dogs_path    
    UserMailer.dog_deleted(current_user).deliver_now
  end

  private
  def dog_params
    params.require(:dog).permit(:name, :breed,:date_of_birth,:user_id)
  end
end
