class DogReg < ActiveRecord::Base
  has_many :users, through: :dogs
  has_many :rates
end
