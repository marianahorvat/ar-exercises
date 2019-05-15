class Employee < ActiveRecord::Base
  belongs_to :store

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates_inclusion_of :hourly_rate, in: 40..200
  validates_numericality_of :hourly_rate, only_integer: true
  validates_associated :store

end

# Exercise 7: Validations for both models
# Add validations to two models to enforce the following business rules:
# Employees must always have a first name present
# Employees must always have a last name present
# Employees have a hourly_rate that is a number (integer) between 40 and 200
# Employees must always have a store that they belong to (can't have an employee that is not assigned a store)

# validates :hourly_rate:, inclusion: { in: 40..200 }, numericality: { only_integer: true }

