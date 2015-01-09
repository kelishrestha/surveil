class EmployeesController < ApplicationController
    def index
      @project_id = params[:project_id]
      @project = Project.where(id: @project_id).first
      @employees = @project.employees
    end
end
