class Recipe < ApplicationRecord
  belongs_to :author, class_name: "User", foreign_key: "user_id"
  has_many :steps, dependent: :destroy
  has_many :ingredients, through: :steps

  accepts_nested_attributes_for :steps, reject_if: :reject_steps, allow_destroy: true
  
  def reject_steps(attributes)
    attributes['description'].blank?
  end

  def ingredients_converted to_unit
    ingredients.map do |ingredient|
      if to_unit
        unit = Unit.new("#{ingredient.amount} #{ingredient.unit}")
        ingredient.unit_processed = unit.convert_to(to_unit)
      else
        ingredient.unit_processed = "#{ingredient.amount} #{ingredient.unit}"
      end
    end

    ingredients
  end
end
