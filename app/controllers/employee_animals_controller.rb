class EmployeeAnimalsController < ApplicationController
  def create
    @employee = Employee.find(params["employee_animal"]["employee_id"])
    employee_animal = EmployeeAnimal.new(employee_animal_params)
    if employee_animal.save
      redirect_to employee_path(@employee)
    else
      @employee_animal = EmployeeAnimal.new
      render "employees/show"
    end
  end

  private

  def employee_animal_params
    params.require(:employee_animal).permit(:employee_id, :animal_id)
  end
end
