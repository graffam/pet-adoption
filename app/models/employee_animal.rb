class EmployeeAnimal < ActiveRecord::Base
  belongs_to :employee
  belongs_to :animal

  validates_uniqueness_of :employee_id, scope: :animal_id
end
