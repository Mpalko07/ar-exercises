class Store < ActiveRecord::Base
  has_many :employees

  # Validations
  validates :name, presence: true, length: { minimum: 3 }
  validates :annual_revenue, numericality: { greater_than_or_equal_to: 0 }
  validate :must_carry_at_least_one_apparel_type

  private

  def must_carry_at_least_one_apparel_type
    unless mens_apparel || womens_apparel
      errors.add(:base, "Store must carry at least one of men's or women's apparel")
    end
  end
end