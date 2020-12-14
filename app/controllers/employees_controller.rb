class EmployeesController < ApplicationController
  def index
    @employees = Employee.all
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def new
    @employee = Employee.new
    @dogs = Dog.all
  end

  def create
    @employee = Employee.create(employee_params(:first_name, :last_name, :alias, :title, :office, :img_url, :dog_id))

    redirect_to employee_path(@employee)

  end

  def update
    @employee = Employee.find(params[:id])
    
    @employee.update(employee_params(:first_name, :last_name, :office, :img_url, :dog_id))

    redirect_to employee_path(@employee)
  end

  def edit
    @employee = Employee.find(params[:id])
    @dogs = Dog.all
  end

  private

  def employee_params(*args)
    params.require(:employee).permit(*args)
  end
end
