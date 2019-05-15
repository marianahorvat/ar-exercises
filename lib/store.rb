class Store < ActiveRecord::Base
  has_many :employees

  validates :name, length: { minimum: 3, message: "3 characters is the maximum allowed" }
  validates :annual_revenue, numericality: { greater_than: 0 }

  def must_carry
      errors.add(:base, "There is no apparel for this store") if :mens_apparel == false && :womens_apparel == false
  end

end

# Exercise 7: Validations for both models
# Add validations to two models to enforce the following business rules:
# Stores must always have a name that is a minimum of 3 characters
# Stores have an annual_revenue that is a number (integer) that must be 0 or more
# BONUS: Stores must carry at least one of the men's or women's apparel (hint: use a custom validation method - don't use a Validator class)