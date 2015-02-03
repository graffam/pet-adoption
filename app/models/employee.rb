class Employee < ActiveRecord::Base
  has_many :employee_animals
  has_many :animals, through: :employee_animals

  validates :name, format: {with: /\A[a-zA-Z]+\z/}
  validates :name, :email, presence: true
end
