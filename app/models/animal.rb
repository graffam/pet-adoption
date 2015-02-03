class Animal < ActiveRecord::Base
  has_many :employee_anmimals
  has_many :employees, through: :employee_animals

  validates :age, :name, :breed, :color, presence: true
end
