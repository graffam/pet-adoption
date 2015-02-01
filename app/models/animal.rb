class Animal < ActiveRecord::Base
  has_many :user_anmimals
  has_many :employees, through: :user_animals
end
