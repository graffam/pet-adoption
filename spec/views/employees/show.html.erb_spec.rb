require 'rails_helper'

RSpec.describe "employees/show", :type => :view do
  before(:each) do
    @employee_animal = EmployeeAnimal.new
    @employee = assign(:employee, Employee.create!(
      :name => "Name",
      :email => "Email"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Email/)
  end

  it "shows the animals for the selected employee" do
    @animal = assign(:animal, Animal.create!(
      name: "Dog",
      age: "age",
      breed: "breed",
      color: "color"
      ))
    @employee_animal = assign(:employee_animal, EmployeeAnimal.create!(
      employee_id: @employee.id,
      animal_id: @animal.id
    ))
    render
    expect(rendered).to match(/Dog/)
  end
end
