class RatesController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @rates = Rate.all
  end

  def create
  	@rate = Rate.new(rate_params)
  	@rate = @rate.save
  end

  def update
  	@rate = Rate.find(params[:id])
  	@rate = Rate.update(rate_params)
  	@rate = @rate.save
  end

  private
  def rate_params
    params.require(:rate).permit(:period, :cost)
  end
end
