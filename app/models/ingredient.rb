class Ingredient < ApplicationRecord
  belongs_to :Step, optional: true
end
