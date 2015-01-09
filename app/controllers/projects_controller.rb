class ProjectsController < ApplicationController
  def index
    @employee = Employee.where(email_address: session[:email_address]).first
    @employee.designation == 'super-admin'? @admin = true : @admin = false
    if @admin 
      @projects = Project.all
    else
      redirect_to project_path(@employee.project_id)
      # @project = @employee.project
    end
    
    # binding.pry
  end

  def login
    # binding.pry
    @email = params[:email]
    @password = params[:password]

    @employee = Employee.where(email_address: @email).where(password: @password)
    @employee.first.designation == 'super-admin'? @admin = true : @admin = false
    # binding.pry
    if @employee.count == 0
      redirect_to :back
    else
      session[:email_address] = @employee.first.email_address
      session[:user] = @employee.first.username
      session[:admin] = @admin
      redirect_to projects_path
    end
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(params[:project])
    @project.status = "ongoing"
    @project.save
    redirect_to projects_path
  end

  def show
    # binding.pry
    @project = Project.find(params[:id])

   # binding.pry
  end

end
