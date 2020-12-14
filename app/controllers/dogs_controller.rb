class DogsController < ApplicationController
  def index
    @dogs = Dog.all
  end

  def show
    @dog = Dog.find(params[:id])
  end

  # def new
  #   @employee = Employee.new
  # end

  # def create
  #   @employee = Employee.create(employee_params(:first_name, :last_name, :alias, :title, :office, :img_url, :dog_id)

  #   redirect_to employee_path(@employee)

  # end

  # def update
  #   @employee = Employee.find(params[:id])
  #   @employee.update(employee_params(:first_name, :last_name, :office, :img_url, :dog_id)

  #   redirect_to employee_path(@employee)
  # end

  # def edit
  #   @employee = Employee.find(params[:id])
  # end

  private

  def dog_params(*args)
    params.require(:dog).permit(*args)
  end

end
