class Cocktail < ActiveRecord::Base

  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
end
