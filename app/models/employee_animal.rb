class EmployeeAnimal < ActiveRecord::Base
  belongs_to :employee
  belongs_to :animal
end
