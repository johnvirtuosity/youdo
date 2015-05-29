class DogReg < ActiveRecord::Base
  has_many :users, through: :dogs

end
