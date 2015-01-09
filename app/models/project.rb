class Project < ActiveRecord::Base
  has_many :employees
  attr_accessible :deadline, :description, :status, :title
end
