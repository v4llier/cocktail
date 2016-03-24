class Ingredient < ActiveRecord::Base

  has_many :doses
end
