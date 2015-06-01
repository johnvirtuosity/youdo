class ReportsController < ApplicationController
  before_action :authenticate_user!

  def index
    @dogs = Dog.includes(:user,:dog_regs).all
  end
end
