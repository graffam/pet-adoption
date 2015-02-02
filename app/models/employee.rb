class Employee < ActiveRecord::Base
  has_many :employee_animals
  has_many :employees, through: :employee_animals
end
